/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QPolygon") extern class QPolygon {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Return self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
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
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
	public function append(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function at(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function capacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function constData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function constFirst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function constLast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contains(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function containsPoint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endsWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function first(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function front(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function intersected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSharedWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function last(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastIndexOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function length(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function move(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pop_back(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pop_front(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prepend(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function push_back(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function push_front(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeFirst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeLast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeOne(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function replace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reserve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSharable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function squeeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startsWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function subtracted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function takeAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function takeFirst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function takeLast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function translate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function translated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function united(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function value(args:haxe.extern.Rest<Dynamic>):Dynamic;
}