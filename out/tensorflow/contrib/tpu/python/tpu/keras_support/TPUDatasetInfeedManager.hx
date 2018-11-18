/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.keras_support;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.keras_support", "TPUDatasetInfeedManager") extern class TPUDatasetInfeedManager {
	/**
		An instance of the TPU infeed.
	**/
	static public function DatasetInfeedInstance(input_specs:Dynamic):Dynamic;
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
		Constructs a TPUDatasetInfeedManager.
		
		Args:
		  dataset: A `tf.data.Dataset` to infeed.
		  tpu_assignment: The `TPUAssignment` used to configure the
		    Keras TPU model.
		  mode: ModeKeys enum.
	**/
	@:native("__init__")
	public function ___init__(dataset:Dynamic, tpu_assignment:Dynamic, mode:Dynamic):Dynamic;
	/**
		Constructs a TPUDatasetInfeedManager.
		
		Args:
		  dataset: A `tf.data.Dataset` to infeed.
		  tpu_assignment: The `TPUAssignment` used to configure the
		    Keras TPU model.
		  mode: ModeKeys enum.
	**/
	public function new(dataset:Dynamic, tpu_assignment:Dynamic, mode:Dynamic):Void;
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
		Verifies a dataset is of an appropriate shape for TPUs.
	**/
	public function _verify_dataset_shape(dataset:Dynamic):Dynamic;
	/**
		For a given input specification (size, type), construct the infeed ops.
		
		This is called only once for a given input specification and builds the
		graph ops. It does not have a pointer to the actual infeed data.
		
		Args:
		  input_specs: TODO(saeta): Document me!
		  execution_mode: TODO(saeta): Document me!
		
		Returns:
		  A `SizedInfeed` instance.
	**/
	public function build_infeed_from_input_specs(input_specs:Dynamic, execution_mode:Dynamic):Dynamic;
	public var dummy_x : Dynamic;
	public var dummy_y : Dynamic;
	/**
		Given a single step's input, construct a `TPUInfeedInstance`.
		
		Args:
		  inputs: The inputs to a given step.
		
		Returns:
		  A subclass of `TPUInfeedInstance`.
	**/
	public function make_infeed_instance(inputs:Dynamic):Dynamic;
}