/* This file is generated, do not edit! */
package pandas.tseries.offsets;
@:pythonImport("pandas.tseries.offsets", "BusinessHour") extern class BusinessHour {
	public function __add__(other:Dynamic):Dynamic;
	public function __call__(other:Dynamic):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
		Return a pickleable state
	**/
	public function __getstate__():Dynamic;
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
	public function ___init__(?n:Dynamic, ?normalize:Dynamic, ?start:Dynamic, ?end:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?n:Dynamic, ?normalize:Dynamic, ?start:Dynamic, ?end:Dynamic, ?offset:Dynamic):Void;
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
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
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
	public function __repr__():Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Reconstruct an instance from a pickled state
	**/
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
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
	static public var _adjust_dst : Dynamic;
	static public var _anchor : Dynamic;
	static public var _attributes : Dynamic;
	static public var _cacheable : Dynamic;
	static public var _day_opt : Dynamic;
	static public function _from_name(?suffix:Dynamic):Dynamic;
	/**
		Return business hours in a day by seconds.
	**/
	public function _get_business_hours_by_sec():Dynamic;
	public function _get_daytime_flag():Dynamic;
	public function _get_offset_day(other:Dynamic):Dynamic;
	/**
		If n is positive, return tomorrow's business day opening time.
		Otherwise yesterday's business day's opening time.
		
		Opening time always locates on BusinessDay.
		Otherwise, closing time may not if business hour extends over midnight.
	**/
	public function _next_opening_time(other:Dynamic):Dynamic;
	static public var _normalize_cache : Dynamic;
	public function _offset_str():Dynamic;
	/**
		Slight speedups using calculated values
	**/
	public function _onOffset(dt:Dynamic, businesshours:Dynamic):Dynamic;
	public function _params():Dynamic;
	static public var _prefix : Dynamic;
	/**
		If n is positive, return yesterday's business day opening time.
		Otherwise yesterday business day's opening time.
	**/
	public function _prev_opening_time(other:Dynamic):Dynamic;
	public function _repr_attrs():Dynamic;
	public function _should_cache():Dynamic;
	static public var _typ : Dynamic;
	static public var _use_relativedelta : Dynamic;
	/**
		Require that `n` be a nonzero integer.
		
		Parameters
		----------
		n : int
		
		Returns
		-------
		nint : int
		
		Raises
		------
		TypeError if `int(n)` raises
		ValueError if n != int(n)
	**/
	public function _validate_n(n:Dynamic):Int;
	public function apply(other:Dynamic):Dynamic;
	/**
		Vectorized apply of DateOffset to DatetimeIndex,
		raises NotImplentedError for offsets without a
		vectorized implementation
		
		Parameters
		----------
		i : DatetimeIndex
		
		Returns
		-------
		y : DatetimeIndex
	**/
	public function apply_index(other:Dynamic):pandas.DatetimeIndex;
	public function copy():Dynamic;
	public var freqstr : Dynamic;
	public function isAnchored():Dynamic;
	public var kwds : Dynamic;
	public var name : Dynamic;
	public var nanos : Dynamic;
	/**
		used for moving to next businessday
	**/
	public var next_bday : Dynamic;
	static public var normalize : Dynamic;
	/**
		Alias for self._offset
	**/
	public var offset : Dynamic;
	public function onOffset(dt:Dynamic):Dynamic;
	/**
		Roll provided date backward to next offset only if not on offset
	**/
	public function rollback(dt:Dynamic):Dynamic;
	/**
		Roll provided date forward to next offset only if not on offset
	**/
	public function rollforward(dt:Dynamic):Dynamic;
	public var rule_code : Dynamic;
}