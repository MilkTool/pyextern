/* This file is generated, do not edit! */
package tensorflow.python.ops.state_ops;
@:pythonImport("tensorflow.python.ops.state_ops") extern class State_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Update 'ref' by assigning 'value' to it.
		
		This operation outputs a Tensor that holds the new value of 'ref' after
		  the value has been assigned. This makes it easier to chain operations
		  that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`.
		    Should be from a `Variable` node. May be uninitialized.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be assigned to the variable.
		  validate_shape: An optional `bool`. Defaults to `True`.
		    If true, the operation will validate that the shape
		    of 'value' matches the shape of the Tensor being assigned to.  If false,
		    'ref' will take on the shape of 'value'.
		  use_locking: An optional `bool`. Defaults to `True`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that will hold the new value of 'ref' after
		    the assignment has completed.
	**/
	static public function assign(ref:Dynamic, value:Dynamic, ?validate_shape:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by adding 'value' to it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types:
		    `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`,
		    `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be added to the variable.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the addition will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
	**/
	static public function assign_add(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by subtracting 'value' from it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types:
		    `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`,
		    `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be subtracted to the variable.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
	**/
	static public function assign_sub(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generalization of `tf.scatter_update` to axis different than 0.
		
		Analogous to `batch_gather`. This assumes that `ref`, `indices` and `updates`
		have a series of leading dimensions that are the same for all of them, and the
		updates are performed on the last dimension of indices. In other words, the
		dimensions should be the following:
		
		`num_prefix_dims = indices.ndims - 1`
		`batch_dim = num_prefix_dims + 1`
		`updates.shape = indices.shape + var.shape[batch_dim:]`
		
		where
		
		`updates.shape[:num_prefix_dims]`
		`== indices.shape[:num_prefix_dims]`
		`== var.shape[:num_prefix_dims]`
		
		And the operation performed can be expressed as:
		
		`var[i_1, ..., i_n, indices[i_1, ..., i_n, j]] = updates[i_1, ..., i_n, j]`
		
		When indices is a 1D tensor, this operation is equivalent to
		`tf.scatter_update`.
		
		To avoid this operation there would be 2 alternatives:
		1) Reshaping the variable by merging the first `ndims` dimensions. However,
		   this is not possible because `tf.reshape` returns a Tensor, which we
		   cannot use `tf.scatter_update` on.
		2) Looping over the first `ndims` of the variable and using
		   `tf.scatter_update` on the subtensors that result of slicing the first
		   dimension. This is a valid option for `ndims = 1`, but less efficient than
		   this implementation.
		
		See also `tf.scatter_update` and `tf.scatter_nd_update`.
		
		Args:
		  ref: `Variable` to scatter onto.
		  indices: Tensor containing indices as described above.
		  updates: Tensor of updates to apply to `ref`.
		  use_locking: Boolean indicating whether to lock the writing operation.
		  name: Optional scope name string.
		
		Returns:
		  Ref to `variable` after it has been modified.
		
		Raises:
		  ValueError: If the initial `ndims` of `ref`, `indices`, and `updates` are
		      not the same.
	**/
	static public function batch_scatter_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Increments 'ref' until it reaches 'limit'.
		
		Args:
		  ref: A Variable. Must be one of the following types: `int32`, `int64`.
		    Should be from a scalar `Variable` node.
		  limit: An `int`.
		    If incrementing ref would bring it above limit, instead generates an
		    'OutOfRange' error.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `ref`.
		  A copy of the input before increment. If nothing else modifies the
		  input, the values produced will all be distinct.
	**/
	static public function count_up_to(ref:Dynamic, limit:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Destroys the temporary variable and returns its final value.
		
		Sets output to the value of the Tensor pointed to by 'ref', then destroys
		the temporary variable called 'var_name'.
		All other uses of 'ref' *must* have executed before this op.
		This is typically achieved by chaining the ref through each assign op, or by
		using control dependencies.
		
		Outputs the final value of the tensor pointed to by 'ref'.
		
		Args:
		  ref: A mutable `Tensor`. A reference to the temporary variable tensor.
		  var_name: A `string`.
		    Name of the temporary variable, usually the name of the matching
		    'TemporaryVariable' op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `ref`.
	**/
	static public function destroy_temporary_variable(ref:Dynamic, var_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Initializes variable with "init".
		
		This op does the following:
		if init is a Tensor, v = init
		if callable(init): v = init(VariableShape(v), v.dtype)
		
		Args:
		  v: Variable to initialize
		  init: Tensor to assign to v,
		    Or an object convertible to Tensor e.g. nparray,
		    Or an Initializer that generates a tensor given the shape and type of v.
		    An "Initializer" is a callable that returns a tensor that "v" should be
		    set to. It will be called as init(shape, dtype).
		  name: Optional name for the op.
		
		Returns:
		  The operation that initializes v.
	**/
	static public function init_variable(v:Dynamic, init:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks whether a tensor has been initialized.
		
		Outputs boolean scalar indicating whether the tensor has been initialized.
		
		Args:
		  ref: A mutable `Tensor`.
		    Should be from a `Variable` node. May be uninitialized.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_variable_initialized(ref:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Increments variable pointed to by 'resource' until it reaches 'limit'.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    Should be from a scalar `Variable` node.
		  limit: An `int`.
		    If incrementing ref would bring it above limit, instead generates an
		    'OutOfRange' error.
		  T: A `tf.DType` from: `tf.int32, tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `T`.
	**/
	static public function resource_count_up_to(resource:Dynamic, limit:Dynamic, T:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_count_up_to
	**/
	static public function resource_count_up_to_eager_fallback(resource:Dynamic, limit:Dynamic, T:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds sparse `updates` to individual values or slices within a given
		
		variable according to `indices`.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to update 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8], use_resource=True)
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    update = tf.scatter_nd_add(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(update)
		```
		
		The resulting update to ref would look like this:
		
		    [1, 12, 3, 14, 14, 6, 7, 20]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  ref: A `Tensor` of type `resource`.
		    A resource handle. Must be from a VarHandleOp.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor. Must be one of the following types: int32, int64.
		    A tensor of indices into ref.
		  updates: A `Tensor`. A Tensor. Must have the same type as ref. A tensor of
		    values to add to ref.
		  use_locking: An optional `bool`. Defaults to `True`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_nd_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_scatter_nd_add
	**/
	static public function resource_scatter_nd_add_eager_fallback(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies sparse `updates` to individual values or slices within a given
		
		variable according to `indices`.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to update 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    update = tf.scatter_nd_update(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(update)
		```
		
		The resulting update to ref would look like this:
		
		    [1, 11, 3, 10, 9, 6, 7, 12]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  ref: A `Tensor` of type `resource`.
		    A resource handle. Must be from a VarHandleOp.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor. Must be one of the following types: int32, int64.
		    A tensor of indices into ref.
		  updates: A `Tensor`.
		    A Tensor. Must have the same type as ref. A tensor of updated
		    values to add to ref.
		  use_locking: An optional `bool`. Defaults to `True`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_nd_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function resource_scatter_nd_update
	**/
	static public function resource_scatter_nd_update_eager_fallback(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Adds sparse updates to the variable referenced by `resource`.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] += updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] += updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] += updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the updated value.
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  ref: A `Variable`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to store in `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Divides a variable reference by sparse updates.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] /= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] /= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] /= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions divide.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of values that `ref` is divided by.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the operation will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_div(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduces sparse updates into a variable reference using the `max` operation.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = max(ref[indices, ...], updates[...])
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = max(ref[indices[i], ...], updates[i, ...])
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = max(ref[indices[i, ..., j], ...], updates[i, ..., j, ...])
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions combine.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterAdd.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `int64`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to reduce into `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the update will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_max(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduces sparse updates into a variable reference using the `min` operation.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = min(ref[indices, ...], updates[...])
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = min(ref[indices[i], ...], updates[i, ...])
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = min(ref[indices[i, ..., j], ...], updates[i, ..., j, ...])
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions combine.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterAdd.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `half`, `bfloat16`, `float32`, `float64`, `int32`, `int64`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to reduce into `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the update will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_min(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies sparse updates into a variable reference.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] *= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] *= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] *= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions multiply.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to multiply to `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the operation will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_mul(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse addition to individual values or slices in a Variable.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    add = tf.scatter_nd_add(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(add)
		```
		
		The resulting update to ref would look like this:
		
		    [1, 13, 3, 14, 14, 6, 7, 20]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`,
		    `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`,
		    `uint32`, `uint64`. A mutable Tensor. Should be from a Variable node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to add to ref.
		  use_locking: An optional `bool`. Defaults to `False`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_nd_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse subtraction to individual values or slices in a Variable.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to subtract 4 scattered elements from a rank-1 tensor
		to 8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    op = tf.scatter_nd_sub(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(op)
		```
		
		The resulting update to ref would look like this:
		
		    [1, -9, 3, -6, -6, 6, 7, -4]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`,
		    `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`,
		    `uint32`, `uint64`. A mutable Tensor. Should be from a Variable node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to add to ref.
		  use_locking: An optional `bool`. Defaults to `False`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_nd_sub(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse `updates` to individual values or slices in a Variable.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to update 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    update = tf.scatter_nd_update(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(update)
		```
		
		The resulting update to ref would look like this:
		
		    [1, 11, 3, 10, 9, 6, 7, 12]
		
		See `tf.scatter_nd` for more details about how to make updates to
		slices.
		
		Args:
		  ref: A Variable.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A Tensor. Must have the same type as ref. A tensor of updated
		    values to add to ref.
		  use_locking: An optional `bool`. Defaults to `True`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  The value of the variable after the update.
	**/
	static public function scatter_nd_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts sparse updates to a variable reference.
		
		```python
		    # Scalar indices
		    ref[indices, ...] -= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] -= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] -= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their (negated) contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or
		`updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%"
		     src="https://www.tensorflow.org/images/ScatterSub.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`,
		    `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`,
		    `uint32`, `uint64`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to subtract from `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
	**/
	static public function scatter_sub(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse updates to a variable reference.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] = updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		If values in `ref` is to be updated more than once, because there are
		duplicate entries in `indices`, the order at which the updates happen
		for each value is undefined.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterUpdate.png" alt>
		</div>
		
		Args:
		  ref: A `Variable`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to store in `ref`.
		  use_locking: An optional `bool`. Defaults to `True`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a tensor that may be mutated, but only persists within a single step.
		
		This is an experimental op for internal use only and it is possible to use this
		op in unsafe ways.  DO NOT USE unless you fully understand the risks.
		
		It is the caller's responsibility to ensure that 'ref' is eventually passed to a
		matching 'DestroyTemporaryVariable' op after all other uses have completed.
		
		Outputs a ref to the tensor state so it may be read or modified.
		
		  E.g.
		      var = state_ops._temporary_variable([1, 2], types.float_)
		      var_name = var.op.name
		      var = state_ops.assign(var, [[4.0, 5.0]])
		      var = state_ops.assign_add(var, [[6.0, 7.0]])
		      final = state_ops._destroy_temporary_variable(var, var_name=var_name)
		
		Args:
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the variable tensor.
		  dtype: A `tf.DType`. The type of elements in the variable tensor.
		  var_name: An optional `string`. Defaults to `""`.
		    Overrides the name used for the temporary variable resource. Default
		    value is the name of the 'TemporaryVariable' op (which is guaranteed unique).
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor` of type `dtype`.
	**/
	static public function temporary_variable(shape:Dynamic, dtype:Dynamic, ?var_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Use VariableV2 instead.
		
		Args:
		  shape: A `tf.TensorShape` or list of `ints`.
		  dtype: A `tf.DType`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor` of type `dtype`.
	**/
	static public function variable(shape:Dynamic, dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Used variable_op_v2 instead.
	**/
	static public function variable_op(shape:Dynamic, dtype:Dynamic, ?name:Dynamic, ?set_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic):Dynamic;
	/**
		Create a variable Operation.
		
		See also variables.Variable.
		
		Args:
		  shape: The shape of the tensor managed by this variable
		  dtype: The underlying type of the tensor values.
		  name: optional name to use for the variable op.
		  container: An optional string. Defaults to "".
		    If non-empty, this variable is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional string. Defaults to "".
		    If non-empty, this variable is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		
		Returns:
		  A variable tensor.
	**/
	static public function variable_op_v2(shape:Dynamic, dtype:Dynamic, ?name:Dynamic, ?container:Dynamic, ?shared_name:Dynamic):Dynamic;
	/**
		Holds state in the form of a tensor that persists across steps.
		
		Outputs a ref to the tensor state so it may be read or modified.
		TODO(zhifengc/mrry): Adds a pointer to a more detail document
		about sharing states in tensorflow.
		
		Args:
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the variable tensor.
		  dtype: A `tf.DType`. The type of elements in the variable tensor.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this variable is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this variable is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor` of type `dtype`.
	**/
	static public function variable_v2(shape:Dynamic, dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
}