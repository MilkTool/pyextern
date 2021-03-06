/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.estimator.python.gan_estimator_impl;
@:pythonImport("tensorflow.contrib.gan.python.estimator.python.gan_estimator_impl", "GANEstimator") extern class GANEstimator {
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
		Initializes a GANEstimator instance.
		
		Args:
		  model_dir: Directory to save model parameters, graph and etc. This can
		    also be used to load checkpoints from the directory into a estimator
		    to continue training a previously saved model.
		  generator_fn: A python function that takes a Tensor, Tensor list, or
		    Tensor dictionary as inputs and returns the outputs of the GAN
		    generator. See `TFGAN` for more details and examples. Additionally, if
		    it has an argument called `mode`, the Estimator's `mode` will be passed
		    in (ex TRAIN, EVAL, PREDICT). This is useful for things like batch
		    normalization.
		  discriminator_fn: A python function that takes the output of
		    `generator_fn` or real data in the GAN setup, and `generator_inputs`.
		    Outputs a Tensor in the range [-inf, inf]. See `TFGAN` for more details
		    and examples.
		  generator_loss_fn: The loss function on the generator. Takes a `GANModel`
		    tuple.
		  discriminator_loss_fn: The loss function on the discriminator. Takes a
		    `GANModel` tuple.
		  generator_optimizer: The optimizer for generator updates, or a function
		    that takes no arguments and returns an optimizer. This function will
		    be called when the default graph is the `GANEstimator`'s graph, so
		    utilities like `tf.contrib.framework.get_or_create_global_step` will
		    work.
		  discriminator_optimizer: Same as `generator_optimizer`, but for the
		    discriminator updates.
		  get_hooks_fn: A function that takes a `GANTrainOps` tuple and returns a
		    list of hooks. These hooks are run on the generator and discriminator
		    train ops, and can be used to implement the GAN training scheme.
		    Defaults to `train.get_sequential_train_hooks()`.
		  get_eval_metric_ops_fn: A function that takes a `GANModel`, and returns a
		    dict of metric results keyed by name. The output of this function is
		    passed into `tf.estimator.EstimatorSpec` during evaluation.
		  add_summaries: `None`, a single `SummaryType`, or a list of `SummaryType`.
		  use_loss_summaries: If `True`, add loss summaries. If `False`, does not.
		    If `None`, uses defaults.
		  config: `RunConfig` object to configure the runtime settings.
		  warm_start_from: A filepath to a checkpoint or saved model, or a
		    WarmStartSettings object to configure initialization.
		  is_chief: Whether or not this Estimator is running on a chief or worker.
		    Needs to be set appropriately if using SyncReplicasOptimizers.
		
		Raises:
		  ValueError: If loss functions aren't callable.
		  ValueError: If `use_loss_summaries` isn't boolean or `None`.
		  ValueError: If `get_hooks_fn` isn't callable or `None`.
	**/
	@:native("__init__")
	public function ___init__(?model_dir:Dynamic, ?generator_fn:Dynamic, ?discriminator_fn:Dynamic, ?generator_loss_fn:Dynamic, ?discriminator_loss_fn:Dynamic, ?generator_optimizer:Dynamic, ?discriminator_optimizer:Dynamic, ?get_hooks_fn:Dynamic, ?get_eval_metric_ops_fn:Dynamic, ?add_summaries:Dynamic, ?use_loss_summaries:Dynamic, ?config:Dynamic, ?warm_start_from:Dynamic, ?is_chief:Dynamic):Dynamic;
	/**
		Initializes a GANEstimator instance.
		
		Args:
		  model_dir: Directory to save model parameters, graph and etc. This can
		    also be used to load checkpoints from the directory into a estimator
		    to continue training a previously saved model.
		  generator_fn: A python function that takes a Tensor, Tensor list, or
		    Tensor dictionary as inputs and returns the outputs of the GAN
		    generator. See `TFGAN` for more details and examples. Additionally, if
		    it has an argument called `mode`, the Estimator's `mode` will be passed
		    in (ex TRAIN, EVAL, PREDICT). This is useful for things like batch
		    normalization.
		  discriminator_fn: A python function that takes the output of
		    `generator_fn` or real data in the GAN setup, and `generator_inputs`.
		    Outputs a Tensor in the range [-inf, inf]. See `TFGAN` for more details
		    and examples.
		  generator_loss_fn: The loss function on the generator. Takes a `GANModel`
		    tuple.
		  discriminator_loss_fn: The loss function on the discriminator. Takes a
		    `GANModel` tuple.
		  generator_optimizer: The optimizer for generator updates, or a function
		    that takes no arguments and returns an optimizer. This function will
		    be called when the default graph is the `GANEstimator`'s graph, so
		    utilities like `tf.contrib.framework.get_or_create_global_step` will
		    work.
		  discriminator_optimizer: Same as `generator_optimizer`, but for the
		    discriminator updates.
		  get_hooks_fn: A function that takes a `GANTrainOps` tuple and returns a
		    list of hooks. These hooks are run on the generator and discriminator
		    train ops, and can be used to implement the GAN training scheme.
		    Defaults to `train.get_sequential_train_hooks()`.
		  get_eval_metric_ops_fn: A function that takes a `GANModel`, and returns a
		    dict of metric results keyed by name. The output of this function is
		    passed into `tf.estimator.EstimatorSpec` during evaluation.
		  add_summaries: `None`, a single `SummaryType`, or a list of `SummaryType`.
		  use_loss_summaries: If `True`, add loss summaries. If `False`, does not.
		    If `None`, uses defaults.
		  config: `RunConfig` object to configure the runtime settings.
		  warm_start_from: A filepath to a checkpoint or saved model, or a
		    WarmStartSettings object to configure initialization.
		  is_chief: Whether or not this Estimator is running on a chief or worker.
		    Needs to be set appropriately if using SyncReplicasOptimizers.
		
		Raises:
		  ValueError: If loss functions aren't callable.
		  ValueError: If `use_loss_summaries` isn't boolean or `None`.
		  ValueError: If `get_hooks_fn` isn't callable or `None`.
	**/
	public function new(?model_dir:Dynamic, ?generator_fn:Dynamic, ?discriminator_fn:Dynamic, ?generator_loss_fn:Dynamic, ?discriminator_loss_fn:Dynamic, ?generator_optimizer:Dynamic, ?discriminator_optimizer:Dynamic, ?get_hooks_fn:Dynamic, ?get_eval_metric_ops_fn:Dynamic, ?add_summaries:Dynamic, ?use_loss_summaries:Dynamic, ?config:Dynamic, ?warm_start_from:Dynamic, ?is_chief:Dynamic):Void;
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
		The method that does evaluation actually.
	**/
	public function _actual_eval(input_fn:Dynamic, ?strategy:Dynamic, ?steps:Dynamic, ?hooks:Dynamic, ?checkpoint_path:Dynamic, ?name:Dynamic):Dynamic;
	/**
		That method that does actual training with distribution strategy.
	**/
	public function _actual_train_model_distributed(strategy:Dynamic, input_fn:Dynamic, hooks:Dynamic, saving_listeners:Dynamic):Dynamic;
	/**
		Loads variables and adds them along with a `tf.MetaGraphDef` for saving.
		
		Args:
		  builder: instance of `tf.saved_modle.builder.SavedModelBuilder` that will
		    be used for saving.
		  input_receiver_fn_map: dict of `tf.estimator.ModeKeys` to
		    `input_receiver_fn` mappings, where the `input_receiver_fn` is a
		    function that takes no argument and returns the appropriate subclass of
		    `InputReceiver`.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		  save_variables: bool, whether variables should be saved. If `False`, just
		    the `tf.MetaGraphDef` will be saved. Note that `save_variables` should
		    only be `True` for the first call to this function, and the
		    `SavedModelBuilder` will raise an error if that is not the case.
		  mode: `tf.estimator.ModeKeys` value indicating which mode will be
		    exported.
		  export_tags: The set of tags with which to save `tf.MetaGraphDef`. If
		    `None`, a default set will be selected to matched the passed mode.
		  check_variables: bool, whether to check the checkpoint has all variables.
		
		Raises:
		  ValueError: if `save_variables` is `True` and `check_variable` is `False`.
	**/
	public function _add_meta_graph_for_mode(builder:Dynamic, input_receiver_fn_map:Dynamic, checkpoint_path:Dynamic, ?save_variables:Dynamic, ?mode:Dynamic, ?export_tags:Dynamic, ?check_variables:Dynamic):Dynamic;
	/**
		Asserts members of `Estimator` are not overridden.
	**/
	public function _assert_members_are_not_overridden():Dynamic;
	/**
		For v1, add in the strip_default_attrs arg.
	**/
	public function _call_add_meta_graph_and_variables(save_variables:Dynamic, builder:Dynamic, session:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Calls the input function.
		
		Args:
		  input_fn: The input function.
		  mode: `tf.estimator.ModeKeys`
		
		Returns:
		  The return value of the passed `input_fn`, which should be one of:
		
		    * A 'tf.data.Dataset' object: Outputs of `Dataset` object must be a
		        tuple `(features, labels)` with same constraints as below.
		    * A tuple `(features, labels)`: Where `features` is a `Tensor` or a
		      dictionary of string feature name to `Tensor` and `labels` is a
		      `Tensor` or a dictionary of string label name to `Tensor`. Both
		      `features` and `labels` are consumed by `model_fn`. They should
		      satisfy the expectation of `model_fn` from inputs.
		
		Raises:
		  ValueError: if `input_fn` takes invalid arguments.
	**/
	public function _call_input_fn(input_fn:Dynamic, mode:Dynamic):Dynamic;
	/**
		Calls model function.
		
		Args:
		  features: features dict.
		  labels: labels dict.
		  mode: `tf.estimator.ModeKeys`
		  config: `tf.estimator.RunConfig`
		
		Returns:
		  An `tf.estimator.EstimatorSpec` object.
		
		Raises:
		  ValueError: if `model_fn` returns invalid objects.
	**/
	public function _call_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, config:Dynamic):Dynamic;
	/**
		Call model_fn for evaluation and handle return values.
	**/
	public function _call_model_fn_eval(input_fn:Dynamic, config:Dynamic):Dynamic;
	/**
		Call model_fn in distribution mode and handle return values.
	**/
	public function _call_model_fn_eval_distributed(input_fn:Dynamic, config:Dynamic):Dynamic;
	/**
		Create hooks to run correct number of steps in evaluation.
		
		Args:
		  steps: number of steps to run during evaluation.
		
		Raises:
		  ValueError: if steps is less than or equal to zero.
		
		Returns:
		  List of hooks to be passed to the estimator.
	**/
	public function _convert_eval_steps_to_hooks(steps:Dynamic):Dynamic;
	/**
		Create hooks to run correct number of steps in training.
		
		Args:
		  steps: number of steps to run during training.
		  max_steps: maximum number of steps to be run during training. It'll be
		    the maximum number of steps the model will train to after restoring
		    from checkpoint even across multiple estimator.train calls.
		
		Returns:
		  List of hooks to be passed to the estimator.
	**/
	public function _convert_train_steps_to_hooks(steps:Dynamic, max_steps:Dynamic):Dynamic;
	/**
		Creates and asserts properties of the global step.
		
		Args:
		  graph: The graph in which to create the global step tensor.
		
		Returns:
		  The global step `tf.Tensor`.
	**/
	public function _create_and_assert_global_step(graph:Dynamic):Dynamic;
	/**
		Creates the global step tensor in graph.
		
		The global step tensor must be an integer type with name 'global_step' and
		be added to the collection `tf.GraphKeys.GLOBAL_STEP`.
		
		Args:
		  graph: The graph in which to create the global step tensor.
		
		Returns:
		  The global step `tf.Tensor`.
	**/
	public function _create_global_step(graph:Dynamic):Dynamic;
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
	/**
		Builds the graph and related hooks to run evaluation.
	**/
	public function _evaluate_build_graph(input_fn:Dynamic, ?hooks:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	/**
		Run evaluation.
	**/
	public function _evaluate_run(checkpoint_path:Dynamic, scaffold:Dynamic, update_op:Dynamic, eval_dict:Dynamic, all_hooks:Dynamic, output_dir:Dynamic):Dynamic;
	/**
		Extracts batch length of predictions.
	**/
	public function _extract_batch_length(preds_evaluated:Dynamic):Dynamic;
	/**
		Extracts `predict_keys` from `predictions`.
	**/
	public function _extract_keys(predictions:Dynamic, predict_keys:Dynamic):Dynamic;
	/**
		Extracts the `features` and labels from return values of `input_fn`.
	**/
	public function _get_features_and_labels_from_input_fn(input_fn:Dynamic, mode:Dynamic):Dynamic;
	/**
		Extracts the `features` from return values of `input_fn`.
	**/
	public function _get_features_from_input_fn(input_fn:Dynamic, mode:Dynamic):Dynamic;
	public function _get_iterator_from_input_fn(input_fn:Dynamic, mode:Dynamic, ?distribution:Dynamic):Dynamic;
	public function _maybe_warm_start(checkpoint_path:Dynamic):Dynamic;
	static public var _strip_default_attrs : Dynamic;
	public function _train_model(input_fn:Dynamic, hooks:Dynamic, saving_listeners:Dynamic):Dynamic;
	/**
		Initiate training with `input_fn`, without `DistributionStrategies`.
		
		Args:
		  input_fn: A function that provides input data for training as minibatches.
		  hooks: List of `tf.train.SessionRunHook` subclass instances. Used for
		    callbacks inside the training loop.
		  saving_listeners: list of `tf.train.CheckpointSaverListener` objects. Used
		    for callbacks that run immediately before or after checkpoint savings.
		
		Returns:
		  Loss from training
	**/
	public function _train_model_default(input_fn:Dynamic, hooks:Dynamic, saving_listeners:Dynamic):Dynamic;
	/**
		Initiate training with `input_fn`, using `DistributionStrategies`.
		
		Args:
		  input_fn: A function that provides input data for training as minibatches.
		  hooks: List of `tf.train.SessionRunHook` subclass instances. Used for
		    callbacks inside the training loop.
		  saving_listeners: list of `tf.train.CheckpointSaverListener` objects. Used
		    for callbacks that run immediately before or after checkpoint savings.
		
		Returns:
		  Loss from training
	**/
	public function _train_model_distributed(input_fn:Dynamic, hooks:Dynamic, saving_listeners:Dynamic):Dynamic;
	/**
		Train a model with the given Estimator Spec.
	**/
	public function _train_with_estimator_spec(estimator_spec:Dynamic, worker_hooks:Dynamic, hooks:Dynamic, global_step_tensor:Dynamic, saving_listeners:Dynamic):Dynamic;
	public function _validate_features_in_predict_input(result:Dynamic):Dynamic;
	public var config : Dynamic;
	/**
		Shows the directory name where evaluation metrics are dumped.
		
		Args:
		  name: Name of the evaluation if user needs to run multiple evaluations on
		    different data sets, such as on training data vs test data. Metrics for
		    different evaluations are saved in separate folders, and appear
		    separately in tensorboard.
		
		Returns:
		  A string which is the path of directory contains evaluation metrics.
	**/
	public function eval_dir(?name:Dynamic):Dynamic;
	/**
		Evaluates the model given evaluation data `input_fn`.
		
		For each step, calls `input_fn`, which returns one batch of data.
		Evaluates until:
		- `steps` batches are processed, or
		- `input_fn` raises an end-of-input exception (`tf.errors.OutOfRangeError`
		or
		`StopIteration`).
		
		Args:
		  input_fn: A function that constructs the input data for evaluation. See
		    [Premade Estimators](
		    https://tensorflow.org/guide/premade#create_input_functions)
		    for more information. The
		    function should construct and return one of the following:  * A
		    `tf.data.Dataset` object: Outputs of `Dataset` object must be a tuple
		    `(features, labels)` with same constraints as below. * A tuple
		    `(features, labels)`: Where `features` is a `tf.Tensor` or a dictionary
		    of string feature name to `Tensor` and `labels` is a `Tensor` or a
		    dictionary of string label name to `Tensor`. Both `features` and
		    `labels` are consumed by `model_fn`. They should satisfy the expectation
		    of `model_fn` from inputs.
		  steps: Number of steps for which to evaluate model. If `None`, evaluates
		    until `input_fn` raises an end-of-input exception.
		  hooks: List of `tf.train.SessionRunHook` subclass instances. Used for
		    callbacks inside the evaluation call.
		  checkpoint_path: Path of a specific checkpoint to evaluate. If `None`, the
		    latest checkpoint in `model_dir` is used.  If there are no checkpoints
		    in `model_dir`, evaluation is run with newly initialized `Variables`
		    instead of ones restored from checkpoint.
		  name: Name of the evaluation if user needs to run multiple evaluations on
		    different data sets, such as on training data vs test data. Metrics for
		    different evaluations are saved in separate folders, and appear
		    separately in tensorboard.
		
		Returns:
		  A dict containing the evaluation metrics specified in `model_fn` keyed by
		  name, as well as an entry `global_step` which contains the value of the
		  global step for which this evaluation was performed. For canned
		  estimators, the dict contains the `loss` (mean loss per mini-batch) and
		  the `average_loss` (mean loss per sample). Canned classifiers also return
		  the `accuracy`. Canned regressors also return the `label/mean` and the
		  `prediction/mean`.
		
		Raises:
		  ValueError: If `steps <= 0`.
		  ValueError: If no model has been trained, namely `model_dir`, or the
		    given `checkpoint_path` is empty.
	**/
	public function evaluate(input_fn:Dynamic, ?steps:Dynamic, ?hooks:Dynamic, ?checkpoint_path:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Exports a `SavedModel` with `tf.MetaGraphDefs` for each requested mode.
		
		For each mode passed in via the `input_receiver_fn_map`,
		this method builds a new graph by calling the `input_receiver_fn` to obtain
		feature and label `Tensor`s. Next, this method calls the `Estimator`'s
		`model_fn` in the passed mode to generate the model graph based on
		those features and labels, and restores the given checkpoint
		(or, lacking that, the most recent checkpoint) into the graph.
		Only one of the modes is used for saving variables to the `SavedModel`
		(order of preference: `tf.estimator.ModeKeys.TRAIN`,
		`tf.estimator.ModeKeys.EVAL`, then
		`tf.estimator.ModeKeys.PREDICT`), such that up to three
		`tf.MetaGraphDefs` are saved with a single set of variables in a single
		`SavedModel` directory.
		
		For the variables and `tf.MetaGraphDefs`, a timestamped export directory
		below
		`export_dir_base`, and writes a `SavedModel` into it containing
		the `tf.MetaGraphDef` for the given mode and its associated signatures.
		
		For prediction, the exported `MetaGraphDef` will provide one `SignatureDef`
		for each element of the `export_outputs` dict returned from the `model_fn`,
		named using the same keys.  One of these keys is always
		`tf.saved_model.signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY`,
		indicating which
		signature will be served when a serving request does not specify one.
		For each signature, the outputs are provided by the corresponding
		`tf.estimator.export.ExportOutput`s, and the inputs are always the input
		receivers provided by
		the `serving_input_receiver_fn`.
		
		For training and evaluation, the `train_op` is stored in an extra
		collection,
		and loss, metrics, and predictions are included in a `SignatureDef` for the
		mode in question.
		
		Extra assets may be written into the `SavedModel` via the `assets_extra`
		argument.  This should be a dict, where each key gives a destination path
		(including the filename) relative to the assets.extra directory.  The
		corresponding value gives the full path of the source file to be copied.
		For example, the simple case of copying a single file without renaming it
		is specified as `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		
		Args:
		  export_dir_base: A string containing a directory in which to create
		    timestamped subdirectories containing exported `SavedModel`s.
		  input_receiver_fn_map: dict of `tf.estimator.ModeKeys` to
		    `input_receiver_fn` mappings, where the `input_receiver_fn` is a
		    function that takes no arguments and returns the appropriate subclass of
		    `InputReceiver`.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported `SavedModel`, or `None` if no extra assets are
		    needed.
		  as_text: whether to write the `SavedModel` proto in text format.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		
		Returns:
		  The string path to the exported directory.
		
		Raises:
		  ValueError: if any `input_receiver_fn` is `None`, no `export_outputs`
		    are provided, or no checkpoint can be found.
	**/
	public function experimental_export_all_saved_models(export_dir_base:Dynamic, input_receiver_fn_map:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	/**
		Exports inference graph as a `SavedModel` into the given dir.
		
		For a detailed guide, see
		[Using SavedModel with Estimators](https://tensorflow.org/guide/saved_model#using_savedmodel_with_estimators).
		
		This method builds a new graph by first calling the
		`serving_input_receiver_fn` to obtain feature `Tensor`s, and then calling
		this `Estimator`'s `model_fn` to generate the model graph based on those
		features. It restores the given checkpoint (or, lacking that, the most
		recent checkpoint) into this graph in a fresh session.  Finally it creates
		a timestamped export directory below the given `export_dir_base`, and writes
		a `SavedModel` into it containing a single `tf.MetaGraphDef` saved from this
		session.
		
		The exported `MetaGraphDef` will provide one `SignatureDef` for each
		element of the `export_outputs` dict returned from the `model_fn`, named
		using
		the same keys.  One of these keys is always
		`tf.saved_model.signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY`,
		indicating which
		signature will be served when a serving request does not specify one.
		For each signature, the outputs are provided by the corresponding
		`tf.estimator.export.ExportOutput`s, and the inputs are always the input
		receivers provided by
		the `serving_input_receiver_fn`.
		
		Extra assets may be written into the `SavedModel` via the `assets_extra`
		argument.  This should be a dict, where each key gives a destination path
		(including the filename) relative to the assets.extra directory.  The
		corresponding value gives the full path of the source file to be copied.
		For example, the simple case of copying a single file without renaming it
		is specified as `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		
		The experimental_mode parameter can be used to export a single
		train/eval/predict graph as a `SavedModel`.
		See `experimental_export_all_saved_models` for full docs.
		
		Args:
		  export_dir_base: A string containing a directory in which to create
		    timestamped subdirectories containing exported `SavedModel`s.
		  serving_input_receiver_fn: A function that takes no argument and returns a
		    `tf.estimator.export.ServingInputReceiver` or
		    `tf.estimator.export.TensorServingInputReceiver`.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported `SavedModel`, or `None` if no extra assets are
		    needed.
		  as_text: whether to write the `SavedModel` proto in text format.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		  experimental_mode: `tf.estimator.ModeKeys` value indicating with mode
		    will be exported. Note that this feature is experimental.
		
		Returns:
		  The string path to the exported directory.
		
		Raises:
		  ValueError: if no `serving_input_receiver_fn` is provided, no
		  `export_outputs` are provided, or no checkpoint can be found.
	**/
	public function export_saved_model(export_dir_base:Dynamic, serving_input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic, ?experimental_mode:Dynamic):Dynamic;
	/**
		Exports inference graph as a `SavedModel` into the given dir.
		
		For a detailed guide, see
		[Using SavedModel with Estimators](https://tensorflow.org/guide/saved_model#using_savedmodel_with_estimators).
		
		This method builds a new graph by first calling the
		`serving_input_receiver_fn` to obtain feature `Tensor`s, and then calling
		this `Estimator`'s `model_fn` to generate the model graph based on those
		features. It restores the given checkpoint (or, lacking that, the most
		recent checkpoint) into this graph in a fresh session.  Finally it creates
		a timestamped export directory below the given `export_dir_base`, and writes
		a `SavedModel` into it containing a single `tf.MetaGraphDef` saved from this
		session.
		
		The exported `MetaGraphDef` will provide one `SignatureDef` for each
		element of the `export_outputs` dict returned from the `model_fn`, named
		using
		the same keys.  One of these keys is always
		`tf.saved_model.signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY`,
		indicating which
		signature will be served when a serving request does not specify one.
		For each signature, the outputs are provided by the corresponding
		`tf.estimator.export.ExportOutput`s, and the inputs are always the input
		receivers provided by
		the `serving_input_receiver_fn`.
		
		Extra assets may be written into the `SavedModel` via the `assets_extra`
		argument.  This should be a dict, where each key gives a destination path
		(including the filename) relative to the assets.extra directory.  The
		corresponding value gives the full path of the source file to be copied.
		For example, the simple case of copying a single file without renaming it
		is specified as `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		
		Args:
		  export_dir_base: A string containing a directory in which to create
		    timestamped subdirectories containing exported `SavedModel`s.
		  serving_input_receiver_fn: A function that takes no argument and returns a
		    `tf.estimator.export.ServingInputReceiver` or
		    `tf.estimator.export.TensorServingInputReceiver`.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported `SavedModel`, or `None` if no extra assets are
		    needed.
		  as_text: whether to write the `SavedModel` proto in text format.
		  checkpoint_path: The checkpoint path to export.  If `None` (the default),
		    the most recent checkpoint found within the model directory is chosen.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the `NodeDef`s. For a detailed guide, see [Stripping
		    Default-Valued Attributes](
		    https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		
		Returns:
		  The string path to the exported directory.
		
		Raises:
		  ValueError: if no `serving_input_receiver_fn` is provided, no
		  `export_outputs` are provided, or no checkpoint can be found.
	**/
	public function export_savedmodel(export_dir_base:Dynamic, serving_input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?checkpoint_path:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	/**
		Returns list of all variable names in this model.
		
		Returns:
		  List of names.
		
		Raises:
		  ValueError: If the `Estimator` has not produced a checkpoint yet.
	**/
	public function get_variable_names():Dynamic;
	/**
		Returns value of the variable given by name.
		
		Args:
		  name: string or a list of string, name of the tensor.
		
		Returns:
		  Numpy array - value of the tensor.
		
		Raises:
		  ValueError: If the `Estimator` has not produced a checkpoint yet.
	**/
	public function get_variable_value(name:Dynamic):Dynamic;
	/**
		Finds the filename of the latest saved checkpoint file in `model_dir`.
		
		Returns:
		  The full path to the latest checkpoint or `None` if no checkpoint was
		  found.
	**/
	public function latest_checkpoint():Dynamic;
	public var model_dir : Dynamic;
	/**
		Returns the `model_fn` which is bound to `self.params`.
		
		Returns:
		  The `model_fn` with following signature:
		    `def model_fn(features, labels, mode, config)`
	**/
	public var model_fn : Dynamic;
	public var params : Dynamic;
	/**
		Yields predictions for given features.
		
		Please note that interleaving two predict outputs does not work. See:
		[issue/20506](
		https://github.com/tensorflow/tensorflow/issues/20506#issuecomment-422208517)
		
		Args:
		  input_fn: A function that constructs the features. Prediction continues
		    until `input_fn` raises an end-of-input exception
		    (`tf.errors.OutOfRangeError` or `StopIteration`).
		    See [Premade Estimators](
		    https://tensorflow.org/guide/premade_estimators#create_input_functions)
		    for more information. The function should construct and return one of
		    the following:
		
		      * A `tf.data.Dataset` object: Outputs of `Dataset` object must have
		        same constraints as below.
		      * features: A `tf.Tensor` or a dictionary of string feature name to
		        `Tensor`. features are consumed by `model_fn`. They should satisfy
		        the expectation of `model_fn` from inputs.
		      * A tuple, in which case the first item is extracted as features.
		
		  predict_keys: list of `str`, name of the keys to predict. It is used if
		    the `tf.estimator.EstimatorSpec.predictions` is a `dict`. If
		    `predict_keys` is used then rest of the predictions will be filtered
		    from the dictionary. If `None`, returns all.
		  hooks: List of `tf.train.SessionRunHook` subclass instances. Used for
		    callbacks inside the prediction call.
		  checkpoint_path: Path of a specific checkpoint to predict. If `None`, the
		    latest checkpoint in `model_dir` is used.  If there are no checkpoints
		    in `model_dir`, prediction is run with newly initialized `Variables`
		    instead of ones restored from checkpoint.
		  yield_single_examples: If `False`, yields the whole batch as returned by
		    the `model_fn` instead of decomposing the batch into individual
		    elements. This is useful if `model_fn` returns some tensors whose first
		    dimension is not equal to the batch size.
		
		Yields:
		  Evaluated values of `predictions` tensors.
		
		Raises:
		  ValueError: Could not find a trained model in `model_dir`.
		  ValueError: If batch length of predictions is not the same and
		    `yield_single_examples` is `True`.
		  ValueError: If there is a conflict between `predict_keys` and
		    `predictions`. For example if `predict_keys` is not `None` but
		    `tf.estimator.EstimatorSpec.predictions` is not a `dict`.
	**/
	public function predict(input_fn:Dynamic, ?predict_keys:Dynamic, ?hooks:Dynamic, ?checkpoint_path:Dynamic, ?yield_single_examples:Dynamic):Dynamic;
	/**
		Trains a model given training data `input_fn`.
		
		Args:
		  input_fn: A function that provides input data for training as minibatches.
		    See [Premade Estimators](
		    https://tensorflow.org/guide/premade_estimators#create_input_functions)
		    for more information. The function should construct and return one of
		    the following:  * A
		    `tf.data.Dataset` object: Outputs of `Dataset` object must be a tuple
		    `(features, labels)` with same constraints as below. * A tuple
		    `(features, labels)`: Where `features` is a `tf.Tensor` or a dictionary
		    of string feature name to `Tensor` and `labels` is a `Tensor` or a
		    dictionary of string label name to `Tensor`. Both `features` and
		    `labels` are consumed by `model_fn`. They should satisfy the expectation
		    of `model_fn` from inputs.
		  hooks: List of `tf.train.SessionRunHook` subclass instances. Used for
		    callbacks inside the training loop.
		  steps: Number of steps for which to train the model. If `None`, train
		    forever or train until `input_fn` generates the `tf.errors.OutOfRange`
		    error or `StopIteration` exception. `steps` works incrementally. If you
		    call two times `train(steps=10)` then training occurs in total 20 steps.
		    If `OutOfRange` or `StopIteration` occurs in the middle, training stops
		    before 20 steps. If you don't want to have incremental behavior please
		    set `max_steps` instead. If set, `max_steps` must be `None`.
		  max_steps: Number of total steps for which to train model. If `None`,
		    train forever or train until `input_fn` generates the
		    `tf.errors.OutOfRange` error or `StopIteration` exception. If set,
		    `steps` must be `None`. If `OutOfRange` or `StopIteration` occurs in the
		    middle, training stops before `max_steps` steps. Two calls to
		    `train(steps=100)` means 200 training iterations. On the other hand, two
		    calls to `train(max_steps=100)` means that the second call will not do
		    any iteration since first call did all 100 steps.
		  saving_listeners: list of `CheckpointSaverListener` objects. Used for
		    callbacks that run immediately before or after checkpoint savings.
		
		Returns:
		  `self`, for chaining.
		
		Raises:
		  ValueError: If both `steps` and `max_steps` are not `None`.
		  ValueError: If either `steps` or `max_steps <= 0`.
	**/
	public function train(input_fn:Dynamic, ?hooks:Dynamic, ?steps:Dynamic, ?max_steps:Dynamic, ?saving_listeners:Dynamic):Dynamic;
}