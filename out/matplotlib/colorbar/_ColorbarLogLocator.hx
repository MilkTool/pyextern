/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:pythonImport("matplotlib.colorbar", "_ColorbarLogLocator") extern class _ColorbarLogLocator {
	static public var MAXTICKS : Dynamic;
	/**
		Return the locations of the ticks
	**/
	public function __call__():Dynamic;
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
		_ColorbarLogLocator(colorbar, *args, **kwargs)
		
		This ticker needs to know the *colorbar* so that it can access
		its *vmin* and *vmax*.  Otherwise it is the same as
		`~.ticker.LogLocator`.  The ``*args`` and ``**kwargs`` are the
		same as `~.ticker.LogLocator`.
	**/
	@:native("__init__")
	public function ___init__(colorbar:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		_ColorbarLogLocator(colorbar, *args, **kwargs)
		
		This ticker needs to know the *colorbar* so that it can access
		its *vmin* and *vmax*.  Otherwise it is the same as
		`~.ticker.LogLocator`.  The ``*args`` and ``**kwargs`` are the
		same as `~.ticker.LogLocator`.
	**/
	public function new(colorbar:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		autoscale the view limits
	**/
	public function autoscale():Dynamic;
	static public var axis : Dynamic;
	/**
		set the base of the log scaling (major tick every base**i, i integer)
	**/
	public function base(base:Dynamic):Dynamic;
	public function create_dummy_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function nonsingular(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Pan numticks (can be positive or negative)
	**/
	public function pan(numsteps:Dynamic):Dynamic;
	/**
		raise a RuntimeError if Locator attempts to create more than
		MAXTICKS locs
	**/
	public function raise_if_exceeds(locs:Dynamic):Dynamic;
	/**
		refresh internal information based on current lim
	**/
	public function refresh():Dynamic;
	public function set_axis(axis:Dynamic):Dynamic;
	public function set_bounds(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Set parameters within this locator.
	**/
	public function set_params(?base:Dynamic, ?subs:Dynamic, ?numdecs:Dynamic, ?numticks:Dynamic):Dynamic;
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		set the minor ticks for the log scaling every base**i*subs[j]
	**/
	public function subs(subs:Dynamic):Dynamic;
	/**
		Return the values of the located ticks given **vmin** and **vmax**.
		
		.. note::
		    To get tick locations with the vmin and vmax values defined
		    automatically for the associated :attr:`axis` simply call
		    the Locator instance::
		
		        >>> print(type(loc))
		        <type 'Locator'>
		        >>> print(loc())
		        [1, 2, 3, 4]
	**/
	public function tick_values(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Try to choose the view limits intelligently
	**/
	public function view_limits(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Zoom in/out on axis; if direction is >0 zoom in, else zoom out
	**/
	public function zoom(direction:Dynamic):Dynamic;
}