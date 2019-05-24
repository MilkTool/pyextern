/* This file is generated, do not edit! */
package scipy.special._logsumexp;
@:pythonImport("scipy.special._logsumexp") extern class _Logsumexp_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for scipy argument validation.
		
		Many scipy linear algebra functions do support arbitrary array-like
		input arguments.  Examples of commonly unsupported inputs include
		matrices containing inf/nan, sparse matrix representations, and
		matrices with complicated elements.
		
		Parameters
		----------
		a : array_like
		    The array-like input.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		sparse_ok : bool, optional
		    True if scipy sparse matrices are allowed.
		objects_ok : bool, optional
		    True if arrays with dype('O') are allowed.
		mask_ok : bool, optional
		    True if masked arrays are allowed.
		as_inexact : bool, optional
		    True to convert the input array to a np.inexact dtype.
		
		Returns
		-------
		ret : ndarray
		    The converted validated array.
	**/
	static public function _asarray_validated(a:Dynamic, ?check_finite:Dynamic, ?sparse_ok:Dynamic, ?objects_ok:Dynamic, ?mask_ok:Dynamic, ?as_inexact:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Compute the log of the sum of exponentials of input elements.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : None or int or tuple of ints, optional
		    Axis or axes over which the sum is taken. By default `axis` is None,
		    and all elements are summed.
		
		    .. versionadded:: 0.11.0
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original array.
		
		    .. versionadded:: 0.15.0
		b : array-like, optional
		    Scaling factor for exp(`a`) must be of the same shape as `a` or
		    broadcastable to `a`. These values may be negative in order to
		    implement subtraction.
		
		    .. versionadded:: 0.12.0
		return_sign : bool, optional
		    If this is set to True, the result will be a pair containing sign
		    information; if False, results that are negative will be returned
		    as NaN. Default is False (no sign information).
		
		    .. versionadded:: 0.16.0
		
		Returns
		-------
		res : ndarray
		    The result, ``np.log(np.sum(np.exp(a)))`` calculated in a numerically
		    more stable way. If `b` is given then ``np.log(np.sum(b*np.exp(a)))``
		    is returned.
		sgn : ndarray
		    If return_sign is True, this will be an array of floating-point
		    numbers matching res and +1, 0, or -1 depending on the sign
		    of the result. If False, only one result is returned.
		
		See Also
		--------
		numpy.logaddexp, numpy.logaddexp2
		
		Notes
		-----
		NumPy has a logaddexp function which is very similar to `logsumexp`, but
		only handles two arguments. `logaddexp.reduce` is similar to this
		function, but may be less stable.
		
		Examples
		--------
		>>> from scipy.special import logsumexp
		>>> a = np.arange(10)
		>>> np.log(np.sum(np.exp(a)))
		9.4586297444267107
		>>> logsumexp(a)
		9.4586297444267107
		
		With weights
		
		>>> a = np.arange(10)
		>>> b = np.arange(10, 0, -1)
		>>> logsumexp(a, b=b)
		9.9170178533034665
		>>> np.log(np.sum(b*np.exp(a)))
		9.9170178533034647
		
		Returning a sign flag
		
		>>> logsumexp([1,2],b=[1,-1],return_sign=True)
		(1.5413248546129181, -1.0)
		
		Notice that `logsumexp` does not directly support masked arrays. To use it
		on a masked array, convert the mask into zero weights:
		
		>>> a = np.ma.array([np.log(2), 2, np.log(3)],
		...                  mask=[False, True, False])
		>>> b = (~a.mask).astype(int)
		>>> logsumexp(a.data, b=b), np.log(5)
		1.6094379124341005, 1.6094379124341005
	**/
	static public function logsumexp(a:Dynamic, ?axis:Dynamic, ?b:Dynamic, ?keepdims:Dynamic, ?return_sign:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Softmax function
		
		The softmax function transforms each element of a collection by
		computing the exponential of each element divided by the sum of the
		exponentials of all the elements.  That is, if `x` is a one-dimensional
		numpy array::
		
		    softmax(x) = np.exp(x)/sum(np.exp(x))
		
		Parameters
		----------
		x : array_like
		    Input array.
		axis : int or tuple of ints, optional
		    Axis to compute values along. Default is None and softmax will be
		    computed over the entire array `x`.
		
		Returns
		-------
		s : ndarray
		    An array the same shape as `x`. The result will sum to 1 along the
		    specified axis.
		
		Notes
		-----
		The formula for the softmax function :math:`\sigma(x)` for a vector
		:math:`x = \{x_0, x_1, ..., x_{n-1}\}` is
		
		.. math:: \sigma(x)_j = \frac{e^{x_j}}{\sum_k e^{x_k}}
		
		The `softmax` function is the gradient of `logsumexp`.
		
		.. versionadded:: 1.2.0
		
		Examples
		--------
		>>> from scipy.special import softmax
		>>> np.set_printoptions(precision=5)
		
		>>> x = np.array([[1, 0.5, 0.2, 3],
		...               [1,  -1,   7, 3],
		...               [2,  12,  13, 3]])
		...
		
		Compute the softmax transformation over the entire array.
		
		>>> m = softmax(x)
		>>> m
		array([[  4.48309e-06,   2.71913e-06,   2.01438e-06,   3.31258e-05],
		       [  4.48309e-06,   6.06720e-07,   1.80861e-03,   3.31258e-05],
		       [  1.21863e-05,   2.68421e-01,   7.29644e-01,   3.31258e-05]])
		
		>>> m.sum()
		1.0000000000000002
		
		Compute the softmax transformation along the first axis (i.e. the columns).
		
		>>> m = softmax(x, axis=0)
		
		>>> m
		array([[  2.11942e-01,   1.01300e-05,   2.75394e-06,   3.33333e-01],
		       [  2.11942e-01,   2.26030e-06,   2.47262e-03,   3.33333e-01],
		       [  5.76117e-01,   9.99988e-01,   9.97525e-01,   3.33333e-01]])
		
		>>> m.sum(axis=0)
		array([ 1.,  1.,  1.,  1.])
		
		Compute the softmax transformation along the second axis (i.e. the rows).
		
		>>> m = softmax(x, axis=1)
		>>> m
		array([[  1.05877e-01,   6.42177e-02,   4.75736e-02,   7.82332e-01],
		       [  2.42746e-03,   3.28521e-04,   9.79307e-01,   1.79366e-02],
		       [  1.22094e-05,   2.68929e-01,   7.31025e-01,   3.31885e-05]])
		
		>>> m.sum(axis=1)
		array([ 1.,  1.,  1.])
	**/
	static public function softmax(x:Dynamic, ?axis:Dynamic):Dynamic;
}