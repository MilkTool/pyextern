/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_control_flow_ops;
@:pythonImport("tensorflow.python.ops.gen_control_flow_ops") extern class Gen_control_flow_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __exit_outputs : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __merge_outputs : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __ref_exit_outputs : Dynamic;
	static public var __ref_merge_outputs : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __switch_outputs : Dynamic;
	static public var _abort_outputs : Dynamic;
	static public var _control_trigger_outputs : Dynamic;
	static public var _enter_outputs : Dynamic;
	/**
		Exits the current frame to its parent frame.
		
		Exit makes its input `data` available to the parent frame.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the parent frame.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`. The same tensor as `data`.
	**/
	static public function _exit(data:Dynamic, ?name:Dynamic):Dynamic;
	static public var _loop_cond_outputs : Dynamic;
	/**
		Forwards the value of an available tensor from `inputs` to `output`.
		
		`Merge` waits for at least one of the tensors in `inputs` to become available.
		It is usually combined with `Switch` to implement branching.
		
		`Merge` forwards the first tensor for become available to `output`, and sets
		`value_index` to its index in `inputs`.
		
		It is an error if more than one tensor in `inputs` is available.
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects of the same type.
		    The input tensors, exactly one of which will become available.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, value_index).
		  output: A `Tensor`. Has the same type as `inputs`. Will be set to the available input tensor.
		  value_index: A `Tensor` of type `int32`. The index of the chosen input tensor in `inputs`.
	**/
	static public function _merge(inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public var _next_iteration_outputs : Dynamic;
	static public var _no_op_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _ref_enter_outputs : Dynamic;
	/**
		Exits the current frame to its parent frame.
		
		Exit makes its input `data` available to the parent frame.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the parent frame.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
		  The same tensor as `data`.
	**/
	static public function _ref_exit(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the value of an available tensor from `inputs` to `output`.
		
		`Merge` waits for at least one of the tensors in `inputs` to become available.
		It is usually combined with `Switch` to implement branching.
		
		`Merge` forwards the first tensor for become available to `output`, and sets
		`value_index` to its index in `inputs`.
		
		It is an error if more than one tensor in `inputs` is available.
		
		Args:
		  inputs: A list of at least 1 mutable `Tensor` objects of the same type.
		    The input tensors, exactly one of which will become available.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, value_index).
		  output: A mutable `Tensor`. Has the same type as `inputs`. Will be set to the available input tensor.
		  value_index: A `Tensor` of type `int32`. The index of the chosen input tensor in `inputs`.
	**/
	static public function _ref_merge(inputs:Dynamic, ?name:Dynamic):Dynamic;
	static public var _ref_next_iteration_outputs : Dynamic;
	static public var _ref_select_outputs : Dynamic;
	static public var _ref_switch_outputs : Dynamic;
	/**
		Forwards `data` to the output port determined by `pred`.
		
		If `pred` is true, the `data` input is forwarded to `output_true`. Otherwise,
		the data goes to `output_false`.
		
		See also `RefSwitch` and `Merge`.
		
		Args:
		  data: A `Tensor`. The tensor to be forwarded to the appropriate output.
		  pred: A `Tensor` of type `bool`.
		    A scalar that specifies which output port will receive data.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_false, output_true).
		  output_false: A `Tensor`. Has the same type as `data`. If `pred` is false, data will be forwarded to this output.
		  output_true: A `Tensor`. Has the same type as `data`. If `pred` is true, data will be forwarded to this output.
	**/
	static public function _switch(data:Dynamic, pred:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Raise a exception to abort the process when called.
		
		Returns nothing but an exception.
		
		Args:
		  error_msg: An optional `string`. Defaults to `""`.
		    A string which is the message associated with the exception.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function abort(?error_msg:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Does nothing. Serves as a control trigger for scheduling.
		
		Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function control_trigger(?name:Dynamic):Dynamic;
	/**
		Creates or finds a child frame, and makes `data` available to the child frame.
		
		This op is used together with `Exit` to create loops in the graph.
		The unique `frame_name` is used by the `Executor` to identify frames. If
		`is_constant` is true, `output` is a constant in the child frame; otherwise
		it may be changed in the child frame. At most `parallel_iterations` iterations
		are run in parallel in the child frame.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the child frame.
		  frame_name: A `string`. The name of the child frame.
		  is_constant: An optional `bool`. Defaults to `False`.
		    If true, the output is constant within the child frame.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		    The number of iterations allowed to run in parallel.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`. The same tensor as `data`.
	**/
	static public function enter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the input to the output.
		
		This operator represents the loop termination condition used by the
		"pivot" switches of a loop.
		
		Args:
		  input: A `Tensor` of type `bool`.
		    A boolean scalar, representing the branch predicate of the Switch op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`. The same tensor as `input`.
	**/
	static public function loop_cond(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes its input available to the next iteration.
		
		Args:
		  data: A `Tensor`. The tensor to be made available to the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `data`. The same tensor as `data`.
	**/
	static public function next_iteration(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Does nothing. Only useful as a placeholder for control edges.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function no_op(?name:Dynamic):Dynamic;
	/**
		Creates or finds a child frame, and makes `data` available to the child frame.
		
		The unique `frame_name` is used by the `Executor` to identify frames. If
		`is_constant` is true, `output` is a constant in the child frame; otherwise
		it may be changed in the child frame. At most `parallel_iterations` iterations
		are run in parallel in the child frame.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the child frame.
		  frame_name: A `string`. The name of the child frame.
		  is_constant: An optional `bool`. Defaults to `False`.
		    If true, the output is constant within the child frame.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		    The number of iterations allowed to run in parallel.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
		  The same tensor as `data`.
	**/
	static public function ref_enter(data:Dynamic, frame_name:Dynamic, ?is_constant:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Makes its input available to the next iteration.
		
		Args:
		  data: A mutable `Tensor`.
		    The tensor to be made available to the next iteration.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `data`.
		  The same tensor as `data`.
	**/
	static public function ref_next_iteration(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the `index`th element of `inputs` to `output`.
		
		Args:
		  index: A `Tensor` of type `int32`.
		    A scalar that determines the input that gets selected.
		  inputs: A list of at least 1 mutable `Tensor` objects of the same type.
		    A list of ref tensors, one of which will be forwarded to `output`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `inputs`. The forwarded tensor.
	**/
	static public function ref_select(index:Dynamic, inputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Forwards the ref tensor `data` to the output port determined by `pred`.
		
		If `pred` is true, the `data` input is forwarded to `output_true`. Otherwise,
		the data goes to `output_false`.
		
		See also `Switch` and `Merge`.
		
		Args:
		  data: A mutable `Tensor`.
		    The ref tensor to be forwarded to the appropriate output.
		  pred: A `Tensor` of type `bool`.
		    A scalar that specifies which output port will receive data.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_false, output_true).
		  output_false: A mutable `Tensor`. Has the same type as `data`. If `pred` is false, data will be forwarded to this output.
		  output_true: A mutable `Tensor`. Has the same type as `data`. If `pred` is true, data will be forwarded to this output.
	**/
	static public function ref_switch(data:Dynamic, pred:Dynamic, ?name:Dynamic):Dynamic;
}