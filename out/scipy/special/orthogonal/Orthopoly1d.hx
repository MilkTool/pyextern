/* This file is generated, do not edit! */
package scipy.special.orthogonal;
@:pythonImport("scipy.special.orthogonal", "orthopoly1d") extern class Orthopoly1d {
	public function __add__(other:Dynamic):Dynamic;
	public function __array__(?t:Dynamic):Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(v:Dynamic):Dynamic;
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
	public function __div__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
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
	public function __getitem__(val:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(roots:Dynamic, ?weights:Dynamic, ?hn:Dynamic, ?kn:Dynamic, ?wfunc:Dynamic, ?limits:Dynamic, ?monic:Dynamic, ?eval_func:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(roots:Dynamic, ?weights:Dynamic, ?hn:Dynamic, ?kn:Dynamic, ?wfunc:Dynamic, ?limits:Dynamic, ?monic:Dynamic, ?eval_func:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pos__():Dynamic;
	public function __pow__(val:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
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
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, val:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _coeffs : Dynamic;
	public function _scale(p:Dynamic):Dynamic;
	/**
		The polynomial coefficients 
	**/
	public var c : Dynamic;
	/**
		The polynomial coefficients 
	**/
	public var coef : Dynamic;
	/**
		The polynomial coefficients 
	**/
	public var coefficients : Dynamic;
	/**
		The polynomial coefficients 
	**/
	public var coeffs : Dynamic;
	/**
		Return a derivative of this polynomial.
		
		Refer to `polyder` for full documentation.
		
		See Also
		--------
		polyder : equivalent function
	**/
	public function deriv(?m:Dynamic):Dynamic;
	/**
		Return an antiderivative (indefinite integral) of this polynomial.
		
		Refer to `polyint` for full documentation.
		
		See Also
		--------
		polyint : equivalent function
	**/
	public function integ(?m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		The order or degree of the polynomial 
	**/
	public var o : Dynamic;
	/**
		The order or degree of the polynomial 
	**/
	public var order : Dynamic;
	/**
		The roots of the polynomial, where self(x) == 0 
	**/
	public var r : Dynamic;
	/**
		The roots of the polynomial, where self(x) == 0 
	**/
	public var roots : Dynamic;
	/**
		The name of the polynomial variable 
	**/
	public var variable : Dynamic;
}