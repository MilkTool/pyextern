/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QIcon") extern class QIcon {
	static public var Active : Dynamic;
	static public var Disabled : Dynamic;
	public function Mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Normal : Dynamic;
	static public var Off : Dynamic;
	static public var On : Dynamic;
	static public var Selected : Dynamic;
	public function State(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function actualSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addPixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function availableSizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cacheKey(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromTheme(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasThemeIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setIsMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setThemeName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setThemeSearchPaths(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function themeName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function themeSearchPaths(args:haxe.extern.Rest<Dynamic>):Dynamic;
}