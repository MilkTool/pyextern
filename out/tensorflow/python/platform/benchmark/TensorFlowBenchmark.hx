/* This file is generated, do not edit! */
package tensorflow.python.platform.benchmark;
@:pythonImport("tensorflow.python.platform.benchmark", "TensorFlowBenchmark") extern class TensorFlowBenchmark {
	/**
		The Benchmark class registrar.  Used by abstract Benchmark class.
	**/
	static public function __class__(clsname:Dynamic, base:Dynamic, attrs:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns full name of class and method calling report_benchmark.
	**/
	public function _get_name(overwrite_name:Dynamic):Dynamic;
	static public function is_abstract():Dynamic;
	/**
		Report a benchmark.
		
		Args:
		  iters: (optional) How many iterations were run
		  cpu_time: (optional) Total cpu time in seconds
		  wall_time: (optional) Total wall time in seconds
		  throughput: (optional) Throughput (in MB/s)
		  extras: (optional) Dict mapping string keys to additional benchmark info.
		    Values may be either floats or values that are convertible to strings.
		  name: (optional) Override the BenchmarkEntry name with `name`.
		    Otherwise it is inferred from the top-level method name.
	**/
	public function report_benchmark(?iters:Dynamic, ?cpu_time:Dynamic, ?wall_time:Dynamic, ?throughput:Dynamic, ?extras:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Run an op or tensor in the given session.  Report the results.
		
		Args:
		  sess: `Session` object to use for timing.
		  op_or_tensor: `Operation` or `Tensor` to benchmark.
		  feed_dict: A `dict` of values to feed for each op iteration (see the
		    `feed_dict` parameter of `Session.run`).
		  burn_iters: Number of burn-in iterations to run.
		  min_iters: Minimum number of iterations to use for timing.
		  store_trace: Boolean, whether to run an extra untimed iteration and
		    store the trace of iteration in the benchmark report.
		    The trace will be stored as a string in Google Chrome trace format
		    in the extras field "full_trace_chrome_format".
		  name: (optional) Override the BenchmarkEntry name with `name`.
		    Otherwise it is inferred from the top-level method name.
		  extras: (optional) Dict mapping string keys to additional benchmark info.
		    Values may be either floats or values that are convertible to strings.
	**/
	public function run_op_benchmark(sess:Dynamic, op_or_tensor:Dynamic, ?feed_dict:Dynamic, ?burn_iters:Dynamic, ?min_iters:Dynamic, ?store_trace:Dynamic, ?name:Dynamic, ?extras:Dynamic):Dynamic;
}