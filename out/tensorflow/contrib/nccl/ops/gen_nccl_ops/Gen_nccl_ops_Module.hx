/* This file is generated, do not edit! */
package tensorflow.contrib.nccl.ops.gen_nccl_ops;
@:pythonImport("tensorflow.contrib.nccl.ops.gen_nccl_ops") extern class Gen_nccl_ops_Module {
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
		Outputs a tensor containing the reduction across all input tensors passed to ops
		
		within the same `shared_name.
		
		The graph should be constructed so if one op runs with shared_name value `c`,
		then `num_devices` ops will run with shared_name value `c`.  Failure to do so
		will cause the graph execution to fail to complete.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		    the input to the reduction
		  reduction: A `string` from: `"min", "max", "prod", "sum"`.
		    the reduction operation to perform.
		  num_devices: An `int`.
		    The number of devices participating in this reduction.
		  shared_name: A `string`.
		    Identifier that shared between ops of the same reduction.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  the value of the reduction across all `num_devices` devices.
	**/
	static public function nccl_all_reduce(input:Dynamic, reduction:Dynamic, num_devices:Dynamic, shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function nccl_all_reduce
	**/
	static public function nccl_all_reduce_eager_fallback(input:Dynamic, reduction:Dynamic, num_devices:Dynamic, shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Sends `input` to all devices that are connected to the output.
		
		The graph should be constructed so that all ops connected to the output have a
		valid device assignment, and the op itself is assigned one of these devices.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`, `int32`, `int64`.
		    The input to the broadcast.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the input tensor.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`. The same as input.
	**/
	static public function nccl_broadcast(input:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function nccl_broadcast
	**/
	static public function nccl_broadcast_eager_fallback(input:Dynamic, shape:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reduces `input` from `num_devices` using `reduction` to a single device.
		
		The graph should be constructed so that all inputs have a valid device
		assignment, and the op itself is assigned one of these devices.
		
		Args:
		  input: A list of at least 1 `Tensor` objects with the same type in: `half`, `float32`, `float64`, `int32`, `int64`.
		    The input to the reduction.
		  reduction: A `string` from: `"min", "max", "prod", "sum"`.
		    the reduction operation to perform.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `input`.
		  the value of the reduction across all `num_devices` devices.
	**/
	static public function nccl_reduce(input:Dynamic, reduction:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function nccl_reduce
	**/
	static public function nccl_reduce_eager_fallback(input:Dynamic, reduction:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}