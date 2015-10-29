/* This file is generated, do not edit! */
package pandas.tests.test_msgpack;
@:pythonImport("pandas.tests.test_msgpack.test_case") extern class Test_case {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function check(length:Dynamic, obj:Dynamic):Dynamic;
	static public function check_array(overhead:Dynamic, num:Dynamic):Dynamic;
	static public function check_raw(overhead:Dynamic, num:Dynamic):Dynamic;
	static public function match(obj:Dynamic, buf:Dynamic):Dynamic;
	/**
		Pack object `o` and return packed bytes
		
		See :class:`Packer` for options.
	**/
	static public function packb(o:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_1():Dynamic;
	static public function test_2():Dynamic;
	static public function test_3():Dynamic;
	static public function test_5():Dynamic;
	static public function test_9():Dynamic;
	static public function test_array16():Dynamic;
	static public function test_array32():Dynamic;
	static public function test_fixarray():Dynamic;
	static public function test_fixraw():Dynamic;
	static public function test_match():Dynamic;
	static public function test_raw16():Dynamic;
	static public function test_raw32():Dynamic;
	static public function test_unicode():Dynamic;
	/**
		unpackb(packed, object_hook=None, list_hook=None, bool use_list=1, encoding=None, unicode_errors='strict', object_pairs_hook=None, ext_hook=ExtType, Py_ssize_t max_str_len=2147483647, Py_ssize_t max_bin_len=2147483647, Py_ssize_t max_array_len=2147483647, Py_ssize_t max_map_len=2147483647, Py_ssize_t max_ext_len=2147483647)
		
		Unpack packed_bytes to object. Returns an unpacked object.
		
		Raises `ValueError` when `packed` contains extra bytes.
		
		See :class:`Unpacker` for options.
	**/
	static public function unpackb(args:haxe.extern.Rest<Dynamic>):Dynamic;
}