/* This file is generated, do not edit! */
package tensorflow.contrib.layers.ops.gen_sparse_feature_cross_op;
@:pythonImport("tensorflow.contrib.layers.ops.gen_sparse_feature_cross_op") extern class Gen_sparse_feature_cross_op_Module {
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
	static public var _sparse_feature_cross_outputs : Dynamic;
	static public var _sparse_feature_cross_v2_outputs : Dynamic;
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
		Generates sparse cross form a list of sparse tensors.
		
		The op takes two lists, one of 2D `SparseTensor` and one of 2D `Tensor`, each
		representing features of one feature column. It outputs a 2D `SparseTensor` with
		the batchwise crosses of these features.
		
		For example, if the inputs are
		
		    inputs[0]: SparseTensor with shape = [2, 2]
		    [0, 0]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    inputs[1]: SparseTensor with shape = [2, 1]
		    [0, 0]: "d"
		    [1, 0]: "e"
		
		    inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be
		
		    shape = [2, 2]
		    [0, 0]: "a_X_d_X_f"
		    [1, 0]: "b_X_e_X_g"
		    [1, 1]: "c_X_e_X_g"
		
		if hashed_output=true then the output will be
		
		    shape = [2, 2]
		    [0, 0]: HashCombine(
		                Fingerprint64("f"), HashCombine(
		                    Fingerprint64("d"), Fingerprint64("a")))
		    [1, 0]: HashCombine(
		                Fingerprint64("g"), HashCombine(
		                    Fingerprint64("e"), Fingerprint64("b")))
		    [1, 1]: HashCombine(
		                Fingerprint64("g"), HashCombine(
		                    Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  indices: A list of `Tensor` objects with type `int64`.
		    2-D.  Indices of each input `SparseTensor`.
		  values: A list of `Tensor` objects with types from: `int64`, `string`.
		    1-D.   values of each `SparseTensor`.
		  shapes: A list with the same length as `indices` of `Tensor` objects with type `int64`.
		    1-D.   Shapes of each `SparseTensor`.
		  dense: A list of `Tensor` objects with types from: `int64`, `string`.
		    2-D.    Columns represented by dense `Tensor`.
		  hashed_output: A `bool`.
		  num_buckets: An `int` that is `>= 0`.
		  out_type: A `tf.DType` from: `tf.int64, tf.string`.
		  internal_type: A `tf.DType` from: `tf.int64, tf.string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`. 2-D.  Indices of the concatenated `SparseTensor`.
		  output_values: A `Tensor` of type `out_type`. 1-D.  Non-empty values of the concatenated or hashed
		    `SparseTensor`.
		  output_shape: A `Tensor` of type `int64`. 1-D.  Shape of the concatenated `SparseTensor`.
	**/
	static public function sparse_feature_cross(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, out_type:Dynamic, internal_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_feature_cross
	**/
	static public function sparse_feature_cross_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, out_type:Dynamic, internal_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generates sparse cross form a list of sparse tensors.
		
		The op takes two lists, one of 2D `SparseTensor` and one of 2D `Tensor`, each
		representing features of one feature column. It outputs a 2D `SparseTensor` with
		the batchwise crosses of these features.
		
		For example, if the inputs are
		
		    inputs[0]: SparseTensor with shape = [2, 2]
		    [0, 0]: "a"
		    [1, 0]: "b"
		    [1, 1]: "c"
		
		    inputs[1]: SparseTensor with shape = [2, 1]
		    [0, 0]: "d"
		    [1, 0]: "e"
		
		    inputs[2]: Tensor [["f"], ["g"]]
		
		then the output will be
		
		    shape = [2, 2]
		    [0, 0]: "a_X_d_X_f"
		    [1, 0]: "b_X_e_X_g"
		    [1, 1]: "c_X_e_X_g"
		
		if hashed_output=true then the output will be
		
		    shape = [2, 2]
		    [0, 0]: FingerprintCat64(
		                Fingerprint64("f"), FingerprintCat64(
		                    Fingerprint64("d"), Fingerprint64("a")))
		    [1, 0]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("b")))
		    [1, 1]: FingerprintCat64(
		                Fingerprint64("g"), FingerprintCat64(
		                    Fingerprint64("e"), Fingerprint64("c")))
		
		Args:
		  indices: A list of `Tensor` objects with type `int64`.
		    2-D.  Indices of each input `SparseTensor`.
		  values: A list of `Tensor` objects with types from: `int64`, `string`.
		    1-D.   values of each `SparseTensor`.
		  shapes: A list with the same length as `indices` of `Tensor` objects with type `int64`.
		    1-D.   Shapes of each `SparseTensor`.
		  dense: A list of `Tensor` objects with types from: `int64`, `string`.
		    2-D.    Columns represented by dense `Tensor`.
		  hashed_output: A `bool`.
		  num_buckets: An `int` that is `>= 0`.
		  hash_key: An `int`.
		  out_type: A `tf.DType` from: `tf.int64, tf.string`.
		  internal_type: A `tf.DType` from: `tf.int64, tf.string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_indices, output_values, output_shape).
		
		  output_indices: A `Tensor` of type `int64`. 2-D.  Indices of the concatenated `SparseTensor`.
		  output_values: A `Tensor` of type `out_type`. 1-D.  Non-empty values of the concatenated or hashed
		    `SparseTensor`.
		  output_shape: A `Tensor` of type `int64`. 1-D.  Shape of the concatenated `SparseTensor`.
	**/
	static public function sparse_feature_cross_v2(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_type:Dynamic, internal_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sparse_feature_cross_v2
	**/
	static public function sparse_feature_cross_v2_eager_fallback(indices:Dynamic, values:Dynamic, shapes:Dynamic, dense:Dynamic, hashed_output:Dynamic, num_buckets:Dynamic, hash_key:Dynamic, out_type:Dynamic, internal_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}