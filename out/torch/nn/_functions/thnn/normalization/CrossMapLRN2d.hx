/* This file is generated, do not edit! */
package torch.nn._functions.thnn.normalization;
@:pythonImport("torch.nn._functions.thnn.normalization", "CrossMapLRN2d") extern class CrossMapLRN2d {
	public function __call__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Function metaclass.
		
		This metaclass sets up the following properties:
		    _is_legacy: True if forward is not defined as a static method.
		    _backward_cls: The Function class corresponding to the differentiated
		        version of this function (which is generated on the fly by this
		        metaclass).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, attrs:Dynamic):Dynamic;
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
	public function ___init__(size:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(size:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?k:Dynamic):Void;
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
	public function _backward_cls(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _do_backward(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _do_forward(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _is_legacy : Dynamic;
	public var _is_tracing : Dynamic;
	static public function _register_hook(backward_hooks:Dynamic, hook:Dynamic):Dynamic;
	public function _register_hook_dict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function apply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Defines a formula for differentiating the operation.
		
		This function is to be overridden by all subclasses.
		
		It must accept a context :attr:`ctx` as the first argument, followed by
		as many outputs did :func:`forward` return, and it should return as many
		tensors, as there were inputs to :func:`forward`. Each argument is the
		gradient w.r.t the given output, and each returned value should be the
		gradient w.r.t. the corresponding input.
		
		The context can be used to retrieve tensors saved during the forward
		pass. It also has an attribute :attr:`ctx.needs_input_grad` as a tuple
		of booleans representing whether each input needs gradient. E.g.,
		:func:`backward` will have ``ctx.needs_input_grad[0] = True`` if the
		first input to :func:`forward` needs gradient computated w.r.t. the
		output.
	**/
	public function backward(grad_output:Dynamic):Dynamic;
	public var dirty_tensors : Dynamic;
	/**
		Performs the operation.
		
		This function is to be overridden by all subclasses.
		
		It must accept a context ctx as the first argument, followed by any
		number of arguments (tensors or other types).
		
		The context can be used to store tensors that can be then retrieved
		during the backward pass.
	**/
	public function forward(input:Dynamic):Dynamic;
	static public var is_traceable : Dynamic;
	/**
		Marks given tensors as modified in an in-place operation.
		
		**This should be called at most once, only from inside the**
		:func:`forward` **method, and all arguments should be inputs.**
		
		Every tensor that's been modified in-place in a call to :func:`forward`
		should be given to this function, to ensure correctness of our checks.
		It doesn't matter whether the function is called before or after
		modification.
	**/
	public function mark_dirty(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Marks outputs as non-differentiable.
		
		**This should be called at most once, only from inside the**
		:func:`forward` **method, and all arguments should be outputs.**
		
		This will mark outputs as not requiring gradients, increasing the
		efficiency of backward computation. You still need to accept a gradient
		for each output in :meth:`~Function.backward`, but it's always going to
		be ``None``.
		
		This is used e.g. for indices returned from a max :class:`Function`.
	**/
	public function mark_non_differentiable(?args:python.VarArgs<Dynamic>):Dynamic;
	public function mark_shared_storage(?pairs:python.VarArgs<Dynamic>):Dynamic;
	public var metadata : Dynamic;
	public var needs_input_grad : Dynamic;
	public var next_functions : Dynamic;
	public var non_differentiable : Dynamic;
	public function register_hook(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var requires_grad : Dynamic;
	/**
		Saves given tensors for a future call to :func:`~Function.backward`.
		
		**This should be called at most once, and only from inside the**
		:func:`forward` **method.**
		
		Later, saved tensors can be accessed through the :attr:`saved_tensors`
		attribute. Before returning them to the user, a check is made to ensure
		they weren't used in any in-place operation that modified their content.
		
		Arguments can also be ``None``.
	**/
	public function save_for_backward(?tensors:python.VarArgs<Dynamic>):Dynamic;
	public var saved_tensors : Dynamic;
	public var saved_variables : Dynamic;
	public var to_save : Dynamic;
}