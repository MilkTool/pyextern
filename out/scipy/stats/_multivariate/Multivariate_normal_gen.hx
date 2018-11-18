/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate", "multivariate_normal_gen") extern class Multivariate_normal_gen {
	/**
		Create a frozen multivariate normal distribution.
		
		See `multivariate_normal_frozen` for more information.
	**/
	public function __call__(?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic, ?seed:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?seed:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?seed:Dynamic):Void;
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
		Parameters
		----------
		x : ndarray
		    Points at which to evaluate the cumulative distribution function.
		mean : ndarray
		    Mean of the distribution
		cov : array_like
		    Covariance matrix of the distribution
		maxpts: integer
		    The maximum number of points to use for integration
		abseps: float
		    Absolute error tolerance
		releps: float
		    Relative error tolerance
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'cdf' instead.
		
		.. versionadded:: 1.0.0
	**/
	public function _cdf(x:Dynamic, mean:Dynamic, cov:Dynamic, maxpts:Dynamic, abseps:Dynamic, releps:Dynamic):Dynamic;
	public function _get_random_state(random_state:Dynamic):Dynamic;
	/**
		Parameters
		----------
		x : ndarray
		    Points at which to evaluate the log of the probability
		    density function
		mean : ndarray
		    Mean of the distribution
		prec_U : ndarray
		    A decomposition such that np.dot(prec_U, prec_U.T)
		    is the precision matrix, i.e. inverse of the covariance matrix.
		log_det_cov : float
		    Logarithm of the determinant of the covariance matrix
		rank : int
		    Rank of the covariance matrix.
		
		Notes
		-----
		As this function does no argument checking, it should not be
		called directly; use 'logpdf' instead.
	**/
	public function _logpdf(x:Dynamic, mean:Dynamic, prec_U:Dynamic, log_det_cov:Dynamic, rank:Dynamic):Dynamic;
	/**
		Infer dimensionality from mean or covariance matrix, ensure that
		mean and covariance are full vector resp. matrix.
	**/
	public function _process_parameters(dim:Dynamic, mean:Dynamic, cov:Dynamic):Dynamic;
	/**
		Adjust quantiles array so that last axis labels the components of
		each data point.
	**/
	public function _process_quantiles(x:Dynamic, dim:Dynamic):Dynamic;
	/**
		Multivariate normal cumulative distribution function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    Whether to allow a singular covariance matrix.  (Default: False)
		maxpts: integer, optional
		    The maximum number of points to use for integration
		    (default `1000000*dim`)
		abseps: float, optional
		    Absolute error tolerance (default 1e-5)
		releps: float, optional
		    Relative error tolerance (default 1e-5)
		
		Returns
		-------
		cdf : ndarray or scalar
		    Cumulative distribution function evaluated at `x`
		
		Notes
		-----
		Setting the parameter `mean` to `None` is equivalent to having `mean`
		    be the zero-vector. The parameter `cov` can be a scalar, in which case
		    the covariance matrix is the identity times that value, a vector of
		    diagonal entries for the covariance matrix, or a two-dimensional
		    array_like.
		    
		
		.. versionadded:: 1.0.0
	**/
	public function cdf(x:Dynamic, ?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic, ?maxpts:Dynamic, ?abseps:Dynamic, ?releps:Dynamic):Dynamic;
	/**
		Compute the differential entropy of the multivariate normal.
		
		Parameters
		----------
		%(_mvn_doc_default_callparams)s
		
		Returns
		-------
		h : scalar
		    Entropy of the multivariate normal distribution
		
		Notes
		-----
		%(_mvn_doc_callparams_note)s
	**/
	public function entropy(?mean:Dynamic, ?cov:Dynamic):Dynamic;
	/**
		Log of the multivariate normal cumulative distribution function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    Whether to allow a singular covariance matrix.  (Default: False)
		maxpts: integer, optional
		    The maximum number of points to use for integration
		    (default `1000000*dim`)
		abseps: float, optional
		    Absolute error tolerance (default 1e-5)
		releps: float, optional
		    Relative error tolerance (default 1e-5)
		
		Returns
		-------
		cdf : ndarray or scalar
		    Log of the cumulative distribution function evaluated at `x`
		
		Notes
		-----
		Setting the parameter `mean` to `None` is equivalent to having `mean`
		    be the zero-vector. The parameter `cov` can be a scalar, in which case
		    the covariance matrix is the identity times that value, a vector of
		    diagonal entries for the covariance matrix, or a two-dimensional
		    array_like.
		    
		
		.. versionadded:: 1.0.0
	**/
	public function logcdf(x:Dynamic, ?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic, ?maxpts:Dynamic, ?abseps:Dynamic, ?releps:Dynamic):Dynamic;
	/**
		Log of the multivariate normal probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    Whether to allow a singular covariance matrix.  (Default: False)
		
		Returns
		-------
		pdf : ndarray or scalar
		    Log of the probability density function evaluated at `x`
		
		Notes
		-----
		Setting the parameter `mean` to `None` is equivalent to having `mean`
		    be the zero-vector. The parameter `cov` can be a scalar, in which case
		    the covariance matrix is the identity times that value, a vector of
		    diagonal entries for the covariance matrix, or a two-dimensional
		    array_like.
		    
	**/
	public function logpdf(x:Dynamic, ?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic):Dynamic;
	/**
		Multivariate normal probability density function.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    Whether to allow a singular covariance matrix.  (Default: False)
		
		Returns
		-------
		pdf : ndarray or scalar
		    Probability density function evaluated at `x`
		
		Notes
		-----
		Setting the parameter `mean` to `None` is equivalent to having `mean`
		    be the zero-vector. The parameter `cov` can be a scalar, in which case
		    the covariance matrix is the identity times that value, a vector of
		    diagonal entries for the covariance matrix, or a two-dimensional
		    array_like.
		    
	**/
	public function pdf(x:Dynamic, ?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic):Dynamic;
	/**
		Get or set the RandomState object for generating random variates.
		
		This can be either None or an existing RandomState object.
		
		If None (or np.random), use the RandomState singleton used by np.random.
		If already a RandomState instance, use it.
		If an int, use a new RandomState instance seeded with seed.
	**/
	public var random_state : Dynamic;
	/**
		Draw random samples from a multivariate normal distribution.
		
		Parameters
		----------
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    Whether to allow a singular covariance matrix.  (Default: False)
		size : integer, optional
		    Number of samples to draw (default 1).
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray or scalar
		    Random variates of size (`size`, `N`), where `N` is the
		    dimension of the random variable.
		
		Notes
		-----
		Setting the parameter `mean` to `None` is equivalent to having `mean`
		    be the zero-vector. The parameter `cov` can be a scalar, in which case
		    the covariance matrix is the identity times that value, a vector of
		    diagonal entries for the covariance matrix, or a two-dimensional
		    array_like.
		    
	**/
	public function rvs(?mean:Dynamic, ?cov:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
}