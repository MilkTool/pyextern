/* This file is generated, do not edit! */
package torch.jit.annotations;
@:pythonImport("torch.jit.annotations") extern class Annotations_Module {
	static public var PY35 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _def_end_regex : Dynamic;
	static public var _eval_env : Dynamic;
	static public function ann_to_type(ann:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		Returns the default signature for fn.
		
		The current formula is to use the source (if available) to determine the
		number of inputs and outputs, and set all their types as tensors.
		If the source is missing, we fall back to the numbers provided by the compiler,
		to make sure we don't cause an error there (although type mismatches can still happen).
		
		This method also accounts for the self argument if fn is a method.
	**/
	static public function default_signature(fn:Dynamic, source:Dynamic, _n_arguments:Dynamic, _n_binders:Dynamic):Dynamic;
	static public function get_signature(fn:Dynamic, ?_n_arguments:Dynamic, ?_n_binders:Dynamic):Dynamic;
	/**
		Tries to find the line containing a comment with the type annotation.
	**/
	static public function get_type_line(source:Dynamic):Dynamic;
	static public function is_tuple(ann:Dynamic):Dynamic;
	/**
		Parses a type annotation specified as a comment.
		
		Example inputs:
		    # type: (Tensor, torch.Tensor) -> Tuple[Tensor]
		    # type: (Tensor, Tuple[Tensor, Tensor]) -> Tensor
	**/
	static public function parse_type_line(type_line:Dynamic):Dynamic;
	/**
		Splits the comment with the type annotation into parts for argument and return types.
		
		For example, for an input of:
		    # type: (Tensor, torch.Tensor) -> Tuple[Tensor, Tensor]
		
		This function will return:
		    ("(Tensor, torch.Tensor)", "Tuple[Tensor, Tensor]")
	**/
	static public function split_type_line(type_line:Dynamic):Dynamic;
	/**
		Tries to use the Py3.5+ annotation syntax to get the type.
	**/
	static public function try_real_annotations(fn:Dynamic):Dynamic;
}