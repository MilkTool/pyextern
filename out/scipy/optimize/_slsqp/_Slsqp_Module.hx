/* This file is generated, do not edit! */
package scipy.optimize._slsqp;
@:pythonImport("scipy.optimize._slsqp") extern class _Slsqp_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		slsqp - Function signature:
		  slsqp(m,meq,x,xl,xu,f,c,g,a,acc,iter,mode,w,jw,[la,n,l_w,l_jw])
		Required arguments:
		  m : input int
		  meq : input int
		  x : in/output rank-1 array('d') with bounds (n)
		  xl : input rank-1 array('d') with bounds (n)
		  xu : input rank-1 array('d') with bounds (n)
		  f : input float
		  c : input rank-1 array('d') with bounds (la)
		  g : input rank-1 array('d') with bounds (n + 1)
		  a : input rank-2 array('d') with bounds (la,n + 1)
		  acc : in/output rank-0 array(float,'d')
		  iter : in/output rank-0 array(int,'i')
		  mode : in/output rank-0 array(int,'i')
		  w : input rank-1 array('d') with bounds (l_w)
		  jw : input rank-1 array('i') with bounds (l_jw)
		Optional arguments:
		  la := len(c) input int
		  n := len(x) input int
		  l_w := len(w) input int
		  l_jw := len(jw) input int
	**/
	static public function slsqp(args:haxe.extern.Rest<Dynamic>):Dynamic;
}