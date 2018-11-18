/* This file is generated, do not edit! */
package tensorflow.python.estimator.training;
@:pythonImport("tensorflow.python.estimator.training", "EvalSpec") extern class EvalSpec {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.n
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Creates a validated `EvalSpec` instance.
		
		Args:
		  input_fn: A function that constructs the input data for evaluation.
		    See [Premade Estimators](https://tensorflow.org/api_guides/premade_estimators#create_input_functions)
		    for more information. The function should construct and return one of
		    the following:
		      * A 'tf.data.Dataset' object: Outputs of `Dataset` object must be a
		        tuple (features, labels) with same constraints as below.
		      * A tuple (features, labels): Where features is a `Tensor` or a
		        dictionary of string feature name to `Tensor` and labels is a
		        `Tensor` or a dictionary of string label name to `Tensor`.
		
		  steps: Int. Positive number of steps for which to evaluate model. If
		    `None`, evaluates until `input_fn` raises an end-of-input exception.
		    See `Estimator.evaluate` for details.
		  name: String. Name of the evaluation if user needs to run multiple
		    evaluations on different data sets. Metrics for different evaluations
		    are saved in separate folders, and appear separately in tensorboard.
		  hooks: Iterable of `tf.train.SessionRunHook` objects to run
		    during evaluation.
		  exporters: Iterable of `Exporter`s, or a single one, or `None`.
		    `exporters` will be invoked after each evaluation.
		  start_delay_secs: Int. Start evaluating after waiting for this many
		    seconds.
		  throttle_secs: Int. Do not re-evaluate unless the last evaluation was
		    started at least this many seconds ago. Of course, evaluation does not
		    occur if no new checkpoints are available, hence, this is the minimum.
		
		Returns:
		  A validated `EvalSpec` object.
		
		Raises:
		  ValueError: If any of the input arguments is invalid.
		  TypeError: If any of the arguments is not of the expected type.
	**/
	static public function __new__(cls:Dynamic, input_fn:Dynamic, ?steps:Dynamic, ?name:Dynamic, ?hooks:Dynamic, ?exporters:Dynamic, ?start_delay_secs:Dynamic, ?throttle_secs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return self*value.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
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
		Return a new OrderedDict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
	static public var _fields : Dynamic;
	/**
		Make a new EvalSpec object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Return a new EvalSpec object replacing specified fields with new values
	**/
	static public function _replace(_self:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _source : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 4
	**/
	public var exporters : Dynamic;
	/**
		Alias for field number 3
	**/
	public var hooks : Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 0
	**/
	public var input_fn : Dynamic;
	/**
		Alias for field number 2
	**/
	public var name : Dynamic;
	/**
		Alias for field number 5
	**/
	public var start_delay_secs : Dynamic;
	/**
		Alias for field number 1
	**/
	public var steps : Dynamic;
	/**
		Alias for field number 6
	**/
	public var throttle_secs : Dynamic;
}