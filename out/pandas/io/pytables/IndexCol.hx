/* This file is generated, do not edit! */
package pandas.io.pytables;
@:pythonImport("pandas.io.pytables", "IndexCol") extern class IndexCol {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
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
		compare 2 col items 
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?values:Dynamic, ?kind:Dynamic, ?typ:Dynamic, ?cname:Dynamic, ?itemsize:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?kind_attr:Dynamic, ?pos:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?index_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?values:Dynamic, ?kind:Dynamic, ?typ:Dynamic, ?cname:Dynamic, ?itemsize:Dynamic, ?name:Dynamic, ?axis:Dynamic, ?kind_attr:Dynamic, ?pos:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?index_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
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
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
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
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _info_fields : Dynamic;
	public var attrs : Dynamic;
	/**
		return my current col description 
	**/
	public var col : Dynamic;
	/**
		set the values from this selection: take = take ownership 
	**/
	public function convert(values:Dynamic, nan_rep:Dynamic, encoding:Dynamic, errors:Dynamic):Dynamic;
	public function copy():Dynamic;
	/**
		return my cython values 
	**/
	public var cvalues : Dynamic;
	public var description : Dynamic;
	/**
		set the kind for this column 
	**/
	public function get_attr():Dynamic;
	/**
		infer this column from the table: create and return a new object
	**/
	public function infer(handler:Dynamic):Dynamic;
	static public var is_an_indexable : Dynamic;
	static public var is_data_indexable : Dynamic;
	/**
		return whether I am an indexed column 
	**/
	public var is_indexed : Dynamic;
	/**
		maybe set a string col itemsize:
		min_itemsize can be an integer or a dict with this columns name
		with an integer size 
	**/
	public function maybe_set_size(?min_itemsize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		retrieve the metadata for this columns 
	**/
	public function read_metadata(handler:Dynamic):Dynamic;
	/**
		set the kind for this column 
	**/
	public function set_attr():Dynamic;
	/**
		set the axis over which I index 
	**/
	public function set_axis(axis:Dynamic):Dynamic;
	/**
		set my state from the passed info 
	**/
	public function set_info(info:Dynamic):Dynamic;
	/**
		set the name of this indexer 
	**/
	public function set_name(name:Dynamic, ?kind_attr:Dynamic):Dynamic;
	/**
		set the position of this column in the Table 
	**/
	public function set_pos(pos:Dynamic):Dynamic;
	public function set_table(table:Dynamic):Dynamic;
	/**
		return the values & release the memory 
	**/
	public function take_data():Dynamic;
	/**
		set/update the info for this indexable with the key/value
		if there is a conflict raise/warn as needed 
	**/
	public function update_info(info:Dynamic):Dynamic;
	public function validate(handler:Dynamic, append:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function validate_and_set(handler:Dynamic, append:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function validate_attr(append:Dynamic):Dynamic;
	/**
		validate this column: return the compared against itemsize 
	**/
	public function validate_col(?itemsize:Dynamic):Dynamic;
	/**
		validate that kind=category does not change the categories 
	**/
	public function validate_metadata(handler:Dynamic):Dynamic;
	public function validate_names():Dynamic;
	/**
		set the meta data 
	**/
	public function write_metadata(handler:Dynamic):Dynamic;
}