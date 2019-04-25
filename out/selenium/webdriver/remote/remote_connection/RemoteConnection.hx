/* This file is generated, do not edit! */
package selenium.webdriver.remote.remote_connection;
@:pythonImport("selenium.webdriver.remote.remote_connection", "RemoteConnection") extern class RemoteConnection {
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
	public function ___init__(remote_server_addr:Dynamic, ?keep_alive:Dynamic, ?resolve_ip:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(remote_server_addr:Dynamic, ?keep_alive:Dynamic, ?resolve_ip:Dynamic):Void;
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
		Send an HTTP request to the remote server.
		
		:Args:
		 - method - A string for the HTTP method to send the request with.
		 - url - A string for the URL to send the request to.
		 - body - A string for request body. Ignored unless method is POST or PUT.
		
		:Returns:
		  A dictionary with the server's parsed JSON response.
	**/
	public function _request(method:Dynamic, url:Dynamic, ?body:Dynamic):Dynamic;
	static public var _timeout : Dynamic;
	/**
		Send a command to the remote server.
		
		Any path subtitutions required for the URL mapped to the command should be
		included in the command parameters.
		
		:Args:
		 - command - A string specifying the command to execute.
		 - params - A dictionary of named parameters to send with the command as
		   its JSON payload.
	**/
	public function execute(command:Dynamic, params:Dynamic):Dynamic;
	/**
		Get headers for remote request.
		
		:Args:
		 - parsed_url - The parsed url
		 - keep_alive (Boolean) - Is this a keep-alive connection (default: False)
	**/
	static public function get_remote_connection_headers(parsed_url:Dynamic, ?keep_alive:Dynamic):Dynamic;
	/**
		:Returns:
		    Timeout value in seconds for all http requests made to the Remote Connection
	**/
	static public function get_timeout():Dynamic;
	/**
		Reset the http request timeout to socket._GLOBAL_DEFAULT_TIMEOUT
	**/
	static public function reset_timeout():Dynamic;
	/**
		Override the default timeout
		
		:Args:
		    - timeout - timeout value for http requests in seconds
	**/
	static public function set_timeout(timeout:Dynamic):Dynamic;
}