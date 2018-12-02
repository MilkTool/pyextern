/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QTextCodec") extern class QTextCodec {
	public function ConversionFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ConversionFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ConvertInvalidToNull : Dynamic;
	public function ConverterState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DefaultConversion : Dynamic;
	static public var FreeFunction : Dynamic;
	static public var IgnoreHeader : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function aliases(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function availableCodecs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function availableMibs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canEncode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function codecForHtml(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function codecForLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function codecForMib(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function codecForName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function codecForUtfText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function convertToUnicode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fromUnicode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function makeDecoder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function makeEncoder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mibEnum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setCodecForLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toUnicode(args:haxe.extern.Rest<Dynamic>):Dynamic;
}