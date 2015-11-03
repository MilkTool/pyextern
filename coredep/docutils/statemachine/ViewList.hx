/* This file is generated, do not edit! */
package docutils.statemachine;
@:pythonImport("docutils.statemachine", "ViewList") extern class ViewList {
	public function _ViewList__cast(other:Dynamic):Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __cmp__(other:Dynamic):Dynamic;
	public function __contains__(item:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	public function __delitem__(i:Dynamic):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(i:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	public function __imul__(n:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?initlist:Dynamic, ?source:Dynamic, ?items:Dynamic, ?parent:Dynamic, ?parent_offset:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(n:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
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
	public function __rmul__(n:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(i:Dynamic, item:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	public function append(item:Dynamic, ?source:Dynamic, ?offset:Dynamic):Dynamic;
	public function count(item:Dynamic):Dynamic;
	/**
		Break link between this list and parent list.
	**/
	public function disconnect():Dynamic;
	public function extend(other:Dynamic):Dynamic;
	public function index(item:Dynamic):Dynamic;
	/**
		Return source & offset for index `i`.
	**/
	public function info(i:Dynamic):Dynamic;
	public function insert(i:Dynamic, item:Dynamic, ?source:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Return offset for index `i`.
	**/
	public function offset(i:Dynamic):Dynamic;
	public function pop(?i:Dynamic):Dynamic;
	/**
		Print the list in `grep` format (`source:offset:value` lines)
	**/
	public function pprint():Dynamic;
	public function remove(item:Dynamic):Dynamic;
	public function reverse():Dynamic;
	public function sort(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return source for index `i`.
	**/
	public function source(i:Dynamic):Dynamic;
	/**
		Remove items from the end of the list, without touching the parent.
	**/
	public function trim_end(?n:Dynamic):Dynamic;
	/**
		Remove items from the start of the list, without touching the parent.
	**/
	public function trim_start(?n:Dynamic):Dynamic;
	/**
		Return iterator yielding (source, offset, value) tuples.
	**/
	public function xitems():Dynamic;
}