/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.state_saving_rnn_estimator;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.state_saving_rnn_estimator", "StateSavingRnnEstimator") extern class StateSavingRnnEstimator {
	/**
		This class specifies the configurations for an `Estimator` run.
		
		This class is a deprecated implementation of `tf.estimator.RunConfig`
		interface.
	**/
	static public function _Config(?master:Dynamic, ?num_cores:Dynamic, ?log_device_placement:Dynamic, ?gpu_memory_fraction:Dynamic, ?tf_random_seed:Dynamic, ?save_summary_steps:Dynamic, ?save_checkpoints_secs:Dynamic, ?save_checkpoints_steps:Dynamic, ?keep_checkpoint_max:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?log_step_count_steps:Dynamic, ?protocol:Dynamic, ?evaluation_master:Dynamic, ?model_dir:Dynamic, ?session_config:Dynamic):Dynamic;
	static public var __abstractmethods__ : Dynamic;
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
		Initializes a StateSavingRnnEstimator.
		
		Args:
		  problem_type: `ProblemType.CLASSIFICATION` or
		    `ProblemType.LINEAR_REGRESSION`.
		  num_unroll: Python integer, how many time steps to unroll at a time.
		    The input sequences of length `k` are then split into `k / num_unroll`
		    many segments.
		  batch_size: Python integer, the size of the minibatch.
		  sequence_feature_columns: An iterable containing all the feature columns
		    describing sequence features. All items in the set should be instances
		    of classes derived from `FeatureColumn`.
		  context_feature_columns: An iterable containing all the feature columns
		    describing context features, i.e., features that apply across all time
		    steps. All items in the set should be instances of classes derived from
		    `FeatureColumn`.
		  num_classes: The number of classes for categorization. Used only and
		    required if `problem_type` is `ProblemType.CLASSIFICATION`.
		  num_units: A list of integers indicating the number of units in the
		    `RNNCell`s in each layer. Either `num_units` is specified or `cell_type`
		    is an instance of `RNNCell`.
		  cell_type: A subclass of `RNNCell` or one of 'basic_rnn,' 'lstm' or 'gru'.
		  optimizer_type: The type of optimizer to use. Either a subclass of
		    `Optimizer`, an instance of an `Optimizer` or a string. Strings must be
		    one of 'Adagrad', 'Adam', 'Ftrl', Momentum', 'RMSProp', or 'SGD'.
		  learning_rate: Learning rate. This argument has no effect if `optimizer`
		    is an instance of an `Optimizer`.
		  predict_probabilities: A boolean indicating whether to predict
		    probabilities for all classes. Used only if `problem_type` is
		    `ProblemType.CLASSIFICATION`.
		  momentum: Momentum value. Only used if `optimizer_type` is 'Momentum'.
		  gradient_clipping_norm: Parameter used for gradient clipping. If `None`,
		    then no clipping is performed.
		  dropout_keep_probabilities: a list of dropout keep probabilities or
		    `None`. If given a list, it must have length `len(num_units) + 1`.
		  model_dir: The directory in which to save and restore the model graph,
		    parameters, etc.
		  config: A `RunConfig` instance.
		  feature_engineering_fn: Takes features and labels which are the output of
		    `input_fn` and returns features and labels which will be fed into
		    `model_fn`. Please check `model_fn` for a definition of features and
		    labels.
		  num_threads: The Python integer number of threads enqueuing input examples
		    into a queue. Defaults to 3.
		  queue_capacity: The max capacity of the queue in number of examples.
		    Needs to be at least `batch_size`. Defaults to 1000. When iterating
		    over the same input example multiple times reusing their keys the
		    `queue_capacity` must be smaller than the number of examples.
		  seed: Fixes the random seed used for generating input keys by the SQSS.
		
		Raises:
		  ValueError: Both or neither of the following are true: (a) `num_units` is
		    specified and (b) `cell_type` is an instance of `RNNCell`.
		  ValueError: `problem_type` is not one of
		    `ProblemType.LINEAR_REGRESSION` or `ProblemType.CLASSIFICATION`.
		  ValueError: `problem_type` is `ProblemType.CLASSIFICATION` but
		    `num_classes` is not specified.
	**/
	@:native("__init__")
	public function ___init__(problem_type:Dynamic, num_unroll:Dynamic, batch_size:Dynamic, sequence_feature_columns:Dynamic, ?context_feature_columns:Dynamic, ?num_classes:Dynamic, ?num_units:Dynamic, ?cell_type:Dynamic, ?optimizer_type:Dynamic, ?learning_rate:Dynamic, ?predict_probabilities:Dynamic, ?momentum:Dynamic, ?gradient_clipping_norm:Dynamic, ?dropout_keep_probabilities:Dynamic, ?model_dir:Dynamic, ?config:Dynamic, ?feature_engineering_fn:Dynamic, ?num_threads:Dynamic, ?queue_capacity:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Initializes a StateSavingRnnEstimator.
		
		Args:
		  problem_type: `ProblemType.CLASSIFICATION` or
		    `ProblemType.LINEAR_REGRESSION`.
		  num_unroll: Python integer, how many time steps to unroll at a time.
		    The input sequences of length `k` are then split into `k / num_unroll`
		    many segments.
		  batch_size: Python integer, the size of the minibatch.
		  sequence_feature_columns: An iterable containing all the feature columns
		    describing sequence features. All items in the set should be instances
		    of classes derived from `FeatureColumn`.
		  context_feature_columns: An iterable containing all the feature columns
		    describing context features, i.e., features that apply across all time
		    steps. All items in the set should be instances of classes derived from
		    `FeatureColumn`.
		  num_classes: The number of classes for categorization. Used only and
		    required if `problem_type` is `ProblemType.CLASSIFICATION`.
		  num_units: A list of integers indicating the number of units in the
		    `RNNCell`s in each layer. Either `num_units` is specified or `cell_type`
		    is an instance of `RNNCell`.
		  cell_type: A subclass of `RNNCell` or one of 'basic_rnn,' 'lstm' or 'gru'.
		  optimizer_type: The type of optimizer to use. Either a subclass of
		    `Optimizer`, an instance of an `Optimizer` or a string. Strings must be
		    one of 'Adagrad', 'Adam', 'Ftrl', Momentum', 'RMSProp', or 'SGD'.
		  learning_rate: Learning rate. This argument has no effect if `optimizer`
		    is an instance of an `Optimizer`.
		  predict_probabilities: A boolean indicating whether to predict
		    probabilities for all classes. Used only if `problem_type` is
		    `ProblemType.CLASSIFICATION`.
		  momentum: Momentum value. Only used if `optimizer_type` is 'Momentum'.
		  gradient_clipping_norm: Parameter used for gradient clipping. If `None`,
		    then no clipping is performed.
		  dropout_keep_probabilities: a list of dropout keep probabilities or
		    `None`. If given a list, it must have length `len(num_units) + 1`.
		  model_dir: The directory in which to save and restore the model graph,
		    parameters, etc.
		  config: A `RunConfig` instance.
		  feature_engineering_fn: Takes features and labels which are the output of
		    `input_fn` and returns features and labels which will be fed into
		    `model_fn`. Please check `model_fn` for a definition of features and
		    labels.
		  num_threads: The Python integer number of threads enqueuing input examples
		    into a queue. Defaults to 3.
		  queue_capacity: The max capacity of the queue in number of examples.
		    Needs to be at least `batch_size`. Defaults to 1000. When iterating
		    over the same input example multiple times reusing their keys the
		    `queue_capacity` must be smaller than the number of examples.
		  seed: Fixes the random seed used for generating input keys by the SQSS.
		
		Raises:
		  ValueError: Both or neither of the following are true: (a) `num_units` is
		    specified and (b) `cell_type` is an instance of `RNNCell`.
		  ValueError: `problem_type` is not one of
		    `ProblemType.LINEAR_REGRESSION` or `ProblemType.CLASSIFICATION`.
		  ValueError: `problem_type` is `ProblemType.CLASSIFICATION` but
		    `num_classes` is not specified.
	**/
	public function new(problem_type:Dynamic, num_unroll:Dynamic, batch_size:Dynamic, sequence_feature_columns:Dynamic, ?context_feature_columns:Dynamic, ?num_classes:Dynamic, ?num_units:Dynamic, ?cell_type:Dynamic, ?optimizer_type:Dynamic, ?learning_rate:Dynamic, ?predict_probabilities:Dynamic, ?momentum:Dynamic, ?gradient_clipping_norm:Dynamic, ?dropout_keep_probabilities:Dynamic, ?model_dir:Dynamic, ?config:Dynamic, ?feature_engineering_fn:Dynamic, ?num_threads:Dynamic, ?queue_capacity:Dynamic, ?seed:Dynamic):Void;
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
	/**
		Calls model function with support of 2, 3 or 4 arguments.
		
		Args:
		  features: features dict.
		  labels: labels dict.
		  mode: ModeKeys
		  metrics: Dict of metrics.
		  config: RunConfig.
		
		Returns:
		  A `ModelFnOps` object. If model_fn returns a tuple, wraps them up in a
		  `ModelFnOps` object.
		
		Raises:
		  ValueError: if model_fn returns invalid objects.
	**/
	public function _call_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, ?metrics:Dynamic, ?config:Dynamic):Dynamic;
	public function _check_inputs(features:Dynamic, labels:Dynamic):Dynamic;
	public function _evaluate_model(input_fn:Dynamic, steps:Dynamic, ?feed_fn:Dynamic, ?metrics:Dynamic, ?name:Dynamic, ?checkpoint_path:Dynamic, ?hooks:Dynamic, ?log_progress:Dynamic):Dynamic;
	/**
		Separate update operations from metric value operations.
	**/
	public function _extract_metric_update_ops(eval_dict:Dynamic):Dynamic;
	public function _filter_predictions(predictions:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Method that builds model graph and returns evaluation ops.
		
		Expected to be overridden by sub-classes that require custom support.
		This implementation uses `model_fn` passed as parameter to constructor to
		build model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		  labels: `Tensor` or `dict` of `Tensor` objects.
		  metrics: Dict of metrics to run. If None, the default metric functions
		    are used; if {}, no metrics are used. Otherwise, `metrics` should map
		    friendly names for the metric to a `MetricSpec` object defining which
		    model outputs to evaluate against which labels with which metric
		    function. Metric ops should support streaming, e.g., returning
		    update_op and value tensors. See more details in
		    `../../../../metrics/python/metrics/ops/streaming_metrics.py` and
		    `../metric_spec.py`.
		
		Returns:
		  `ModelFnOps` object.
		
		Raises:
		  ValueError: if `metrics` don't match `labels`.
	**/
	public function _get_eval_ops(features:Dynamic, labels:Dynamic, metrics:Dynamic):Dynamic;
	/**
		Returns feature parser for given example batch using features info. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-23.
		Instructions for updating:
		The signature of the input_fn accepted by export is changing to be consistent with what's used by tf.Learn Estimator's train/evaluate, which makes this function useless. This will be removed after the deprecation date.
		
		This function requires `fit()` has been called.
		
		Args:
		  examples_batch: batch of tf.Example
		
		Returns:
		  features: `Tensor` or `dict` of `Tensor` objects.
		
		Raises:
		  ValueError: If `_features_info` attribute is not available (usually
		  because `fit()` has not been called).
	**/
	public function _get_feature_ops_from_example(examples_batch:Dynamic):Dynamic;
	public function _get_features_from_input_fn(input_fn:Dynamic):Dynamic;
	/**
		Method that builds model graph and returns prediction ops.
		
		Expected to be overridden by sub-classes that require custom support.
		This implementation uses `model_fn` passed as parameter to constructor to
		build model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		
		Returns:
		  `ModelFnOps` object.
	**/
	public function _get_predict_ops(features:Dynamic):Dynamic;
	/**
		Method that builds model graph and returns trainer ops.
		
		Expected to be overridden by sub-classes that require custom support.
		This implementation uses `model_fn` passed as parameter to constructor to
		build model.
		
		Args:
		  features: `Tensor` or `dict` of `Tensor` objects.
		  labels: `Tensor` or `dict` of `Tensor` objects.
		
		Returns:
		  `ModelFnOps` object.
	**/
	public function _get_train_ops(features:Dynamic, labels:Dynamic):Dynamic;
	public function _infer_model(input_fn:Dynamic, ?feed_fn:Dynamic, ?outputs:Dynamic, ?as_iterable:Dynamic, ?iterate_batches:Dynamic):Dynamic;
	public function _is_input_constant(feed_fn:Dynamic, graph:Dynamic):Dynamic;
	public function _predict_generator(mon_sess:Dynamic, predictions:Dynamic, feed_fn:Dynamic, iterate_batches:Dynamic):Dynamic;
	public function _train_model(input_fn:Dynamic, hooks:Dynamic):Dynamic;
	public var config : Dynamic;
	/**
		See `Evaluable`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(batch_size, x, y)`. They will be removed after 2016-12-01.
		Instructions for updating:
		Estimator is decoupled from Scikit Learn interface by moving into
		separate class SKCompat. Arguments x, y and batch_size are only
		available in the SKCompat class, Estimator will only accept input_fn.
		Example conversion:
		  est = Estimator(...) -> est = SKCompat(Estimator(...))
		
		Raises:
		  ValueError: If at least one of `x` or `y` is provided, and at least one of
		      `input_fn` or `feed_fn` is provided.
		      Or if `metrics` is not `None` or `dict`.
	**/
	public function evaluate(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?feed_fn:Dynamic, ?batch_size:Dynamic, ?steps:Dynamic, ?metrics:Dynamic, ?name:Dynamic, ?checkpoint_path:Dynamic, ?hooks:Dynamic, ?log_progress:Dynamic):Dynamic;
	/**
		Exports inference graph into given dir. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
		
		Args:
		  export_dir: A string containing a directory to write the exported graph
		    and checkpoints.
		  input_fn: If `use_deprecated_input_fn` is true, then a function that given
		    `Tensor` of `Example` strings, parses it into features that are then
		    passed to the model. Otherwise, a function that takes no argument and
		    returns a tuple of (features, labels), where features is a dict of
		    string key to `Tensor` and labels is a `Tensor` that's currently not
		    used (and so can be `None`).
		  input_feature_key: Only used if `use_deprecated_input_fn` is false. String
		    key into the features dict returned by `input_fn` that corresponds to a
		    the raw `Example` strings `Tensor` that the exported model will take as
		    input. Can only be `None` if you're using a custom `signature_fn` that
		    does not use the first arg (examples).
		  use_deprecated_input_fn: Determines the signature format of `input_fn`.
		  signature_fn: Function that returns a default signature and a named
		    signature map, given `Tensor` of `Example` strings, `dict` of `Tensor`s
		    for features and `Tensor` or `dict` of `Tensor`s for predictions.
		  prediction_key: The key for a tensor in the `predictions` dict (output
		    from the `model_fn`) to use as the `predictions` input to the
		    `signature_fn`. Optional. If `None`, predictions will pass to
		    `signature_fn` without filtering.
		  default_batch_size: Default batch size of the `Example` placeholder.
		  exports_to_keep: Number of exports to keep.
		  checkpoint_path: the checkpoint path of the model to be exported. If it is
		      `None` (which is default), will use the latest checkpoint in
		      export_dir.
		
		Returns:
		  The string path to the exported directory. NB: this functionality was
		  added ca. 2016/09/25; clients that depend on the return value may need
		  to handle the case where this function returns None because subclasses
		  are not returning a value.
	**/
	public function export(export_dir:Dynamic, ?input_fn:Dynamic, ?input_feature_key:Dynamic, ?use_deprecated_input_fn:Dynamic, ?signature_fn:Dynamic, ?prediction_key:Dynamic, ?default_batch_size:Dynamic, ?exports_to_keep:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	/**
		Exports inference graph as a SavedModel into given dir.
		
		Args:
		  export_dir_base: A string containing a directory to write the exported
		    graph and checkpoints.
		  serving_input_fn: A function that takes no argument and
		    returns an `InputFnOps`.
		  default_output_alternative_key: the name of the head to serve when none is
		    specified.  Not needed for single-headed models.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel.  Each key should give the destination
		    path (including the filename) relative to the assets.extra directory.
		    The corresponding value gives the full path of the source file to be
		    copied.  For example, the simple case of copying a single file without
		    renaming it is specified as
		    `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format.
		  checkpoint_path: The checkpoint path to export.  If None (the default),
		    the most recent checkpoint found within the model directory is chosen.
		  graph_rewrite_specs: an iterable of `GraphRewriteSpec`.  Each element will
		    produce a separate MetaGraphDef within the exported SavedModel, tagged
		    and rewritten as specified.  Defaults to a single entry using the
		    default serving tag ("serve") and no rewriting.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs. For a detailed guide, see
		    [Stripping Default-Valued
		      Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		
		Returns:
		  The string path to the exported directory.
		
		Raises:
		  ValueError: if an unrecognized export_type is requested.
	**/
	public function export_savedmodel(export_dir_base:Dynamic, serving_input_fn:Dynamic, ?default_output_alternative_key:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic, ?graph_rewrite_specs:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	/**
		See `Trainable`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(batch_size, x, y)`. They will be removed after 2016-12-01.
		Instructions for updating:
		Estimator is decoupled from Scikit Learn interface by moving into
		separate class SKCompat. Arguments x, y and batch_size are only
		available in the SKCompat class, Estimator will only accept input_fn.
		Example conversion:
		  est = Estimator(...) -> est = SKCompat(Estimator(...))
		
		Raises:
		  ValueError: If `x` or `y` are not `None` while `input_fn` is not `None`.
		  ValueError: If both `steps` and `max_steps` are not `None`.
	**/
	public function fit(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?batch_size:Dynamic, ?monitors:Dynamic, ?max_steps:Dynamic):Dynamic;
	/**
		Get parameters for this estimator.
		
		Args:
		  deep: boolean, optional
		
		    If `True`, will return the parameters for this estimator and
		    contained subobjects that are estimators.
		
		Returns:
		  params : mapping of string to any
		  Parameter names mapped to their values.
	**/
	public function get_params(?deep:Dynamic):Dynamic;
	/**
		Returns list of all variable names in this model.
		
		Returns:
		  List of names.
	**/
	public function get_variable_names():Dynamic;
	/**
		Returns value of the variable given by name.
		
		Args:
		  name: string, name of the tensor.
		
		Returns:
		  Numpy array - value of the tensor.
	**/
	public function get_variable_value(name:Dynamic):Dynamic;
	/**
		Returns a path in which the eval process will look for checkpoints.
	**/
	public var model_dir : Dynamic;
	/**
		Returns the model_fn which is bound to self.params.
		
		Returns:
		  The model_fn with the following signature:
		    `def model_fn(features, labels, mode, metrics)`
	**/
	public var model_fn : Dynamic;
	/**
		Incremental fit on a batch of samples. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(batch_size, x, y)`. They will be removed after 2016-12-01.
		Instructions for updating:
		Estimator is decoupled from Scikit Learn interface by moving into
		separate class SKCompat. Arguments x, y and batch_size are only
		available in the SKCompat class, Estimator will only accept input_fn.
		Example conversion:
		  est = Estimator(...) -> est = SKCompat(Estimator(...))
		
		This method is expected to be called several times consecutively
		on different or the same chunks of the dataset. This either can
		implement iterative training or out-of-core/online training.
		
		This is especially useful when the whole dataset is too big to
		fit in memory at the same time. Or when model is taking long time
		to converge, and you want to split up training into subparts.
		
		Args:
		  x: Matrix of shape [n_samples, n_features...]. Can be iterator that
		     returns arrays of features. The training input samples for fitting the
		     model. If set, `input_fn` must be `None`.
		  y: Vector or matrix [n_samples] or [n_samples, n_outputs]. Can be
		     iterator that returns array of labels. The training label values
		     (class labels in classification, real numbers in regression). If set,
		     `input_fn` must be `None`.
		  input_fn: Input function. If set, `x`, `y`, and `batch_size` must be
		    `None`.
		  steps: Number of steps for which to train model. If `None`, train forever.
		  batch_size: minibatch size to use on the input, defaults to first
		    dimension of `x`. Must be `None` if `input_fn` is provided.
		  monitors: List of `BaseMonitor` subclass instances. Used for callbacks
		    inside the training loop.
		
		Returns:
		  `self`, for chaining.
		
		Raises:
		  ValueError: If at least one of `x` and `y` is provided, and `input_fn` is
		      provided.
	**/
	public function partial_fit(?x:Dynamic, ?y:Dynamic, ?input_fn:Dynamic, ?steps:Dynamic, ?batch_size:Dynamic, ?monitors:Dynamic):Dynamic;
	/**
		Returns predictions for given features. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(as_iterable, batch_size, x)`. They will be removed after 2016-12-01.
		Instructions for updating:
		Estimator is decoupled from Scikit Learn interface by moving into
		separate class SKCompat. Arguments x, y and batch_size are only
		available in the SKCompat class, Estimator will only accept input_fn.
		Example conversion:
		  est = Estimator(...) -> est = SKCompat(Estimator(...))
		
		Args:
		  x: Matrix of shape [n_samples, n_features...]. Can be iterator that
		     returns arrays of features. The training input samples for fitting the
		     model. If set, `input_fn` must be `None`.
		  input_fn: Input function. If set, `x` and 'batch_size' must be `None`.
		  batch_size: Override default batch size. If set, 'input_fn' must be
		    'None'.
		  outputs: list of `str`, name of the output to predict.
		    If `None`, returns all.
		  as_iterable: If True, return an iterable which keeps yielding predictions
		    for each example until inputs are exhausted. Note: The inputs must
		    terminate if you want the iterable to terminate (e.g. be sure to pass
		    num_epochs=1 if you are using something like read_batch_features).
		  iterate_batches: If True, yield the whole batch at once instead of
		    decomposing the batch into individual samples. Only relevant when
		    as_iterable is True.
		
		Returns:
		  A numpy array of predicted classes or regression values if the
		  constructor's `model_fn` returns a `Tensor` for `predictions` or a `dict`
		  of numpy arrays if `model_fn` returns a `dict`. Returns an iterable of
		  predictions if as_iterable is True.
		
		Raises:
		  ValueError: If x and input_fn are both provided or both `None`.
	**/
	public function predict(?x:Dynamic, ?input_fn:Dynamic, ?batch_size:Dynamic, ?outputs:Dynamic, ?as_iterable:Dynamic, ?iterate_batches:Dynamic):Dynamic;
	/**
		Set the parameters of this estimator.
		
		The method works on simple estimators as well as on nested objects
		(such as pipelines). The former have parameters of the form
		``<component>__<parameter>`` so that it's possible to update each
		component of a nested object.
		
		Args:
		  **params: Parameters.
		
		Returns:
		  self
		
		Raises:
		  ValueError: If params contain invalid names.
	**/
	public function set_params(?params:python.KwArgs<Dynamic>):Dynamic;
}