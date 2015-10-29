/* This file is generated, do not edit! */
package scipy.integrate._ode;
@:pythonImport("scipy.integrate._ode", "complex_ode") extern class Complex_ode {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(f:Dynamic, ?jac:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	public function _wrap(t:Dynamic, y:Dynamic, f_args:Dynamic):Dynamic;
	public function _wrap_jac(t:Dynamic, y:Dynamic, jac_args:Dynamic):Dynamic;
	/**
		Find y=y(t), set y as an initial condition, and return y.
	**/
	public function integrate(t:Dynamic, ?step:Dynamic, ?relax:Dynamic):Dynamic;
	/**
		Set extra parameters for user-supplied function f.
	**/
	public function set_f_params(args:Dynamic):Dynamic;
	/**
		Set initial conditions y(t) = y.
	**/
	public function set_initial_value(y:Dynamic, ?t:Dynamic):Dynamic;
	/**
		Set integrator by name.
		
		Parameters
		----------
		name : str
		    Name of the integrator
		integrator_params :
		    Additional parameters for the integrator.
	**/
	public function set_integrator(name:Dynamic, integrator_params:Dynamic):Dynamic;
	/**
		Set extra parameters for user-supplied function jac.
	**/
	public function set_jac_params(args:Dynamic):Dynamic;
	/**
		Set callable to be called at every successful integration step.
		
		Parameters
		----------
		solout : callable
		    ``solout(t, y)`` is called at each internal integrator step,
		    t is a scalar providing the current independent position
		    y is the current soloution ``y.shape == (n,)``
		    solout should return -1 to stop integration
		    otherwise it should return None or 0
	**/
	public function set_solout(solout:Dynamic):Dynamic;
	/**
		Check if integration was successful.
	**/
	public function successful():Dynamic;
	static public var y : Dynamic;
}