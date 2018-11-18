/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.distributed_training_utils;
@:pythonImport("tensorflow.python.keras.engine.distributed_training_utils") extern class Distributed_training_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Configure session config and create a session with it.
	**/
	static public function configure_and_create_session(distribution_strategy:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Unwraps and flattens a nest of PerDevice parameters.
		
		PerDevice values have one value associated with each device. Each entry in
		the PerDevice dict has a device `key` and the corresponding value on the
		device as the `value`. In this function we take a PerDevice value or a list of
		PerDevice values and return all the values in the PerDevice dict.
		
		Args:
		  distribution_strategy: DistributionStrategy used to distribute training and
		      validation.
		  perdevice_values: List of PerDevice object or a single PerDevice object.
		
		Returns:
		  List of values of all the PerDevice objects.
	**/
	static public function flatten_perdevice_values(distribution_strategy:Dynamic, perdevice_values:Dynamic):Dynamic;
	static public function get_batch_dimension(iterator:Dynamic):Dynamic;
	/**
		Calculate the number of batches and steps/steps_per_epoch.
		
		Args:
		  first_x_value: This is the first input numpy array that is passed in as the
		    model input.
		  batch_size: The specified batch_size or the default batch_size of 32.
		  current_strategy: The current DistributionStrategy used to compile the
		    model.
		
		Returns:
		  The steps or steps_per_epoch argument depending on if a user is
		  calling `fit`, `evaluate` or `predict`.
		
		Raises:
		  ValueError: If the number of batches or steps evaluates to 0.
	**/
	static public function get_input_batch_params(first_x_value:Dynamic, batch_size:Dynamic, current_strategy:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sets the weights of the replicated models.
		
		The weights of the replicated models are set to the weights of the original
		model. The weights of the replicated model are Mirrored variables and hence
		we need to use the `update` call within a DistributionStrategy scope.
		
		Args:
		  distribution_strategy: DistributionStrategy used to distribute training
		      and validation.
		  dist_model: The replicated models on the different devices.
		  weights: The weights of the original model.
	**/
	static public function set_weights(distribution_strategy:Dynamic, dist_model:Dynamic, weights:Dynamic):Dynamic;
	/**
		Unwrap and return the list of values contained in the PerDevice parameters.
		
		This function calls `flatten_perdevice_values` to parse each of the input
		parameters into a list of values on the different devices. If we set
		`with_loss_tensor` to be True, we also call `reduce` on the list of losses on
		the different devices to give us one loss tensor.
		
		Args:
		  distribution_strategy: DistributionStrategy used to distribute training and
		      validation.
		  grouped_inputs: PerDevice inputs returned from the train or test function
		      that we ran on each device.
		  grouped_outputs: PerDevice outputs returned from the train or test function
		      that we ran on each device.
		  grouped_updates: PerDevice updates returned from the train or test function
		      that we ran on each device.
		  grouped_session_args: PerDevice session args returned from the train or
		      test function that we ran on each device.
		  with_loss_tensor: Boolean that indicates if we need to add the reduced loss
		      tensor as one of the outputs.
		
		Returns:
		  Values of each of the PerDevice parameters.
	**/
	static public function unwrap_values(distribution_strategy:Dynamic, grouped_inputs:Dynamic, grouped_outputs:Dynamic, grouped_updates:Dynamic, grouped_session_args:Dynamic, ?with_loss_tensor:Dynamic):Dynamic;
	static public function validate_all_tensor_shapes(x:Dynamic, x_values:Dynamic):Dynamic;
	static public function validate_all_tensor_types(x:Dynamic, x_values:Dynamic):Dynamic;
	/**
		Validate whether given callbacks are supported by DistributionStrategy.
		
		Args:
		  input_callbacks: List of callbacks passed by the user to fit.
		
		Raises:
		  ValueError: If `LearningRateScheduler` or `ReduceLROnPlateau` is one of the
		      callbacks passed.
		  ValueError: If `histogram_freq` or `write_grads` is one of the parameters
		      passed as part of the TensorBoard callback.
	**/
	static public function validate_callbacks(input_callbacks:Dynamic):Dynamic;
	/**
		Validate all the components of a DistributedValue Dataset input.
		
		Args:
		  distribution_strategy: The current DistributionStrategy used to call
		      `fit`/`evaluate`.
		  x: Input Dataset DistributedValue object. For example, when we use
		      `MirroredStrategy` this is a PerDevice object with a tensor for each
		      device set in the dict. x can also be a tuple or dict. The keys of the
		      dict should match the names of the input layers of the model.
		  y: Target Dataset DistributedValue object. For example, when we use
		      `MirroredStrategy` this is a PerDevice object with a tensor for each
		      device set in the dict. y can also be a tuple or dict. The keys of the
		      dict should match the names of the output layers of the model.
		
		Returns:
		  The unwrapped values list of the x and y DistributedValues inputs.
		
		Raises:
		  ValueError: If x and y do not have support for being evaluated as tensors.
		      or if x and y contain elements that are not tensors or if x and y
		      contain elements that have a shape or dtype mismatch.
	**/
	static public function validate_distributed_dataset_inputs(distribution_strategy:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Validate inputs when using DistributionStrategy.
		
		Args:
		  x: Model Inputs.
		  y: Model Targets.
		  distribution_strategy: The DistributionStrategy with which the model is
		    compiled.
		
		Raises:
		  ValueError: if input is not a Dataset or a numpy array.
	**/
	static public function validate_inputs(x:Dynamic, y:Dynamic, distribution_strategy:Dynamic):Dynamic;
	/**
		Validates PerDevice dataset input list.
		
		Args:
		  distribution_strategy: The current DistributionStrategy used to call
		    `fit`, `evaluate` and `predict`.
		  x: A list of PerDevice objects that represent the input or
		    target values.
		
		Returns:
		  List containing the first element of each of the PerDevice objects in
		  the input list.
		
		Raises:
		  ValueError: If any of the objects in the `per_device_list` is not a tensor.
	**/
	static public function validate_per_device_inputs(distribution_strategy:Dynamic, x:Dynamic):Dynamic;
}