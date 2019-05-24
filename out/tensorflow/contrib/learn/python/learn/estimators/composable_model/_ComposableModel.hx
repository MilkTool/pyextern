/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.composable_model;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.composable_model", "_ComposableModel") extern class _ComposableModel {
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
		Common initialization for all _ComposableModel objects. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use model_fns in tf.estimator.
		
		Args:
		  num_label_columns: The number of label columns.
		  optimizer: An instance of `tf.Optimizer` used to apply gradients to
		    the model. If `None`, will use a FTRL optimizer.
		  gradient_clip_norm: A float > 0. If provided, gradients are clipped
		    to their global norm with this clipping ratio. See
		    tf.clip_by_global_norm for more details.
		  num_ps_replicas: The number of parameter server replicas.
		  scope: Scope for variables created in this model.
		  trainable: True if this model contains variables that can be trained.
		    False otherwise (in cases where the variables are used strictly for
		    transforming input labels for training).
	**/
	@:native("__init__")
	public function ___init__(num_label_columns:Dynamic, optimizer:Dynamic, gradient_clip_norm:Dynamic, num_ps_replicas:Dynamic, scope:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Common initialization for all _ComposableModel objects. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use model_fns in tf.estimator.
		
		Args:
		  num_label_columns: The number of label columns.
		  optimizer: An instance of `tf.Optimizer` used to apply gradients to
		    the model. If `None`, will use a FTRL optimizer.
		  gradient_clip_norm: A float > 0. If provided, gradients are clipped
		    to their global norm with this clipping ratio. See
		    tf.clip_by_global_norm for more details.
		  num_ps_replicas: The number of parameter server replicas.
		  scope: Scope for variables created in this model.
		  trainable: True if this model contains variables that can be trained.
		    False otherwise (in cases where the variables are used strictly for
		    transforming input labels for training).
	**/
	public function new(num_label_columns:Dynamic, optimizer:Dynamic, gradient_clip_norm:Dynamic, num_ps_replicas:Dynamic, scope:Dynamic, ?trainable:Dynamic):Void;
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
	public function _get_default_optimizer(?optimizer_name:Dynamic):Dynamic;
	public function _get_feature_columns():Dynamic;
	public function _get_optimizer():Dynamic;
	public function _get_vars():Dynamic;
	/**
		Builds the model that can calculate the logits.
		
		Args:
		  features: A mapping from feature columns to tensors.
		  feature_columns: An iterable containing all the feature columns used
		    by the model. All items in the set should be instances of
		    classes derived from `FeatureColumn`.
		  is_training: Set to True when training, False otherwise.
		
		Returns:
		  The logits for this model.
	**/
	public function build_model(features:Dynamic, feature_columns:Dynamic, is_training:Dynamic):Dynamic;
	/**
		Returns the scope name used by this model for variables.
	**/
	public function get_scope_name():Dynamic;
	/**
		Returns the ops to run to perform a training step on this estimator.
		
		Args:
		  loss: The loss to use when calculating gradients.
		
		Returns:
		  The ops to run to perform a training step.
	**/
	public function get_train_step(loss:Dynamic):Dynamic;
}