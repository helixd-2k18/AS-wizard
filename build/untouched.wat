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
 (data (i32.const 8) "\17\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00b\00u\00d\00d\00y\00.\00t\00s\00")
 (table $0 4 funcref)
 (elem (i32.const 0) $null $assembly/index/f32x4_add $assembly/index/f32x4_get $assembly/index/f32x4_splat)
 (global $~lib/allocator/buddy/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/allocator/buddy/MIN_ALLOC_LOG2 i32 (i32.const 4))
 (global $~lib/allocator/buddy/MIN_ALLOC i32 (i32.const 16))
 (global $~lib/allocator/buddy/MAX_ALLOC_LOG2 i32 (i32.const 30))
 (global $~lib/allocator/buddy/MAX_ALLOC i32 (i32.const 1073741824))
 (global $~lib/allocator/buddy/BUCKET_COUNT i32 (i32.const 27))
 (global $~lib/allocator/buddy/List.SIZE i32 (i32.const 8))
 (global $~lib/allocator/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/bucket_limit (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/SPLIT_COUNT i32 (i32.const 8388608))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/base_ptr (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/max_ptr (mut i32) (i32.const 0))
 (global $assembly/index/f32x4_t (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 60))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "f128_wrap#get:a" (func $f128_wrap#get:a))
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
 (func $start:~lib/allocator/buddy (; 1 ;) (type $_)
  global.get $~lib/memory/HEAP_BASE
  global.set $~lib/allocator/buddy/BUCKETS_START
  global.get $~lib/allocator/buddy/BUCKETS_START
  global.get $~lib/allocator/buddy/BUCKET_COUNT
  global.get $~lib/allocator/buddy/List.SIZE
  i32.mul
  i32.add
  global.set $~lib/allocator/buddy/BUCKETS_END
  global.get $~lib/allocator/buddy/BUCKETS_END
  global.set $~lib/allocator/buddy/NODE_IS_SPLIT_START
  global.get $~lib/allocator/buddy/NODE_IS_SPLIT_START
  global.get $~lib/allocator/buddy/SPLIT_COUNT
  i32.const 1
  i32.mul
  i32.add
  global.set $~lib/allocator/buddy/NODE_IS_SPLIT_END
 )
 (func $assembly/index/f32x4_add (; 2 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $assembly/index/f32x4_get (; 3 ;) (type $ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $assembly/index/f32x4_splat (; 4 ;) (type $ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $~lib/allocator/buddy/update_max_ptr (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/allocator/buddy/max_ptr
  i32.gt_u
  if
   current_memory
   local.set $1
   local.get $0
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $2
   local.get $1
   i32.gt_s
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 181
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.sub
   grow_memory
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    return
   end
   local.get $2
   i32.const 16
   i32.shl
   global.set $~lib/allocator/buddy/max_ptr
  end
  i32.const 1
 )
 (func $~lib/allocator/buddy/buckets$get (; 6 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/allocator/buddy/BUCKET_COUNT
  i32.lt_u
  i32.eqz
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
  global.get $~lib/allocator/buddy/List.SIZE
  i32.mul
  i32.add
 )
 (func $~lib/allocator/buddy/list_init (; 7 ;) (type $i_) (param $0 i32)
  local.get $0
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.store offset=4
 )
 (func $~lib/allocator/buddy/list_push (; 8 ;) (type $ii_) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
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
 (func $~lib/allocator/buddy/bucket_for_request (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/allocator/buddy/BUCKET_COUNT
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/allocator/buddy/MIN_ALLOC
  local.set $2
  block $break|0
   loop $continue|0
    local.get $2
    local.get $0
    i32.lt_u
    if
     block
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      local.get $2
      i32.const 2
      i32.mul
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $1
 )
 (func $~lib/allocator/buddy/node_for_ptr (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  global.get $~lib/allocator/buddy/base_ptr
  i32.sub
  global.get $~lib/allocator/buddy/MAX_ALLOC_LOG2
  local.get $1
  i32.sub
  i32.shr_u
  i32.const 1
  local.get $1
  i32.shl
  i32.add
  i32.const 1
  i32.sub
 )
 (func $~lib/allocator/buddy/node_is_split$get (; 11 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/allocator/buddy/SPLIT_COUNT
  i32.lt_u
  i32.eqz
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
 (func $~lib/allocator/buddy/parent_is_split (; 12 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.set $0
  local.get $0
  i32.const 8
  i32.div_u
  call $~lib/allocator/buddy/node_is_split$get
  local.get $0
  i32.const 8
  i32.rem_u
  i32.shr_u
  i32.const 1
  i32.and
  i32.const 1
  i32.eq
 )
 (func $~lib/allocator/buddy/list_remove (; 13 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store
 )
 (func $~lib/allocator/buddy/ptr_for_node (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/allocator/buddy/base_ptr
  local.get $0
  i32.const 1
  local.get $1
  i32.shl
  i32.sub
  i32.const 1
  i32.add
  global.get $~lib/allocator/buddy/MAX_ALLOC_LOG2
  local.get $1
  i32.sub
  i32.shl
  i32.add
 )
 (func $~lib/allocator/buddy/node_is_split$set (; 15 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  global.get $~lib/allocator/buddy/SPLIT_COUNT
  i32.lt_u
  i32.eqz
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
 (func $~lib/allocator/buddy/flip_parent_is_split (; 16 ;) (type $i_) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 1
  i32.sub
  i32.const 2
  i32.div_u
  local.set $0
  local.get $0
  i32.const 8
  i32.div_u
  local.set $1
  local.get $1
  local.get $1
  call $~lib/allocator/buddy/node_is_split$get
  i32.const 1
  local.get $0
  i32.const 8
  i32.rem_u
  i32.shl
  i32.xor
  call $~lib/allocator/buddy/node_is_split$set
 )
 (func $~lib/allocator/buddy/lower_bucket_limit (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   loop $continue|0
    local.get $0
    global.get $~lib/allocator/buddy/bucket_limit
    i32.lt_u
    if
     block
      global.get $~lib/allocator/buddy/base_ptr
      global.get $~lib/allocator/buddy/bucket_limit
      call $~lib/allocator/buddy/node_for_ptr
      local.set $1
      local.get $1
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
      local.set $2
      local.get $2
      global.get $~lib/allocator/buddy/List.SIZE
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
      local.set $1
      local.get $1
      i32.const 0
      i32.ne
      if
       local.get $1
       call $~lib/allocator/buddy/flip_parent_is_split
      end
     end
     br $continue|0
    end
   end
  end
  i32.const 1
 )
 (func $~lib/allocator/buddy/list_pop (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $1
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
 (func $~lib/allocator/buddy/__memory_allocate (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  global.get $~lib/allocator/buddy/MAX_ALLOC
  global.get $~lib/allocator/buddy/HEADER_SIZE
  i32.sub
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/buddy/base_ptr
  i32.const 0
  i32.eq
  if
   global.get $~lib/allocator/buddy/NODE_IS_SPLIT_END
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   global.set $~lib/allocator/buddy/base_ptr
   current_memory
   i32.const 16
   i32.shl
   global.set $~lib/allocator/buddy/max_ptr
   global.get $~lib/allocator/buddy/BUCKET_COUNT
   i32.const 1
   i32.sub
   global.set $~lib/allocator/buddy/bucket_limit
   global.get $~lib/allocator/buddy/base_ptr
   global.get $~lib/allocator/buddy/List.SIZE
   i32.add
   call $~lib/allocator/buddy/update_max_ptr
   i32.eqz
   if
    i32.const 0
    return
   end
   global.get $~lib/allocator/buddy/BUCKET_COUNT
   i32.const 1
   i32.sub
   call $~lib/allocator/buddy/buckets$get
   call $~lib/allocator/buddy/list_init
   global.get $~lib/allocator/buddy/BUCKET_COUNT
   i32.const 1
   i32.sub
   call $~lib/allocator/buddy/buckets$get
   global.get $~lib/allocator/buddy/base_ptr
   call $~lib/allocator/buddy/list_push
  end
  local.get $0
  global.get $~lib/allocator/buddy/HEADER_SIZE
  i32.add
  call $~lib/allocator/buddy/bucket_for_request
  local.set $2
  local.get $2
  local.set $1
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 1
    i32.add
    i32.const 0
    i32.ne
    if
     local.get $2
     call $~lib/allocator/buddy/lower_bucket_limit
     i32.eqz
     if
      i32.const 0
      return
     end
     local.get $2
     call $~lib/allocator/buddy/buckets$get
     call $~lib/allocator/buddy/list_pop
     local.set $6
     local.get $6
     i32.eqz
     if
      local.get $2
      global.get $~lib/allocator/buddy/bucket_limit
      i32.ne
      local.tee $7
      if (result i32)
       local.get $7
      else       
       local.get $2
       i32.const 0
       i32.eq
      end
      if
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       br $continue|0
      end
      local.get $2
      i32.const 1
      i32.sub
      call $~lib/allocator/buddy/lower_bucket_limit
      i32.eqz
      if
       i32.const 0
       return
      end
      local.get $2
      call $~lib/allocator/buddy/buckets$get
      call $~lib/allocator/buddy/list_pop
      local.set $6
     end
     i32.const 1
     global.get $~lib/allocator/buddy/MAX_ALLOC_LOG2
     local.get $2
     i32.sub
     i32.shl
     local.set $3
     local.get $2
     local.get $1
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 2
      i32.div_u
      global.get $~lib/allocator/buddy/List.SIZE
      i32.add
     else      
      local.get $3
     end
     local.set $4
     local.get $6
     local.get $4
     i32.add
     call $~lib/allocator/buddy/update_max_ptr
     i32.eqz
     if
      local.get $2
      call $~lib/allocator/buddy/buckets$get
      local.get $6
      call $~lib/allocator/buddy/list_push
      i32.const 0
      return
     end
     local.get $6
     local.get $2
     call $~lib/allocator/buddy/node_for_ptr
     local.set $5
     local.get $5
     i32.const 0
     i32.ne
     if
      local.get $5
      call $~lib/allocator/buddy/flip_parent_is_split
     end
     block $break|1
      loop $continue|1
       local.get $2
       local.get $1
       i32.lt_u
       if
        block
         local.get $5
         i32.const 2
         i32.mul
         i32.const 1
         i32.add
         local.set $5
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         local.get $5
         call $~lib/allocator/buddy/flip_parent_is_split
         local.get $2
         call $~lib/allocator/buddy/buckets$get
         local.get $5
         i32.const 1
         i32.add
         local.get $2
         call $~lib/allocator/buddy/ptr_for_node
         call $~lib/allocator/buddy/list_push
        end
        br $continue|1
       end
      end
     end
     local.get $6
     local.get $0
     i32.store
     local.get $6
     global.get $~lib/allocator/buddy/HEADER_SIZE
     i32.add
     return
    end
   end
  end
  i32.const 0
 )
 (func $~lib/memory/memory.allocate (; 20 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/buddy/__memory_allocate
  return
 )
 (func $start:assembly/index (; 21 ;) (type $_)
  (local $0 i32)
  call $start:~lib/allocator/buddy
  block (result i32)
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
   local.get $0
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
 (func $assembly/index/simd_wrap<f32,f32>#constructor (; 22 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/memory/memory.allocate
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
 (func $assembly/index/simd_wrap<f32,f32>#splat (; 23 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f32)
  local.get $2
  local.set $3
  block (result f32)
   i32.const 1
   global.set $~lib/argc
   local.get $1
   local.get $0
   i32.load offset=4
   i32.load offset=8
   call_indirect (type $ff)
  end
  local.set $4
  local.get $3
  local.get $4
  f32.store
  local.get $3
 )
 (func $assembly/index/simd_wrap<f32,f32>#get (; 24 ;) (type $if) (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $assembly/index/simd_wrap<f32,f32>#set (; 25 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  f32.store
  local.get $0
 )
 (func $assembly/index/simd_wrap<f32,f32>#add (; 26 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  local.get $2
  local.set $3
  block (result f32)
   i32.const 2
   global.set $~lib/argc
   block $assembly/index/simd_wrap<f32,f32>#get|inlined.0 (result f32)
    local.get $0
    local.set $4
    local.get $4
    f32.load
   end
   block $assembly/index/simd_wrap<f32,f32>#get|inlined.1 (result f32)
    local.get $1
    local.set $4
    local.get $4
    f32.load
   end
   local.get $0
   i32.load offset=4
   i32.load
   call_indirect (type $fff)
  end
  local.set $5
  local.get $3
  local.get $5
  f32.store
  local.get $3
 )
 (func $assembly/index/simd_wrap<f32,f32>#ptr (; 27 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $assembly/index/get_f32x4_opset (; 28 ;) (type $i) (result i32)
  global.get $assembly/index/f32x4_t
 )
 (func $start (; 29 ;) (type $_)
  call $start:assembly/index
 )
 (func $null (; 30 ;) (type $_)
 )
 (func $f128_wrap#get:a (; 31 ;) (type $if) (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $f128_wrap#set:a (; 32 ;) (type $if_) (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $f128_wrap#get:M (; 33 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $f128_wrap#set:M (; 34 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
)
