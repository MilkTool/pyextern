/* This file is generated, do not edit! */
package tensorflow.contrib.predictor.core_estimator_predictor;
@:pythonImport("tensorflow.contrib.predictor.core_estimator_predictor", "CoreEstimatorPredictor") extern class CoreEstimatorPredictor {
	static public var __abstractmethods__ : Dynamic;
	/**
		Returns predictions based on `input_dict`.
		
		Args:
		  input_dict: a `dict` mapping strings to numpy arrays. These keys
		    must match `self._feed_tensors.keys()`.
		
		Returns:
		  A `dict` mapping strings to numpy arrays. The keys match
		  `self.fetch_tensors.keys()`.
		
		Raises:
		  ValueError: `input_dict` does not match `feed_tensors`.
	**/
	public function __call__(input_dict:Dynamic):Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Initialize a `CoreEstimatorPredictor`.
		
		Args:
		  estimator: an instance of `learn.python.estimator.Estimator`.
		  serving_input_receiver_fn: a function that takes no arguments and returns
		    an instance of `ServingInputReceiver` compatible with `estimator`.
		  output_key: Optional string specifying the export output to use. If
		    `None`, then `DEFAULT_SERVING_SIGNATURE_DEF_KEY` is used.
		  graph: Optional. The Tensorflow `graph` in which prediction should be
		    done.
		  config: `ConfigProto` proto used to configure the session.
	**/
	@:native("__init__")
	public function ___init__(estimator:Dynamic, serving_input_receiver_fn:Dynamic, ?output_key:Dynamic, ?graph:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Initialize a `CoreEstimatorPredictor`.
		
		Args:
		  estimator: an instance of `learn.python.estimator.Estimator`.
		  serving_input_receiver_fn: a function that takes no arguments and returns
		    an instance of `ServingInputReceiver` compatible with `estimator`.
		  output_key: Optional string specifying the export output to use. If
		    `None`, then `DEFAULT_SERVING_SIGNATURE_DEF_KEY` is used.
		  graph: Optional. The Tensorflow `graph` in which prediction should be
		    done.
		  config: `ConfigProto` proto used to configure the session.
	**/
	public function new(estimator:Dynamic, serving_input_receiver_fn:Dynamic, ?output_key:Dynamic, ?graph:Dynamic, ?config:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	public var feed_tensors : Dynamic;
	public var fetch_tensors : Dynamic;
	public var graph : Dynamic;
	public var session : Dynamic;
}