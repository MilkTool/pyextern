/* This file is generated, do not edit! */
package theano.tensor.nnet.ctc;
@:pythonImport("theano.tensor.nnet.ctc", "ConnectionistTemporalClassification") extern class ConnectionistTemporalClassification {
	public function L_op(inputs:Dynamic, outputs:Dynamic, output_grads:Dynamic):Dynamic;
	/**
		This method is primarily used by tensor.Rop
		
		Suppose the op outputs
		
		[ f_1(inputs), ..., f_n(inputs) ]
		
		Parameters
		----------
		inputs : a Variable or list of Variables
		eval_points
		    A Variable or list of Variables with the same length as inputs.
		    Each element of eval_points specifies the value of the corresponding
		    input at the point where the R op is to be evaluated.
		
		Returns
		-------
		list of n elements
		    rval[i] should be Rop(f=f_i(inputs),
		                          wrt=inputs,
		                          eval_points=eval_points)
	**/
	public function R_op(inputs:Dynamic, eval_points:Dynamic):Dynamic;
	static public var SECTIONS : Dynamic;
	/**
		Returns a list of (name, value) pairs that will be turned into
		macros for use within the op code.
		
		The names must be strings that are not a C keyword and the
		values must be strings of literal C representations.
		
		If op uses a :class:`theano.gof.params_type.ParamsType` as ``params_type``,
		it returns:
		 - a default macro ``PARAMS_TYPE`` which defines the class name of the
		   corresponding C struct.
		 - a macro ``DTYPE_PARAM_key`` for every ``key`` in the ParamsType for which associated
		   type implements the method :func:`theano.gof.type.CLinkerType.c_element_type`.
		   ``DTYPE_PARAM_key`` defines the primitive C type name of an item in a variable
		   associated to ``key``.
	**/
	public function _COp__get_op_params():Dynamic;
	/**
		Optional: return some or all output[s] of `make_node`.
		
		It is called by code such as:
		
		.. python::
		
		   x = tensor.matrix()
		
		   # tensor.exp is an Op instance, calls
		   # Op.__call__(self=<instance of exp>, inputs=(x,))
		   y = tensor.exp(x)
		
		This class implements a convenience function (for graph-building) which
		uses `default_output`, but subclasses are free to override this function
		and ignore `default_output`.
		
		Parameters
		----------
		inputs
		    The Op's inputs, forwarded to the call to `make_node()`.
		kwargs
		    Additional keyword arguments to be forwarded to
		    `make_node()` *except* for optional argument `return_list` (which
		    defaults to False). If `return_list` is True, then the returned
		    value is always a list. Otherwise it is either a single Variable
		    when the output of `make_node()` contains a single element, or this
		    output (unchanged) when it contains multiple elements.
	**/
	public function __call__(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __hash__():Dynamic;
	/**
		Sections are loaded from files in order with sections in later
		files overriding sections in previous files.
	**/
	@:native("__init__")
	public function ___init__(?compute_grad:Dynamic, ?openmp:Dynamic):Dynamic;
	/**
		Sections are loaded from files in order with sections in later
		files overriding sections in previous files.
	**/
	public function new(?compute_grad:Dynamic, ?openmp:Dynamic):Void;
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
	static public var __props__ : Dynamic;
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
	public function __setstate__(d:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
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
	static public var _cop_num_inputs : Dynamic;
	static public var _cop_num_outputs : Dynamic;
	/**
		Extract test value from variable v.
		Raises AttributeError if there is none.
		
		For a Constant, the test value is v.value.
		For a Shared variable, it is the internal value.
		For another Variable, it is the content of v.tag.test_value.
	**/
	static public function _get_test_value(v:Dynamic):Dynamic;
	public function _lquote_macro(txt:Dynamic):Dynamic;
	/**
		Tuple of properties of all attributes
	**/
	public function _props():Dynamic;
	/**
		This return a dict of all ``__props__`` key-> value.
		
		This is useful in optimization to swap op that should have the
		same props. This help detect error that the new op have at
		least all the original props.
	**/
	public function _props_dict():Dynamic;
	/**
		Add tag.trace to an node or variable.
		
		The argument is returned after being affected (inplace).
		
		Parameters
		----------
		thing
		    The object where we add .tag.trace.
		user_line
		    The max number of user line to keep.
		
		Notes
		-----
		We also use config.traceback.limit for the maximum number of stack level
		we look.
	**/
	static public function add_tag_trace(thing:Dynamic, ?user_line:Dynamic):Dynamic;
	static public var backward_re : Dynamic;
	public function c_cleanup_code_struct(node:Dynamic, name:Dynamic):Dynamic;
	/**
		Required: return the C implementation of an Op.
		
		Returns C code that does the computation associated to this `Op`,
		given names for the inputs and outputs.
		
		Parameters
		----------
		node : Apply instance
		    The node for which we are compiling the current c_code.
		   The same Op may be used in more than one node.
		name : str
		    A name that is automatically assigned and guaranteed to be
		    unique.
		inputs : list of strings
		    There is a string for each input of the function, and the
		    string is the name of a C variable pointing to that input.
		    The type of the variable depends on the declared type of
		    the input.  There is a corresponding python variable that
		    can be accessed by prepending "py_" to the name in the
		    list.
		outputs : list of strings
		    Each string is the name of a C variable where the Op should
		    store its output.  The type depends on the declared type of
		    the output.  There is a corresponding python variable that
		    can be accessed by prepending "py_" to the name in the
		    list.  In some cases the outputs will be preallocated and
		    the value of the variable may be pre-filled.  The value for
		    an unallocated output is type-dependent.
		sub : dict of strings
		    Extra symbols defined in `CLinker` sub symbols (such as 'fail').
		    WRITEME
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_code(node:Dynamic, name:Dynamic, inp:Dynamic, out:Dynamic, sub:Dynamic):Dynamic;
	/**
		Return a tuple of integers indicating the version of this Op.
		
		An empty tuple indicates an 'unversioned' Op that will not be cached
		between processes.
		
		The cache mechanism may erase cached modules that have been superceded
		by newer versions. See `ModuleCache` for details.
		
		See Also
		--------
		c_code_cache_version_apply()
	**/
	public function c_code_cache_version():Dynamic;
	/**
		Return a tuple of integers indicating the version of this Op.
		
		An empty tuple indicates an 'unversioned' Op that will not be
		cached between processes.
		
		The cache mechanism may erase cached modules that have been
		superceded by newer versions.  See `ModuleCache` for details.
		
		See Also
		--------
		c_code_cache_version()
		
		Notes
		-----
		    This function overrides `c_code_cache_version` unless it explicitly
		    calls `c_code_cache_version`. The default implementation simply
		    calls `c_code_cache_version` and ignores the `node` argument.
	**/
	public function c_code_cache_version_apply(node:Dynamic):Dynamic;
	/**
		Stitches all the macros and "code_cleanup" together
	**/
	public function c_code_cleanup(node:Dynamic, name:Dynamic, inputs:Dynamic, outputs:Dynamic, sub:Dynamic):Dynamic;
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
	public function c_compile_args():Dynamic;
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
		Optional: Return a list of header files required by code returned by
		this class.
		
		Examples
		--------
		return ['<iostream>', '<math.h>', '/full/path/to/header.h']
		
		These strings will be prefixed with "#include " and inserted at the
		beginning of the c source code.
		
		Strings in this list that start neither with '<' nor '"' will be
		enclosed in double-quotes.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_headers():Dynamic;
	/**
		Get the code section for init_code
	**/
	public function c_init_code():Dynamic;
	public function c_init_code_apply(node:Dynamic, name:Dynamic):Dynamic;
	/**
		Stitches all the macros and "init_code" together
	**/
	public function c_init_code_struct(node:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
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
	public function c_libraries():Dynamic;
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
	public function c_support_code():Dynamic;
	public function c_support_code_apply(node:Dynamic, name:Dynamic):Dynamic;
	public function c_support_code_struct(node:Dynamic, name:Dynamic):Dynamic;
	static public var default_output : Dynamic;
	/**
		This allows each op to determine if it wants to be constant
		folded when all its inputs are constant. This allows it to
		choose where it puts its memory/speed trade-off. Also, it
		could make things faster as constants can't be used for inplace
		operations (see *IncSubtensor).
	**/
	public function do_constant_folding(node:Dynamic):Dynamic;
	public function format_c_function_args(inp:Dynamic, out:Dynamic):Dynamic;
	static public var func_file : Dynamic;
	static public var func_name : Dynamic;
	public function get_c_macros(node:Dynamic, name:Dynamic, ?check_input:Dynamic):Dynamic;
	public function get_io_macros(inputs:Dynamic, outputs:Dynamic):Dynamic;
	public function get_params(node:Dynamic):Dynamic;
	/**
		Convert a path relative to the location of the class file into
		an aboslute path. Paths that are already absolute are passed
		through unchanged.
	**/
	static public function get_path(f:Dynamic):Dynamic;
	public function get_sub_macros(sub:Dynamic):Dynamic;
	static public var gxx_support_openmp : Dynamic;
	/**
		Loads the c code to perform the Op
	**/
	public function load_c_code(func_files:Dynamic):Dynamic;
	/**
		Like make_thunk, but will only try to make a C thunk.
		
		        
	**/
	public function make_c_thunk(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, no_recycling:Dynamic):Dynamic;
	/**
		Create a "apply" nodes for the inputs in that order.
	**/
	public function make_node(activations:Dynamic, labels:Dynamic, input_lengths:Dynamic):Dynamic;
	/**
		Like make_thunk() but only makes python thunks.
	**/
	public function make_py_thunk(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, no_recycling:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		This function must return a thunk, that is a zero-arguments
		function that encapsulates the computation to be performed
		by this op on the arguments of the node.
		
		Parameters
		----------
		node
		    Something previously returned by self.make_node.
		storage_map
		    dict variable -> one-element-list where a computed
		    value for this variable may be found.
		compute_map
		    dict variable -> one-element-list where a boolean
		    value will be found. The boolean indicates whether the
		    variable's storage_map container contains a valid value (True)
		    or if it has not been computed yet (False).
		no_recycling
		    List of variables for which it is forbidden to reuse memory
		    allocated by a previous call.
		impl
		    Currently, None, 'c' or 'py'. If 'c' or 'py' we will only try
		    that version of the code.
		
		Notes
		-----
		If the thunk consults the storage_map on every call, it is safe
		for it to ignore the no_recycling argument, because elements of the
		no_recycling list will have a value of None in the storage map.  If
		the thunk can potentially cache return values (like CLinker does),
		then it must not do so for variables in the no_recycling list.
		
		self.prepare_node(node, ...) is always called. If we try 'c' and it
		fail and we try again 'py', prepare_node will be called twice.
	**/
	public function make_thunk(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, no_recycling:Dynamic, ?impl:Dynamic):Dynamic;
	/**
		Required: Calculate the function on the inputs and put the variables in
		the output storage. Return None.
		
		Parameters
		----------
		node : Apply instance
		    Contains the symbolic inputs and outputs.
		inputs : list
		    Sequence of inputs (immutable).
		output_storage : list
		     List of mutable 1-element lists (do not change the length of
		     these lists)
		
		Notes
		-----
		The `output_storage` list might contain data. If an element of
		output_storage is not None, it has to be of the right type,
		for instance, for a TensorVariable, it has to be a Numpy ndarray,
		with the right number of dimensions, and the correct dtype.
		Its shape and stride pattern, can be arbitrary. It not is
		guaranteed that it was produced by a previous call to impl. It
		could be allocated by another Op impl is free to reuse it as it
		sees fit, or to discard it and allocate new memory.
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function perform(node:Dynamic, inputs:Dynamic, output_storage:Dynamic, ?params:Dynamic):Dynamic;
	/**
		Make any special modifications that the Op needs before doing
		make_thunk().
		
		This can modify the node inplace and should return nothing.
		
		It can be called multiple time with different impl. It is the
		op responsibility to don't re-prepare the node when it isn't
		good to do so.
	**/
	public function prepare_node(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, impl:Dynamic):Dynamic;
	static public var section_re : Dynamic;
	/**
		Check if openMP is supported
	**/
	static public function test_gxx_support():Dynamic;
	/**
		Make sure self.openmp is not True if there is no support in gxx.
	**/
	public function update_self_openmp():Dynamic;
}