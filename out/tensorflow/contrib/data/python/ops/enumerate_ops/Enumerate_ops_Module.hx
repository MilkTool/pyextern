/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.enumerate_ops;
@:pythonImport("tensorflow.contrib.data.python.ops.enumerate_ops") extern class Enumerate_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		A transformation that enumerate the elements of a dataset. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.enumerate_dataset(...)`.
		
		It is Similar to python's `enumerate`.
		For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { 1, 2, 3 }
		b = { (7, 8), (9, 10) }
		
		# The nested structure of the `datasets` argument determines the
		# structure of elements in the resulting dataset.
		a.apply(tf.contrib.data.enumerate(start=5)) == { (5, 1), (6, 2), (7, 3) }
		b.apply(tf.contrib.data.enumerate()) == { (0, (7, 8)), (1, (9, 10)) }
		```
		
		Args:
		  start: A `tf.int64` scalar `tf.Tensor`, representing the start
		    value for enumeration.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function enumerate_dataset(?start:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}