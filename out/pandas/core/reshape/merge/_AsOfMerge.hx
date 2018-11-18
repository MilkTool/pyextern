/* This file is generated, do not edit! */
package pandas.core.reshape.merge;
@:pythonImport("pandas.core.reshape.merge", "_AsOfMerge") extern class _AsOfMerge {
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
	public function ___init__(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?by:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?axis:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?fill_method:Dynamic, ?how:Dynamic, ?tolerance:Dynamic, ?allow_exact_matches:Dynamic, ?direction:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?by:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?axis:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?fill_method:Dynamic, ?how:Dynamic, ?tolerance:Dynamic, ?allow_exact_matches:Dynamic, ?direction:Dynamic):Void;
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
	/**
		This is our asof key, the 'on' 
	**/
	public var _asof_key : Dynamic;
	/**
		return the join indexers 
	**/
	public function _get_join_indexers():Dynamic;
	public function _get_join_info():Dynamic;
	/**
		Note: has side effects (copy/delete key columns)
		
		Parameters
		----------
		left
		right
		on
		
		Returns
		-------
		left_keys, right_keys
	**/
	public function _get_merge_keys():Dynamic;
	public function _indicator_post_merge(result:Dynamic):Dynamic;
	public function _indicator_pre_merge(left:Dynamic, right:Dynamic):Dynamic;
	public function _maybe_add_join_keys(result:Dynamic, left_indexer:Dynamic, right_indexer:Dynamic):Dynamic;
	public function _maybe_coerce_merge_keys():Dynamic;
	/**
		Restore index levels specified as `on` parameters
		
		Here we check for cases where `self.left_on` and `self.right_on` pairs
		each reference an index level in their respective DataFrames. The
		joined columns corresponding to these pairs are then restored to the
		index of `result`.
		
		**Note:** This method has side effects. It modifies `result` in-place
		
		Parameters
		----------
		result: DataFrame
		    merge result
		
		Returns
		-------
		None
	**/
	public function _maybe_restore_index_levels(result:Dynamic):Dynamic;
	static public var _merge_type : Dynamic;
	public function _validate(validate:Dynamic):Dynamic;
	public function _validate_specification():Dynamic;
	public function get_result():Dynamic;
}