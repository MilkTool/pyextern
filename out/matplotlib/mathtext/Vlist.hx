/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext", "Vlist") extern class Vlist {
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
	@:native("__init__")
	public function ___init__(elements:Dynamic, ?h:Dynamic, ?m:Dynamic):Dynamic;
	public function __internal_repr__():Dynamic;
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
	/**
		A helper function to determine the highest order of glue
		used by the members of this list.  Used by vpack and hpack.
	**/
	public function _determine_order(totals:Dynamic):Dynamic;
	public function _set_glue(x:Dynamic, sign:Dynamic, totals:Dynamic, error_type:Dynamic):Dynamic;
	public function get_kerning(next:Dynamic):Dynamic;
	/**
		Grows one level larger.  There is no limit to how big
		something can get.
	**/
	public function grow():Dynamic;
	public function render(x1:Dynamic, y1:Dynamic, x2:Dynamic, y2:Dynamic):Dynamic;
	/**
		Shrinks one level smaller.  There are only three levels of
		sizes, after which things will no longer get smaller.
	**/
	public function shrink():Dynamic;
	/**
		The main duty of :meth:`vpack` is to compute the dimensions of
		the resulting boxes, and to adjust the glue if one of those
		dimensions is pre-specified.
		
		  - *h*: specifies a height
		  - *m*: is either 'exactly' or 'additional'.
		  - *l*: a maximum height
		
		Thus, ``vpack(h, 'exactly')`` produces a box whose height is
		exactly *h*, while ``vpack(h, 'additional')`` yields a box
		whose height is the natural height plus *h*.  The default
		values produce a box with the natural width.
	**/
	public function vpack(?h:Dynamic, ?m:Dynamic, ?l:Dynamic):Dynamic;
}