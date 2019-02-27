(module
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/buddy/BUCKETS_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/BUCKETS_END (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_START (mut i32) (i32.const 0))
 (global $~lib/allocator/buddy/NODE_IS_SPLIT_END (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $_)
  i32.const 8
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
 )
 (func $null (; 1 ;) (type $_)
  nop
 )
)
