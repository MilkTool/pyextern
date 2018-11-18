/* This file is generated, do not edit! */
package theano.tensor.type;
@:pythonImport("theano.tensor.type", "TensorType") extern class TensorType {
	/**
		Subclass to add the tensor operators to the basic `Constant` class.
		
		To create a TensorConstant, use the `constant` function in this module.
	**/
	static public function Constant(type:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subclass to add the tensor operators to the basic `Variable` class.
	**/
	static public function Variable(type:Dynamic, ?owner:Dynamic, ?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a new `Variable` instance of Type `self`.
		
		Parameters
		----------
		name : None or str
		    A pretty string for printing and debugging.
	**/
	public function __call__(?name:Dynamic):Dynamic;
	static public function __class__(name:Dynamic, bases:Dynamic, dct:Dynamic):Dynamic;
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
		Compare True iff other is the same kind of TensorType.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
		Hash equal for same kinds of TensorType
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(dtype:Dynamic, broadcastable:Dynamic, ?name:Dynamic, ?sparse_grad:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dtype:Dynamic, broadcastable:Dynamic, ?name:Dynamic, ?sparse_grad:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Override `CLinkerType.c_cleanup`.
	**/
	public function c_cleanup(name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Return a tuple of integers indicating the version of this Type.
		
		An empty tuple indicates an 'unversioned' Type that will not
		be cached between processes.
		
		The cache mechanism may erase cached modules that have been
		superceded by newer versions. See `ModuleCache` for details.
	**/
	public function c_code_cache_version():Dynamic;
	/**
		Optional: Return a list of compile args recommended to compile the
		code returned by other methods in this class.
		
		Example
		-------
		return ['-ffast-math']
		
		Compiler arguments related to headers, libraries and search paths should
		be provided via the functions `c_headers`, `c_libraries`,
		`c_header_dirs`, and `c_lib_dirs`.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_compile_args(c_compiler:Dynamic):Dynamic;
	/**
		Override `CLinkerType.c_declare`.
	**/
	public function c_declare(name:Dynamic, sub:Dynamic, ?check_input:Dynamic):Dynamic;
	/**
		Optional: Return the name of the primitive C type of items into variables
		handled by this type.
		
		e.g:
		
		 - For ``TensorType(dtype='int64', ...)``: should return ``"npy_int64"``.
		 - For ``GpuArrayType(dtype='int32', ...)``: should return ``"ga_int"``.
	**/
	public function c_element_type():Dynamic;
	/**
		Override `CLinkerType.c_extract`.
	**/
	public function c_extract(name:Dynamic, sub:Dynamic, ?check_input:Dynamic):Dynamic;
	/**
		Optional: C code to extract a PyObject * instance.
		
		Unlike c_extract, c_extract_out has to accept Py_None,
		meaning that the variable should be left uninitialized.
	**/
	public function c_extract_out(name:Dynamic, sub:Dynamic, ?check_input:Dynamic):Dynamic;
	/**
		Optional: Return a list of header search paths required by code
		returned by this class.
		
		Examples
		--------
		return ['/usr/local/include', '/opt/weirdpath/src/include']
		
		Provides search paths for headers, in addition to those in any relevant
		environment variables.
		
		Hint: for unix compilers, these are the things that get '-I' prefixed
		in the compiler cmdline.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_header_dirs():Dynamic;
	/**
		Override `CLinkerObject.c_headers`.
	**/
	public function c_headers(c_compiler:Dynamic):Dynamic;
	/**
		Override `CLinkerType.c_init`.
	**/
	public function c_init(name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Optional: return a list of code snippets to be inserted in module
		initialization.
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_init_code():Dynamic;
	/**
		Optional: Return True for small or builtin C types.
		
		A hint to tell the compiler that this type is a builtin C type or a
		small struct and that its memory footprint is negligible. Simple
		objects may be passed on the stack.
	**/
	public function c_is_simple():Dynamic;
	/**
		Optional: Return a list of library search paths required by code
		returned by this class.
		
		Examples
		--------
		return ['/usr/local/lib', '/opt/weirdpath/build/libs'].
		
		Provides search paths for libraries, in addition to those in any
		relevant environment variables (e.g. LD_LIBRARY_PATH).
		
		Hint: for unix compilers, these are the things that get '-L' prefixed
		in the compiler cmdline.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_lib_dirs():Dynamic;
	/**
		Optional: Return a list of libraries required by code returned by
		this class.
		
		Examples
		--------
		return ['gsl', 'gslcblas', 'm', 'fftw3', 'g2c'].
		
		The compiler will search the directories specified by the environment
		variable LD_LIBRARY_PATH in addition to any returned by `c_lib_dirs`.
		
		Hint: for unix compilers, these are the things that get '-l' prefixed
		in the compiler cmdline.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_libraries(c_compiler:Dynamic):Dynamic;
	/**
		Optional: WRITEME
		
		Parameters
		----------
		data : WRITEME
		    WRITEME
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_literal(data:Dynamic):Dynamic;
	/**
		Optional: return a list of incompatible gcc compiler arguments.
		
		We will remove those arguments from the command line of gcc. So if
		another Op adds a compile arg in the graph that is incompatible
		with this Op, the incompatible arg will not be used.
		Useful for instance to remove -ffast-math.
		
		EXAMPLE
		
		WRITEME
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_no_compile_args():Dynamic;
	/**
		Override `CLinkerObject.c_support_code`.
	**/
	public function c_support_code():Dynamic;
	/**
		Override `CLinkerType.c_sync`.
	**/
	public function c_sync(name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Return a copy of the type optionally with a new dtype or
		broadcastable pattern.
	**/
	public function clone(?dtype:Dynamic, ?broadcastable:Dynamic):Dynamic;
	static public var context_name : Dynamic;
	/**
		Patch variable so that its type will match self, if possible.
		
		If the variable can't be converted, this should return None.
		
		The conversion can only happen if the following implication is
		true for all possible `val`.
		
		  self.is_valid_value(val) => var.type.is_valid_value(val)
		
		For the majority of types this means that you can only have
		non-broadcastable dimensions become broadcastable and not the
		inverse.
		
		The default is to not convert anything which is always safe.
	**/
	public function convert_variable(_var:Dynamic):Dynamic;
	/**
		Return a tuple (python type, c type, numpy typenum) that corresponds
		to self.dtype.
		
		This function is used internally as part of C code generation.
	**/
	public function dtype_specs():Dynamic;
	/**
		Convert `data` to something which can be associated to a
		`TensorVariable`.
		
		This function is not meant to be called in user code. It is for
		`Linker` instances to use when running a compiled graph.
	**/
	public function filter(data:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic):Dynamic;
	static public var filter_checks_isfinite : Dynamic;
	/**
		Convert a symbolic Variable into a TensorType, if compatible.
		
		For the moment, only a TensorType and GpuArrayType will be
		converted, provided they have the same number of dimensions
		and dtype and have "compatible" broadcastable pattern.
	**/
	public function filter_variable(other:Dynamic, ?allow_convert:Dynamic):Dynamic;
	/**
		Return the information needed to compute the memory size of ``obj``.
		
		The memory size is only the data, so this excludes the container.
		For an ndarray, this is the data, but not the ndarray object and
		other data structures such as shape and strides.
		
		``get_shape_info()`` and ``get_size()`` work in tandem for the memory
		profiler.
		
		``get_shape_info()`` is called during the execution of the function.
		So it is better that it is not too slow.
		
		``get_size()`` will be called on the output of this function
		when printing the memory profile.
		
		Parameters
		----------
		obj
		    The object that this Type represents during execution.
		
		Returns
		-------
		object
		    Python object that ``self.get_size()`` understands.
	**/
	public function get_shape_info(obj:Dynamic):Dynamic;
	/**
		Number of bytes taken by the object represented by shape_info.
		
		Parameters
		----------
		shape_info
		    The output of the call to get_shape_info().
		
		Returns
		-------
		int
		    The number of bytes taken by the object described by ``shape_info``.
	**/
	public function get_size(shape_info:Dynamic):Dynamic;
	/**
		Required: Return True for any python object `a` that would be a
		legal value for a Variable of this Type.
	**/
	public function is_valid_value(a:Dynamic):Dynamic;
	public function make_constant(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a `TensorVariable` of this type.
		
		Parameters
		----------
		name : str
		    A pretty name to identify this `Variable` when printing and
		    debugging
	**/
	public function make_variable(?name:Dynamic):Dynamic;
	static public function may_share_memory(a:Dynamic, b:Dynamic):Dynamic;
	/**
		number of dimensions
	**/
	public var ndim : Dynamic;
	public function to_scalar_type():Dynamic;
	/**
		Optional: Return a message explaining the output of
		is_valid_value.
	**/
	public function value_validity_msg(a:Dynamic):Dynamic;
	/**
		Create an numpy ndarray full of 0 values.
	**/
	public function value_zeros(shape:Dynamic):Dynamic;
	/**
		Return True if a and b can be considered exactly equal.
		
		a and b are assumed to be valid values of this Type.
	**/
	static public function values_eq(a:Dynamic, b:Dynamic, ?force_same_dtype:Dynamic):Dynamic;
	/**
		Return True if a and b can be considered approximately equal.
		
		This function is used by theano debugging tools to decide
		whether two values are equivalent, admitting a certain amount
		of numerical instability. For example, for floating-point
		numbers this function should be an approximate comparison.
		
		By default, this does an exact comparison.
		
		Parameters
		----------
		a
		    A potential value for a Variable of this Type.
		
		b
		    A potential value for a Variable of this Type.
		
		Returns
		-------
		bool
	**/
	static public function values_eq_approx(a:Dynamic, b:Dynamic, ?allow_remove_inf:Dynamic, ?allow_remove_nan:Dynamic, ?rtol:Dynamic, ?atol:Dynamic):Dynamic;
}