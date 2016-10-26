/* This file is generated, do not edit! */
package tensorflow.python.framework.graph_util;
@:pythonImport("tensorflow.python.framework.graph_util") extern class Graph_util_Module {
	static public var _VARIABLE_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns true if 'op' refers to a Variable node.
	**/
	static public function _is_variable_op(op:Dynamic):Dynamic;
	static public function _node_name(n:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Replaces all the variables in a graph with constants of the same values.
		
		If you have a trained graph containing Variable ops, it can be convenient to
		convert them all to Const ops holding the same values. This makes it possible
		to describe the network fully with a single GraphDef file, and allows the
		removal of a lot of ops related to loading and saving the variables.
		
		Args:
		  sess: Active TensorFlow session containing the variables.
		  input_graph_def: GraphDef object holding the network.
		  output_node_names: List of name strings for the result nodes of the graph.
		  variable_names_whitelist: The set of variable names to convert (by default,
		                            all variables are converted).
		
		Returns:
		  GraphDef containing a simplified version of the original.
	**/
	static public function convert_variables_to_constants(sess:Dynamic, input_graph_def:Dynamic, output_node_names:Dynamic, ?variable_names_whitelist:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Extract the subgraph that can reach any of the nodes in 'dest_nodes'.
		
		Args:
		  graph_def: A graph_pb2.GraphDef proto.
		  dest_nodes: A list of strings specifying the destination node names.
		Returns:
		  The GraphDef of the sub-graph.
		
		Raises:
		  TypeError: If 'graph_def' is not a graph_pb2.GraphDef proto.
	**/
	static public function extract_sub_graph(graph_def:Dynamic, dest_nodes:Dynamic):Dynamic;
	/**
		Returns True if the given node_def must run on CPU, otherwise False.
		
		Args:
		  node: The node to be assigned to a device. Could be either an ops.Operation
		    or NodeDef.
		  pin_variables_on_cpu: If True, this function will return False if node_def
		    represents a variable-related op.
		
		Returns:
		  True if the given node must run on CPU, otherwise False.
	**/
	static public function must_run_on_cpu(node:Dynamic, ?pin_variables_on_cpu:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a new device string based on `device_string' but using /CPU:0.
		
		If the device is already on /CPU:0, this is a no-op.
		
		Args:
		  device_string: A device string.
		
		Returns:
		  A device string.
	**/
	static public function set_cpu0(device_string:Dynamic):Dynamic;
	/**
		Convenience function to get a shape from a NodeDef's input string.
	**/
	static public function tensor_shape_from_node_def_name(graph:Dynamic, input_name:Dynamic):Dynamic;
}