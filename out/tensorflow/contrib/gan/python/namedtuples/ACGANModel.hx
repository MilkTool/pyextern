/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.namedtuples;
@:pythonImport("tensorflow.contrib.gan.python.namedtuples", "ACGANModel") extern class ACGANModel {
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
		Create new instance of ACGANModel(generator_inputs, generated_data, generator_variables, generator_scope, generator_fn, real_data, discriminator_real_outputs, discriminator_gen_outputs, discriminator_variables, discriminator_scope, discriminator_fn, one_hot_labels, discriminator_real_classification_logits, discriminator_gen_classification_logits)
	**/
	static public function __new__(_cls:Dynamic, generator_inputs:Dynamic, generated_data:Dynamic, generator_variables:Dynamic, generator_scope:Dynamic, generator_fn:Dynamic, real_data:Dynamic, discriminator_real_outputs:Dynamic, discriminator_gen_outputs:Dynamic, discriminator_variables:Dynamic, discriminator_scope:Dynamic, discriminator_fn:Dynamic, one_hot_labels:Dynamic, discriminator_real_classification_logits:Dynamic, discriminator_gen_classification_logits:Dynamic):Dynamic;
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
	static public var _fields : Dynamic;
	/**
		Make a new ACGANModel object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Return a new ACGANModel object replacing specified fields with new values
	**/
	static public function _replace(_self:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _source : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 10
	**/
	public var discriminator_fn : Dynamic;
	/**
		Alias for field number 13
	**/
	public var discriminator_gen_classification_logits : Dynamic;
	/**
		Alias for field number 7
	**/
	public var discriminator_gen_outputs : Dynamic;
	/**
		Alias for field number 12
	**/
	public var discriminator_real_classification_logits : Dynamic;
	/**
		Alias for field number 6
	**/
	public var discriminator_real_outputs : Dynamic;
	/**
		Alias for field number 9
	**/
	public var discriminator_scope : Dynamic;
	/**
		Alias for field number 8
	**/
	public var discriminator_variables : Dynamic;
	/**
		Alias for field number 1
	**/
	public var generated_data : Dynamic;
	/**
		Alias for field number 4
	**/
	public var generator_fn : Dynamic;
	/**
		Alias for field number 0
	**/
	public var generator_inputs : Dynamic;
	/**
		Alias for field number 3
	**/
	public var generator_scope : Dynamic;
	/**
		Alias for field number 2
	**/
	public var generator_variables : Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 11
	**/
	public var one_hot_labels : Dynamic;
	/**
		Alias for field number 5
	**/
	public var real_data : Dynamic;
}