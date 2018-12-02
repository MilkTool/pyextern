/* This file is generated, do not edit! */
package pySide2.qtOpenGL;
@:pythonImport("PySide2.QtOpenGL", "QGLFramebufferObject") extern class QGLFramebufferObject {
	public function Attachment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CombinedDepthStencil : Dynamic;
	static public var Depth : Dynamic;
	static public var NoAttachment : Dynamic;
	public function PaintDeviceMetric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PdmDepth : Dynamic;
	static public var PdmDevicePixelRatio : Dynamic;
	static public var PdmDevicePixelRatioScaled : Dynamic;
	static public var PdmDpiX : Dynamic;
	static public var PdmDpiY : Dynamic;
	static public var PdmHeight : Dynamic;
	static public var PdmHeightMM : Dynamic;
	static public var PdmNumColors : Dynamic;
	static public var PdmPhysicalDpiX : Dynamic;
	static public var PdmPhysicalDpiY : Dynamic;
	static public var PdmWidth : Dynamic;
	static public var PdmWidthMM : Dynamic;
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
	public function attachment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function bindDefault(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function blitFramebuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function colorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatioF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function devicePixelRatioFScale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function drawTexture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function handle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasOpenGLFramebufferBlit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasOpenGLFramebufferObjects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isBound(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var painters : Dynamic;
	public function paintingActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function physicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function physicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redirected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function release(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sharedPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function texture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widthMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
}