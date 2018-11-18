/* This file is generated, do not edit! */
package pandas.core.groupby.groupby;
@:pythonImport("pandas.core.groupby.groupby", "BinGrouper") extern class BinGrouper {
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
	public function ___init__(bins:Dynamic, binlabels:Dynamic, ?filter_empty:Dynamic, ?mutated:Dynamic, ?indexer:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(bins:Dynamic, binlabels:Dynamic, ?filter_empty:Dynamic, ?mutated:Dynamic, ?indexer:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _aggregate(result:Dynamic, counts:Dynamic, values:Dynamic, comp_ids:Dynamic, agg_func:Dynamic, is_numeric:Dynamic, is_datetimelike:Dynamic, ?min_count:Dynamic):Dynamic;
	public function _aggregate_series_fast(obj:Dynamic, func:Dynamic):Dynamic;
	public function _aggregate_series_pure_python(obj:Dynamic, func:Dynamic):Dynamic;
	static public var _cython_arity : Dynamic;
	static public var _cython_functions : Dynamic;
	public function _cython_operation(kind:Dynamic, values:Dynamic, how:Dynamic, axis:Dynamic, ?min_count:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _get_compressed_labels():Dynamic;
	public function _get_cython_function(kind:Dynamic, how:Dynamic, values:Dynamic, is_numeric:Dynamic):Dynamic;
	public function _get_group_keys():Dynamic;
	public function _get_splitter(data:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		if we define an builtin function for this argument, return it,
		otherwise return the arg
	**/
	public function _is_builtin_func(arg:Dynamic):Dynamic;
	static public var _name_functions : Dynamic;
	public function _transform(result:Dynamic, values:Dynamic, comp_ids:Dynamic, transform_func:Dynamic, is_numeric:Dynamic, is_datetimelike:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function agg_series(obj:Dynamic, func:Dynamic):Dynamic;
	public function aggregate(values:Dynamic, how:Dynamic, ?axis:Dynamic, ?min_count:Dynamic):Dynamic;
	public function apply(f:Dynamic, data:Dynamic, ?axis:Dynamic):Dynamic;
	public function get_group_levels():Dynamic;
	/**
		Groupby iterator
		
		Returns
		-------
		Generator yielding sequence of (name, subsetted object)
		for each group
	**/
	public function get_iterator(data:Dynamic, ?axis:Dynamic):Dynamic;
	public var group_info : Dynamic;
	public var groupings : Dynamic;
	/**
		dict {group name -> group labels} 
	**/
	public var groups : Dynamic;
	public var indices : Dynamic;
	public var is_monotonic : Dynamic;
	public var label_info : Dynamic;
	public var labels : Dynamic;
	public var levels : Dynamic;
	public var names : Dynamic;
	public var ngroups : Dynamic;
	public var nkeys : Dynamic;
	public var recons_labels : Dynamic;
	public var result_index : Dynamic;
	public var shape : Dynamic;
	/**
		Compute group sizes
	**/
	public function size():Dynamic;
	public function transform(values:Dynamic, how:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}