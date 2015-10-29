/* This file is generated, do not edit! */
package scipy.integrate;
@:pythonImport("scipy.integrate._test_odeint_banded") extern class _Test_odeint_banded {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		banded5x5(t,y,f,[n])
		
		Wrapper for ``banded5x5``.
		
		Parameters
		----------
		t : input float
		y : input rank-1 array('d') with bounds (n)
		f : input rank-1 array('d') with bounds (n)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(y)
	**/
	static public function banded5x5(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		banded5x5_bjac(t,y,ml,mu,bjac,[n,nrowpd])
		
		Wrapper for ``banded5x5_bjac``.
		
		Parameters
		----------
		t : input float
		y : input rank-1 array('d') with bounds (5)
		ml : input int
		mu : input int
		bjac : input rank-2 array('d') with bounds (nrowpd,n)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: shape(bjac,1)
		nrowpd : input int, optional
		    Default: shape(bjac,0)
	**/
	static public function banded5x5_bjac(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		banded5x5_jac(t,y,ml,mu,jac,[n,nrowpd])
		
		Wrapper for ``banded5x5_jac``.
		
		Parameters
		----------
		t : input float
		y : input rank-1 array('d') with bounds (n)
		ml : input int
		mu : input int
		jac : input rank-2 array('d') with bounds (nrowpd,n)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(y)
		nrowpd : input int, optional
		    Default: shape(jac,0)
	**/
	static public function banded5x5_jac(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nst,nfe,nje = banded5x5_solve(y,nsteps,dt,jt)
		
		Wrapper for ``banded5x5_solve``.
		
		Parameters
		----------
		y : in/output rank-1 array('d') with bounds (5)
		nsteps : input int
		dt : input float
		jt : input int
		
		Returns
		-------
		nst : int
		nfe : int
		nje : int
	**/
	static public function banded5x5_solve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jac = getbands()
		
		Wrapper for ``getbands``.
		
		Returns
		-------
		jac : rank-2 array('d') with bounds (4,5)
	**/
	static public function getbands(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		'd'-array(4,5 
	**/
	static public function jac(args:haxe.extern.Rest<Dynamic>):Dynamic;
}