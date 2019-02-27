(module
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
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
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:~lib/allocator/buddy (; 0 ;) (type $_)
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
 (func $start:assembly/index (; 1 ;) (type $_)
  call $start:~lib/allocator/buddy
 )
 (func $start (; 2 ;) (type $_)
  call $start:assembly/index
 )
 (func $null (; 3 ;) (type $_)
 )
)
