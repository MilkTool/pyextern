/* This file is generated, do not edit! */
package pandas.io.json.table_schema;
@:pythonImport("pandas.io.json.table_schema") extern class Table_schema_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert a NumPy / pandas type to its corresponding json_table.
		
		Parameters
		----------
		x : array or dtype
		
		Returns
		-------
		t : str
		    the Table Schema data types
		
		Notes
		-----
		This table shows the relationship between NumPy / pandas dtypes,
		and Table Schema dtypes.
		
		==============  =================
		Pandas type     Table Schema type
		==============  =================
		int64           integer
		float64         number
		bool            boolean
		datetime64[ns]  datetime
		timedelta64[ns] duration
		object          str
		categorical     any
		=============== =================
	**/
	static public function as_json_table_type(x:Dynamic):String;
	/**
		Create a Table schema from ``data``.
		
		Parameters
		----------
		data : Series, DataFrame
		index : bool, default True
		    Whether to include ``data.index`` in the schema.
		primary_key : bool or None, default True
		    column names to designate as the primary key.
		    The default `None` will set `'primaryKey'` to the index
		    level or levels if the index is unique.
		version : bool, default True
		    Whether to include a field `pandas_version` with the version
		    of pandas that generated the schema.
		
		Returns
		-------
		schema : dict
		
		Examples
		--------
		>>> df = pd.DataFrame(
		...     {'A': [1, 2, 3],
		...      'B': ['a', 'b', 'c'],
		...      'C': pd.date_range('2016-01-01', freq='d', periods=3),
		...     }, index=pd.Index(range(3), name='idx'))
		>>> build_table_schema(df)
		{'fields': [{'name': 'idx', 'type': 'integer'},
		{'name': 'A', 'type': 'integer'},
		{'name': 'B', 'type': 'string'},
		{'name': 'C', 'type': 'datetime'}],
		'pandas_version': '0.20.0',
		'primaryKey': ['idx']}
		
		Notes
		-----
		See `_as_json_table_type` for conversion types.
		Timedeltas as converted to ISO8601 duration format with
		9 decimal places after the secnods field for nanosecond precision.
		
		Categoricals are converted to the `any` dtype, and use the `enum` field
		constraint to list the allowed values. The `ordered` attribute is included
		in an `ordered` field.
	**/
	static public function build_table_schema(data:Dynamic, ?index:Dynamic, ?primary_key:Dynamic, ?version:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Converts a JSON field descriptor into its corresponding NumPy / pandas type
		
		Parameters
		----------
		field
		    A JSON field descriptor
		
		Returns
		-------
		dtype
		
		Raises
		-----
		ValueError
		    If the type of the provided field is unknown or currently unsupported
		
		Examples
		--------
		>>> convert_json_field_to_pandas_type({'name': 'an_int',
		                                       'type': 'integer'})
		'int64'
		>>> convert_json_field_to_pandas_type({'name': 'a_categorical',
		                                       'type': 'any',
		                                       'contraints': {'enum': [
		                                                      'a', 'b', 'c']},
		                                       'ordered': True})
		'CategoricalDtype(categories=['a', 'b', 'c'], ordered=True)'
		>>> convert_json_field_to_pandas_type({'name': 'a_datetime',
		                                       'type': 'datetime'})
		'datetime64[ns]'
		>>> convert_json_field_to_pandas_type({'name': 'a_datetime_with_tz',
		                                       'type': 'datetime',
		                                       'tz': 'US/Central'})
		'datetime64[ns, US/Central]'
	**/
	static public function convert_json_field_to_pandas_type(field:Dynamic):Dynamic;
	static public function convert_pandas_type_to_json_field(arr:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          a DatetimeTZDtype dtype.
		
		Examples
		--------
		>>> is_datetime64tz_dtype(object)
		False
		>>> is_datetime64tz_dtype([1, 2, 3])
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3]))  # tz-naive
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetime64tz_dtype(dtype)
		True
		>>> is_datetime64tz_dtype(s)
		True
	**/
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Period dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the Period dtype.
		
		Examples
		--------
		>>> is_period_dtype(object)
		False
		>>> is_period_dtype(PeriodDtype(freq="D"))
		True
		>>> is_period_dtype([1, 2, 3])
		False
		>>> is_period_dtype(pd.Period("2017-01-01"))
		False
		>>> is_period_dtype(pd.PeriodIndex([], freq="A"))
		True
	**/
	static public function is_period_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the string dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the string dtype.
		
		Examples
		--------
		>>> is_string_dtype(str)
		True
		>>> is_string_dtype(object)
		True
		>>> is_string_dtype(int)
		False
		>>>
		>>> is_string_dtype(np.array(['a', 'b']))
		True
		>>> is_string_dtype(pd.Series([1, 2]))
		False
	**/
	static public function is_string_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> is_timedelta64_dtype('0 days')
		False
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Converts JSON as string to dict object structure. Use precise_float=True to use high precision float decoder.
	**/
	static public function loads(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Builds a DataFrame from a given schema
		
		Parameters
		----------
		json :
		    A JSON table schema
		precise_float : boolean
		    Flag controlling precision when decoding string to double values, as
		    dictated by ``read_json``
		
		Returns
		-------
		df : DataFrame
		
		Raises
		------
		NotImplementedError
		    If the JSON table schema contains either timezone or timedelta data
		
		Notes
		-----
		    Because :func:`DataFrame.to_json` uses the string 'index' to denote a
		    name-less :class:`Index`, this function sets the name of the returned
		    :class:`DataFrame` to ``None`` when said string is encountered with a
		    normal :class:`Index`. For a :class:`MultiIndex`, the same limitation
		    applies to any strings beginning with 'level_'. Therefore, an
		    :class:`Index` name of 'index'  and :class:`MultiIndex` names starting
		    with 'level_' are not supported.
		
		See also
		--------
		build_table_schema : inverse function
		pandas.read_json
	**/
	static public function parse_table_schema(json:Dynamic, precise_float:Dynamic):pandas.DataFrame;
	/**
		Sets index names to 'index' for regular, or 'level_x' for Multi
	**/
	static public function set_default_names(data:Dynamic):Dynamic;
}