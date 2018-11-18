/* This file is generated, do not edit! */
package scipy.stats._multivariate;
@:pythonImport("scipy.stats._multivariate") extern class _Multivariate_Module {
	static public var _LOG_2 : Dynamic;
	static public var _LOG_2PI : Dynamic;
	static public var _LOG_PI : Dynamic;
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
		Invert the matrices a_i, using a Cholesky factorization of A, where
		a_i resides in the last two dimensions of a and the other indices describe
		the index i.
		
		Overwrites the data in a.
		
		Parameters
		----------
		a : array
		    Array of matrices to invert, where the matrices themselves are stored
		    in the last two dimensions.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    Array of inverses of the matrices ``a_i``.
		
		See also
		--------
		scipy.linalg.cholesky : Cholesky factorization of a matrix
	**/
	static public function _cho_inv_batch(a:Dynamic, ?check_finite:Dynamic):Array<Dynamic>;
	static public function _dirichlet_check_input(alpha:Dynamic, x:Dynamic):Dynamic;
	static public function _dirichlet_check_parameters(alpha:Dynamic):Dynamic;
	static public var _dirichlet_doc_default_callparams : Dynamic;
	static public var _dirichlet_doc_frozen_callparams : Dynamic;
	static public var _dirichlet_doc_frozen_callparams_note : Dynamic;
	static public var _doc_random_state : Dynamic;
	/**
		Determine which eigenvalues are "small" given the spectrum.
		
		This is for compatibility across various linear algebra functions
		that should agree about whether or not a Hermitian matrix is numerically
		singular and what is its numerical matrix rank.
		This is designed to be compatible with scipy.linalg.pinvh.
		
		Parameters
		----------
		spectrum : 1d ndarray
		    Array of eigenvalues of a Hermitian matrix.
		cond, rcond : float, optional
		    Cutoff for small eigenvalues.
		    Singular values smaller than rcond * largest_eigenvalue are
		    considered zero.
		    If None or -1, suitable machine precision is used.
		
		Returns
		-------
		eps : float
		    Magnitude cutoff for numerical negligibility.
	**/
	static public function _eigvalsh_to_eps(spectrum:Dynamic, ?cond:Dynamic, ?rcond:Dynamic):Float;
	/**
		Internal helper function to compute the log of the useful quotient
		
		.. math::
		
		    B(\alpha) = \frac{\prod_{i=1}{K}\Gamma(\alpha_i)}{\Gamma\left(\sum_{i=1}^{K}\alpha_i\right)}
		
		Parameters
		----------
		%(_dirichlet_doc_default_callparams)s
		
		Returns
		-------
		B : scalar
		    Helper quotient, internal use only
	**/
	static public function _lnB(alpha:Dynamic):Dynamic;
	static public var _matnorm_doc_callparams_note : Dynamic;
	static public var _matnorm_doc_default_callparams : Dynamic;
	static public var _matnorm_doc_frozen_callparams : Dynamic;
	static public var _matnorm_doc_frozen_callparams_note : Dynamic;
	static public var _multinomial_doc_callparams_note : Dynamic;
	static public var _multinomial_doc_default_callparams : Dynamic;
	static public var _multinomial_doc_frozen_callparams : Dynamic;
	static public var _multinomial_doc_frozen_callparams_note : Dynamic;
	static public var _mvn_doc_callparams_note : Dynamic;
	static public var _mvn_doc_default_callparams : Dynamic;
	static public var _mvn_doc_frozen_callparams : Dynamic;
	static public var _mvn_doc_frozen_callparams_note : Dynamic;
	/**
		A helper function for computing the pseudoinverse.
		
		Parameters
		----------
		v : iterable of numbers
		    This may be thought of as a vector of eigenvalues or singular values.
		eps : float
		    Values with magnitude no greater than eps are considered negligible.
		
		Returns
		-------
		v_pinv : 1d float ndarray
		    A vector of pseudo-inverted numbers.
	**/
	static public function _pinv_1d(v:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Remove single-dimensional entries from array and convert to scalar,
		if necessary.
	**/
	static public function _squeeze_output(out:Dynamic):Dynamic;
	static public var _wishart_doc_callparams_note : Dynamic;
	static public var _wishart_doc_default_callparams : Dynamic;
	static public var _wishart_doc_frozen_callparams : Dynamic;
	static public var _wishart_doc_frozen_callparams_note : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.recarray, np.ndarray)
		True
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert the input to an array, checking for NaNs or Infs.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.  Success requires no NaNs or Infs.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		     Whether to use row-major (C-style) or
		     column-major (Fortran-style) memory representation.
		     Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		Raises
		------
		ValueError
		    Raises ValueError if `a` contains NaN (Not a Number) or Inf (Infinity).
		
		See Also
		--------
		asarray : Create and array.
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array.  If all elements are finite
		``asarray_chkfinite`` is identical to ``asarray``.
		
		>>> a = [1, 2]
		>>> np.asarray_chkfinite(a, dtype=float)
		array([1., 2.])
		
		Raises ValueError if array_like contains Nans or Infs.
		
		>>> a = [1, 2, np.inf]
		>>> try:
		...     np.asarray_chkfinite(a)
		... except ValueError:
		...     print('ValueError')
		...
		ValueError
	**/
	static public function asarray_chkfinite(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		A binomial discrete random variable.
		
		As an instance of the `rv_discrete` class, `binom` object inherits from it
		a collection of generic methods (see below for the full list),
		and completes them with details specific for this particular distribution.
		
		Methods
		-------
		rvs(n, p, loc=0, size=1, random_state=None)
		    Random variates.
		pmf(k, n, p, loc=0)
		    Probability mass function.
		logpmf(k, n, p, loc=0)
		    Log of the probability mass function.
		cdf(k, n, p, loc=0)
		    Cumulative distribution function.
		logcdf(k, n, p, loc=0)
		    Log of the cumulative distribution function.
		sf(k, n, p, loc=0)
		    Survival function  (also defined as ``1 - cdf``, but `sf` is sometimes more accurate).
		logsf(k, n, p, loc=0)
		    Log of the survival function.
		ppf(q, n, p, loc=0)
		    Percent point function (inverse of ``cdf`` --- percentiles).
		isf(q, n, p, loc=0)
		    Inverse survival function (inverse of ``sf``).
		stats(n, p, loc=0, moments='mv')
		    Mean('m'), variance('v'), skew('s'), and/or kurtosis('k').
		entropy(n, p, loc=0)
		    (Differential) entropy of the RV.
		expect(func, args=(n, p), loc=0, lb=None, ub=None, conditional=False)
		    Expected value of a function (of one argument) with respect to the distribution.
		median(n, p, loc=0)
		    Median of the distribution.
		mean(n, p, loc=0)
		    Mean of the distribution.
		var(n, p, loc=0)
		    Variance of the distribution.
		std(n, p, loc=0)
		    Standard deviation of the distribution.
		interval(alpha, n, p, loc=0)
		    Endpoints of the range that contains alpha percent of the distribution
		
		Notes
		-----
		The probability mass function for `binom` is:
		
		.. math::
		
		   f(k) = \binom{n}{k} p^k (1-p)^{n-k}
		
		for ``k`` in ``{0, 1,..., n}``.
		
		`binom` takes ``n`` and ``p`` as shape parameters.
		
		The probability mass function above is defined in the "standardized" form.
		To shift distribution use the ``loc`` parameter.
		Specifically, ``binom.pmf(k, n, p, loc)`` is identically
		equivalent to ``binom.pmf(k - loc, n, p)``.
		
		Examples
		--------
		>>> from scipy.stats import binom
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots(1, 1)
		
		Calculate a few first moments:
		
		>>> n, p = 5, 0.4
		>>> mean, var, skew, kurt = binom.stats(n, p, moments='mvsk')
		
		Display the probability mass function (``pmf``):
		
		>>> x = np.arange(binom.ppf(0.01, n, p),
		...               binom.ppf(0.99, n, p))
		>>> ax.plot(x, binom.pmf(x, n, p), 'bo', ms=8, label='binom pmf')
		>>> ax.vlines(x, 0, binom.pmf(x, n, p), colors='b', lw=5, alpha=0.5)
		
		Alternatively, the distribution object can be called (as a function)
		to fix the shape and location. This returns a "frozen" RV object holding
		the given parameters fixed.
		
		Freeze the distribution and display the frozen ``pmf``:
		
		>>> rv = binom(n, p)
		>>> ax.vlines(x, 0, rv.pmf(x), colors='k', linestyles='-', lw=1,
		...         label='frozen pmf')
		>>> ax.legend(loc='best', frameon=False)
		>>> plt.show()
		
		Check accuracy of ``cdf`` and ``ppf``:
		
		>>> prob = binom.cdf(x, n, p)
		>>> np.allclose(x, binom.ppf(prob, n, p))
		True
		
		Generate random numbers:
		
		>>> r = binom.rvs(n, p, size=1000)
	**/
	static public function binom(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Turn seed into a np.random.RandomState instance
		
		If seed is None (or np.random), return the RandomState singleton used
		by np.random.
		If seed is an int, return a new RandomState instance seeded with seed.
		If seed is already a RandomState instance, return it.
		Otherwise raise ValueError.
	**/
	static public function check_random_state(seed:Dynamic):Dynamic;
	/**
		A Dirichlet random variable.
		
		The `alpha` keyword specifies the concentration parameters of the
		distribution.
		
		.. versionadded:: 0.15.0
		
		Methods
		-------
		``pdf(x, alpha)``
		    Probability density function.
		``logpdf(x, alpha)``
		    Log of the probability density function.
		``rvs(alpha, size=1, random_state=None)``
		    Draw random samples from a Dirichlet distribution.
		``mean(alpha)``
		    The mean of the Dirichlet distribution
		``var(alpha)``
		    The variance of the Dirichlet distribution
		``entropy(alpha)``
		    Compute the differential entropy of the Dirichlet distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix
		concentration parameters, returning a "frozen" Dirichlet
		random variable:
		
		rv = dirichlet(alpha)
		    - Frozen object with the same methods but holding the given
		      concentration parameters fixed.
		
		Notes
		-----
		Each :math:`\alpha` entry must be positive. The distribution has only
		support on the simplex defined by
		
		.. math::
		    \sum_{i=1}^{K} x_i \le 1
		
		
		The probability density function for `dirichlet` is
		
		.. math::
		
		    f(x) = \frac{1}{\mathrm{B}(\boldsymbol\alpha)} \prod_{i=1}^K x_i^{\alpha_i - 1}
		
		where
		
		.. math::
		
		    \mathrm{B}(\boldsymbol\alpha) = \frac{\prod_{i=1}^K \Gamma(\alpha_i)}
		                                 {\Gamma\bigl(\sum_{i=1}^K \alpha_i\bigr)}
		
		and :math:`\boldsymbol\alpha=(\alpha_1,\ldots,\alpha_K)`, the
		concentration parameters and :math:`K` is the dimension of the space
		where :math:`x` takes values.
		
		Note that the dirichlet interface is somewhat inconsistent.
		The array returned by the rvs function is transposed
		with respect to the format expected by the pdf and logpdf.
	**/
	static public function dirichlet(alpha:Dynamic, ?seed:Dynamic):Dynamic;
	static public var dirichlet_docdict_noparams : Dynamic;
	static public var dirichlet_docdict_params : Dynamic;
	static public var division : Dynamic;
	/**
		x,y = drot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``drot``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		c : input float
		s : input float
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('d') with bounds (*)
		y : rank-1 array('d') with bounds (*)
	**/
	static public function drot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		entr(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		entr(x)
		
		Elementwise function for computing entropy.
		
		.. math:: \text{entr}(x) = \begin{cases} - x \log(x) & x > 0  \\ 0 & x = 0 \\ -\infty & \text{otherwise} \end{cases}
		
		Parameters
		----------
		x : ndarray
		    Input array.
		
		Returns
		-------
		res : ndarray
		    The value of the elementwise entropy function at the given points `x`.
		
		See Also
		--------
		kl_div, rel_entr
		
		Notes
		-----
		This function is concave.
		
		.. versionadded:: 0.15.0
	**/
	static public function entr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gammaln(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Logarithm of the absolute value of the Gamma function.
		
		Parameters
		----------
		x : array-like
		    Values on the real line at which to compute ``gammaln``
		
		Returns
		-------
		gammaln : ndarray
		    Values of ``gammaln`` at x.
		
		See Also
		--------
		gammasgn : sign of the gamma function
		loggamma : principal branch of the logarithm of the gamma function
		
		Notes
		-----
		When used in conjunction with `gammasgn`, this function is useful
		for working in logspace on the real axis without having to deal with
		complex numbers, via the relation ``exp(gammaln(x)) = gammasgn(x)*gamma(x)``.
		
		For complex-valued log-gamma, use `loggamma` instead of `gammaln`.
	**/
	static public function gammaln(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return available LAPACK function objects from names.
		
		Arrays are used to determine the optimal prefix of LAPACK routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of LAPACK functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of LAPACK
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In LAPACK, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectively, and
		are stored in attribute ``typecode`` of the returned functions.
		
		Examples
		--------
		Suppose we would like to use '?lange' routine which computes the selected
		norm of an array. We pass our array in order to get the correct 'lange'
		flavor.
		
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(3,2)
		>>> x_lange = LA.get_lapack_funcs('lange', (a,))
		>>> x_lange.typecode
		'd'
		>>> x_lange = LA.get_lapack_funcs('lange',(a*1j,))
		>>> x_lange.typecode
		'z'
		
		Several LAPACK routines work best when its internal WORK array has
		the optimal size (big enough for fast computation and small enough to
		avoid waste of memory). This size is determined also by a dedicated query
		to the function which is often wrapped as a standalone function and
		commonly denoted as ``###_lwork``. Below is an example for ``?sysv``
		
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(1000,1000)
		>>> b = np.random.rand(1000,1)*1j
		>>> # We pick up zsysv and zsysv_lwork due to b array
		... xsysv, xlwork = LA.get_lapack_funcs(('sysv', 'sysv_lwork'), (a, b))
		>>> opt_lwork, _ = xlwork(a.shape[0])  # returns a complex for 'z' prefix
		>>> udut, ipiv, x, info = xsysv(a, b, lwork=int(opt_lwork.real))
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
	/**
		An inverse Wishart random variable.
		
		The `df` keyword specifies the degrees of freedom. The `scale` keyword
		specifies the scale matrix, which must be symmetric and positive definite.
		In this context, the scale matrix is often interpreted in terms of a
		multivariate normal covariance matrix.
		
		Methods
		-------
		``pdf(x, df, scale)``
		    Probability density function.
		``logpdf(x, df, scale)``
		    Log of the probability density function.
		``rvs(df, scale, size=1, random_state=None)``
		    Draw random samples from an inverse Wishart distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix the degrees
		of freedom and scale parameters, returning a "frozen" inverse Wishart
		random variable:
		
		rv = invwishart(df=1, scale=1)
		    - Frozen object with the same methods but holding the given
		      degrees of freedom and scale fixed.
		
		See Also
		--------
		wishart
		
		Notes
		-----
		
		
		The scale matrix `scale` must be a symmetric positive definite
		matrix. Singular matrices, including the symmetric positive semi-definite
		case, are not supported.
		
		The inverse Wishart distribution is often denoted
		
		.. math::
		
		    W_p^{-1}(\nu, \Psi)
		
		where :math:`\nu` is the degrees of freedom and :math:`\Psi` is the
		:math:`p \times p` scale matrix.
		
		The probability density function for `invwishart` has support over positive
		definite matrices :math:`S`; if :math:`S \sim W^{-1}_p(\nu, \Sigma)`,
		then its PDF is given by:
		
		.. math::
		
		    f(S) = \frac{|\Sigma|^\frac{\nu}{2}}{2^{ \frac{\nu p}{2} }
		           |S|^{\frac{\nu + p + 1}{2}} \Gamma_p \left(\frac{\nu}{2} \right)}
		           \exp\left( -tr(\Sigma S^{-1}) / 2 \right)
		
		If :math:`S \sim W_p^{-1}(\nu, \Psi)` (inverse Wishart) then
		:math:`S^{-1} \sim W_p(\nu, \Psi^{-1})` (Wishart).
		
		If the scale matrix is 1-dimensional and equal to one, then the inverse
		Wishart distribution :math:`W_1(\nu, 1)` collapses to the
		inverse Gamma distribution with parameters shape = :math:`\frac{\nu}{2}`
		and scale = :math:`\frac{1}{2}`.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] M.L. Eaton, "Multivariate Statistics: A Vector Space Approach",
		       Wiley, 1983.
		.. [2] M.C. Jones, "Generating Inverse Wishart Matrices", Communications in
		       Statistics - Simulation and Computation, vol. 14.2, pp.511-514, 1985.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import invwishart, invgamma
		>>> x = np.linspace(0.01, 1, 100)
		>>> iw = invwishart.pdf(x, df=6, scale=1)
		>>> iw[:3]
		array([  1.20546865e-15,   5.42497807e-06,   4.45813929e-03])
		>>> ig = invgamma.pdf(x, 6/2., scale=1./2)
		>>> ig[:3]
		array([  1.20546865e-15,   5.42497807e-06,   4.45813929e-03])
		>>> plt.plot(x, iw)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.
	**/
	static public function invwishart(?df:Dynamic, ?scale:Dynamic, ?seed:Dynamic):Dynamic;
	static public var matnorm_docdict_noparams : Dynamic;
	static public var matnorm_docdict_params : Dynamic;
	/**
		A matrix normal random variable.
		
		The `mean` keyword specifies the mean. The `rowcov` keyword specifies the
		among-row covariance matrix. The 'colcov' keyword specifies the
		among-column covariance matrix.
		
		Methods
		-------
		``pdf(X, mean=None, rowcov=1, colcov=1)``
		    Probability density function.
		``logpdf(X, mean=None, rowcov=1, colcov=1)``
		    Log of the probability density function.
		``rvs(mean=None, rowcov=1, colcov=1, size=1, random_state=None)``
		    Draw random samples.
		
		Parameters
		----------
		X : array_like
		    Quantiles, with the last two axes of `X` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default: `None`)
		rowcov : array_like, optional
		    Among-row covariance matrix of the distribution (default: `1`)
		colcov : array_like, optional
		    Among-column covariance matrix of the distribution (default: `1`)
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix the mean
		and covariance parameters, returning a "frozen" matrix normal
		random variable:
		
		rv = matrix_normal(mean=None, rowcov=1, colcov=1)
		    - Frozen object with the same methods but holding the given
		      mean and covariance fixed.
		
		Notes
		-----
		If `mean` is set to `None` then a matrix of zeros is used for the mean.
		    The dimensions of this matrix are inferred from the shape of `rowcov` and
		    `colcov`, if these are provided, or set to `1` if ambiguous.
		
		    `rowcov` and `colcov` can be two-dimensional array_likes specifying the
		    covariance matrices directly. Alternatively, a one-dimensional array will
		    be be interpreted as the entries of a diagonal matrix, and a scalar or
		    zero-dimensional array will be interpreted as this value times the
		    identity matrix.
		    
		
		The covariance matrices specified by `rowcov` and `colcov` must be
		(symmetric) positive definite. If the samples in `X` are
		:math:`m \times n`, then `rowcov` must be :math:`m \times m` and
		`colcov` must be :math:`n \times n`. `mean` must be the same shape as `X`.
		
		The probability density function for `matrix_normal` is
		
		.. math::
		
		    f(X) = (2 \pi)^{-\frac{mn}{2}}|U|^{-\frac{n}{2}} |V|^{-\frac{m}{2}}
		           \exp\left( -\frac{1}{2} \mathrm{Tr}\left[ U^{-1} (X-M) V^{-1}
		           (X-M)^T \right] \right),
		
		where :math:`M` is the mean, :math:`U` the among-row covariance matrix,
		:math:`V` the among-column covariance matrix.
		
		The `allow_singular` behaviour of the `multivariate_normal`
		distribution is not currently supported. Covariance matrices must be
		full rank.
		
		The `matrix_normal` distribution is closely related to the
		`multivariate_normal` distribution. Specifically, :math:`\mathrm{Vec}(X)`
		(the vector formed by concatenating the columns  of :math:`X`) has a
		multivariate normal distribution with mean :math:`\mathrm{Vec}(M)`
		and covariance :math:`V \otimes U` (where :math:`\otimes` is the Kronecker
		product). Sampling and pdf evaluation are
		:math:`\mathcal{O}(m^3 + n^3 + m^2 n + m n^2)` for the matrix normal, but
		:math:`\mathcal{O}(m^3 n^3)` for the equivalent multivariate normal,
		making this equivalent form algorithmically inefficient.
		
		.. versionadded:: 0.17.0
		
		Examples
		--------
		
		>>> from scipy.stats import matrix_normal
		
		>>> M = np.arange(6).reshape(3,2); M
		array([[0, 1],
		       [2, 3],
		       [4, 5]])
		>>> U = np.diag([1,2,3]); U
		array([[1, 0, 0],
		       [0, 2, 0],
		       [0, 0, 3]])
		>>> V = 0.3*np.identity(2); V
		array([[ 0.3,  0. ],
		       [ 0. ,  0.3]])
		>>> X = M + 0.1; X
		array([[ 0.1,  1.1],
		       [ 2.1,  3.1],
		       [ 4.1,  5.1]])
		>>> matrix_normal.pdf(X, mean=M, rowcov=U, colcov=V)
		0.023410202050005054
		
		>>> # Equivalent multivariate normal
		>>> from scipy.stats import multivariate_normal
		>>> vectorised_X = X.T.flatten()
		>>> equiv_mean = M.T.flatten()
		>>> equiv_cov = np.kron(V,U)
		>>> multivariate_normal.pdf(vectorised_X, mean=equiv_mean, cov=equiv_cov)
		0.023410202050005054
	**/
	static public function matrix_normal(?mean:Dynamic, ?rowcov:Dynamic, ?colcov:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Draw random samples from a Multinomial distribution.
		
		Parameters
		----------
		n : int
		    Number of trials
		p : array_like
		    Probability of a trial falling into each category; should sum to 1
		size : integer or iterable of integers, optional
		    Number of samples to draw (default 1).
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray or scalar
		    Random variates of shape (`size`, `len(p)`)
		
		Notes
		-----
		`n` should be a positive integer. Each element of `p` should be in the
		interval :math:`[0,1]` and the elements should sum to 1. If they do not sum to
		1, the last element of the `p` array is not used and is replaced with the
		remaining probability left over from the earlier elements.
	**/
	static public function method(self:Dynamic, n:Dynamic, p:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		Draw random samples from a Multinomial distribution.
		
		Parameters
		----------
		
		size : integer or iterable of integers, optional
		    Number of samples to draw (default 1).
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray or scalar
		    Random variates of shape (`size`, `len(p)`)
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	static public function method_frozen(self:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		Returns the log of multivariate gamma, also sometimes called the
		generalized gamma.
		
		Parameters
		----------
		a : ndarray
		    The multivariate gamma is computed for each item of `a`.
		d : int
		    The dimension of the space of integration.
		
		Returns
		-------
		res : ndarray
		    The values of the log multivariate gamma at the given points `a`.
		
		Notes
		-----
		The formal definition of the multivariate gamma of dimension d for a real
		`a` is
		
		.. math::
		
		    \Gamma_d(a) = \int_{A>0} e^{-tr(A)} |A|^{a - (d+1)/2} dA
		
		with the condition :math:`a > (d-1)/2`, and :math:`A > 0` being the set of
		all the positive definite matrices of dimension `d`.  Note that `a` is a
		scalar: the integrand only is multivariate, the argument is not (the
		function is defined over a subset of the real set).
		
		This can be proven to be equal to the much friendlier equation
		
		.. math::
		
		    \Gamma_d(a) = \pi^{d(d-1)/4} \prod_{i=1}^{d} \Gamma(a - (i-1)/2).
		
		References
		----------
		R. J. Muirhead, Aspects of multivariate statistical theory (Wiley Series in
		probability and mathematical statistics).
	**/
	static public function multigammaln(a:Dynamic, d:Dynamic):Dynamic;
	/**
		A multinomial random variable.
		
		Methods
		-------
		``pmf(x, n, p)``
		    Probability mass function.
		``logpmf(x, n, p)``
		    Log of the probability mass function.
		``rvs(n, p, size=1, random_state=None)``
		    Draw random samples from a multinomial distribution.
		``entropy(n, p)``
		    Compute the entropy of the multinomial distribution.
		``cov(n, p)``
		    Compute the covariance matrix of the multinomial distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		n : int
		    Number of trials
		p : array_like
		    Probability of a trial falling into each category; should sum to 1
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Notes
		-----
		`n` should be a positive integer. Each element of `p` should be in the
		interval :math:`[0,1]` and the elements should sum to 1. If they do not sum to
		1, the last element of the `p` array is not used and is replaced with the
		remaining probability left over from the earlier elements.
		
		Alternatively, the object may be called (as a function) to fix the `n` and
		`p` parameters, returning a "frozen" multinomial random variable:
		
		The probability mass function for `multinomial` is
		
		.. math::
		
		    f(x) = \frac{n!}{x_1! \cdots x_k!} p_1^{x_1} \cdots p_k^{x_k},
		
		supported on :math:`x=(x_1, \ldots, x_k)` where each :math:`x_i` is a
		nonnegative integer and their sum is :math:`n`.
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		
		>>> from scipy.stats import multinomial
		>>> rv = multinomial(8, [0.3, 0.2, 0.5])
		>>> rv.pmf([1, 3, 4])
		0.042000000000000072
		
		The multinomial distribution for :math:`k=2` is identical to the
		corresponding binomial distribution (tiny numerical differences
		notwithstanding):
		
		>>> from scipy.stats import binom
		>>> multinomial.pmf([3, 4], n=7, p=[0.4, 0.6])
		0.29030399999999973
		>>> binom.pmf(3, 7, 0.4)
		0.29030400000000012
		
		The functions ``pmf``, ``logpmf``, ``entropy``, and ``cov`` support
		broadcasting, under the convention that the vector parameters (``x`` and
		``p``) are interpreted as if each row along the last axis is a single
		object. For instance:
		
		>>> multinomial.pmf([[3, 4], [3, 5]], n=[7, 8], p=[.3, .7])
		array([0.2268945,  0.25412184])
		
		Here, ``x.shape == (2, 2)``, ``n.shape == (2,)``, and ``p.shape == (2,)``,
		but following the rules mentioned above they behave as if the rows
		``[3, 4]`` and ``[3, 5]`` in ``x`` and ``[.3, .7]`` in ``p`` were a single
		object, and as if we had ``x.shape = (2,)``, ``n.shape = (2,)``, and
		``p.shape = ()``. To obtain the individual elements without broadcasting,
		we would do this:
		
		>>> multinomial.pmf([3, 4], n=7, p=[.3, .7])
		0.2268945
		>>> multinomial.pmf([3, 5], 8, p=[.3, .7])
		0.25412184
		
		This broadcasting also works for ``cov``, where the output objects are
		square matrices of size ``p.shape[-1]``. For example:
		
		>>> multinomial.cov([4, 5], [[.3, .7], [.4, .6]])
		array([[[ 0.84, -0.84],
		        [-0.84,  0.84]],
		       [[ 1.2 , -1.2 ],
		        [-1.2 ,  1.2 ]]])
		
		In this example, ``n.shape == (2,)`` and ``p.shape == (2, 2)``, and
		following the rules above, these broadcast as if ``p.shape == (2,)``.
		Thus the result should also be of shape ``(2,)``, but since each output is
		a :math:`2 \times 2` matrix, the result in fact has shape ``(2, 2, 2)``,
		where ``result[0]`` is equal to ``multinomial.cov(n=4, p=[.3, .7])`` and
		``result[1]`` is equal to ``multinomial.cov(n=5, p=[.4, .6])``.
		
		See also
		--------
		scipy.stats.binom : The binomial distribution.
		numpy.random.multinomial : Sampling from the multinomial distribution.
	**/
	static public function multinomial(n:Dynamic, p:Dynamic, ?seed:Dynamic):Dynamic;
	static public var multinomial_docdict_noparams : Dynamic;
	static public var multinomial_docdict_params : Dynamic;
	/**
		A multivariate normal random variable.
		
		The `mean` keyword specifies the mean. The `cov` keyword specifies the
		covariance matrix.
		
		Methods
		-------
		``pdf(x, mean=None, cov=1, allow_singular=False)``
		    Probability density function.
		``logpdf(x, mean=None, cov=1, allow_singular=False)``
		    Log of the probability density function.
		``cdf(x, mean=None, cov=1, allow_singular=False, maxpts=1000000*dim, abseps=1e-5, releps=1e-5)``
		    Cumulative distribution function.
		``logcdf(x, mean=None, cov=1, allow_singular=False, maxpts=1000000*dim, abseps=1e-5, releps=1e-5)``
		    Log of the cumulative distribution function.
		``rvs(mean=None, cov=1, size=1, random_state=None)``
		    Draw random samples from a multivariate normal distribution.
		``entropy()``
		    Compute the differential entropy of the multivariate normal.
		
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
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix the mean
		and covariance parameters, returning a "frozen" multivariate normal
		random variable:
		
		rv = multivariate_normal(mean=None, cov=1, allow_singular=False)
		    - Frozen object with the same methods but holding the given
		      mean and covariance fixed.
		
		Notes
		-----
		Setting the parameter `mean` to `None` is equivalent to having `mean`
		    be the zero-vector. The parameter `cov` can be a scalar, in which case
		    the covariance matrix is the identity times that value, a vector of
		    diagonal entries for the covariance matrix, or a two-dimensional
		    array_like.
		    
		
		The covariance matrix `cov` must be a (symmetric) positive
		semi-definite matrix. The determinant and inverse of `cov` are computed
		as the pseudo-determinant and pseudo-inverse, respectively, so
		that `cov` does not need to have full rank.
		
		The probability density function for `multivariate_normal` is
		
		.. math::
		
		    f(x) = \frac{1}{\sqrt{(2 \pi)^k \det \Sigma}}
		           \exp\left( -\frac{1}{2} (x - \mu)^T \Sigma^{-1} (x - \mu) \right),
		
		where :math:`\mu` is the mean, :math:`\Sigma` the covariance matrix,
		and :math:`k` is the dimension of the space where :math:`x` takes values.
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import multivariate_normal
		
		>>> x = np.linspace(0, 5, 10, endpoint=False)
		>>> y = multivariate_normal.pdf(x, mean=2.5, cov=0.5); y
		array([ 0.00108914,  0.01033349,  0.05946514,  0.20755375,  0.43939129,
		        0.56418958,  0.43939129,  0.20755375,  0.05946514,  0.01033349])
		>>> fig1 = plt.figure()
		>>> ax = fig1.add_subplot(111)
		>>> ax.plot(x, y)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.  This allows us for instance to
		display the frozen pdf for a non-isotropic random variable in 2D as
		follows:
		
		>>> x, y = np.mgrid[-1:1:.01, -1:1:.01]
		>>> pos = np.dstack((x, y))
		>>> rv = multivariate_normal([0.5, -0.2], [[2.0, 0.3], [0.3, 0.5]])
		>>> fig2 = plt.figure()
		>>> ax2 = fig2.add_subplot(111)
		>>> ax2.contourf(x, y, rv.pdf(pos))
	**/
	static public function multivariate_normal(?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic, ?seed:Dynamic):Dynamic;
	static public var mvn_docdict_noparams : Dynamic;
	static public var mvn_docdict_params : Dynamic;
	static public var name : Dynamic;
	static public var ortho_group : Dynamic;
	static public var print_function : Dynamic;
	/**
		psi(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		psi(z, out=None)
		
		The digamma function.
		
		The logarithmic derivative of the gamma function evaluated at ``z``.
		
		Parameters
		----------
		z : array_like
		    Real or complex argument.
		out : ndarray, optional
		    Array for the computed values of ``psi``.
		
		Returns
		-------
		digamma : ndarray
		    Computed values of ``psi``.
		
		Notes
		-----
		For large values not close to the negative real axis ``psi`` is
		computed using the asymptotic series (5.11.2) from [1]_. For small
		arguments not close to the negative real axis the recurrence
		relation (5.5.2) from [1]_ is used until the argument is large
		enough to use the asymptotic series. For values close to the
		negative real axis the reflection formula (5.5.4) from [1]_ is
		used first.  Note that ``psi`` has a family of zeros on the
		negative real axis which occur between the poles at nonpositive
		integers. Around the zeros the reflection formula suffers from
		cancellation and the implementation loses precision. The sole
		positive zero and the first negative zero, however, are handled
		separately by precomputing series expansions using [2]_, so the
		function should maintain full accuracy around the origin.
		
		References
		----------
		.. [1] NIST Digital Library of Mathematical Functions
		       http://dlmf.nist.gov/5
		.. [2] Fredrik Johansson and others.
		       "mpmath: a Python library for arbitrary-precision floating-point arithmetic"
		       (Version 0.19) http://mpmath.org/
	**/
	static public function psi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var random_correlation : Dynamic;
	static public function special_ortho_group(?dim:Dynamic, ?seed:Dynamic):Dynamic;
	static public var unitary_group : Dynamic;
	/**
		A Wishart random variable.
		
		The `df` keyword specifies the degrees of freedom. The `scale` keyword
		specifies the scale matrix, which must be symmetric and positive definite.
		In this context, the scale matrix is often interpreted in terms of a
		multivariate normal precision matrix (the inverse of the covariance
		matrix).
		
		Methods
		-------
		``pdf(x, df, scale)``
		    Probability density function.
		``logpdf(x, df, scale)``
		    Log of the probability density function.
		``rvs(df, scale, size=1, random_state=None)``
		    Draw random samples from a Wishart distribution.
		``entropy()``
		    Compute the differential entropy of the Wishart distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix the degrees
		of freedom and scale parameters, returning a "frozen" Wishart random
		variable:
		
		rv = wishart(df=1, scale=1)
		    - Frozen object with the same methods but holding the given
		      degrees of freedom and scale fixed.
		
		See Also
		--------
		invwishart, chi2
		
		Notes
		-----
		
		
		The scale matrix `scale` must be a symmetric positive definite
		matrix. Singular matrices, including the symmetric positive semi-definite
		case, are not supported.
		
		The Wishart distribution is often denoted
		
		.. math::
		
		    W_p(\nu, \Sigma)
		
		where :math:`\nu` is the degrees of freedom and :math:`\Sigma` is the
		:math:`p \times p` scale matrix.
		
		The probability density function for `wishart` has support over positive
		definite matrices :math:`S`; if :math:`S \sim W_p(\nu, \Sigma)`, then
		its PDF is given by:
		
		.. math::
		
		    f(S) = \frac{|S|^{\frac{\nu - p - 1}{2}}}{2^{ \frac{\nu p}{2} }
		           |\Sigma|^\frac{\nu}{2} \Gamma_p \left ( \frac{\nu}{2} \right )}
		           \exp\left( -tr(\Sigma^{-1} S) / 2 \right)
		
		If :math:`S \sim W_p(\nu, \Sigma)` (Wishart) then
		:math:`S^{-1} \sim W_p^{-1}(\nu, \Sigma^{-1})` (inverse Wishart).
		
		If the scale matrix is 1-dimensional and equal to one, then the Wishart
		distribution :math:`W_1(\nu, 1)` collapses to the :math:`\chi^2(\nu)`
		distribution.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] M.L. Eaton, "Multivariate Statistics: A Vector Space Approach",
		       Wiley, 1983.
		.. [2] W.B. Smith and R.R. Hocking, "Algorithm AS 53: Wishart Variate
		       Generator", Applied Statistics, vol. 21, pp. 341-345, 1972.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import wishart, chi2
		>>> x = np.linspace(1e-5, 8, 100)
		>>> w = wishart.pdf(x, df=3, scale=1); w[:5]
		array([ 0.00126156,  0.10892176,  0.14793434,  0.17400548,  0.1929669 ])
		>>> c = chi2.pdf(x, 3); c[:5]
		array([ 0.00126156,  0.10892176,  0.14793434,  0.17400548,  0.1929669 ])
		>>> plt.plot(x, w)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.
	**/
	static public function wishart(?df:Dynamic, ?scale:Dynamic, ?seed:Dynamic):Dynamic;
	static public var wishart_docdict_noparams : Dynamic;
	static public var wishart_docdict_params : Dynamic;
	/**
		xlogy(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		xlogy(x, y)
		
		Compute ``x*log(y)`` so that the result is 0 if ``x = 0``.
		
		Parameters
		----------
		x : array_like
		    Multiplier
		y : array_like
		    Argument
		
		Returns
		-------
		z : array_like
		    Computed x*log(y)
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
	**/
	static public function xlogy(args:haxe.extern.Rest<Dynamic>):Dynamic;
}