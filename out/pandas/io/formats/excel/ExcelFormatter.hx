/* This file is generated, do not edit! */
package pandas.io.formats.excel;
@:pythonImport("pandas.io.formats.excel", "ExcelFormatter") extern class ExcelFormatter {
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
	public function ___init__(df:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?cols:Dynamic, ?header:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?merge_cells:Dynamic, ?inf_rep:Dynamic, ?style_converter:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(df:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?cols:Dynamic, ?header:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?merge_cells:Dynamic, ?inf_rep:Dynamic, ?style_converter:Dynamic):Void;
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
	public function _format_body():Dynamic;
	public function _format_header():Dynamic;
	public function _format_header_mi():Dynamic;
	public function _format_header_regular():Dynamic;
	public function _format_hierarchical_rows():Dynamic;
	public function _format_regular_rows():Dynamic;
	public function _format_value(val:Dynamic):Dynamic;
	public function _generate_body(coloffset:Dynamic):Dynamic;
	public function get_formatted_cells():Dynamic;
	public var header_style : Dynamic;
	/**
		writer : string or ExcelWriter object
		    File path or existing ExcelWriter
		sheet_name : string, default 'Sheet1'
		    Name of sheet which will contain DataFrame
		startrow :
		    upper left cell row to dump data frame
		startcol :
		    upper left cell column to dump data frame
		freeze_panes : tuple of integer (length 2), default None
		    Specifies the one-based bottommost row and rightmost column that
		    is to be frozen
		engine : string, default None
		    write engine to use if writer is a path - you can also set this
		    via the options ``io.excel.xlsx.writer``, ``io.excel.xls.writer``,
		    and ``io.excel.xlsm.writer``.
	**/
	public function write(writer:Dynamic, ?sheet_name:Dynamic, ?startrow:Dynamic, ?startcol:Dynamic, ?freeze_panes:Dynamic, ?engine:Dynamic):Dynamic;
}