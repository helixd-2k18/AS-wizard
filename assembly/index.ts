// The entry file of your WebAssembly module.
import "allocator/buddy";

// struct interface with method pointers
class simetype<T,B> {
  add: (a: T, b: T) => T;
  get: (a: T) => B;
  splat: (a: B) => T;
};

// function table 
function f32x4_add(a: f32, b: f32): f32 { return a + b; };
function f32x4_get(a: f32): f32 { return a; };
function f32x4_splat(a: f32): f32 { return a; };

// use pointer to original functions
let f32x4_t: simetype<f32,f32> = {
  add: f32x4_add,
  get: f32x4_get,
  splat: f32x4_splat
};

// imported function for logging
class simd_wrap<T,B> {
  constructor(protected a: T, protected M: simetype<T,B>){ };
  @inline public splat(a: B, c: simd_wrap<T,B>): simd_wrap<T,B> { return c.set(this.M.splat(a)); };
  @inline public get(): T{ return this.a; };
  @inline public set(a: T): simd_wrap<T,B> { this.a = a; return this; };
  @inline public add(b: simd_wrap<T,B>, c: simd_wrap<T,B>): simd_wrap<T,B> { return c.set(this.M.add(this.get(),b.get())); };
  @inline public ptr(): simd_wrap<T,B> { return this; };
};

function get_f32x4_opset(): simetype<f32,f32> {return f32x4_t;};

class f128_wrap extends simd_wrap<f32,f32>{};
export {f128_wrap, get_f32x4_opset};

/*
// create constructor by template (zero argument, type methods)
let f32x4_wrap = new simd_wrap<f32,f32>(0, f32x4_t);

// splat constructor wrap 
function f32x4_wrap_splat(a: f32): simd_wrap<f32,f32> { return f32x4_wrap.splat(a); }

// should be possible to export as WebAssembly module function (constructor)
export {f32x4_wrap_splat};
*/