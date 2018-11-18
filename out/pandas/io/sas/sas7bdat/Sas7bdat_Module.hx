/* This file is generated, do not edit! */
package pandas.io.sas.sas7bdat;
@:pythonImport("pandas.io.sas.sas7bdat") extern class Sas7bdat_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
}