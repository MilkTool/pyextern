/* This file is generated, do not edit! */
package numpy.distutils.cpuinfo;
@:pythonImport("numpy.distutils.cpuinfo", "DarwinCPUInfo") extern class DarwinCPUInfo {
	public function _CPUInfoBase__get_nbits():Dynamic;
	public function _DarwinCPUInfo__machine(n:Dynamic):Dynamic;
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
	public function __getattr__(name:Dynamic):Dynamic;
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
	public function ___init__():Dynamic;
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
	public function _getNCPUs():Dynamic;
	public function _is_32bit():Dynamic;
	public function _is_64bit():Dynamic;
	public function _is_Power_Macintosh():Dynamic;
	public function _is_i386():Dynamic;
	public function _is_ppc():Dynamic;
	public function _is_ppc403():Dynamic;
	public function _is_ppc505():Dynamic;
	public function _is_ppc601():Dynamic;
	public function _is_ppc602():Dynamic;
	public function _is_ppc603():Dynamic;
	public function _is_ppc603e():Dynamic;
	public function _is_ppc604():Dynamic;
	public function _is_ppc604e():Dynamic;
	public function _is_ppc620():Dynamic;
	public function _is_ppc630():Dynamic;
	public function _is_ppc740():Dynamic;
	public function _is_ppc7400():Dynamic;
	public function _is_ppc7450():Dynamic;
	public function _is_ppc750():Dynamic;
	public function _is_ppc801():Dynamic;
	public function _is_ppc821():Dynamic;
	public function _is_ppc823():Dynamic;
	public function _is_ppc860():Dynamic;
	public function _not_impl():Dynamic;
	public function _try_call(func:Dynamic):Dynamic;
	static public var info : Dynamic;
}