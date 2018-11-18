/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.target_column;
@:pythonImport("tensorflow.contrib.layers.python.layers.target_column", "_BinarySvmTargetColumn") extern class _BinarySvmTargetColumn {
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
	public function ___init__(label_name:Dynamic, weight_column_name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(label_name:Dynamic, weight_column_name:Dynamic):Void;
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
	public function _default_eval_metrics():Dynamic;
	/**
		Returns cumulative weighted loss.
	**/
	public function _weighted_loss(loss:Dynamic, weight_tensor:Dynamic):Dynamic;
	/**
		Returns eval op.
	**/
	public function get_eval_ops(features:Dynamic, logits:Dynamic, labels:Dynamic, ?metrics:Dynamic):Dynamic;
	public function get_weight_tensor(features:Dynamic):Dynamic;
	public var label_name : Dynamic;
	public function logits_to_predictions(logits:Dynamic, ?proba:Dynamic):Dynamic;
	/**
		Returns loss tensor for this head.
		
		The loss returned is the weighted average.
		
		  L = sum_{i} w_{i} * l_{i} / sum_{i} w_{i}
		
		Args:
		  logits: logits, a float tensor.
		  target: either a tensor for labels or in multihead case, a dict of string
		    to target tensor.
		  features: features dict.
		
		Returns:
		  Loss tensor.
	**/
	public function loss(logits:Dynamic, target:Dynamic, features:Dynamic):Dynamic;
	public var num_label_columns : Dynamic;
	public var problem_type : Dynamic;
	/**
		Returns training loss tensor for this head.
		
		Training loss is different from the loss reported on the tensorboard as we
		should respect the example weights when computing the gradient.
		
		  L = sum_{i} w_{i} * l_{i} / B
		
		where B is the number of examples in the batch, l_{i}, w_{i} are individual
		losses, and example weight.
		
		Args:
		  logits: logits, a float tensor.
		  target: either a tensor for labels or in multihead case, a dict of string
		    to target tensor.
		  features: features dict.
		  name: Op name.
		
		Returns:
		  Loss tensor.
	**/
	public function training_loss(logits:Dynamic, target:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
	public var weight_column_name : Dynamic;
}