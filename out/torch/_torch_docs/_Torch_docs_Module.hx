/* This file is generated, do not edit! */
package torch._torch_docs;
@:pythonImport("torch._torch_docs") extern class _Torch_docs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function add_docstr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var factory_common_args : Dynamic;
	static public var factory_data_common_args : Dynamic;
	static public var factory_like_common_args : Dynamic;
	/**
		Maps a description of args to a dictionary of {argname: description}.
		    Input:
		        ('    weight (Tensor): a weight tensor
		' +
		         '        Some optional description')
		    Output: {
		        'weight':         'weight (Tensor): a weight tensor
		        Some optional description'
		    }
		    
	**/
	static public function parse_kwargs(desc:Dynamic):Dynamic;
	static public var reduceops_common_args : Dynamic;
}