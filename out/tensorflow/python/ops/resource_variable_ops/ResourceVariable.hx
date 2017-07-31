/* This file is generated, do not edit! */
package tensorflow.python.ops.resource_variable_ops;
@:pythonImport("tensorflow.python.ops.resource_variable_ops", "ResourceVariable") extern class ResourceVariable {
	public function _AsTensor():Dynamic;
	/**
		Register overloads for all operators.
	**/
	static public function _OverloadAllOperators():Dynamic;
	/**
		Defer an operator overload to `ops.Tensor`.
		
		We pull the operator out of ops.Tensor dynamically to avoid ordering issues.
		
		Args:
		  operator: string. The operator name.
	**/
	static public function _OverloadOperator(operator:Dynamic):Dynamic;
	/**
		Computes the absolute value of a tensor.
		
		Given a tensor of real numbers `x`, this operation returns a tensor
		containing the absolute value of each element in `x`. For example, if x is
		an input element and y is an output element, this operation computes
		\\\\(y = |x|\\\\).
		
		Args:
		  x: A `Tensor` or `SparseTensor` of type `float32`, `float64`, `int32`, or
		    `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` or `SparseTensor` the same size and type as `x` with absolute
		    values.
	**/
	public function __abs__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `string`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	public function __add__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the truth value of x AND y element-wise.
		
		*NOTE*: `LogicalAnd` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __and__(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var __array_priority__ : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Divide two values using Python 2 semantics. Used for Tensor.__div__.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		Returns:
		  `x / y` returns the quotient of x and y.
	**/
	public function __div__(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Divides `x / y` elementwise, rounding toward the most negative integer.
		
		The same as `tf.div(x,y)` for integers, but uses `tf.floor(tf.div(x,y))` for
		floating point arguments so that the result is always an integer (though
		possibly an integer represented as floating point).  This op is generated by
		`x // y` floor division in Python 3 and in Python 2.7 with
		`from __future__ import division`.
		
		Note that for efficiency, `floordiv` uses C semantics for negative numbers
		(unlike Python and Numpy).
		
		`x` and `y` must have the same type, and the result will have the same type
		as well.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` rounded down (except possibly towards zero for negative integers).
		
		Raises:
		  TypeError: If the inputs are complex.
	**/
	public function __floordiv__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the truth value of (x >= y) element-wise.
		
		*NOTE*: `GreaterEqual` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __ge__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Creates a slice helper object given a variable.
		
		This allows creating a sub-tensor from part of the current contents
		of a variable.  See ${tf.Tensor$`Tensor.__getitem__`}
		for detailed examples of slicing.
		
		This function in addition also allows assignment to a sliced range.
		This is similar to `__setitem__` functionality in Python. However,
		the syntax is different so that the user can capture the assignment
		operation for grouping or passing to `sess.run()`.
		For example,
		
		```prettyprint
		import tensorflow as tf
		A = tf.Variable([[1,2,3], [4,5,6], [7,8,9]], dtype=tf.float32)
		with tf.Session() as sess:
		  sess.run(tf.global_variables_initializer())
		  print sess.run(A[:2, :2]) # => [[1,2], [4,5]]
		
		  op = A[:2,:2].assign(22. * tf.ones((2, 2)))
		  print sess.run(op) # => [[22, 22, 3], [22, 22, 6], [7,8,9]]
		```
		
		Note that assignments currently do not support NumPy broadcasting
		semantics.
		
		Args:
		  var: An `ops.Variable` object.
		  slice_spec: The arguments to `Tensor.__getitem__`.
		
		Returns:
		  The appropriate slice of "tensor", based on "slice_spec".
		  As an operator. The operator also has a `assign()` method
		  that can be used to generate an assignment operator.
		
		Raises:
		  ValueError: If a slice range is negative size.
		  TypeError: If the slice indices aren't int, slice, or Ellipsis.
	**/
	public function __getitem__(slice_spec:Dynamic):Dynamic;
	/**
		Returns the truth value of (x > y) element-wise.
		
		*NOTE*: `Greater` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __gt__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates a variable.
		
		Args:
		  initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		    which is the initial value for the Variable. The initial value must have
		    a shape specified unless `validate_shape` is set to False. Can also be a
		    callable with no argument that returns the initial value when called.
		    (Note that initializer functions from init_ops.py must first be bound
		     to a shape before being used here.)
		  trainable: If `True`, the default, also adds the variable to the graph
		    collection `GraphKeys.TRAINABLE_VARIABLES`. This collection is used as
		    the default list of variables to use by the `Optimizer` classes.
		  collections: List of graph collections keys. The new variable is added to
		    these collections. Defaults to `[GraphKeys.GLOBAL_VARIABLES]`.
		  validate_shape: Ignored. Provided for compatibility with tf.Variable.
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  name: Optional name for the variable. Defaults to `'Variable'` and gets
		    uniquified automatically.
		  dtype: If set, initial_value will be converted to the given type.
		    If None, either the datatype will be kept (if initial_value is
		   a Tensor) or float32 will be used (if it is a Python object convertible
		   to a Tensor).
		  variable_def: `VariableDef` protocol buffer. If not None, recreates the
		    `ResourceVariable` object with its contents. `variable_def` and other
		    arguments (except for import_scope) are mutually exclusive.
		  import_scope: Optional `string`. Name scope to add to the
		    ResourceVariable. Only used when `variable_def` is provided.
		
		Raises:
		  ValueError: If the initial value is not specified, or does not have a
		    shape and `validate_shape` is `True`.
	**/
	@:native("__init__")
	public function ___init__(?initial_value:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?validate_shape:Dynamic, ?caching_device:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?variable_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Creates a variable.
		
		Args:
		  initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		    which is the initial value for the Variable. The initial value must have
		    a shape specified unless `validate_shape` is set to False. Can also be a
		    callable with no argument that returns the initial value when called.
		    (Note that initializer functions from init_ops.py must first be bound
		     to a shape before being used here.)
		  trainable: If `True`, the default, also adds the variable to the graph
		    collection `GraphKeys.TRAINABLE_VARIABLES`. This collection is used as
		    the default list of variables to use by the `Optimizer` classes.
		  collections: List of graph collections keys. The new variable is added to
		    these collections. Defaults to `[GraphKeys.GLOBAL_VARIABLES]`.
		  validate_shape: Ignored. Provided for compatibility with tf.Variable.
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  name: Optional name for the variable. Defaults to `'Variable'` and gets
		    uniquified automatically.
		  dtype: If set, initial_value will be converted to the given type.
		    If None, either the datatype will be kept (if initial_value is
		   a Tensor) or float32 will be used (if it is a Python object convertible
		   to a Tensor).
		  variable_def: `VariableDef` protocol buffer. If not None, recreates the
		    `ResourceVariable` object with its contents. `variable_def` and other
		    arguments (except for import_scope) are mutually exclusive.
		  import_scope: Optional `string`. Name scope to add to the
		    ResourceVariable. Only used when `variable_def` is provided.
		
		Raises:
		  ValueError: If the initial value is not specified, or does not have a
		    shape and `validate_shape` is `True`.
	**/
	public function new(?initial_value:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?validate_shape:Dynamic, ?caching_device:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?variable_def:Dynamic, ?import_scope:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the truth value of NOT x element-wise.
		
		Args:
		  x: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __invert__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the truth value of (x <= y) element-wise.
		
		*NOTE*: `LessEqual` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __le__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the truth value of (x < y) element-wise.
		
		*NOTE*: `Less` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __lt__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`, producing `a` * `b`.
		
		The inputs must be matrices (or tensors of rank > 2, representing batches of
		matrices), with matching inner dimensions, possibly after transposition.
		
		Both matrices must be of the same type. The supported types are:
		`float16`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		
		Either matrix can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the matrices contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices (rank-2 tensors) with
		datatypes `bfloat16` or `float32`.
		
		For example:
		
		```python
		# 2-D tensor `a`
		a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3]) => [[1. 2. 3.]
		                                                      [4. 5. 6.]]
		# 2-D tensor `b`
		b = tf.constant([7, 8, 9, 10, 11, 12], shape=[3, 2]) => [[7. 8.]
		                                                         [9. 10.]
		                                                         [11. 12.]]
		c = tf.matmul(a, b) => [[58 64]
		                        [139 154]]
		
		
		# 3-D tensor `a`
		a = tf.constant(np.arange(1, 13, dtype=np.int32),
		                shape=[2, 2, 3])                  => [[[ 1.  2.  3.]
		                                                       [ 4.  5.  6.]],
		                                                      [[ 7.  8.  9.]
		                                                       [10. 11. 12.]]]
		
		# 3-D tensor `b`
		b = tf.constant(np.arange(13, 25, dtype=np.int32),
		                shape=[2, 3, 2])                   => [[[13. 14.]
		                                                        [15. 16.]
		                                                        [17. 18.]],
		                                                       [[19. 20.]
		                                                        [21. 22.]
		                                                        [23. 24.]]]
		c = tf.matmul(a, b) => [[[ 94 100]
		                         [229 244]],
		                        [[508 532]
		                         [697 730]]]
		
		# Since python >= 3.5 the @ operator is supported (see PEP 465).
		# In TensorFlow, it simply calls the `tf.matmul()` function, so the
		# following lines are equivalent:
		d = a @ b @ [[10.], [11.]]
		d = tf.matmul(tf.matmul(a, b), [[10.], [11.]])
		```
		
		Args:
		  a: `Tensor` of type `float16`, `float32`, `float64`, `int32`, `complex64`,
		    `complex128` and rank > 1.
		  b: `Tensor` with same type and rank as `a`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  adjoint_b: If `True`, `b` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix.
		  name: Name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same type as `a` and `b` where each inner-most matrix is
		  the product of the corresponding matrices in `a` and `b`, e.g. if all
		  transpose or adjoint attributes are `False`:
		
		  `output`[..., i, j] = sum_k (`a`[..., i, k] * `b`[..., k, j]),
		  for all indices i, j.
		
		  Note: This is matrix product, not element-wise product.
		
		
		Raises:
		  ValueError: If transpose_a and adjoint_a, or transpose_b and adjoint_b
		    are both set to True.
	**/
	public function __matmul__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `FloorMod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	public function __mod__(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Dispatches cwise mul for "Dense*Dense" and "Dense*Sparse".
	**/
	public function __mul__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Computes numerical negative value element-wise.
		
		I.e., \\(y = -x\\).
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	public function __neg__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the truth value of x OR y element-wise.
		
		*NOTE*: `LogicalOr` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __or__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Computes the power of one value to another.
		
		Given a tensor `x` and a tensor `y`, this operation computes \\\\(x^y\\\\) for
		corresponding elements in `x` and `y`. For example:
		
		```
		# tensor 'x' is [[2, 2], [3, 3]]
		# tensor 'y' is [[8, 16], [2, 3]]
		tf.pow(x, y) ==> [[256, 65536], [9, 27]]
		```
		
		Args:
		  x: A `Tensor` of type `float32`, `float64`, `int32`, `int64`, `complex64`,
		   or `complex128`.
		  y: A `Tensor` of type `float32`, `float64`, `int32`, `int64`, `complex64`,
		   or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.
	**/
	public function __pow__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns x + y element-wise.
		
		*NOTE*: `Add` supports broadcasting. `AddN` does not. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `string`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	public function __radd__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the truth value of x AND y element-wise.
		
		*NOTE*: `LogicalAnd` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __rand__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Divide two values using Python 2 semantics. Used for Tensor.__div__.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		Returns:
		  `x / y` returns the quotient of x and y.
	**/
	public function __rdiv__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Divides `x / y` elementwise, rounding toward the most negative integer.
		
		The same as `tf.div(x,y)` for integers, but uses `tf.floor(tf.div(x,y))` for
		floating point arguments so that the result is always an integer (though
		possibly an integer represented as floating point).  This op is generated by
		`x // y` floor division in Python 3 and in Python 2.7 with
		`from __future__ import division`.
		
		Note that for efficiency, `floordiv` uses C semantics for negative numbers
		(unlike Python and Numpy).
		
		`x` and `y` must have the same type, and the result will have the same type
		as well.
		
		Args:
		  x: `Tensor` numerator of real numeric type.
		  y: `Tensor` denominator of real numeric type.
		  name: A name for the operation (optional).
		
		Returns:
		  `x / y` rounded down (except possibly towards zero for negative integers).
		
		Raises:
		  TypeError: If the inputs are complex.
	**/
	public function __rfloordiv__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Multiplies matrix `a` by matrix `b`, producing `a` * `b`.
		
		The inputs must be matrices (or tensors of rank > 2, representing batches of
		matrices), with matching inner dimensions, possibly after transposition.
		
		Both matrices must be of the same type. The supported types are:
		`float16`, `float32`, `float64`, `int32`, `complex64`, `complex128`.
		
		Either matrix can be transposed or adjointed (conjugated and transposed) on
		the fly by setting one of the corresponding flag to `True`. These are `False`
		by default.
		
		If one or both of the matrices contain a lot of zeros, a more efficient
		multiplication algorithm can be used by setting the corresponding
		`a_is_sparse` or `b_is_sparse` flag to `True`. These are `False` by default.
		This optimization is only available for plain matrices (rank-2 tensors) with
		datatypes `bfloat16` or `float32`.
		
		For example:
		
		```python
		# 2-D tensor `a`
		a = tf.constant([1, 2, 3, 4, 5, 6], shape=[2, 3]) => [[1. 2. 3.]
		                                                      [4. 5. 6.]]
		# 2-D tensor `b`
		b = tf.constant([7, 8, 9, 10, 11, 12], shape=[3, 2]) => [[7. 8.]
		                                                         [9. 10.]
		                                                         [11. 12.]]
		c = tf.matmul(a, b) => [[58 64]
		                        [139 154]]
		
		
		# 3-D tensor `a`
		a = tf.constant(np.arange(1, 13, dtype=np.int32),
		                shape=[2, 2, 3])                  => [[[ 1.  2.  3.]
		                                                       [ 4.  5.  6.]],
		                                                      [[ 7.  8.  9.]
		                                                       [10. 11. 12.]]]
		
		# 3-D tensor `b`
		b = tf.constant(np.arange(13, 25, dtype=np.int32),
		                shape=[2, 3, 2])                   => [[[13. 14.]
		                                                        [15. 16.]
		                                                        [17. 18.]],
		                                                       [[19. 20.]
		                                                        [21. 22.]
		                                                        [23. 24.]]]
		c = tf.matmul(a, b) => [[[ 94 100]
		                         [229 244]],
		                        [[508 532]
		                         [697 730]]]
		
		# Since python >= 3.5 the @ operator is supported (see PEP 465).
		# In TensorFlow, it simply calls the `tf.matmul()` function, so the
		# following lines are equivalent:
		d = a @ b @ [[10.], [11.]]
		d = tf.matmul(tf.matmul(a, b), [[10.], [11.]])
		```
		
		Args:
		  a: `Tensor` of type `float16`, `float32`, `float64`, `int32`, `complex64`,
		    `complex128` and rank > 1.
		  b: `Tensor` with same type and rank as `a`.
		  transpose_a: If `True`, `a` is transposed before multiplication.
		  transpose_b: If `True`, `b` is transposed before multiplication.
		  adjoint_a: If `True`, `a` is conjugated and transposed before
		    multiplication.
		  adjoint_b: If `True`, `b` is conjugated and transposed before
		    multiplication.
		  a_is_sparse: If `True`, `a` is treated as a sparse matrix.
		  b_is_sparse: If `True`, `b` is treated as a sparse matrix.
		  name: Name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same type as `a` and `b` where each inner-most matrix is
		  the product of the corresponding matrices in `a` and `b`, e.g. if all
		  transpose or adjoint attributes are `False`:
		
		  `output`[..., i, j] = sum_k (`a`[..., i, k] * `b`[..., k, j]),
		  for all indices i, j.
		
		  Note: This is matrix product, not element-wise product.
		
		
		Raises:
		  ValueError: If transpose_a and adjoint_a, or transpose_b and adjoint_b
		    are both set to True.
	**/
	public function __rmatmul__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns element-wise remainder of division. When `x < 0` xor `y < 0` is
		
		true, this follows Python semantics in that the result here is consistent
		with a flooring divide. E.g. `floor(x / y) * y + mod(x, y) = x`.
		
		*NOTE*: `FloorMod` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `int32`, `int64`, `float32`, `float64`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	public function __rmod__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Dispatches cwise mul for "Dense*Dense" and "Dense*Sparse".
	**/
	public function __rmul__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the truth value of x OR y element-wise.
		
		*NOTE*: `LogicalOr` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor` of type `bool`.
		  y: A `Tensor` of type `bool`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	public function __ror__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Computes the power of one value to another.
		
		Given a tensor `x` and a tensor `y`, this operation computes \\\\(x^y\\\\) for
		corresponding elements in `x` and `y`. For example:
		
		```
		# tensor 'x' is [[2, 2], [3, 3]]
		# tensor 'y' is [[8, 16], [2, 3]]
		tf.pow(x, y) ==> [[256, 65536], [9, 27]]
		```
		
		Args:
		  x: A `Tensor` of type `float32`, `float64`, `int32`, `int64`, `complex64`,
		   or `complex128`.
		  y: A `Tensor` of type `float32`, `float64`, `int32`, `int64`, `complex64`,
		   or `complex128`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`.
	**/
	public function __rpow__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns x - y element-wise.
		
		*NOTE*: `Sub` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	public function __rsub__(?args:python.VarArgs<Dynamic>):Dynamic;
	public function __rtruediv__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		x ^ y = (x | y) & ~(x & y).
	**/
	public function __rxor__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Returns x - y element-wise.
		
		*NOTE*: `Sub` supports broadcasting. More about broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`, `complex64`, `complex128`.
		  y: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `x`.
	**/
	public function __sub__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		x ^ y = (x | y) & ~(x & y).
	**/
	public function __xor__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Conversion function for Graph.as_graph_element().
	**/
	public function _as_graph_element():Dynamic;
	public function _get_save_slice_info():Dynamic;
	/**
		Creates a variable.
		
		Args:
		  initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		    which is the initial value for the Variable. The initial value must have
		    a shape specified unless `validate_shape` is set to False. Can also be a
		    callable with no argument that returns the initial value when called.
		    (Note that initializer functions from init_ops.py must first be bound
		     to a shape before being used here.)
		  trainable: If `True`, the default, also adds the variable to the graph
		    collection `GraphKeys.TRAINABLE_VARIABLES`. This collection is used as
		    the default list of variables to use by the `Optimizer` classes.
		  collections: List of graph collections keys. The new variable is added to
		    these collections. Defaults to `[GraphKeys.GLOBAL_VARIABLES]`.
		  validate_shape: Ignored. Provided for compatibility with tf.Variable.
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  name: Optional name for the variable. Defaults to `'Variable'` and gets
		    uniquified automatically.
		  dtype: If set, initial_value will be converted to the given type.
		    If None, either the datatype will be kept (if initial_value is
		   a Tensor) or float32 will be used (if it is a Python object convertible
		   to a Tensor).
		
		Raises:
		  ValueError: If the initial value is not specified, or does not have a
		    shape and `validate_shape` is `True`.
	**/
	public function _init_from_args(?initial_value:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?validate_shape:Dynamic, ?caching_device:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Initializes from `VariableDef` proto.
	**/
	public function _init_from_proto(variable_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Sets the slice info for this `ResourceVariable`.
		
		Args:
		  save_slice_info: A `Variable.SaveSliceInfo` object.
	**/
	public function _set_save_slice_info(save_slice_info:Dynamic):Dynamic;
	public function _strided_slice_assign(begin:Dynamic, end:Dynamic, strides:Dynamic, value:Dynamic, name:Dynamic, begin_mask:Dynamic, end_mask:Dynamic, ellipsis_mask:Dynamic, new_axis_mask:Dynamic, shrink_axis_mask:Dynamic):Dynamic;
	public function assign(value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function assign_add(delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	public function assign_sub(delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The op responsible for initializing this variable.
	**/
	public var create : Dynamic;
	/**
		The device this variable is on.
	**/
	public var device : Dynamic;
	/**
		The dtype of this variable.
	**/
	public var dtype : Dynamic;
	/**
		Evaluates and returns the value of this variable.
	**/
	public function eval(?session:Dynamic):Dynamic;
	static public function from_proto(variable_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		The shape of this variable.
	**/
	public function get_shape():Dynamic;
	/**
		The `Graph` of this variable.
	**/
	public var graph : Dynamic;
	/**
		The handle by which this variable can be accessed.
	**/
	public var handle : Dynamic;
	/**
		The op responsible for initializing this variable.
	**/
	public var initializer : Dynamic;
	/**
		The name of the handle for this variable.
	**/
	public var name : Dynamic;
	/**
		The op for this variable.
	**/
	public var op : Dynamic;
	/**
		Constructs an op which reads the value of this variable.
		
		Should be used when there are multiple reads, or when it is desirable to
		read the value only after some condition is true.
		
		Returns:
		 the read operation.
	**/
	public function read_value():Dynamic;
	/**
		Reads the value of this variable sparsely, using `gather`.
	**/
	public function sparse_read(indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a `ResourceVariable` to a `VariableDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `VariableDef` protocol buffer, or `None` if the `Variable` is not
		  in the specified name scope.
	**/
	public function to_proto(?export_scope:Dynamic):Dynamic;
	/**
		A cached operation which reads the value of this variable.
	**/
	public function value():Dynamic;
}