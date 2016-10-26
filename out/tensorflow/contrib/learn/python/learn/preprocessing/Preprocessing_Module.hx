/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.preprocessing;
@:pythonImport("tensorflow.contrib.learn.python.learn.preprocessing") extern class Preprocessing_Module {
	static public var TOKENIZER_RE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Sets up processor iterable.
		
		Args:
		  x: numpy, pandas or iterable.
		
		Returns:
		  Iterable of data to process.
	**/
	static public function setup_processor_data_feeder(x:Dynamic):Dynamic;
	/**
		Tokenizer generator.
		
		Args:
		  iterator: Input iterator with strings.
		
		Yields:
		  array of tokens per each value in the input.
	**/
	static public function tokenizer(iterator:Dynamic):Dynamic;
}