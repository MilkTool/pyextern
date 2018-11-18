/* This file is generated, do not edit! */
package tensorflow.contrib.periodic_resample.python.ops.gen_periodic_resample_op;
@:pythonImport("tensorflow.contrib.periodic_resample.python.ops.gen_periodic_resample_op") extern class Gen_periodic_resample_op_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
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
		Periodically resample elements of a tensor to conform to `shape`.
		
		This function implements a slightly more generic version of the subpixel
		convolutions found in this [paper](https://arxiv.org/abs/1609.05158).
		
		The formula for computing the elements in the `output` tensor is as follows:
		
		  `T` = `values` tensor of rank `R`
		
		  `S` = desired `shape` of output tensor (vector of length `R`)
		
		  `P` = `output` tensor of rank `R`
		
		  \\((T_1,\\ldots,T_R)\\) = shape(`T`)
		
		  \\([S_1,\\ldots,S_q,\\ldots,S_R]\\) = elements of vector `S`
		
		  A single element in `S` is left unspecified (denoted \\(S_q=-1\\)).
		
		  Let \\(f_i\\) denote the (possibly non-integer) factor that relates the original
		  dimension to the desired dimensions, \\(S_i=f_i T_i\\), for \\(i\\neq q\\) where
		  \\(f_i>0\\).
		
		  Define the following:
		
		  \\(g_i=\\lceil f_i\\rceil\\)
		
		  \\(t=\\prod_i T_i\\)
		
		  \\(s=\\prod_{i\\neq q} S_i\\)
		
		  \\(S_q\\) can then be defined by \\(S_q=\\lfloor t/s\\rfloor\\).
		  The elements of the resulting tensor are defined as
		
		  \\(P_{s_1,\\ldots,s_R}=T_{h_1,\\ldots,h_q,\\ldots,h_R}\\).
		
		  The \\(h_i\\) (\\(i\\neq q\\)) are defined by \\(h_i=\\lfloor s_i/g_i\\rfloor\\).
		
		  \\(h_q=S_q\\sum_{j\\neq q}^{q-1}G_j \\mathrm{mod}(s_j,g_j) + s_q\\), where
		  \\(G_j=\\prod_{i}^{j-1}g_i\\) (\\(G_0=1\\)).
		
		One drawback of this method is that whenever the output dimensions are slightly
		less than integer multiples of the input dimensions, many of the tensor elements
		are repeated in an inefficient way. This is resolved by specifying that all
		desired dimensions are integer multiples of the input tensor.
		
		For example:
		
		```prettyprint
		`input` is [[ 0  1  2  3]
		            [ 4  5  6  7]
		            [ 8  9 10 11]]
		
		tf.periodic_resample(input, [6, None]) ==> [[ 0  1]
		                                            [ 2  3]
		                                            [ 4  5]
		                                            [ 6  7]
		                                            [ 8  9]
		                                            [10 11]]
		```
		
		Args:
		  values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    The tensor of rank `R` to periodic_resample
		  shape: A `tf.TensorShape` or list of `ints`.
		    A 1-D tensor representing the desired shape of the output tensor.
		    Exactly one element of this tensor must have the value `None` which represents
		    that this dimension of `values` can be adjusted downward in order to
		    accommodate increases in other dimensions. The specified sizes of the
		    non-adjustable dimensions must by at least as large as in the `values` tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `values`.
		  Periodically resampled tensor that has dimensions specified as in
		  `shape` except that the dimension specified as `None` will be minimally
		  decreased as necessary.
	**/
	static public function periodic_resample(values:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function periodic_resample
	**/
	static public function periodic_resample_eager_fallback(values:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  grad: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		  original_shape: A `tf.TensorShape` or list of `ints`.
		  desired_shape: A `tf.TensorShape` or list of `ints`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `grad`.
	**/
	static public function periodic_resample_op_grad(grad:Dynamic, original_shape:Dynamic, desired_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function periodic_resample_op_grad
	**/
	static public function periodic_resample_op_grad_eager_fallback(grad:Dynamic, original_shape:Dynamic, desired_shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}