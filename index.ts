(async () => {

    const imports = {
        env: { abort(msgPtr, filePtr, line, column) {
            throw new Error(`index.ts: abort at [${ line }:${ column }]`);
        }}
    };
    let mpath = "./build/optimized.wasm";

    abstract class simetype<B> {
        public abstract add(b: simetype<B>, c: simetype<B>): simetype<B>;
        public abstract get(): B;
        public abstract ptr(): any;
        public abstract splat(b: B, c: simetype<B>): simetype<B>;
    };

    interface simetypeFn<B> {
      new (value: any, table: any): simetype<B>;
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
    let f128_wrap = <simetypeFn<number>>module.f128_wrap, f32x4_t = module.get_f32x4_opset();
    let f32x4_wrap = new f128_wrap(0, f32x4_t);

    // create simd object pointers inside webassembly program
    let a = new f128_wrap(0, f32x4_t), b = new f128_wrap(0, f32x4_t), c = new f128_wrap(0, f32x4_t);
    f32x4_wrap.splat(1.0, a.ptr());
    f32x4_wrap.splat(2.0, b.ptr());
    a.add(b.ptr(), c.ptr());
    //a.add(b.ptr(),c.ptr());

    console.log(c.get());

})();
