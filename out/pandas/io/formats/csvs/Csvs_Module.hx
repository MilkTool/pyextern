/* This file is generated, do not edit! */
package pandas.io.formats.csvs;
@:pythonImport("pandas.io.formats.csvs") extern class Csvs_Module {
	static public function UnicodeWriter(f:Dynamic, ?dialect:Dynamic, ?encoding:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get file handle for given path/buffer and mode.
		
		Parameters
		----------
		path_or_buf :
		    a path (str) or buffer
		mode : str
		    mode to open path_or_buf with
		encoding : str or None
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default None
		    If 'infer' and `filepath_or_buffer` is path-like, then detect
		    compression from the following extensions: '.gz', '.bz2', '.zip',
		    or '.xz' (otherwise no compression).
		memory_map : boolean, default False
		    See parsers._parser_params for more information.
		is_text : boolean, default True
		    whether file/buffer is in text format (csv, json, etc.), or in binary
		    mode (pickle, etc.)
		
		Returns
		-------
		f : file-like
		    A file-like object
		handles : list of file-like objects
		    A list of file-like object that were opened in this function.
	**/
	static public function _get_handle(path_or_buf:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic, ?is_text:Dynamic):Dynamic;
	/**
		Get the compression method for filepath_or_buffer. If compression='infer',
		the inferred compression method is returned. Otherwise, the input
		compression method is returned unchanged, unless it's invalid, in which
		case an error is raised.
		
		Parameters
		----------
		filepath_or_buffer :
		    a path (str) or buffer
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}
		    If 'infer' and `filepath_or_buffer` is path-like, then detect
		    compression from the following extensions: '.gz', '.bz2', '.zip',
		    or '.xz' (otherwise no compression).
		
		Returns
		-------
		string or None :
		    compression method
		
		Raises
		------
		ValueError on invalid compression specified
	**/
	static public function _infer_compression(filepath_or_buffer:Dynamic, compression:Dynamic):Dynamic;
	/**
		If the filepath_or_buffer is a url, translate and return the buffer.
		Otherwise passthrough.
		
		Parameters
		----------
		filepath_or_buffer : a url, filepath (str, py.path.local or pathlib.Path),
		                     or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		mode : str, optional
		
		Returns
		-------
		tuple of ({a filepath_ or buffer or S3File instance},
		          encoding, str,
		          compression, str,
		          should_close, bool)
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : Boolean inverse of pandas.notna.
		Series.notna : Detect valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}