/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.control_flow_ops;
@:pythonImport("tensorflow.python.ops.parallel_for.control_flow_ops") extern class Control_flow_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Flattens the first two dimensions of x into a single dimension.
	**/
	static public function _flatten_first_two_dims(x:Dynamic):Dynamic;
	/**
		Implementation of pfor.
	**/
	static public function _pfor_impl(loop_fn:Dynamic, iters:Dynamic, ?parallel_iterations:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Runs `loop_fn` `iters` times and stacks the outputs.
		
		
		Runs `loop_fn` `iters` times, with input values from 0 to `iters - 1`, and
		stacks corresponding outputs of the different runs.
		
		Args:
		  loop_fn: A function that takes an int32 scalar tf.Tensor object representing
		    the iteration number, and returns a possibly nested structure of tensor
		    objects. The shape of these outputs should not depend on the input.
		  loop_fn_dtypes: dtypes for the outputs of loop_fn.
		  iters: Number of iterations for which to run loop_fn.
		  parallel_iterations: The number of iterations that can be dispatched in
		    parallel. This knob can be used to control the total memory usage.
		
		Returns:
		  Returns a nested structure of stacked output tensor objects with the same
		  nested structure as the output of `loop_fn`.
	**/
	static public function for_loop(loop_fn:Dynamic, loop_fn_dtypes:Dynamic, iters:Dynamic, ?parallel_iterations:Dynamic):Dynamic;
	/**
		Equivalent to running `loop_fn` `iters` times and stacking the outputs.
		
		`pfor` has functionality similar to `for_loop`, i.e. running `loop_fn` `iters`
		times, with input from 0 to `iters - 1`, and stacking corresponding output of
		each iteration. However the implementation does not use a tf.while_loop.
		Instead it adds new operations to the graph that collectively compute the same
		value as what running `loop_fn` in a loop would compute.
		
		
		This is an experimental feature and currently has a lot of limitations:
		  - There should be no data depenendency between the different iterations. For
		    example, a future iteration should not depend on a value or side-effect of
		    a previous iteration.
		  - Stateful kernels may mostly not be supported since these often imply a
		    data dependency or ordering of the iterations. We do support a limited set
		    of such stateful kernels though (like RandomFoo, Variable operations like
		    reads, etc).
		  - Conversion works only on a limited set of kernels for which a converter
		    has been registered.
		  - loop_fn has limited support for control flow operations. tf.cond in
		    particular is not supported.
		  - `loop_fn` should return nested structure of Tensors or Operations. However
		    if an Operation is returned, it should have zero outputs.
		  - The shape and dtype of `loop_fn` outputs should not depend on the input
		    to loop_fn.
		
		Args:
		  loop_fn: A function that takes an int32 scalar tf.Tensor object representing
		    the iteration number, and returns a possibly nested structure of Tensor or
		    Operation objects. Note that if setting `parallel_iterations` argument to
		    something other than None, `loop_fn` may be called more than once during
		    graph construction. So it may need to avoid mutating global state.
		  iters: Number of iterations for which to run loop_fn.
		  parallel_iterations: A knob to control how many iterations are vectorized
		    and dispatched in parallel. The default value of None corresponds to
		    vectorizing all the iterations.  If `parallel_iterations` is smaller than
		    `iters`, then chunks of at most that many iterations are dispatched in
		    sequence. This knob can be used to control the total memory usage.
		
		Returns:
		  Returns a nested structure of stacked tensor objects with the same nested
		  structure as the output of `loop_fn`.
		Raises:
		  ValueError: If parallel_iterations is not None and not an integer > 1.
	**/
	static public function pfor(loop_fn:Dynamic, iters:Dynamic, ?parallel_iterations:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}