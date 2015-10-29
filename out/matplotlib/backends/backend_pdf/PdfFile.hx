/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf", "PdfFile") extern class PdfFile {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function __init__(filename:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	public function _get_xobject_symbol_name(filename:Dynamic, symbol_name:Dynamic):Dynamic;
	public function _gray(im:Dynamic, ?rc:Dynamic, ?gc:Dynamic, ?bc:Dynamic):Dynamic;
	static public var _identityToUnicodeCMap : Dynamic;
	public function _rgb(im:Dynamic):Dynamic;
	public function _write_afm_font(filename:Dynamic):Dynamic;
	public function addGouraudTriangles(points:Dynamic, colors:Dynamic):Dynamic;
	/**
		Return name of an ExtGState that sets alpha to the given value
	**/
	public function alphaState(alpha:Dynamic):Dynamic;
	public function beginStream(id:Dynamic, len:Dynamic, ?extra:Dynamic):Dynamic;
	public function close():Dynamic;
	public function createType1Descriptor(t1font:Dynamic, fontfile:Dynamic):Dynamic;
	/**
		Embed the TTF font from the named file into the document.
	**/
	public function embedTTF(filename:Dynamic, characters:Dynamic):Dynamic;
	public function embedTeXFont(texname:Dynamic, fontinfo:Dynamic):Dynamic;
	public function endStream():Dynamic;
	/**
		Select a font based on fontprop and return a name suitable for
		Op.selectfont. If fontprop is a string, it will be interpreted
		as the filename (or dvi name) of the font.
	**/
	public function fontName(fontprop:Dynamic):Dynamic;
	public function hatchPattern(hatch_style:Dynamic):Dynamic;
	/**
		Return name of an image XObject representing the given image.
	**/
	public function imageObject(image:Dynamic):Dynamic;
	/**
		Return name of a marker XObject representing the given path.
	**/
	public function markerObject(path:Dynamic, trans:Dynamic, fillp:Dynamic, strokep:Dynamic, lw:Dynamic, joinstyle:Dynamic, capstyle:Dynamic):Dynamic;
	public function newPage(width:Dynamic, height:Dynamic):Dynamic;
	public function output(data:Dynamic):Dynamic;
	public function pathCollectionObject(gc:Dynamic, path:Dynamic, trans:Dynamic, padding:Dynamic, filled:Dynamic, stroked:Dynamic):Dynamic;
	static public function pathOperations(path:Dynamic, transform:Dynamic, ?clip:Dynamic, ?simplify:Dynamic, ?sketch:Dynamic):Dynamic;
	public function recordXref(id:Dynamic):Dynamic;
	/**
		Reserve an ID for an indirect object.
		The name is used for debugging in case we forget to print out
		the object with writeObject.
	**/
	public function reserveObject(?name:Dynamic):Dynamic;
	public function write(data:Dynamic):Dynamic;
	public function writeFonts():Dynamic;
	public function writeGouraudTriangles():Dynamic;
	public function writeHatches():Dynamic;
	public function writeImages():Dynamic;
	/**
		Write out the info dictionary, checking it for good form
	**/
	public function writeInfoDict():Dynamic;
	public function writeMarkers():Dynamic;
	public function writeObject(object:Dynamic, contents:Dynamic):Dynamic;
	public function writePath(path:Dynamic, transform:Dynamic, ?clip:Dynamic, ?sketch:Dynamic):Dynamic;
	public function writePathCollectionTemplates():Dynamic;
	/**
		Write out the PDF trailer.
	**/
	public function writeTrailer():Dynamic;
	/**
		Write out the xref table.
	**/
	public function writeXref():Dynamic;
}