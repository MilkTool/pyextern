/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf") extern class Backend_pdf_Module {
	static public var FIXED_WIDTH : Dynamic;
	static public var ITALIC : Dynamic;
	static public var KERNING_UNFITTED : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var LOAD_NO_SCALE : Dynamic;
	static public var Op : Dynamic;
	static public var UTC : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _log : Dynamic;
	/**
		Return the PDF operator to paint a path in the following way:
		fill:   fill the path with the fill color
		stroke: stroke the outline of the path with the line color
	**/
	static public function _paint_path(fill:Dynamic, stroke:Dynamic):Dynamic;
	static public var _pdfops : Dynamic;
	static public function _string_escape(match:Dynamic):Dynamic;
	static public var _string_escape_regex : Dynamic;
	static public var backend_version : Dynamic;
	/**
		ceil(x)
		
		Return the ceiling of x as an Integral.
		This is the smallest integer >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cos(x)
		
		Return the cosine of x (measured in radians).
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Make one string from sequence of strings, with whitespace
		in between. The whitespace is chosen to form lines of at most
		linelen characters, if possible.
	**/
	static public function fill(strings:Dynamic, ?linelen:Dynamic):Dynamic;
	static public function findfont(prop:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		floor(x)
		
		Return the floor of x as an Integral.
		This is the largest integer <= x.
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_font(filename:Dynamic, ?hinting_factor:Dynamic):Dynamic;
	static public function get_realpath_and_stat(path:Dynamic):Dynamic;
	/**
		Returns True if the given font is a Postscript Compact Font Format
		Font embedded in an OpenType wrapper.  Used by the PostScript and
		PDF backends that can not subset these fonts.
	**/
	static public function is_opentype_cff_font(filename:Dynamic):Dynamic;
	/**
		return true if *obj* looks like a file object with a *write* method
	**/
	static public function is_writable_file_like(obj:Dynamic):Dynamic;
	/**
		Create a new figure manager instance.
		        
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
		        
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		Map Python objects to PDF syntax.
	**/
	static public function pdfRepr(obj:Dynamic):Dynamic;
	static public var pi : Dynamic;
	static public var rcParams : Dynamic;
	static public var required_interactive_framework : Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
	/**
		sin(x)
		
		Return the sine of x (measured in radians).
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Class decorator that fills in missing ordering methods
	**/
	static public function total_ordering(cls:Dynamic):Dynamic;
}