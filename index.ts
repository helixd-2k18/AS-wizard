(async () => {

    const imports = {
        env: { abort(msgPtr, filePtr, line, column) {
            throw new Error(`index.ts: abort at [${ line }:${ column }]`);
        }}
    };
    let mpath = "./build/optimized.wasm";

    abstract class simetype<B> {
        public abstract add(b: simetype<B>): any;
        public abstract extract_lane(a: number): B;
        public abstract ptr(): any;
        public abstract splat(b: B): any;
        public abstract assign(b: simetype<B>): any;
    };

    interface simetypeFn<B> {
      new (value: any): simetype<B>;
    };

    const fs = require("fs"), fetch = require('node-fetch');

    const readFile = (path, opts = 'utf8') =>
      new Promise((resolve, reject) => {
        fs.readFile(path, opts, (err, data) => {
          if (err) reject(err)
          else resolve(data)
        })
      })
    
    const writeFile = (path, data, opts = 'utf8') =>
      new Promise((resolve, reject) => {
        fs.writeFile(path, data, opts, (err) => {
          if (err) reject(err)
          else resolve()
        })
      })


    const loader = require("@assemblyscript/loader");
    const module = loader.instantiateBuffer(fs.readFileSync(mpath), imports);

    // get class constructor
    let f32x4_t = <simetypeFn<number>>module.f32x4_t;

    // create simd object pointers inside webassembly program
    let a = new f32x4_t(0), b = new f32x4_t(0), c = new f32x4_t(0);
    a.splat(1.0), b.splat(2.0); // splat there
    c.assign(a.add(b.ptr())); // when a+b returns, you can assign by pointer 
    //a.add(b.ptr(),c.ptr());

    // check result of extract lane
    console.log(c.extract_lane(0));

})();
