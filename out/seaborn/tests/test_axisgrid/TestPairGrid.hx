/* This file is generated, do not edit! */
package seaborn.tests.test_axisgrid;
@:pythonImport("seaborn.tests.test_axisgrid", "TestPairGrid") extern class TestPairGrid {
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var df : Dynamic;
	static public var rs : Dynamic;
	/**
		Ensure that all figures are closed on exit.
	**/
	static public function teardown_class():Dynamic;
	public function test_default_axes():Dynamic;
	public function test_hue_kws():Dynamic;
	public function test_hue_order(kwargs:Dynamic):Dynamic;
	public function test_hue_order_missing_level(kwargs:Dynamic):Dynamic;
	public function test_ignore_datelike_data():Dynamic;
	public function test_map():Dynamic;
	public function test_map_diag(kwargs:Dynamic):Dynamic;
	public function test_map_diag_and_offdiag(kwargs:Dynamic):Dynamic;
	public function test_map_lower():Dynamic;
	public function test_map_nonsquare():Dynamic;
	public function test_map_upper():Dynamic;
	public function test_nondefault_index():Dynamic;
	public function test_pairplot(kwargs:Dynamic):Dynamic;
	public function test_pairplot_kde(kwargs:Dynamic):Dynamic;
	public function test_pairplot_markers(kwargs:Dynamic):Dynamic;
	public function test_pairplot_reg(kwargs:Dynamic):Dynamic;
	public function test_palette():Dynamic;
	public function test_self_axes():Dynamic;
	public function test_self_data():Dynamic;
	public function test_self_fig():Dynamic;
	public function test_size():Dynamic;
	public function test_specific_nonsquare_axes():Dynamic;
	public function test_specific_nonsquare_axes_with_array():Dynamic;
	public function test_specific_square_axes():Dynamic;
	public function test_specific_square_axes_with_array():Dynamic;
}