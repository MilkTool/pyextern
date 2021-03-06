/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C") extern class _C_Module {
	static public var _GLIBCXX_USE_CXX11_ABI : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_docstr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _autograd_init(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _c10d_init(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _crash_if_aten_asan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _crash_if_csrc_asan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _crash_if_csrc_ubsan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_demangle(arg0: str) -> str
	**/
	static public function _demangle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_all_gather(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_all_gather_multigpu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_all_reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_all_reduce_multigpu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_barrier(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_broadcast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_broadcast_multigpu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_clear_group_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_destroy_process_group(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_gather_recv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_gather_send(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_get_num_processes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_get_rank(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_init_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_init_process_group(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_irecv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_isend(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_new_group(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_recv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_recv_any_source(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_reduce_multigpu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_request_is_completed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_request_wait(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_scatter_recv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_scatter_send(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _dist_send(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _error_if_any_worker_fails(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _from_dlpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_backcompat_broadcast_warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_backcompat_keepdim_warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_cudnn_benchmark(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_cudnn_deterministic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_cudnn_enabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_tracing_state() -> torch._C.TracingState
	**/
	static public function _get_tracing_state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_value_trace(arg0: torch::autograd::Variable) -> torch._C.Value
	**/
	static public function _get_value_trace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _has_distributed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _infer_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _initExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _init_names(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_default_type_cuda(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_assert_is_instance(arg0: object, arg1: c10::Type) -> None
	**/
	static public function _jit_assert_is_instance(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_check_alias_annotation(arg0: torch::jit::Graph, arg1: tuple, arg2: str) -> None
	**/
	static public function _jit_check_alias_annotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_differentiate(arg0: torch::jit::Graph) -> torch::jit::Gradient
	**/
	static public function _jit_differentiate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_flatten(arg0: handle) -> Tuple[List[torch::autograd::Variable], torch._C.IODescriptor]
	**/
	static public function _jit_flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_get_operation(qualified_name: str) -> cpp_function
	**/
	static public function _jit_get_operation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_get_schemas_for_operator(arg0: str) -> List[torch._C.FunctionSchema]
	**/
	static public function _jit_get_schemas_for_operator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_import_methods(arg0: torch._C.ScriptModule, arg1: str, arg2: List[at::Tensor]) -> None
	**/
	static public function _jit_import_methods(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_init() -> bool
	**/
	static public function _jit_init(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_override_can_fuse_on_cpu(arg0: bool) -> None
	**/
	static public function _jit_override_can_fuse_on_cpu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_canonicalize(arg0: torch::jit::Graph) -> torch::jit::Graph
	**/
	static public function _jit_pass_canonicalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_canonicalize_ops(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_canonicalize_ops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_complete_shape_analysis(arg0: torch::jit::Graph, arg1: tuple, arg2: bool) -> None
	**/
	static public function _jit_pass_complete_shape_analysis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_constant_pooling(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_constant_pooling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_constant_propagation(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_constant_propagation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_create_autodiff_subgraphs(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_create_autodiff_subgraphs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_cse(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_cse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_dce(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_dce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_erase_number_types(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_erase_number_types(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_erase_shape_information(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_erase_shape_information(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_fixup_onnx_loops(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_fixup_onnx_loops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_fuse(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_fuse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_lint(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_lint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_loop_unrolling(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_loop_unrolling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_lower_all_tuples(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_lower_all_tuples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_onnx(arg0: torch::jit::Graph, arg1: torch._C._onnx.OperatorExportTypes) -> torch::jit::Graph
	**/
	static public function _jit_pass_onnx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_onnx_block(arg0: torch::jit::Block, arg1: torch::jit::Block, arg2: torch._C._onnx.OperatorExportTypes, arg3: Dict[torch::jit::Value, torch::jit::Value]) -> None
	**/
	static public function _jit_pass_onnx_block(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_onnx_peephole(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_onnx_peephole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_peephole(graph: torch::jit::Graph, addmm_fusion_enabled: bool = False) -> None
	**/
	static public function _jit_pass_peephole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_prepare_division_for_onnx(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_prepare_division_for_onnx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_remove_expands(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_remove_expands(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_remove_inplace_ops(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_remove_inplace_ops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_shape_analysis(arg0: torch::jit::Graph, arg1: List[at::Tensor], arg2: bool) -> None
	**/
	static public function _jit_pass_shape_analysis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_pass_specialize_undef(arg0: torch::jit::Graph) -> None
	**/
	static public function _jit_pass_specialize_undef(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_run_cpp_tests() -> str
	**/
	static public function _jit_run_cpp_tests(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_script_compile(arg0: torch._C.ScriptModule, arg1: torch._C._jit_tree_views.Def, arg2: Callable[[str], function], arg3: Dict[str, object]) -> torch._C.ScriptModule
	**/
	static public function _jit_script_compile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_set_emit_module_hook(arg0: Callable[[torch._C.ScriptModule], None]) -> None
	**/
	static public function _jit_set_emit_module_hook(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_jit_unflatten(arg0: List[torch::autograd::Variable], arg1: torch._C.IODescriptor) -> object
	**/
	static public function _jit_unflatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _multiprocessing_init(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _remove_worker_pids(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _safe_call(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _set_backcompat_broadcast_warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _set_backcompat_keepdim_warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _set_cudnn_benchmark(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _set_cudnn_deterministic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _set_cudnn_enabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _set_default_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _set_default_tensor_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_set_tracing_state(arg0: torch._C.TracingState) -> None
	**/
	static public function _set_tracing_state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_set_value_trace(arg0: torch::autograd::Variable, arg1: torch._C.Value) -> None
	**/
	static public function _set_value_trace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _set_worker_signal_handlers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _to_dlpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_tracer_abandon() -> None
	**/
	static public function _tracer_abandon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_tracer_enter(*args) -> Tuple[torch._C.TracingState, List[IValue]]
	**/
	static public function _tracer_enter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_tracer_exit(arg0: tuple) -> None
	**/
	static public function _tracer_exit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_tracer_set_force_outplace(arg0: bool) -> None
	**/
	static public function _tracer_set_force_outplace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_tracer_set_get_unique_name_fn(arg0: function) -> None
	**/
	static public function _tracer_set_get_unique_name_fn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_tracer_warn_use_python() -> None
	**/
	static public function _tracer_warn_use_python(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _update_worker_pids(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var default_generator : Dynamic;
	/**
		fork(arg0: torch::jit::script::Module, *args) -> torch._C.Future
	**/
	static public function fork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_default_dtype() -> torch.dtype
		
		Get the current default floating point :class:`torch.dtype`.
		
		Example::
		
		    >>> torch.get_default_dtype()  # initial default for floating point is torch.float32
		    torch.float32
		    >>> torch.set_default_dtype(torch.float64)
		    >>> torch.get_default_dtype()  # default is now changed to torch.float64
		    torch.float64
		    >>> torch.set_default_tensor_type(torch.FloatTensor)  # setting tensor type also affects this
		    >>> torch.get_default_dtype()  # changed to torch.float32, the dtype for torch.FloatTensor
		    torch.float32
	**/
	static public function get_default_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_num_threads() -> int
		
		Gets the number of OpenMP threads used for parallelizing CPU operations
	**/
	static public function get_num_threads(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var has_cudnn : Dynamic;
	static public var has_lapack : Dynamic;
	static public var has_mkl : Dynamic;
	/**
		import_ir_module(arg0: Callable[[List[str]], torch._C.ScriptModule], arg1: str, arg2: object) -> None
	**/
	static public function import_ir_module(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		import_ir_module_from_buffer(arg0: Callable[[List[str]], torch._C.ScriptModule], arg1: str, arg2: object) -> None
	**/
	static public function import_ir_module_from_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_anomaly_enabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_grad_enabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		merge_type_from_type_comment(arg0: torch._C._jit_tree_views.Decl, arg1: torch._C._jit_tree_views.Decl, arg2: bool) -> torch._C._jit_tree_views.Decl
	**/
	static public function merge_type_from_type_comment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parse_type_comment(arg0: str) -> torch._C._jit_tree_views.Decl
	**/
	static public function parse_type_comment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		register_batch_operator(arg0: str, arg1: torch._C.Graph) -> None
	**/
	static public function register_batch_operator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function set_anomaly_enabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_flush_denormal(mode) -> bool
		
		Disables denormal floating numbers on CPU.
		
		Returns ``True`` if your system supports flushing denormal numbers and it
		successfully configures flush denormal mode.  :meth:`~torch.set_flush_denormal`
		is only supported on x86 architectures supporting SSE3.
		
		Args:
		    mode (bool): Controls whether to enable flush denormal mode or not
		
		Example::
		
		    >>> torch.set_flush_denormal(True)
		    True
		    >>> torch.tensor([1e-323], dtype=torch.float64)
		    tensor([ 0.], dtype=torch.float64)
		    >>> torch.set_flush_denormal(False)
		    True
		    >>> torch.tensor([1e-323], dtype=torch.float64)
		    tensor(9.88131e-324 *
		           [ 1.0000], dtype=torch.float64)
	**/
	static public function set_flush_denormal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function set_grad_enabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_num_threads(int)
		
		Sets the number of OpenMP threads used for parallelizing CPU operations
	**/
	static public function set_num_threads(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		to_batch_graph(arg0: torch._C.Graph) -> torch._C.Graph
	**/
	static public function to_batch_graph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		wait(arg0: torch._C.Future) -> None
	**/
	static public function wait(args:haxe.extern.Rest<Dynamic>):Dynamic;
}