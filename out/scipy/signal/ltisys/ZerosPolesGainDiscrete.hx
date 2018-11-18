/* This file is generated, do not edit! */
package scipy.signal.ltisys;
@:pythonImport("scipy.signal.ltisys", "ZerosPolesGainDiscrete") extern class ZerosPolesGainDiscrete {
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
		Initialize the zeros, poles, gain system.
	**/
	@:native("__init__")
	public function ___init__(?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize the zeros, poles, gain system.
	**/
	public function new(?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Handle object conversion if input is an instance of `lti`
	**/
	static public function __new__(cls:Dynamic, ?system:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return representation of the `ZerosPolesGain` system.
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
		Convert to `StateSpace` system, without copying.
		
		Returns
		-------
		sys: StateSpace
		    The `StateSpace` system. If the class is already an instance of
		    `StateSpace` then this instance is returned.
	**/
	public function _as_ss():Dynamic;
	/**
		Convert to `TransferFunction` system, without copying.
		
		Returns
		-------
		sys: ZerosPolesGain
		    The `TransferFunction` system. If the class is already an instance of
		    `TransferFunction` then this instance is returned.
	**/
	public function _as_tf():Dynamic;
	/**
		Convert to `ZerosPolesGain` system, without copying.
		
		Returns
		-------
		sys: ZerosPolesGain
		    The `ZerosPolesGain` system. If the class is already an instance of
		    `ZerosPolesGain` then this instance is returned.
	**/
	public function _as_zpk():Dynamic;
	/**
		Copy the parameters of another `ZerosPolesGain` system.
		
		Parameters
		----------
		system : instance of `ZerosPolesGain`
		    The zeros, poles gain system that is to be copied
	**/
	public function _copy(system:Dynamic):Dynamic;
	public var _dt_dict : Dynamic;
	/**
		Calculate Bode magnitude and phase data of a discrete-time system.
		
		Returns a 3-tuple containing arrays of frequencies [rad/s], magnitude
		[dB] and phase [deg]. See `dbode` for details.
		
		Examples
		--------
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		Transfer function: H(z) = 1 / (z^2 + 2z + 3) with sampling time 0.5s
		
		>>> sys = signal.TransferFunction([1], [1, 2, 3], dt=0.5)
		
		Equivalent: signal.dbode(sys)
		
		>>> w, mag, phase = sys.bode()
		
		>>> plt.figure()
		>>> plt.semilogx(w, mag)    # Bode magnitude plot
		>>> plt.figure()
		>>> plt.semilogx(w, phase)  # Bode phase plot
		>>> plt.show()
	**/
	public function bode(?w:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return the sampling time of the system.
	**/
	public var dt : Dynamic;
	/**
		Calculate the frequency response of a discrete-time system.
		
		Returns a 2-tuple containing arrays of frequencies [rad/s] and
		complex magnitude.
		See `dfreqresp` for details.
	**/
	public function freqresp(?w:Dynamic, ?n:Dynamic, ?whole:Dynamic):Dynamic;
	/**
		Gain of the `ZerosPolesGain` system.
	**/
	public var gain : Dynamic;
	/**
		Return the impulse response of the discrete-time `dlti` system.
		See `dimpulse` for details.
	**/
	public function impulse(?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return the response of the discrete-time system to input `u`.
		See `dlsim` for details.
	**/
	public function output(u:Dynamic, t:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Poles of the `ZerosPolesGain` system.
	**/
	public var poles : Dynamic;
	/**
		Return the step response of the discrete-time `dlti` system.
		See `dstep` for details.
	**/
	public function step(?x0:Dynamic, ?t:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Convert system representation to `StateSpace`.
		
		Returns
		-------
		sys : instance of `StateSpace`
		    State space model of the current system
	**/
	public function to_ss():Dynamic;
	/**
		Convert system representation to `TransferFunction`.
		
		Returns
		-------
		sys : instance of `TransferFunction`
		    Transfer function of the current system
	**/
	public function to_tf():Dynamic;
	/**
		Return a copy of the current 'ZerosPolesGain' system.
		
		Returns
		-------
		sys : instance of `ZerosPolesGain`
		    The current system (copy)
	**/
	public function to_zpk():Dynamic;
	/**
		Zeros of the `ZerosPolesGain` system.
	**/
	public var zeros : Dynamic;
}