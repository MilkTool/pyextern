/* This file is generated, do not edit! */
package numpy.f2py;
@:pythonImport("numpy.f2py.capi_maps") extern class Capi_maps {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var c2buildvalue_map : Dynamic;
	static public var c2capi_map : Dynamic;
	static public var c2py_map : Dynamic;
	static public var c2pycode_map : Dynamic;
	/**
		name,begintitle,endtitle,argname
		ctype,rctype,maxnofargs,nofoptargs,returncptr
	**/
	static public function cb_routsign2map(rout:Dynamic, um:Dynamic):Dynamic;
	static public function cb_sign2map(a:Dynamic, _var:Dynamic, ?index:Dynamic):Dynamic;
	static public var cformat_map : Dynamic;
	static public function common_sign2map(a:Dynamic, _var:Dynamic):Dynamic;
	static public function debugcapi(_var:Dynamic):Dynamic;
	static public var depargs : Dynamic;
	static public function dictappend(rd:Dynamic, ar:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Write string to stream.
		Returns the number of characters written (which is always equal to
		the length of the string).
	**/
	static public function errmess(text:Dynamic):Dynamic;
	static public var f2cmap_all : Dynamic;
	static public var f2py_version : Dynamic;
	static public function gentitle(name:Dynamic):Dynamic;
	static public function getarrdims(a:Dynamic, _var:Dynamic, ?verbose:Dynamic):Dynamic;
	static public function getarrdocsign(a:Dynamic, _var:Dynamic):Dynamic;
	static public function getcallprotoargument(rout:Dynamic, ?cb_map:Dynamic):Dynamic;
	static public function getcallstatement(rout:Dynamic):Dynamic;
	/**
		Determines C type
	**/
	static public function getctype(_var:Dynamic):Dynamic;
	static public function getfortranname(rout:Dynamic):Dynamic;
	static public function getinit(a:Dynamic, _var:Dynamic):Dynamic;
	static public function getpydocsign(a:Dynamic, _var:Dynamic):Dynamic;
	static public function getpymethoddef(rout:Dynamic):Dynamic;
	static public function getrestdoc(rout:Dynamic):Dynamic;
	static public function getstrlength(_var:Dynamic):Dynamic;
	static public function getusercode(rout:Dynamic):Dynamic;
	static public function getusercode1(rout:Dynamic):Dynamic;
	static public function hasinitvalue(_var:Dynamic):Dynamic;
	static public function hasnote(_var:Dynamic):Dynamic;
	static public function hasresultnote(rout:Dynamic):Dynamic;
	static public function isarray(_var:Dynamic):Dynamic;
	static public function iscomplex(_var:Dynamic):Dynamic;
	static public function iscomplexarray(_var:Dynamic):Dynamic;
	static public function iscomplexfunction(rout:Dynamic):Dynamic;
	static public function isexternal(_var:Dynamic):Dynamic;
	static public function isfunction(rout:Dynamic):Dynamic;
	static public function isintent_aux(_var:Dynamic):Dynamic;
	static public function isintent_callback(_var:Dynamic):Dynamic;
	static public var isintent_dict : Dynamic;
	static public function isintent_hide(_var:Dynamic):Dynamic;
	static public function isintent_in(_var:Dynamic):Dynamic;
	static public function isintent_inout(_var:Dynamic):Dynamic;
	static public function isintent_out(_var:Dynamic):Dynamic;
	static public function ismodule(rout:Dynamic):Dynamic;
	static public function isoptional(_var:Dynamic):Dynamic;
	static public function isrequired(_var:Dynamic):Dynamic;
	static public function isscalar(_var:Dynamic):Dynamic;
	static public function isstring(_var:Dynamic):Dynamic;
	static public function isstringarray(_var:Dynamic):Dynamic;
	static public function isstringfunction(rout:Dynamic):Dynamic;
	static public function issubroutine(rout:Dynamic):Dynamic;
	static public function l_and(f:Dynamic):Dynamic;
	static public function l_not(f:Dynamic):Dynamic;
	static public function l_or(f:Dynamic):Dynamic;
	static public var lcb2_map : Dynamic;
	static public var lcb_map : Dynamic;
	static public function markoutercomma(line:Dynamic, ?comma:Dynamic):Dynamic;
	/**
		modulename
	**/
	static public function modsign2map(m:Dynamic):Dynamic;
	static public function outmess(t:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		name,NAME,begintitle,endtitle
		rname,ctype,rformat
		routdebugshowvalue
	**/
	static public function routsign2map(rout:Dynamic):Dynamic;
	/**
		varname,ctype,atype
		init,init.r,init.i,pytype
		vardebuginfo,vardebugshowvalue,varshowvalue
		varrfromat
		intent
	**/
	static public function sign2map(a:Dynamic, _var:Dynamic):Dynamic;
	static public var using_newcore : Dynamic;
}