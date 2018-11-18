/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.tensor_forest;
@:pythonImport("tensorflow.contrib.tensor_forest.python.tensor_forest", "ForestHParams") extern class ForestHParams {
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
	public function ___init__(?num_trees:Dynamic, ?max_nodes:Dynamic, ?bagging_fraction:Dynamic, ?num_splits_to_consider:Dynamic, ?feature_bagging_fraction:Dynamic, ?max_fertile_nodes:Dynamic, ?split_after_samples:Dynamic, ?valid_leaf_threshold:Dynamic, ?dominate_method:Dynamic, ?dominate_fraction:Dynamic, ?model_name:Dynamic, ?split_finish_name:Dynamic, ?split_pruning_name:Dynamic, ?prune_every_samples:Dynamic, ?early_finish_check_every_samples:Dynamic, ?collate_examples:Dynamic, ?checkpoint_stats:Dynamic, ?use_running_stats_method:Dynamic, ?initialize_average_splits:Dynamic, ?inference_tree_paths:Dynamic, ?param_file:Dynamic, ?split_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?num_trees:Dynamic, ?max_nodes:Dynamic, ?bagging_fraction:Dynamic, ?num_splits_to_consider:Dynamic, ?feature_bagging_fraction:Dynamic, ?max_fertile_nodes:Dynamic, ?split_after_samples:Dynamic, ?valid_leaf_threshold:Dynamic, ?dominate_method:Dynamic, ?dominate_fraction:Dynamic, ?model_name:Dynamic, ?split_finish_name:Dynamic, ?split_pruning_name:Dynamic, ?prune_every_samples:Dynamic, ?early_finish_check_every_samples:Dynamic, ?collate_examples:Dynamic, ?checkpoint_stats:Dynamic, ?use_running_stats_method:Dynamic, ?initialize_average_splits:Dynamic, ?inference_tree_paths:Dynamic, ?param_file:Dynamic, ?split_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Intelligently sets any non-specific parameters.
	**/
	public function fill():Dynamic;
	public function values():Dynamic;
}