// The entry file of your WebAssembly module.
import "allocator/buddy";

// use v128 for wrapping
class v128_wrap<B> {
  constructor(protected a: v128){  };

  //@inline public splat(a: B): v128_wrap<B> { return new v128_wrap<B>(v128.splat<B>(a)); };
  @inline public splat(a: B): v128_wrap<B> { this.a = v128.splat<B>(a); return this; };
  
  // typed constructors
  @inline public f32x4(a: f32, b: f32, c: f32, d: f32): v128_wrap<B> { this.a = f32x4(a,b,c,d); return this;} ;

  // getters
  @inline public get(): v128 { return this.a; };
  @inline public extract_lane(a: u8): B { return v128.extract_lane<B>(this.a, a); };

  // assign operators
  @inline public set(a: v128): v128_wrap<B> { this.a = a; return this; };
  @inline public assign(a: v128_wrap<B>): v128_wrap<B> { this.a = a.get(); return this; };

  // binary operators
  @inline @operator('+')
  public add(b: v128_wrap<B>): v128_wrap<B> { return new v128_wrap<B>(v128.add<B>(this.get(),b.get())); };
  
  // shuffle
  @inline shuffle(...lanes: u8[]): v128_wrap<B> { return new v128_wrap<B>(v128.shuffle<B>(this.a,lanes)); };

  // get pointer
  @inline public ptr(): v128_wrap<B> { return this; };
};

let result: f32 = 0.0;
function rise_result(): f32{
  return result;
}

let a = new v128_wrap<f32>(v128.splat<f32>(0.0));
let b = new v128_wrap<f32>(v128.splat<f32>(0.0));
let c = a.add(b);
result = c.extract_lane(0);

// 
export class f32x4_t extends v128_wrap<f32>{};

export {rise_result};
