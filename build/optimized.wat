(module
 (type $_ (func))
 (type $fff (func (param f32 f32) (result f32)))
 (type $ff (func (param f32) (result f32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii_ (func (param i32 i32 i32 i32)))
 (type $i_ (func (param i32)))
 (type $ii_ (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ifii (func (param i32 f32 i32) (result i32)))
 (type $if (func (param i32) (result f32)))
 (type $ifi (func (param i32 f32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $if_ (func (param i32 f32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\17\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00b\00u\00d\00d\00y\00.\00t\00s")
 (table $0 4 funcref)
 (elem (i32.const 0) $null $assembly/index/f32x4_add $assembly/index/f32x4_get $assembly/index/f32x4_get)
 (global $~lib/allocator/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/base_ptr (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/max_ptr (mut i32) (i32.const 0))
 (global $assembly/index/f32x4_t (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "f128_wrap#get:a" (func $assembly/index/simd_wrap<f32,f32>#get))
 (export "f128_wrap#set:a" (func $f128_wrap#set:a))
 (export "f128_wrap#get:M" (func $f128_wrap#get:M))
 (export "f128_wrap#set:M" (func $f128_wrap#set:M))
 (export "f128_wrap#constructor" (func $assembly/index/simd_wrap<f32,f32>#constructor))
 (export "f128_wrap#splat" (func $assembly/index/simd_wrap<f32,f32>#splat))
 (export "f128_wrap#get" (func $assembly/index/simd_wrap<f32,f32>#get))
 (export "f128_wrap#set" (func $assembly/index/simd_wrap<f32,f32>#set))
 (export "f128_wrap#add" (func $assembly/index/simd_wrap<f32,f32>#add))
 (export "f128_wrap#ptr" (func $assembly/index/simd_wrap<f32,f32>#ptr))
 (export "get_f32x4_opset" (func $assembly/index/get_f32x4_opset))
 (start $start)
 (func $assembly/index/f32x4_add (; 1 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $assembly/index/f32x4_get (; 2 ;) (type $ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $~lib/allocator/buddy/update_max_ptr (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/allocator/buddy/max_ptr
  i32.gt_u
  if
   local.get $0
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   current_memory
   local.tee $1
   i32.le_s
   if
    i32.const 0
    i32.const 8
    i32.const 181
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.sub
   grow_memory
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    return
   end
   local.get $0
   i32.const 16
   i32.shl
   global.set $~lib/allocator/buddy/max_ptr
  end
  i32.const 1
 )
 (func $~lib/allocator/buddy/buckets$get (; 4 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 27
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 101
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/allocator/buddy/BUCKETS_START
  local.get $0
  i32.const 3
  i32.shl
  i32.add
 )
 (func $~lib/allocator/buddy/list_init (; 5 ;) (type $i_) (param $0 i32)
  local.get $0
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.store offset=4
 )
 (func $~lib/allocator/buddy/list_push (; 6 ;) (type $ii_) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/allocator/buddy/bucket_for_request (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 26
  local.set $1
  i32.const 16
  local.set $2
  loop $continue|0
   local.get $2
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    local.get $2
    i32.const 1
    i32.shl
    local.set $2
    br $continue|0
   end
  end
  local.get $1
 )
 (func $~lib/allocator/buddy/node_for_ptr (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 1
  local.get $1
  i32.shl
  local.get $0
  global.get $~lib/allocator/buddy/base_ptr
  i32.sub
  i32.const 30
  local.get $1
  i32.sub
  i32.shr_u
  i32.add
  i32.const 1
  i32.sub
 )
 (func $~lib/allocator/buddy/node_is_split$get (; 9 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 8388608
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 147
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/allocator/buddy/NODE_IS_SPLIT_START
  local.get $0
  i32.add
  i32.load8_u
 )
 (func $~lib/allocator/buddy/parent_is_split (; 10 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.tee $0
  i32.const 8
  i32.div_u
  call $~lib/allocator/buddy/node_is_split$get
  local.get $0
  i32.const 7
  i32.and
  i32.shr_u
  i32.const 1
  i32.and
  i32.const 1
  i32.eq
 )
 (func $~lib/allocator/buddy/list_remove (; 11 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/allocator/buddy/ptr_for_node (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/allocator/buddy/base_ptr
  local.get $0
  i32.const 1
  local.get $1
  i32.shl
  i32.sub
  i32.const 1
  i32.add
  i32.const 30
  local.get $1
  i32.sub
  i32.shl
  i32.add
 )
 (func $~lib/allocator/buddy/node_is_split$set (; 13 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 8388608
  i32.ge_u
  if
   i32.const 0
   i32.const 8
   i32.const 152
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/allocator/buddy/NODE_IS_SPLIT_START
  local.get $0
  i32.add
  local.get $1
  i32.store8
 )
 (func $~lib/allocator/buddy/flip_parent_is_split (; 14 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.tee $0
  i32.const 8
  i32.div_u
  local.tee $1
  local.get $1
  call $~lib/allocator/buddy/node_is_split$get
  i32.const 1
  local.get $0
  i32.const 7
  i32.and
  i32.shl
  i32.xor
  call $~lib/allocator/buddy/node_is_split$set
 )
 (func $~lib/allocator/buddy/lower_bucket_limit (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  loop $continue|0
   local.get $0
   global.get $~lib/allocator/buddy/bucket_limit
   i32.lt_u
   if
    global.get $~lib/allocator/buddy/base_ptr
    global.get $~lib/allocator/buddy/bucket_limit
    call $~lib/allocator/buddy/node_for_ptr
    local.tee $1
    call $~lib/allocator/buddy/parent_is_split
    i32.eqz
    if
     global.get $~lib/allocator/buddy/base_ptr
     call $~lib/allocator/buddy/list_remove
     block (result i32)
      global.get $~lib/allocator/buddy/bucket_limit
      i32.const 1
      i32.sub
      global.set $~lib/allocator/buddy/bucket_limit
      global.get $~lib/allocator/buddy/bucket_limit
     end
     call $~lib/allocator/buddy/buckets$get
     call $~lib/allocator/buddy/list_init
     global.get $~lib/allocator/buddy/bucket_limit
     call $~lib/allocator/buddy/buckets$get
     global.get $~lib/allocator/buddy/base_ptr
     call $~lib/allocator/buddy/list_push
     br $continue|0
    end
    local.get $1
    i32.const 1
    i32.add
    global.get $~lib/allocator/buddy/bucket_limit
    call $~lib/allocator/buddy/ptr_for_node
    local.tee $2
    i32.const 8
    i32.add
    call $~lib/allocator/buddy/update_max_ptr
    i32.eqz
    if
     i32.const 0
     return
    end
    global.get $~lib/allocator/buddy/bucket_limit
    call $~lib/allocator/buddy/buckets$get
    local.get $2
    call $~lib/allocator/buddy/list_push
    block (result i32)
     global.get $~lib/allocator/buddy/bucket_limit
     i32.const 1
     i32.sub
     global.set $~lib/allocator/buddy/bucket_limit
     global.get $~lib/allocator/buddy/bucket_limit
    end
    call $~lib/allocator/buddy/buckets$get
    call $~lib/allocator/buddy/list_init
    local.get $1
    i32.const 1
    i32.sub
    i32.const 2
    i32.div_u
    local.tee $1
    if
     local.get $1
     call $~lib/allocator/buddy/flip_parent_is_split
    end
    br $continue|0
   end
  end
  i32.const 1
 )
 (func $~lib/allocator/buddy/list_pop (; 16 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  local.get $0
  i32.eq
  if
   i32.const 0
   return
  end
  local.get $1
  call $~lib/allocator/buddy/list_remove
  local.get $1
 )
 (func $~lib/allocator/buddy/__memory_allocate (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/buddy/base_ptr
  i32.eqz
  if
   global.get $~lib/allocator/buddy/NODE_IS_SPLIT_END
   i32.const 7
   i32.add
   i32.const -8
   i32.and
   global.set $~lib/allocator/buddy/base_ptr
   current_memory
   i32.const 16
   i32.shl
   global.set $~lib/allocator/buddy/max_ptr
   i32.const 26
   global.set $~lib/allocator/buddy/bucket_limit
   global.get $~lib/allocator/buddy/base_ptr
   i32.const 8
   i32.add
   call $~lib/allocator/buddy/update_max_ptr
   i32.eqz
   if
    i32.const 0
    return
   end
   i32.const 26
   call $~lib/allocator/buddy/buckets$get
   call $~lib/allocator/buddy/list_init
   i32.const 26
   call $~lib/allocator/buddy/buckets$get
   global.get $~lib/allocator/buddy/base_ptr
   call $~lib/allocator/buddy/list_push
  end
  local.get $0
  i32.const 8
  i32.add
  call $~lib/allocator/buddy/bucket_for_request
  local.tee $1
  local.set $4
  loop $continue|0
   local.get $1
   i32.const -1
   i32.ne
   if
    local.get $1
    call $~lib/allocator/buddy/lower_bucket_limit
    i32.eqz
    if
     i32.const 0
     return
    end
    local.get $1
    call $~lib/allocator/buddy/buckets$get
    call $~lib/allocator/buddy/list_pop
    local.tee $2
    i32.eqz
    if
     local.get $1
     global.get $~lib/allocator/buddy/bucket_limit
     i32.ne
     local.tee $2
     if (result i32)
      local.get $2
     else      
      local.get $1
      i32.eqz
     end
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $continue|0
     end
     local.get $1
     i32.const 1
     i32.sub
     call $~lib/allocator/buddy/lower_bucket_limit
     i32.eqz
     if
      i32.const 0
      return
     end
     local.get $1
     call $~lib/allocator/buddy/buckets$get
     call $~lib/allocator/buddy/list_pop
     local.set $2
    end
    i32.const 1
    i32.const 30
    local.get $1
    i32.sub
    i32.shl
    local.set $3
    local.get $1
    local.get $4
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 2
     i32.div_u
     i32.const 8
     i32.add
    else     
     local.get $3
    end
    local.get $2
    i32.add
    call $~lib/allocator/buddy/update_max_ptr
    i32.eqz
    if
     local.get $1
     call $~lib/allocator/buddy/buckets$get
     local.get $2
     call $~lib/allocator/buddy/list_push
     i32.const 0
     return
    end
    local.get $2
    local.get $1
    call $~lib/allocator/buddy/node_for_ptr
    local.tee $3
    if
     local.get $3
     call $~lib/allocator/buddy/flip_parent_is_split
    end
    loop $continue|1
     local.get $1
     local.get $4
     i32.lt_u
     if
      local.get $3
      i32.const 1
      i32.shl
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/allocator/buddy/flip_parent_is_split
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      call $~lib/allocator/buddy/buckets$get
      local.get $3
      i32.const 1
      i32.add
      local.get $1
      call $~lib/allocator/buddy/ptr_for_node
      call $~lib/allocator/buddy/list_push
      br $continue|1
     end
    end
    local.get $2
    local.get $0
    i32.store
    local.get $2
    i32.const 8
    i32.add
    return
   end
  end
  i32.const 0
 )
 (func $start:assembly/index (; 18 ;) (type $_)
  (local $0 i32)
  i32.const 60
  global.set $~lib/allocator/buddy/BUCKETS_START
  global.get $~lib/allocator/buddy/BUCKETS_START
  i32.const 216
  i32.add
  global.set $~lib/allocator/buddy/BUCKETS_END
  global.get $~lib/allocator/buddy/BUCKETS_END
  global.set $~lib/allocator/buddy/NODE_IS_SPLIT_START
  global.get $~lib/allocator/buddy/NODE_IS_SPLIT_START
  i32.const 8388608
  i32.add
  global.set $~lib/allocator/buddy/NODE_IS_SPLIT_END
  block (result i32)
   i32.const 12
   call $~lib/allocator/buddy/__memory_allocate
   local.tee $0
   i32.const 1
   i32.store
   local.get $0
   i32.const 2
   i32.store offset=4
   local.get $0
   i32.const 3
   i32.store offset=8
   local.get $0
  end
  global.set $assembly/index/f32x4_t
 )
 (func $assembly/index/simd_wrap<f32,f32>#constructor (; 19 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/allocator/buddy/__memory_allocate
   local.set $0
  end
  local.get $0
  local.get $1
  f32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $assembly/index/simd_wrap<f32,f32>#splat (; 20 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  i32.const 1
  global.set $~lib/argc
  local.get $2
  local.get $1
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call_indirect (type $ff)
  f32.store
  local.get $2
 )
 (func $assembly/index/simd_wrap<f32,f32>#get (; 21 ;) (type $if) (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $assembly/index/simd_wrap<f32,f32>#set (; 22 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  f32.store
  local.get $0
 )
 (func $assembly/index/simd_wrap<f32,f32>#add (; 23 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 2
  global.set $~lib/argc
  local.get $2
  local.get $0
  f32.load
  local.get $1
  f32.load
  local.get $0
  i32.load offset=4
  i32.load
  call_indirect (type $fff)
  f32.store
  local.get $2
 )
 (func $assembly/index/simd_wrap<f32,f32>#ptr (; 24 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $assembly/index/get_f32x4_opset (; 25 ;) (type $i) (result i32)
  global.get $assembly/index/f32x4_t
 )
 (func $start (; 26 ;) (type $_)
  call $start:assembly/index
 )
 (func $null (; 27 ;) (type $_)
  nop
 )
 (func $f128_wrap#set:a (; 28 ;) (type $if_) (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $f128_wrap#get:M (; 29 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $f128_wrap#set:M (; 30 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
)
