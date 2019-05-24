/* This file is generated, do not edit! */
package numpy.core._add_newdocs;
@:pythonImport("numpy.core._add_newdocs") extern class _Add_newdocs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds documentation to obj which is in module place.
		
		If doc is a string add it to obj as a docstring
		
		If doc is a tuple, then the first element is interpreted as
		   an attribute of obj and the second as the docstring
		      (method, docstring)
		
		If doc is a list, then each element of the list should be a
		   sequence of length two --> [(method1, docstring1),
		   (method2, docstring2), ...]
		
		This routine never raises an error.
		
		This routine cannot modify read-only docstrings, as appear
		in new-style classes or built-in functions. Because this
		routine never raises an error the caller must check manually
		that the docstrings were changed.
	**/
	static public function add_newdoc(place:Dynamic, obj:Dynamic, doc:Dynamic):Dynamic;
	static public function add_newdoc_for_scalar_type(obj:Dynamic, fixed_aliases:Dynamic, doc:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function numeric_type_aliases(aliases:Dynamic):Dynamic;
	static public var possible_aliases : Dynamic;
	static public var print_function : Dynamic;
	static public var tobytesdoc : Dynamic;
}