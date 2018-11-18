/* This file is generated, do not edit! */
package scipy.stats.stats;
@:pythonImport("scipy.stats.stats") extern class Stats_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _betai(a:Dynamic, b:Dynamic, x:Dynamic):Dynamic;
	/**
		Compute, between two one-dimensional distributions :math:`u` and
		:math:`v`, whose respective CDFs are :math:`U` and :math:`V`, the
		statistical distance that is defined as:
		
		.. math::
		
		    l_p(u, v) = \left( \int_{-\infty}^{+\infty} |U-V|^p \right)^{1/p}
		
		p is a positive parameter; p = 1 gives the Wasserstein distance, p = 2
		gives the energy distance.
		
		Parameters
		----------
		u_values, v_values : array_like
		    Values observed in the (empirical) distribution.
		u_weights, v_weights : array_like, optional
		    Weight for each value. If unspecified, each value is assigned the same
		    weight.
		    `u_weights` (resp. `v_weights`) must have the same length as
		    `u_values` (resp. `v_values`). If the weight sum differs from 1, it
		    must still be positive and finite so that the weights can be normalized
		    to sum to 1.
		
		Returns
		-------
		distance : float
		    The computed distance between the distributions.
		
		Notes
		-----
		The input distributions can be empirical, therefore coming from samples
		whose values are effectively inputs of the function, or they can be seen as
		generalized functions, in which case they are weighted sums of Dirac delta
		functions located at the specified values.
		
		References
		----------
		.. [1] Bellemare, Danihelka, Dabney, Mohamed, Lakshminarayanan, Hoyer,
		       Munos "The Cramer Distance as a Solution to Biased Wasserstein
		       Gradients" (2017). :arXiv:`1705.10743`.
	**/
	static public function _cdf_distance(p:Dynamic, u_values:Dynamic, v_values:Dynamic, ?u_weights:Dynamic, ?v_weights:Dynamic):Float;
	static public function _chk2_asarray(a:Dynamic, b:Dynamic, axis:Dynamic):Dynamic;
	static public function _chk_asarray(a:Dynamic, axis:Dynamic):Dynamic;
	static public function _compute_qth_percentile(sorted:Dynamic, per:Dynamic, interpolation_method:Dynamic, axis:Dynamic):Dynamic;
	static public function _contains_nan(a:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Count the number of non-masked elements of an array.
		
		This function behaves like np.ma.count(), but is much faster
		for ndarrays.
	**/
	static public function _count(a:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _equal_var_ttest_denom(v1:Dynamic, n1:Dynamic, v2:Dynamic, n2:Dynamic):Dynamic;
	static public function _find_repeats(arr:Dynamic):Dynamic;
	/**
		Separate the range into several bins and return the number of instances
		in each bin.
		
		Parameters
		----------
		a : array_like
		    Array of scores which will be put into bins.
		numbins : int, optional
		    The number of bins to use for the histogram. Default is 10.
		defaultlimits : tuple (lower, upper), optional
		    The lower and upper values for the range of the histogram.
		    If no value is given, a range slightly larger than the range of the
		    values in a is used. Specifically ``(a.min() - s, a.max() + s)``,
		    where ``s = (1/2)(a.max() - a.min()) / (numbins - 1)``.
		weights : array_like, optional
		    The weights for each value in `a`. Default is None, which gives each
		    value a weight of 1.0
		printextras : bool, optional
		    If True, if there are extra points (i.e. the points that fall outside
		    the bin limits) a warning is raised saying how many of those points
		    there are.  Default is False.
		
		Returns
		-------
		count : ndarray
		    Number of points (or sum of weights) in each bin.
		lowerlimit : float
		    Lowest value of histogram, the lower limit of the first bin.
		binsize : float
		    The size of the bins (all bins have the same size).
		extrapoints : int
		    The number of points outside the range of the histogram.
		
		See Also
		--------
		numpy.histogram
		
		Notes
		-----
		This histogram is based on numpy's histogram but has a larger range by
		default if default limits is not set.
	**/
	static public function _histogram(a:Dynamic, ?numbins:Dynamic, ?defaultlimits:Dynamic, ?weights:Dynamic, ?printextras:Dynamic):Dynamic;
	/**
		Private wrapper that works around the following:
		
		  1. A bug in `np.nanpercentile` that was around until numpy version
		     1.11.0.
		  2. A bug in `np.percentile` NaN handling that was fixed in numpy
		     version 1.10.0.
		  3. The non-existence of `np.nanpercentile` before numpy version
		     1.9.0.
		
		While this function is pretty much necessary for the moment, it
		should be removed as soon as the minimum supported numpy version
		allows.
	**/
	static public function _iqr_nanpercentile(x:Dynamic, q:Dynamic, ?axis:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic, ?contains_nan:Dynamic):Dynamic;
	/**
		Private wrapper that works around older versions of `numpy`.
		
		While this function is pretty much necessary for the moment, it
		should be removed as soon as the minimum supported numpy version
		allows.
	**/
	static public function _iqr_percentile(x:Dynamic, q:Dynamic, ?axis:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic, ?contains_nan:Dynamic):Dynamic;
	static public function _kendall_dis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		np.where(cond, x, fillvalue) always evaluates x even where cond is False.
		This one only evaluates f(arr1[cond], arr2[cond], ...).
		For example,
		>>> a, b = np.array([1, 2, 3, 4]), np.array([5, 6, 7, 8])
		>>> def f(a, b):
		    return a*b
		>>> _lazywhere(a > 2, (a, b), f, np.nan)
		array([ nan,  nan,  21.,  32.])
		
		Notice it assumes that all `arrays` are of the same shape, or can be
		broadcasted together.
	**/
	static public function _lazywhere(cond:Dynamic, arrays:Dynamic, f:Dynamic, ?fillvalue:Dynamic, ?f2:Dynamic):Dynamic;
	/**
		Mask an array for values outside of given limits.
		
		This is primarily a utility function.
		
		Parameters
		----------
		a : array
		limits : (float or None, float or None)
		    A tuple consisting of the (lower limit, upper limit).  Values in the
		    input array less than the lower limit or greater than the upper limit
		    will be masked out. None implies no limit.
		inclusive : (bool, bool)
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to lower or upper are allowed.
		
		Returns
		-------
		A MaskedArray.
		
		Raises
		------
		A ValueError if there are no values within the given limits.
	**/
	static public function _mask_to_limits(a:Dynamic, limits:Dynamic, inclusive:Dynamic):Dynamic;
	static public function _moment(a:Dynamic, moment:Dynamic, axis:Dynamic):Dynamic;
	static public var _power_div_lambda_names : Dynamic;
	static public var _scale_conversions : Dynamic;
	/**
		Sum elements of the input array, and return the square(s) of that sum.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int or None, optional
		    Axis along which to calculate. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		square_of_sums : float or ndarray
		    The square of the sum over `axis`.
		
		See also
		--------
		_sum_of_squares : The sum of squares (the opposite of `square_of_sums`).
	**/
	static public function _square_of_sums(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Square each element of the input array, and return the sum(s) of that.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int or None, optional
		    Axis along which to calculate. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		sum_of_squares : ndarray
		    The sum along the given axis for (a**2).
		
		See also
		--------
		_square_of_sums : The square(s) of the sum(s) (the opposite of
		`_sum_of_squares`).
	**/
	static public function _sum_of_squares(a:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _toint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Common code between all 3 t-test functions.
	**/
	static public function _ttest_finish(df:Dynamic, t:Dynamic):Dynamic;
	static public function _ttest_ind_from_stats(mean1:Dynamic, mean2:Dynamic, denom:Dynamic, df:Dynamic):Dynamic;
	static public function _unequal_var_ttest_denom(v1:Dynamic, n1:Dynamic, v2:Dynamic, n2:Dynamic):Dynamic;
	/**
		Validate the values and weights from a distribution input of `cdf_distance`
		and return them as ndarray objects.
		
		Parameters
		----------
		values : array_like
		    Values observed in the (empirical) distribution.
		weights : array_like
		    Weight for each value.
		
		Returns
		-------
		values : ndarray
		    Values as ndarray.
		weights : ndarray
		    Weights as ndarray.
	**/
	static public function _validate_distribution(values:Dynamic, weights:Dynamic):Dynamic;
	static public function _weightedrankedtau(x:Dynamic, y:Dynamic, rank:Dynamic, weigher:Dynamic, additive:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function callable(obj:Dynamic):Dynamic;
	/**
		Calculate a one-way chi square test.
		
		The chi square test tests the null hypothesis that the categorical data
		has the given frequencies.
		
		Parameters
		----------
		f_obs : array_like
		    Observed frequencies in each category.
		f_exp : array_like, optional
		    Expected frequencies in each category.  By default the categories are
		    assumed to be equally likely.
		ddof : int, optional
		    "Delta degrees of freedom": adjustment to the degrees of freedom
		    for the p-value.  The p-value is computed using a chi-squared
		    distribution with ``k - 1 - ddof`` degrees of freedom, where `k`
		    is the number of observed frequencies.  The default value of `ddof`
		    is 0.
		axis : int or None, optional
		    The axis of the broadcast result of `f_obs` and `f_exp` along which to
		    apply the test.  If axis is None, all values in `f_obs` are treated
		    as a single data set.  Default is 0.
		
		Returns
		-------
		chisq : float or ndarray
		    The chi-squared test statistic.  The value is a float if `axis` is
		    None or `f_obs` and `f_exp` are 1-D.
		p : float or ndarray
		    The p-value of the test.  The value is a float if `ddof` and the
		    return value `chisq` are scalars.
		
		See Also
		--------
		power_divergence
		mstats.chisquare
		
		Notes
		-----
		This test is invalid when the observed or expected frequencies in each
		category are too small.  A typical rule is that all of the observed
		and expected frequencies should be at least 5.
		
		The default degrees of freedom, k-1, are for the case when no parameters
		of the distribution are estimated. If p parameters are estimated by
		efficient maximum likelihood then the correct degrees of freedom are
		k-1-p. If the parameters are estimated in a different way, then the
		dof can be between k-1-p and k-1. However, it is also possible that
		the asymptotic distribution is not a chisquare, in which case this
		test is not appropriate.
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 8. http://faculty.vassar.edu/lowry/ch8pt1.html
		.. [2] "Chi-squared test", http://en.wikipedia.org/wiki/Chi-squared_test
		
		Examples
		--------
		When just `f_obs` is given, it is assumed that the expected frequencies
		are uniform and given by the mean of the observed frequencies.
		
		>>> from scipy.stats import chisquare
		>>> chisquare([16, 18, 16, 14, 12, 12])
		(2.0, 0.84914503608460956)
		
		With `f_exp` the expected frequencies can be given.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], f_exp=[16, 16, 16, 16, 16, 8])
		(3.5, 0.62338762774958223)
		
		When `f_obs` is 2-D, by default the test is applied to each column.
		
		>>> obs = np.array([[16, 18, 16, 14, 12, 12], [32, 24, 16, 28, 20, 24]]).T
		>>> obs.shape
		(6, 2)
		>>> chisquare(obs)
		(array([ 2.        ,  6.66666667]), array([ 0.84914504,  0.24663415]))
		
		By setting ``axis=None``, the test is applied to all data in the array,
		which is equivalent to applying the test to the flattened array.
		
		>>> chisquare(obs, axis=None)
		(23.31034482758621, 0.015975692534127565)
		>>> chisquare(obs.ravel())
		(23.31034482758621, 0.015975692534127565)
		
		`ddof` is the change to make to the default degrees of freedom.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], ddof=1)
		(2.0, 0.73575888234288467)
		
		The calculation of the p-values is done by broadcasting the
		chi-squared statistic with `ddof`.
		
		>>> chisquare([16, 18, 16, 14, 12, 12], ddof=[0,1,2])
		(2.0, array([ 0.84914504,  0.73575888,  0.5724067 ]))
		
		`f_obs` and `f_exp` are also broadcast.  In the following, `f_obs` has
		shape (6,) and `f_exp` has shape (2, 6), so the result of broadcasting
		`f_obs` and `f_exp` has shape (2, 6).  To compute the desired chi-squared
		statistics, we use ``axis=1``:
		
		>>> chisquare([16, 18, 16, 14, 12, 12],
		...           f_exp=[[16, 16, 16, 16, 16, 8], [8, 20, 20, 16, 12, 12]],
		...           axis=1)
		(array([ 3.5 ,  9.25]), array([ 0.62338763,  0.09949846]))
	**/
	static public function chisquare(f_obs:Dynamic, ?f_exp:Dynamic, ?ddof:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Methods for combining the p-values of independent tests bearing upon the
		same hypothesis.
		
		Parameters
		----------
		pvalues : array_like, 1-D
		    Array of p-values assumed to come from independent tests.
		method : {'fisher', 'stouffer'}, optional
		    Name of method to use to combine p-values. The following methods are
		    available:
		
		    - "fisher": Fisher's method (Fisher's combined probability test),
		      the default.
		    - "stouffer": Stouffer's Z-score method.
		weights : array_like, 1-D, optional
		    Optional array of weights used only for Stouffer's Z-score method.
		
		Returns
		-------
		statistic: float
		    The statistic calculated by the specified method:
		    - "fisher": The chi-squared statistic
		    - "stouffer": The Z-score
		pval: float
		    The combined p-value.
		
		Notes
		-----
		Fisher's method (also known as Fisher's combined probability test) [1]_ uses
		a chi-squared statistic to compute a combined p-value. The closely related
		Stouffer's Z-score method [2]_ uses Z-scores rather than p-values. The
		advantage of Stouffer's method is that it is straightforward to introduce
		weights, which can make Stouffer's method more powerful than Fisher's
		method when the p-values are from studies of different size [3]_ [4]_.
		
		Fisher's method may be extended to combine p-values from dependent tests
		[5]_. Extensions such as Brown's method and Kost's method are not currently
		implemented.
		
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Fisher%27s_method
		.. [2] http://en.wikipedia.org/wiki/Fisher's_method#Relation_to_Stouffer.27s_Z-score_method
		.. [3] Whitlock, M. C. "Combining probability from independent tests: the
		       weighted Z-method is superior to Fisher's approach." Journal of
		       Evolutionary Biology 18, no. 5 (2005): 1368-1373.
		.. [4] Zaykin, Dmitri V. "Optimally weighted Z-test is a powerful method
		       for combining probabilities in meta-analysis." Journal of
		       Evolutionary Biology 24, no. 8 (2011): 1836-1841.
		.. [5] https://en.wikipedia.org/wiki/Extensions_of_Fisher%27s_method
	**/
	static public function combine_pvalues(pvalues:Dynamic, ?method:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Return a cumulative frequency histogram, using the histogram function.
		
		A cumulative histogram is a mapping that counts the cumulative number of
		observations in all of the bins up to the specified bin.
		
		Parameters
		----------
		a : array_like
		    Input array.
		numbins : int, optional
		    The number of bins to use for the histogram. Default is 10.
		defaultreallimits : tuple (lower, upper), optional
		    The lower and upper values for the range of the histogram.
		    If no value is given, a range slightly larger than the range of the
		    values in `a` is used. Specifically ``(a.min() - s, a.max() + s)``,
		    where ``s = (1/2)(a.max() - a.min()) / (numbins - 1)``.
		weights : array_like, optional
		    The weights for each value in `a`. Default is None, which gives each
		    value a weight of 1.0
		
		Returns
		-------
		cumcount : ndarray
		    Binned values of cumulative frequency.
		lowerlimit : float
		    Lower real limit
		binsize : float
		    Width of each bin.
		extrapoints : int
		    Extra points.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		>>> x = [1, 4, 2, 1, 3, 1]
		>>> res = stats.cumfreq(x, numbins=4, defaultreallimits=(1.5, 5))
		>>> res.cumcount
		array([ 1.,  2.,  3.,  3.])
		>>> res.extrapoints
		3
		
		Create a normal distribution with 1000 random values
		
		>>> rng = np.random.RandomState(seed=12345)
		>>> samples = stats.norm.rvs(size=1000, random_state=rng)
		
		Calculate cumulative frequencies
		
		>>> res = stats.cumfreq(samples, numbins=25)
		
		Calculate space of values for x
		
		>>> x = res.lowerlimit + np.linspace(0, res.binsize*res.cumcount.size,
		...                                  res.cumcount.size)
		
		Plot histogram and cumulative histogram
		
		>>> fig = plt.figure(figsize=(10, 4))
		>>> ax1 = fig.add_subplot(1, 2, 1)
		>>> ax2 = fig.add_subplot(1, 2, 2)
		>>> ax1.hist(samples, bins=25)
		>>> ax1.set_title('Histogram')
		>>> ax2.bar(x, res.cumcount, width=res.binsize)
		>>> ax2.set_title('Cumulative histogram')
		>>> ax2.set_xlim([x.min(), x.max()])
		
		>>> plt.show()
	**/
	static public function cumfreq(a:Dynamic, ?numbins:Dynamic, ?defaultreallimits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Compute several descriptive statistics of the passed array.
		
		Parameters
		----------
		a : array_like
		   Input data.
		axis : int or None, optional
		   Axis along which statistics are calculated. Default is 0.
		   If None, compute over the whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom (only for variance).  Default is 1.
		bias : bool, optional
		    If False, then the skewness and kurtosis calculations are corrected for
		    statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		nobs : int or ndarray of ints
		   Number of observations (length of data along `axis`).
		   When 'omit' is chosen as nan_policy, each column is counted separately.
		minmax: tuple of ndarrays or floats
		   Minimum and maximum value of data array.
		mean : ndarray or float
		   Arithmetic mean of data along axis.
		variance : ndarray or float
		   Unbiased variance of the data along axis, denominator is number of
		   observations minus one.
		skewness : ndarray or float
		   Skewness, based on moment calculations with denominator equal to
		   the number of observations, i.e. no degrees of freedom correction.
		kurtosis : ndarray or float
		   Kurtosis (Fisher).  The kurtosis is normalized so that it is
		   zero for the normal distribution.  No degrees of freedom are used.
		
		See Also
		--------
		skew, kurtosis
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(10)
		>>> stats.describe(a)
		DescribeResult(nobs=10, minmax=(0, 9), mean=4.5, variance=9.166666666666666,
		               skewness=0.0, kurtosis=-1.2242424242424244)
		>>> b = [[1, 2], [3, 4]]
		>>> stats.describe(b)
		DescribeResult(nobs=2, minmax=(array([1, 2]), array([3, 4])),
		               mean=array([2., 3.]), variance=array([2., 2.]),
		               skewness=array([0., 0.]), kurtosis=array([-2., -2.]))
	**/
	static public function describe(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the energy distance between two 1D distributions.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		u_values, v_values : array_like
		    Values observed in the (empirical) distribution.
		u_weights, v_weights : array_like, optional
		    Weight for each value. If unspecified, each value is assigned the same
		    weight.
		    `u_weights` (resp. `v_weights`) must have the same length as
		    `u_values` (resp. `v_values`). If the weight sum differs from 1, it
		    must still be positive and finite so that the weights can be normalized
		    to sum to 1.
		
		Returns
		-------
		distance : float
		    The computed distance between the distributions.
		
		Notes
		-----
		The energy distance between two distributions :math:`u` and :math:`v`, whose
		respective CDFs are :math:`U` and :math:`V`, equals to:
		
		.. math::
		
		    D(u, v) = \left( 2\mathbb E|X - Y| - \mathbb E|X - X'| -
		    \mathbb E|Y - Y'| \right)^{1/2}
		
		where :math:`X` and :math:`X'` (resp. :math:`Y` and :math:`Y'`) are
		independent random variables whose probability distribution is :math:`u`
		(resp. :math:`v`).
		
		As shown in [2]_, for one-dimensional real-valued variables, the energy
		distance is linked to the non-distribution-free version of the Cramer-von
		Mises distance:
		
		.. math::
		
		    D(u, v) = \sqrt{2} l_2(u, v) = \left( 2 \int_{-\infty}^{+\infty} (U-V)^2
		    \right)^{1/2}
		
		Note that the common Cramer-von Mises criterion uses the distribution-free
		version of the distance. See [2]_ (section 2), for more details about both
		versions of the distance.
		
		The input distributions can be empirical, therefore coming from samples
		whose values are effectively inputs of the function, or they can be seen as
		generalized functions, in which case they are weighted sums of Dirac delta
		functions located at the specified values.
		
		References
		----------
		.. [1] "Energy distance", https://en.wikipedia.org/wiki/Energy_distance
		.. [2] Szekely "E-statistics: The energy of statistical samples." Bowling
		       Green State University, Department of Mathematics and Statistics,
		       Technical Report 02-16 (2002).
		.. [3] Rizzo, Szekely "Energy distance." Wiley Interdisciplinary Reviews:
		       Computational Statistics, 8(1):27-38 (2015).
		.. [4] Bellemare, Danihelka, Dabney, Mohamed, Lakshminarayanan, Hoyer,
		       Munos "The Cramer Distance as a Solution to Biased Wasserstein
		       Gradients" (2017). :arXiv:`1705.10743`.
		
		Examples
		--------
		>>> from scipy.stats import energy_distance
		>>> energy_distance([0], [2])
		2.0000000000000004
		>>> energy_distance([0, 8], [0, 8], [3, 1], [2, 2])
		1.0000000000000002
		>>> energy_distance([0.7, 7.4, 2.4, 6.8], [1.4, 8. ],
		...                 [2.1, 4.2, 7.4, 8. ], [7.6, 8.8])
		0.88003340976158217
	**/
	static public function energy_distance(u_values:Dynamic, v_values:Dynamic, ?u_weights:Dynamic, ?v_weights:Dynamic):Float;
	/**
		Performs a 1-way ANOVA.
		
		The one-way ANOVA tests the null hypothesis that two or more groups have
		the same population mean.  The test is applied to samples from two or
		more groups, possibly with differing sizes.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		    The sample measurements for each group.
		
		Returns
		-------
		statistic : float
		    The computed F-value of the test.
		pvalue : float
		    The associated p-value from the F-distribution.
		
		Notes
		-----
		The ANOVA test has important assumptions that must be satisfied in order
		for the associated p-value to be valid.
		
		1. The samples are independent.
		2. Each sample is from a normally distributed population.
		3. The population standard deviations of the groups are all equal.  This
		   property is known as homoscedasticity.
		
		If these assumptions are not true for a given set of data, it may still be
		possible to use the Kruskal-Wallis H-test (`scipy.stats.kruskal`) although
		with some loss of power.
		
		The algorithm is from Heiman[2], pp.394-7.
		
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 14.
		       http://faculty.vassar.edu/lowry/ch14pt1.html
		
		.. [2] Heiman, G.W.  Research Methods in Statistics. 2002.
		
		.. [3] McDonald, G. H. "Handbook of Biological Statistics", One-way ANOVA.
		       http://www.biostathandbook.com/onewayanova.html
		
		Examples
		--------
		>>> import scipy.stats as stats
		
		[3]_ Here are some data on a shell measurement (the length of the anterior
		adductor muscle scar, standardized by dividing by length) in the mussel
		Mytilus trossulus from five locations: Tillamook, Oregon; Newport, Oregon;
		Petersburg, Alaska; Magadan, Russia; and Tvarminne, Finland, taken from a
		much larger data set used in McDonald et al. (1991).
		
		>>> tillamook = [0.0571, 0.0813, 0.0831, 0.0976, 0.0817, 0.0859, 0.0735,
		...              0.0659, 0.0923, 0.0836]
		>>> newport = [0.0873, 0.0662, 0.0672, 0.0819, 0.0749, 0.0649, 0.0835,
		...            0.0725]
		>>> petersburg = [0.0974, 0.1352, 0.0817, 0.1016, 0.0968, 0.1064, 0.105]
		>>> magadan = [0.1033, 0.0915, 0.0781, 0.0685, 0.0677, 0.0697, 0.0764,
		...            0.0689]
		>>> tvarminne = [0.0703, 0.1026, 0.0956, 0.0973, 0.1039, 0.1045]
		>>> stats.f_oneway(tillamook, newport, petersburg, magadan, tvarminne)
		(7.1210194716424473, 0.00028122423145345439)
	**/
	static public function f_oneway(?args:python.VarArgs<Dynamic>):Float;
	/**
		Find repeats and repeat counts.
		
		Parameters
		----------
		arr : array_like
		    Input array. This is cast to float64.
		
		Returns
		-------
		values : ndarray
		    The unique values from the (flattened) input that are repeated.
		
		counts : ndarray
		    Number of times the corresponding 'value' is repeated.
		
		Notes
		-----
		In numpy >= 1.9 `numpy.unique` provides similar functionality. The main
		difference is that `find_repeats` only returns repeated values.
		
		Examples
		--------
		>>> from scipy import stats
		>>> stats.find_repeats([2, 1, 2, 3, 2, 2, 5])
		RepeatedResults(values=array([2.]), counts=array([4]))
		
		>>> stats.find_repeats([[10, 20, 1, 2], [5, 5, 4, 4]])
		RepeatedResults(values=array([4.,  5.]), counts=array([2, 2]))
	**/
	static public function find_repeats(arr:Dynamic):Dynamic;
	/**
		Performs a Fisher exact test on a 2x2 contingency table.
		
		Parameters
		----------
		table : array_like of ints
		    A 2x2 contingency table.  Elements should be non-negative integers.
		alternative : {'two-sided', 'less', 'greater'}, optional
		    Which alternative hypothesis to the null hypothesis the test uses.
		    Default is 'two-sided'.
		
		Returns
		-------
		oddsratio : float
		    This is prior odds ratio and not a posterior estimate.
		p_value : float
		    P-value, the probability of obtaining a distribution at least as
		    extreme as the one that was actually observed, assuming that the
		    null hypothesis is true.
		
		See Also
		--------
		chi2_contingency : Chi-square test of independence of variables in a
		    contingency table.
		
		Notes
		-----
		The calculated odds ratio is different from the one R uses. This scipy
		implementation returns the (more common) "unconditional Maximum
		Likelihood Estimate", while R uses the "conditional Maximum Likelihood
		Estimate".
		
		For tables with large numbers, the (inexact) chi-square test implemented
		in the function `chi2_contingency` can also be used.
		
		Examples
		--------
		Say we spend a few days counting whales and sharks in the Atlantic and
		Indian oceans. In the Atlantic ocean we find 8 whales and 1 shark, in the
		Indian ocean 2 whales and 5 sharks. Then our contingency table is::
		
		            Atlantic  Indian
		    whales     8        2
		    sharks     1        5
		
		We use this table to find the p-value:
		
		>>> import scipy.stats as stats
		>>> oddsratio, pvalue = stats.fisher_exact([[8, 2], [1, 5]])
		>>> pvalue
		0.0349...
		
		The probability that we would observe this or an even more imbalanced ratio
		by chance is about 3.5%.  A commonly used significance level is 5%--if we
		adopt that, we can therefore conclude that our observed imbalance is
		statistically significant; whales prefer the Atlantic while sharks prefer
		the Indian ocean.
	**/
	static public function fisher_exact(table:Dynamic, ?alternative:Dynamic):Float;
	/**
		Compute the Friedman test for repeated measurements
		
		The Friedman test tests the null hypothesis that repeated measurements of
		the same individuals have the same distribution.  It is often used
		to test for consistency among measurements obtained in different ways.
		For example, if two measurement techniques are used on the same set of
		individuals, the Friedman test can be used to determine if the two
		measurement techniques are consistent.
		
		Parameters
		----------
		measurements1, measurements2, measurements3... : array_like
		    Arrays of measurements.  All of the arrays must have the same number
		    of elements.  At least 3 sets of measurements must be given.
		
		Returns
		-------
		statistic : float
		    the test statistic, correcting for ties
		pvalue : float
		    the associated p-value assuming that the test statistic has a chi
		    squared distribution
		
		Notes
		-----
		Due to the assumption that the test statistic has a chi squared
		distribution, the p-value is only reliable for n > 10 and more than
		6 repeated measurements.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Friedman_test
	**/
	static public function friedmanchisquare(?args:python.VarArgs<Dynamic>):Float;
	/**
		Compute the geometric mean along the specified axis.
		
		Return the geometric average of the array elements.
		That is:  n-th root of (x1 * x2 * ... * xn)
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the geometric mean is computed. Default is 0.
		    If None, compute over the whole array `a`.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed. If dtype is not specified, it defaults to the
		    dtype of a, unless a has an integer dtype with a precision less than
		    that of the default platform integer. In that case, the default
		    platform integer is used.
		
		Returns
		-------
		gmean : ndarray
		    see dtype parameter above
		
		See Also
		--------
		numpy.mean : Arithmetic average
		numpy.average : Weighted average
		hmean : Harmonic mean
		
		Notes
		-----
		The geometric average is computed over a single dimension of the input
		array, axis=0 by default, or all values in the array if axis=None.
		float64 intermediate and return values are used for integer inputs.
		
		Use masked arrays to ignore any non-finite values in the input or that
		arise in the calculations such as Not a Number and infinity because masked
		arrays automatically mask any non-finite values.
		
		Examples
		--------
		>>> from scipy.stats import gmean
		>>> gmean([1, 4])
		2.0
		>>> gmean([1, 2, 3, 4, 5, 6, 7])
		3.3800151591412964
	**/
	static public function gmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Calculate the harmonic mean along the specified axis.
		
		That is:  n / (1/x1 + 1/x2 + ... + 1/xn)
		
		Parameters
		----------
		a : array_like
		    Input array, masked array or object that can be converted to an array.
		axis : int or None, optional
		    Axis along which the harmonic mean is computed. Default is 0.
		    If None, compute over the whole array `a`.
		dtype : dtype, optional
		    Type of the returned array and of the accumulator in which the
		    elements are summed. If `dtype` is not specified, it defaults to the
		    dtype of `a`, unless `a` has an integer `dtype` with a precision less
		    than that of the default platform integer. In that case, the default
		    platform integer is used.
		
		Returns
		-------
		hmean : ndarray
		    see `dtype` parameter above
		
		See Also
		--------
		numpy.mean : Arithmetic average
		numpy.average : Weighted average
		gmean : Geometric mean
		
		Notes
		-----
		The harmonic mean is computed over a single dimension of the input
		array, axis=0 by default, or all values in the array if axis=None.
		float64 intermediate and return values are used for integer inputs.
		
		Use masked arrays to ignore any non-finite values in the input or that
		arise in the calculations such as Not a Number and infinity.
		
		Examples
		--------
		>>> from scipy.stats import hmean
		>>> hmean([1, 4])
		1.6000000000000001
		>>> hmean([1, 2, 3, 4, 5, 6, 7])
		2.6997245179063363
	**/
	static public function hmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Compute the interquartile range of the data along the specified axis.
		
		The interquartile range (IQR) is the difference between the 75th and
		25th percentile of the data. It is a measure of the dispersion
		similar to standard deviation or variance, but is much more robust
		against outliers [2]_.
		
		The ``rng`` parameter allows this function to compute other
		percentile ranges than the actual IQR. For example, setting
		``rng=(0, 100)`` is equivalent to `numpy.ptp`.
		
		The IQR of an empty array is `np.nan`.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		x : array_like
		    Input array or object that can be converted to an array.
		axis : int or sequence of int, optional
		    Axis along which the range is computed. The default is to
		    compute the IQR for the entire array.
		rng : Two-element sequence containing floats in range of [0,100] optional
		    Percentiles over which to compute the range. Each must be
		    between 0 and 100, inclusive. The default is the true IQR:
		    `(25, 75)`. The order of the elements is not important.
		scale : scalar or str, optional
		    The numerical value of scale will be divided out of the final
		    result. The following string values are recognized:
		
		      'raw' : No scaling, just return the raw IQR.
		      'normal' : Scale by :math:`2 \sqrt{2} erf^{-1}(\frac{1}{2}) \approx 1.349`.
		
		    The default is 'raw'. Array-like scale is also allowed, as long
		    as it broadcasts correctly to the output such that
		    ``out / scale`` is a valid operation. The output dimensions
		    depend on the input array, `x`, the `axis` argument, and the
		    `keepdims` flag.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate'
		    returns nan, 'raise' throws an error, 'omit' performs the
		    calculations ignoring nan values. Default is 'propagate'.
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}, optional
		    Specifies the interpolation method to use when the percentile
		    boundaries lie between two data points `i` and `j`:
		
		      * 'linear' : `i + (j - i) * fraction`, where `fraction` is the
		          fractional part of the index surrounded by `i` and `j`.
		      * 'lower' : `i`.
		      * 'higher' : `j`.
		      * 'nearest' : `i` or `j` whichever is nearest.
		      * 'midpoint' : `(i + j) / 2`.
		
		    Default is 'linear'.
		keepdims : bool, optional
		    If this is set to `True`, the reduced axes are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the original array `x`.
		
		Returns
		-------
		iqr : scalar or ndarray
		    If ``axis=None``, a scalar is returned. If the input contains
		    integers or floats of smaller precision than ``np.float64``, then the
		    output data-type is ``np.float64``. Otherwise, the output data-type is
		    the same as that of the input.
		
		See Also
		--------
		numpy.std, numpy.var
		
		Examples
		--------
		>>> from scipy.stats import iqr
		>>> x = np.array([[10, 7, 4], [3, 2, 1]])
		>>> x
		array([[10,  7,  4],
		       [ 3,  2,  1]])
		>>> iqr(x)
		4.0
		>>> iqr(x, axis=0)
		array([ 3.5,  2.5,  1.5])
		>>> iqr(x, axis=1)
		array([ 3.,  1.])
		>>> iqr(x, axis=1, keepdims=True)
		array([[ 3.],
		       [ 1.]])
		
		Notes
		-----
		This function is heavily dependent on the version of `numpy` that is
		installed. Versions greater than 1.11.0b3 are highly recommended, as they
		include a number of enhancements and fixes to `numpy.percentile` and
		`numpy.nanpercentile` that affect the operation of this function. The
		following modifications apply:
		
		Below 1.10.0 : `nan_policy` is poorly defined.
		    The default behavior of `numpy.percentile` is used for 'propagate'. This
		    is a hybrid of 'omit' and 'propagate' that mostly yields a skewed
		    version of 'omit' since NaNs are sorted to the end of the data. A
		    warning is raised if there are NaNs in the data.
		Below 1.9.0: `numpy.nanpercentile` does not exist.
		    This means that `numpy.percentile` is used regardless of `nan_policy`
		    and a warning is issued. See previous item for a description of the
		    behavior.
		Below 1.9.0: `keepdims` and `interpolation` are not supported.
		    The keywords get ignored with a warning if supplied with non-default
		    values. However, multiple axes are still supported.
		
		References
		----------
		.. [1] "Interquartile range" https://en.wikipedia.org/wiki/Interquartile_range
		.. [2] "Robust measures of scale" https://en.wikipedia.org/wiki/Robust_measures_of_scale
		.. [3] "Quantile" https://en.wikipedia.org/wiki/Quantile
	**/
	static public function iqr(x:Dynamic, ?axis:Dynamic, ?rng:Dynamic, ?scale:Dynamic, ?nan_policy:Dynamic, ?interpolation:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		`itemfreq` is deprecated!
		`itemfreq` is deprecated and will be removed in a future version. Use instead `np.unique(..., return_counts=True)`
		
		
		    Return a 2-D array of item frequencies.
		
		    Parameters
		    ----------
		    a : (N,) array_like
		        Input array.
		
		    Returns
		    -------
		    itemfreq : (K, 2) ndarray
		        A 2-D frequency table.  Column 1 contains sorted, unique values from
		        `a`, column 2 contains their respective counts.
		
		    Examples
		    --------
		    >>> from scipy import stats
		    >>> a = np.array([1, 1, 5, 0, 1, 2, 2, 0, 1, 4])
		    >>> stats.itemfreq(a)
		    array([[ 0.,  2.],
		           [ 1.,  4.],
		           [ 2.,  2.],
		           [ 4.,  1.],
		           [ 5.,  1.]])
		    >>> np.bincount(a)
		    array([2, 4, 2, 0, 1, 1])
		
		    >>> stats.itemfreq(a/10.)
		    array([[ 0. ,  2. ],
		           [ 0.1,  4. ],
		           [ 0.2,  2. ],
		           [ 0.4,  1. ],
		           [ 0.5,  1. ]])
		
		    
	**/
	static public function itemfreq(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the Jarque-Bera goodness of fit test on sample data.
		
		The Jarque-Bera test tests whether the sample data has the skewness and
		kurtosis matching a normal distribution.
		
		Note that this test only works for a large enough number of data samples
		(>2000) as the test statistic asymptotically has a Chi-squared distribution
		with 2 degrees of freedom.
		
		Parameters
		----------
		x : array_like
		    Observations of a random variable.
		
		Returns
		-------
		jb_value : float
		    The test statistic.
		p : float
		    The p-value for the hypothesis test.
		
		References
		----------
		.. [1] Jarque, C. and Bera, A. (1980) "Efficient tests for normality,
		       homoscedasticity and serial independence of regression residuals",
		       6 Econometric Letters 255-259.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(987654321)
		>>> x = np.random.normal(0, 1, 100000)
		>>> y = np.random.rayleigh(1, 100000)
		>>> stats.jarque_bera(x)
		(4.7165707989581342, 0.09458225503041906)
		>>> stats.jarque_bera(y)
		(6713.7098548143422, 0.0)
	**/
	static public function jarque_bera(x:Dynamic):Float;
	/**
		Calculate Kendall's tau, a correlation measure for ordinal data.
		
		Kendall's tau is a measure of the correspondence between two rankings.
		Values close to 1 indicate strong agreement, values close to -1 indicate
		strong disagreement.  This is the 1945 "tau-b" version of Kendall's
		tau [2]_, which can account for ties and which reduces to the 1938 "tau-a"
		version [1]_ in absence of ties.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of rankings, of the same shape. If arrays are not 1-D, they will
		    be flattened to 1-D.
		initial_lexsort : bool, optional
		    Unused (deprecated).
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'. Note that if the input contains nan
		    'omit' delegates to mstats_basic.kendalltau(), which has a different
		    implementation.
		
		Returns
		-------
		correlation : float
		   The tau statistic.
		pvalue : float
		   The two-sided p-value for a hypothesis test whose null hypothesis is
		   an absence of association, tau = 0.
		
		See also
		--------
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		theilslopes : Computes the Theil-Sen estimator for a set of points (x, y).
		weightedtau : Computes a weighted version of Kendall's tau.
		
		Notes
		-----
		The definition of Kendall's tau that is used is [2]_::
		
		  tau = (P - Q) / sqrt((P + Q + T) * (P + Q + U))
		
		where P is the number of concordant pairs, Q the number of discordant
		pairs, T the number of ties only in `x`, and U the number of ties only in
		`y`.  If a tie occurs for the same pair in both `x` and `y`, it is not
		added to either T or U.
		
		References
		----------
		.. [1] Maurice G. Kendall, "A New Measure of Rank Correlation", Biometrika
		       Vol. 30, No. 1/2, pp. 81-93, 1938.
		.. [2] Maurice G. Kendall, "The treatment of ties in ranking problems",
		       Biometrika Vol. 33, No. 3, pp. 239-251. 1945.
		.. [3] Gottfried E. Noether, "Elements of Nonparametric Statistics", John
		       Wiley & Sons, 1967.
		.. [4] Peter M. Fenwick, "A new data structure for cumulative frequency
		       tables", Software: Practice and Experience, Vol. 24, No. 3,
		       pp. 327-336, 1994.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x1 = [12, 2, 1, 12, 2]
		>>> x2 = [1, 4, 7, 1, 0]
		>>> tau, p_value = stats.kendalltau(x1, x2)
		>>> tau
		-0.47140452079103173
		>>> p_value
		0.2827454599327748
	**/
	static public function kendalltau(x:Dynamic, y:Dynamic, ?initial_lexsort:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Compute the Kruskal-Wallis H-test for independent samples
		
		The Kruskal-Wallis H-test tests the null hypothesis that the population
		median of all of the groups are equal.  It is a non-parametric version of
		ANOVA.  The test works on 2 or more independent samples, which may have
		different sizes.  Note that rejecting the null hypothesis does not
		indicate which of the groups differs.  Post-hoc comparisons between
		groups are required to determine which groups are different.
		
		Parameters
		----------
		sample1, sample2, ... : array_like
		   Two or more arrays with the sample measurements can be given as
		   arguments.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float
		   The Kruskal-Wallis H statistic, corrected for ties
		pvalue : float
		   The p-value for the test using the assumption that H has a chi
		   square distribution
		
		See Also
		--------
		f_oneway : 1-way ANOVA
		mannwhitneyu : Mann-Whitney rank test on two samples.
		friedmanchisquare : Friedman test for repeated measurements
		
		Notes
		-----
		Due to the assumption that H has a chi square distribution, the number
		of samples in each group must not be too small.  A typical rule is
		that each sample must have at least 5 measurements.
		
		References
		----------
		.. [1] W. H. Kruskal & W. W. Wallis, "Use of Ranks in
		   One-Criterion Variance Analysis", Journal of the American Statistical
		   Association, Vol. 47, Issue 260, pp. 583-621, 1952.
		.. [2] http://en.wikipedia.org/wiki/Kruskal-Wallis_one-way_analysis_of_variance
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = [1, 3, 5, 7, 9]
		>>> y = [2, 4, 6, 8, 10]
		>>> stats.kruskal(x, y)
		KruskalResult(statistic=0.2727272727272734, pvalue=0.6015081344405895)
		
		>>> x = [1, 1, 1]
		>>> y = [2, 2, 2]
		>>> z = [2, 2]
		>>> stats.kruskal(x, y, z)
		KruskalResult(statistic=7.0, pvalue=0.0301973834223185)
	**/
	static public function kruskal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Float;
	/**
		Compute the Kolmogorov-Smirnov statistic on 2 samples.
		
		This is a two-sided test for the null hypothesis that 2 independent samples
		are drawn from the same continuous distribution.
		
		Parameters
		----------
		data1, data2 : sequence of 1-D ndarrays
		    two arrays of sample observations assumed to be drawn from a continuous
		    distribution, sample sizes can be different
		
		Returns
		-------
		statistic : float
		    KS statistic
		pvalue : float
		    two-tailed p-value
		
		Notes
		-----
		This tests whether 2 samples are drawn from the same distribution. Note
		that, like in the case of the one-sample K-S test, the distribution is
		assumed to be continuous.
		
		This is the two-sided test, one-sided tests are not implemented.
		The test uses the two-sided asymptotic Kolmogorov-Smirnov distribution.
		
		If the K-S statistic is small or the p-value is high, then we cannot
		reject the hypothesis that the distributions of the two samples
		are the same.
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678)  #fix random seed to get the same result
		>>> n1 = 200  # size of first sample
		>>> n2 = 300  # size of second sample
		
		For a different distribution, we can reject the null hypothesis since the
		pvalue is below 1%:
		
		>>> rvs1 = stats.norm.rvs(size=n1, loc=0., scale=1)
		>>> rvs2 = stats.norm.rvs(size=n2, loc=0.5, scale=1.5)
		>>> stats.ks_2samp(rvs1, rvs2)
		(0.20833333333333337, 4.6674975515806989e-005)
		
		For a slightly different distribution, we cannot reject the null hypothesis
		at a 10% or lower alpha since the p-value at 0.144 is higher than 10%
		
		>>> rvs3 = stats.norm.rvs(size=n2, loc=0.01, scale=1.0)
		>>> stats.ks_2samp(rvs1, rvs3)
		(0.10333333333333333, 0.14498781825751686)
		
		For an identical distribution, we cannot reject the null hypothesis since
		the p-value is high, 41%:
		
		>>> rvs4 = stats.norm.rvs(size=n2, loc=0.0, scale=1.0)
		>>> stats.ks_2samp(rvs1, rvs4)
		(0.07999999999999996, 0.41126949729859719)
	**/
	static public function ks_2samp(data1:Dynamic, data2:Dynamic):Float;
	/**
		Perform the Kolmogorov-Smirnov test for goodness of fit.
		
		This performs a test of the distribution G(x) of an observed
		random variable against a given distribution F(x). Under the null
		hypothesis the two distributions are identical, G(x)=F(x). The
		alternative hypothesis can be either 'two-sided' (default), 'less'
		or 'greater'. The KS test is only valid for continuous distributions.
		
		Parameters
		----------
		rvs : str, array or callable
		    If a string, it should be the name of a distribution in `scipy.stats`.
		    If an array, it should be a 1-D array of observations of random
		    variables.
		    If a callable, it should be a function to generate random variables;
		    it is required to have a keyword argument `size`.
		cdf : str or callable
		    If a string, it should be the name of a distribution in `scipy.stats`.
		    If `rvs` is a string then `cdf` can be False or the same as `rvs`.
		    If a callable, that callable is used to calculate the cdf.
		args : tuple, sequence, optional
		    Distribution parameters, used if `rvs` or `cdf` are strings.
		N : int, optional
		    Sample size if `rvs` is string or callable.  Default is 20.
		alternative : {'two-sided', 'less','greater'}, optional
		    Defines the alternative hypothesis (see explanation above).
		    Default is 'two-sided'.
		mode : 'approx' (default) or 'asymp', optional
		    Defines the distribution used for calculating the p-value.
		
		      - 'approx' : use approximation to exact distribution of test statistic
		      - 'asymp' : use asymptotic distribution of test statistic
		
		Returns
		-------
		statistic : float
		    KS test statistic, either D, D+ or D-.
		pvalue :  float
		    One-tailed or two-tailed p-value.
		
		Notes
		-----
		In the one-sided test, the alternative is that the empirical
		cumulative distribution function of the random variable is "less"
		or "greater" than the cumulative distribution function F(x) of the
		hypothesis, ``G(x)<=F(x)``, resp. ``G(x)>=F(x)``.
		
		Examples
		--------
		>>> from scipy import stats
		
		>>> x = np.linspace(-15, 15, 9)
		>>> stats.kstest(x, 'norm')
		(0.44435602715924361, 0.038850142705171065)
		
		>>> np.random.seed(987654321) # set random seed to get the same result
		>>> stats.kstest('norm', False, N=100)
		(0.058352892479417884, 0.88531190944151261)
		
		The above lines are equivalent to:
		
		>>> np.random.seed(987654321)
		>>> stats.kstest(stats.norm.rvs(size=100), 'norm')
		(0.058352892479417884, 0.88531190944151261)
		
		*Test against one-sided alternative hypothesis*
		
		Shift distribution to larger values, so that ``cdf_dgp(x) < norm.cdf(x)``:
		
		>>> np.random.seed(987654321)
		>>> x = stats.norm.rvs(loc=0.2, size=100)
		>>> stats.kstest(x,'norm', alternative = 'less')
		(0.12464329735846891, 0.040989164077641749)
		
		Reject equal distribution against alternative hypothesis: less
		
		>>> stats.kstest(x,'norm', alternative = 'greater')
		(0.0072115233216311081, 0.98531158590396395)
		
		Don't reject equal distribution against alternative hypothesis: greater
		
		>>> stats.kstest(x,'norm', mode='asymp')
		(0.12464329735846891, 0.08944488871182088)
		
		*Testing t distributed random variables against normal distribution*
		
		With 100 degrees of freedom the t distribution looks close to the normal
		distribution, and the K-S test does not reject the hypothesis that the
		sample came from the normal distribution:
		
		>>> np.random.seed(987654321)
		>>> stats.kstest(stats.t.rvs(100,size=100),'norm')
		(0.072018929165471257, 0.67630062862479168)
		
		With 3 degrees of freedom the t distribution looks sufficiently different
		from the normal distribution, that we can reject the hypothesis that the
		sample came from the normal distribution at the 10% level:
		
		>>> np.random.seed(987654321)
		>>> stats.kstest(stats.t.rvs(3,size=100),'norm')
		(0.131016895759829, 0.058826222555312224)
	**/
	static public function kstest(rvs:Dynamic, cdf:Dynamic, ?args:Dynamic, ?N:Dynamic, ?alternative:Dynamic, ?mode:Dynamic):Float;
	/**
		Compute the kurtosis (Fisher or Pearson) of a dataset.
		
		Kurtosis is the fourth central moment divided by the square of the
		variance. If Fisher's definition is used, then 3.0 is subtracted from
		the result to give 0.0 for a normal distribution.
		
		If bias is False then the kurtosis is calculated using k statistics to
		eliminate bias coming from biased moment estimators
		
		Use `kurtosistest` to see if result is close enough to normal.
		
		Parameters
		----------
		a : array
		    data for which the kurtosis is calculated
		axis : int or None, optional
		    Axis along which the kurtosis is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		fisher : bool, optional
		    If True, Fisher's definition is used (normal ==> 0.0). If False,
		    Pearson's definition is used (normal ==> 3.0).
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		kurtosis : array
		    The kurtosis of values along an axis. If all values are equal,
		    return -3 for Fisher's definition and 0 for Pearson's definition.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		
		Examples
		--------
		>>> from scipy.stats import kurtosis
		>>> kurtosis([1, 2, 3, 4, 5])
		-1.3
	**/
	static public function kurtosis(a:Dynamic, ?axis:Dynamic, ?fisher:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Array<Dynamic>;
	/**
		Test whether a dataset has normal kurtosis.
		
		This function tests the null hypothesis that the kurtosis
		of the population from which the sample was drawn is that
		of the normal distribution: ``kurtosis = 3(n-1)/(n+1)``.
		
		Parameters
		----------
		a : array
		    array of the sample data
		axis : int or None, optional
		   Axis along which to compute test. Default is 0. If None,
		   compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    The 2-sided p-value for the hypothesis test
		
		Notes
		-----
		Valid only for n>20.  The Z-score is set to 0 for bad entries.
		This function uses the method described in [1]_.
		
		References
		----------
		.. [1] see e.g. F. J. Anscombe, W. J. Glynn, "Distribution of the kurtosis
		   statistic b2 for normal samples", Biometrika, vol. 70, pp. 227-234, 1983.
		
		Examples
		--------
		>>> from scipy.stats import kurtosistest
		>>> kurtosistest(list(range(20)))
		KurtosistestResult(statistic=-1.7058104152122062, pvalue=0.08804338332528348)
		
		>>> np.random.seed(28041990)
		>>> s = np.random.normal(0, 1, 1000)
		>>> kurtosistest(s)
		KurtosistestResult(statistic=1.2317590987707365, pvalue=0.21803908613450895)
	**/
	static public function kurtosistest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Calculate a linear least-squares regression for two sets of measurements.
		
		Parameters
		----------
		x, y : array_like
		    Two sets of measurements.  Both arrays should have the same length.
		    If only x is given (and y=None), then it must be a two-dimensional
		    array where one dimension has length 2.  The two sets of measurements
		    are then found by splitting the array along the length-2 dimension.
		
		Returns
		-------
		slope : float
		    slope of the regression line
		intercept : float
		    intercept of the regression line
		rvalue : float
		    correlation coefficient
		pvalue : float
		    two-sided p-value for a hypothesis test whose null hypothesis is
		    that the slope is zero, using Wald Test with t-distribution of
		    the test statistic.
		stderr : float
		    Standard error of the estimated gradient.
		
		See also
		--------
		:func:`scipy.optimize.curve_fit` : Use non-linear
		 least squares to fit a function to data.
		:func:`scipy.optimize.leastsq` : Minimize the sum of
		 squares of a set of equations.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		>>> np.random.seed(12345678)
		>>> x = np.random.random(10)
		>>> y = np.random.random(10)
		>>> slope, intercept, r_value, p_value, std_err = stats.linregress(x, y)
		
		To get coefficient of determination (r_squared)
		
		>>> print("r-squared:", r_value**2)
		r-squared: 0.08040226853902833
		
		Plot the data along with the fitted line
		
		>>> plt.plot(x, y, 'o', label='original data')
		>>> plt.plot(x, intercept + slope*x, 'r', label='fitted line')
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function linregress(x:Dynamic, ?y:Dynamic):Float;
	/**
		Compute the Mann-Whitney rank test on samples x and y.
		
		Parameters
		----------
		x, y : array_like
		    Array of samples, should be one-dimensional.
		use_continuity : bool, optional
		        Whether a continuity correction (1/2.) should be taken into
		        account. Default is True.
		alternative : None (deprecated), 'less', 'two-sided', or 'greater'
		        Whether to get the p-value for the one-sided hypothesis ('less'
		        or 'greater') or for the two-sided hypothesis ('two-sided').
		        Defaults to None, which results in a p-value half the size of
		        the 'two-sided' p-value and a different U statistic. The
		        default behavior is not the same as using 'less' or 'greater':
		        it only exists for backward compatibility and is deprecated.
		
		Returns
		-------
		statistic : float
		    The Mann-Whitney U statistic, equal to min(U for x, U for y) if
		    `alternative` is equal to None (deprecated; exists for backward
		    compatibility), and U for y otherwise.
		pvalue : float
		    p-value assuming an asymptotic normal distribution. One-sided or
		    two-sided, depending on the choice of `alternative`.
		
		Notes
		-----
		Use only when the number of observation in each sample is > 20 and
		you have 2 independent samples of ranks. Mann-Whitney U is
		significant if the u-obtained is LESS THAN or equal to the critical
		value of U.
		
		This test corrects for ties and by default uses a continuity correction.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Mann-Whitney_U_test
		
		.. [2] H.B. Mann and D.R. Whitney, "On a Test of Whether one of Two Random
		       Variables is Stochastically Larger than the Other," The Annals of
		       Mathematical Statistics, vol. 18, no. 1, pp. 50-60, 1947.
	**/
	static public function mannwhitneyu(x:Dynamic, y:Dynamic, ?use_continuity:Dynamic, ?alternative:Dynamic):Float;
	/**
		Return an array of the modal (most common) value in the passed array.
		
		If there is more than one such value, only the smallest is returned.
		The bin-count for the modal bins is also returned.
		
		Parameters
		----------
		a : array_like
		    n-dimensional array of which to find mode(s).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		mode : ndarray
		    Array of modal values.
		count : ndarray
		    Array of counts for each mode.
		
		Examples
		--------
		>>> a = np.array([[6, 8, 3, 0],
		...               [3, 2, 1, 7],
		...               [8, 1, 8, 4],
		...               [5, 3, 0, 5],
		...               [4, 7, 5, 9]])
		>>> from scipy import stats
		>>> stats.mode(a)
		(array([[3, 1, 0, 0]]), array([[1, 1, 1, 1]]))
		
		To get mode of whole array, specify ``axis=None``:
		
		>>> stats.mode(a, axis=None)
		(array([3]), array([3]))
	**/
	static public function mode(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Calculate the nth moment about the mean for a sample.
		
		A moment is a specific quantitative measure of the shape of a set of
		points. It is often used to calculate coefficients of skewness and kurtosis
		due to its close relationship with them.
		
		
		Parameters
		----------
		a : array_like
		   data
		moment : int or array_like of ints, optional
		   order of central moment that is returned. Default is 1.
		axis : int or None, optional
		   Axis along which the central moment is computed. Default is 0.
		   If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		n-th central moment : ndarray or float
		   The appropriate moment along the given axis or over all values if axis
		   is None. The denominator for the moment calculation is the number of
		   observations, no degrees of freedom correction is done.
		
		See also
		--------
		kurtosis, skew, describe
		
		Notes
		-----
		The k-th central moment of a data sample is:
		
		.. math::
		
		    m_k = \frac{1}{n} \sum_{i = 1}^n (x_i - \bar{x})^k
		
		Where n is the number of samples and x-bar is the mean. This function uses
		exponentiation by squares [1]_ for efficiency.
		
		References
		----------
		.. [1] http://eli.thegreenplace.net/2009/03/21/efficient-integer-exponentiation-algorithms
		
		Examples
		--------
		>>> from scipy.stats import moment
		>>> moment([1, 2, 3, 4, 5], moment=1)
		0.0
		>>> moment([1, 2, 3, 4, 5], moment=2)
		2.0
	**/
	static public function moment(a:Dynamic, ?moment:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Test whether a sample differs from a normal distribution.
		
		This function tests the null hypothesis that a sample comes
		from a normal distribution.  It is based on D'Agostino and
		Pearson's [1]_, [2]_ test that combines skew and kurtosis to
		produce an omnibus test of normality.
		
		
		Parameters
		----------
		a : array_like
		    The array containing the sample to be tested.
		axis : int or None, optional
		    Axis along which to compute test. Default is 0. If None,
		    compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float or array
		    ``s^2 + k^2``, where ``s`` is the z-score returned by `skewtest` and
		    ``k`` is the z-score returned by `kurtosistest`.
		pvalue : float or array
		   A 2-sided chi squared probability for the hypothesis test.
		
		References
		----------
		.. [1] D'Agostino, R. B. (1971), "An omnibus test of normality for
		       moderate and large sample size", Biometrika, 58, 341-348
		
		.. [2] D'Agostino, R. and Pearson, E. S. (1973), "Tests for departure from
		       normality", Biometrika, 60, 613-622
		
		Examples
		--------
		>>> from scipy import stats
		>>> pts = 1000
		>>> np.random.seed(28041990)
		>>> a = np.random.normal(0, 1, size=pts)
		>>> b = np.random.normal(2, 1, size=pts)
		>>> x = np.concatenate((a, b))
		>>> k2, p = stats.normaltest(x)
		>>> alpha = 1e-3
		>>> print("p = {:g}".format(p))
		p = 3.27207e-11
		>>> if p < alpha:  # null hypothesis: x comes from a normal distribution
		...     print("The null hypothesis can be rejected")
		... else:
		...     print("The null hypothesis cannot be rejected")
		The null hypothesis can be rejected
	**/
	static public function normaltest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the O'Brien transform on input data (any number of arrays).
		
		Used to test for homogeneity of variance prior to running one-way stats.
		Each array in ``*args`` is one level of a factor.
		If `f_oneway` is run on the transformed data and found significant,
		the variances are unequal.  From Maxwell and Delaney [1]_, p.112.
		
		Parameters
		----------
		args : tuple of array_like
		    Any number of arrays.
		
		Returns
		-------
		obrientransform : ndarray
		    Transformed data for use in an ANOVA.  The first dimension
		    of the result corresponds to the sequence of transformed
		    arrays.  If the arrays given are all 1-D of the same length,
		    the return value is a 2-D array; otherwise it is a 1-D array
		    of type object, with each element being an ndarray.
		
		References
		----------
		.. [1] S. E. Maxwell and H. D. Delaney, "Designing Experiments and
		       Analyzing Data: A Model Comparison Perspective", Wadsworth, 1990.
		
		Examples
		--------
		We'll test the following data sets for differences in their variance.
		
		>>> x = [10, 11, 13, 9, 7, 12, 12, 9, 10]
		>>> y = [13, 21, 5, 10, 8, 14, 10, 12, 7, 15]
		
		Apply the O'Brien transform to the data.
		
		>>> from scipy.stats import obrientransform
		>>> tx, ty = obrientransform(x, y)
		
		Use `scipy.stats.f_oneway` to apply a one-way ANOVA test to the
		transformed data.
		
		>>> from scipy.stats import f_oneway
		>>> F, p = f_oneway(tx, ty)
		>>> p
		0.1314139477040335
		
		If we require that ``p < 0.05`` for significance, we cannot conclude
		that the variances are different.
	**/
	static public function obrientransform(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Calculate a Pearson correlation coefficient and the p-value for testing
		non-correlation.
		
		The Pearson correlation coefficient measures the linear relationship
		between two datasets. Strictly speaking, Pearson's correlation requires
		that each dataset be normally distributed, and not necessarily zero-mean.
		Like other correlation coefficients, this one varies between -1 and +1
		with 0 implying no correlation. Correlations of -1 or +1 imply an exact
		linear relationship. Positive correlations imply that as x increases, so
		does y. Negative correlations imply that as x increases, y decreases.
		
		The p-value roughly indicates the probability of an uncorrelated system
		producing datasets that have a Pearson correlation at least as extreme
		as the one computed from these datasets. The p-values are not entirely
		reliable but are probably reasonable for datasets larger than 500 or so.
		
		Parameters
		----------
		x : (N,) array_like
		    Input
		y : (N,) array_like
		    Input
		
		Returns
		-------
		r : float
		    Pearson's correlation coefficient
		p-value : float
		    2-tailed p-value
		
		Notes
		-----
		
		The correlation coefficient is calculated as follows:
		
		.. math::
		
		    r_{pb} = \frac{\sum (x - m_x) (y - m_y)
		                   }{\sqrt{\sum (x - m_x)^2 (y - m_y)^2}}
		
		where :math:`m_x` is the mean of the vector :math:`x` and :math:`m_y` is
		the mean of the vector :math:`y`.
		
		
		References
		----------
		http://www.statsoft.com/textbook/glosp.html#Pearson%20Correlation
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.array([0, 0, 0, 1, 1, 1, 1])
		>>> b = np.arange(7)
		>>> stats.pearsonr(a, b)
		(0.8660254037844386, 0.011724811003954654)
		
		>>> stats.pearsonr([1,2,3,4,5], [5,6,7,8,7])
		(0.83205029433784372, 0.080509573298498519)
	**/
	static public function pearsonr(x:Dynamic, y:Dynamic):Float;
	/**
		The percentile rank of a score relative to a list of scores.
		
		A `percentileofscore` of, for example, 80% means that 80% of the
		scores in `a` are below the given score. In the case of gaps or
		ties, the exact definition depends on the optional keyword, `kind`.
		
		Parameters
		----------
		a : array_like
		    Array of scores to which `score` is compared.
		score : int or float
		    Score that is compared to the elements in `a`.
		kind : {'rank', 'weak', 'strict', 'mean'}, optional
		    This optional parameter specifies the interpretation of the
		    resulting score:
		
		    - "rank": Average percentage ranking of score.  In case of
		              multiple matches, average the percentage rankings of
		              all matching scores.
		    - "weak": This kind corresponds to the definition of a cumulative
		              distribution function.  A percentileofscore of 80%
		              means that 80% of values are less than or equal
		              to the provided score.
		    - "strict": Similar to "weak", except that only values that are
		                strictly less than the given score are counted.
		    - "mean": The average of the "weak" and "strict" scores, often used in
		              testing.  See
		
		              http://en.wikipedia.org/wiki/Percentile_rank
		
		Returns
		-------
		pcos : float
		    Percentile-position of score (0-100) relative to `a`.
		
		See Also
		--------
		numpy.percentile
		
		Examples
		--------
		Three-quarters of the given values lie below a given score:
		
		>>> from scipy import stats
		>>> stats.percentileofscore([1, 2, 3, 4], 3)
		75.0
		
		With multiple matches, note how the scores of the two matches, 0.6
		and 0.8 respectively, are averaged:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3)
		70.0
		
		Only 2/5 values are strictly less than 3:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='strict')
		40.0
		
		But 4/5 values are less than or equal to 3:
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='weak')
		80.0
		
		The average between the weak and the strict scores is
		
		>>> stats.percentileofscore([1, 2, 3, 3, 4], 3, kind='mean')
		60.0
	**/
	static public function percentileofscore(a:Dynamic, score:Dynamic, ?kind:Dynamic):Float;
	/**
		Calculate a point biserial correlation coefficient and its p-value.
		
		The point biserial correlation is used to measure the relationship
		between a binary variable, x, and a continuous variable, y. Like other
		correlation coefficients, this one varies between -1 and +1 with 0
		implying no correlation. Correlations of -1 or +1 imply a determinative
		relationship.
		
		This function uses a shortcut formula but produces the same result as
		`pearsonr`.
		
		Parameters
		----------
		x : array_like of bools
		    Input array.
		y : array_like
		    Input array.
		
		Returns
		-------
		correlation : float
		    R value
		pvalue : float
		    2-tailed p-value
		
		Notes
		-----
		`pointbiserialr` uses a t-test with ``n-1`` degrees of freedom.
		It is equivalent to `pearsonr.`
		
		The value of the point-biserial correlation can be calculated from:
		
		.. math::
		
		    r_{pb} = \frac{\overline{Y_{1}} -
		             \overline{Y_{0}}}{s_{y}}\sqrt{\frac{N_{1} N_{2}}{N (N - 1))}}
		
		Where :math:`Y_{0}` and :math:`Y_{1}` are means of the metric
		observations coded 0 and 1 respectively; :math:`N_{0}` and :math:`N_{1}`
		are number of observations coded 0 and 1 respectively; :math:`N` is the
		total number of observations and :math:`s_{y}` is the standard
		deviation of all the metric observations.
		
		A value of :math:`r_{pb}` that is significantly different from zero is
		completely equivalent to a significant difference in means between the two
		groups. Thus, an independent groups t Test with :math:`N-2` degrees of
		freedom may be used to test whether :math:`r_{pb}` is nonzero. The
		relation between the t-statistic for comparing two independent groups and
		:math:`r_{pb}` is given by:
		
		.. math::
		
		    t = \sqrt{N - 2}\frac{r_{pb}}{\sqrt{1 - r^{2}_{pb}}}
		
		References
		----------
		.. [1] J. Lev, "The Point Biserial Coefficient of Correlation", Ann. Math.
		       Statist., Vol. 20, no.1, pp. 125-126, 1949.
		
		.. [2] R.F. Tate, "Correlation Between a Discrete and a Continuous
		       Variable. Point-Biserial Correlation.", Ann. Math. Statist., Vol. 25,
		       np. 3, pp. 603-607, 1954.
		
		.. [3] http://onlinelibrary.wiley.com/doi/10.1002/9781118445112.stat06227/full
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.array([0, 0, 0, 1, 1, 1, 1])
		>>> b = np.arange(7)
		>>> stats.pointbiserialr(a, b)
		(0.8660254037844386, 0.011724811003954652)
		>>> stats.pearsonr(a, b)
		(0.86602540378443871, 0.011724811003954626)
		>>> np.corrcoef(a, b)
		array([[ 1.       ,  0.8660254],
		       [ 0.8660254,  1.       ]])
	**/
	static public function pointbiserialr(x:Dynamic, y:Dynamic):Float;
	/**
		Cressie-Read power divergence statistic and goodness of fit test.
		
		This function tests the null hypothesis that the categorical data
		has the given frequencies, using the Cressie-Read power divergence
		statistic.
		
		Parameters
		----------
		f_obs : array_like
		    Observed frequencies in each category.
		f_exp : array_like, optional
		    Expected frequencies in each category.  By default the categories are
		    assumed to be equally likely.
		ddof : int, optional
		    "Delta degrees of freedom": adjustment to the degrees of freedom
		    for the p-value.  The p-value is computed using a chi-squared
		    distribution with ``k - 1 - ddof`` degrees of freedom, where `k`
		    is the number of observed frequencies.  The default value of `ddof`
		    is 0.
		axis : int or None, optional
		    The axis of the broadcast result of `f_obs` and `f_exp` along which to
		    apply the test.  If axis is None, all values in `f_obs` are treated
		    as a single data set.  Default is 0.
		lambda_ : float or str, optional
		    `lambda_` gives the power in the Cressie-Read power divergence
		    statistic.  The default is 1.  For convenience, `lambda_` may be
		    assigned one of the following strings, in which case the
		    corresponding numerical value is used::
		
		        String              Value   Description
		        "pearson"             1     Pearson's chi-squared statistic.
		                                    In this case, the function is
		                                    equivalent to `stats.chisquare`.
		        "log-likelihood"      0     Log-likelihood ratio. Also known as
		                                    the G-test [3]_.
		        "freeman-tukey"      -1/2   Freeman-Tukey statistic.
		        "mod-log-likelihood" -1     Modified log-likelihood ratio.
		        "neyman"             -2     Neyman's statistic.
		        "cressie-read"        2/3   The power recommended in [5]_.
		
		Returns
		-------
		statistic : float or ndarray
		    The Cressie-Read power divergence test statistic.  The value is
		    a float if `axis` is None or if` `f_obs` and `f_exp` are 1-D.
		pvalue : float or ndarray
		    The p-value of the test.  The value is a float if `ddof` and the
		    return value `stat` are scalars.
		
		See Also
		--------
		chisquare
		
		Notes
		-----
		This test is invalid when the observed or expected frequencies in each
		category are too small.  A typical rule is that all of the observed
		and expected frequencies should be at least 5.
		
		When `lambda_` is less than zero, the formula for the statistic involves
		dividing by `f_obs`, so a warning or error may be generated if any value
		in `f_obs` is 0.
		
		Similarly, a warning or error may be generated if any value in `f_exp` is
		zero when `lambda_` >= 0.
		
		The default degrees of freedom, k-1, are for the case when no parameters
		of the distribution are estimated. If p parameters are estimated by
		efficient maximum likelihood then the correct degrees of freedom are
		k-1-p. If the parameters are estimated in a different way, then the
		dof can be between k-1-p and k-1. However, it is also possible that
		the asymptotic distribution is not a chisquare, in which case this
		test is not appropriate.
		
		This function handles masked arrays.  If an element of `f_obs` or `f_exp`
		is masked, then data at that position is ignored, and does not count
		towards the size of the data set.
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Lowry, Richard.  "Concepts and Applications of Inferential
		       Statistics". Chapter 8. http://faculty.vassar.edu/lowry/ch8pt1.html
		.. [2] "Chi-squared test", http://en.wikipedia.org/wiki/Chi-squared_test
		.. [3] "G-test", http://en.wikipedia.org/wiki/G-test
		.. [4] Sokal, R. R. and Rohlf, F. J. "Biometry: the principles and
		       practice of statistics in biological research", New York: Freeman
		       (1981)
		.. [5] Cressie, N. and Read, T. R. C., "Multinomial Goodness-of-Fit
		       Tests", J. Royal Stat. Soc. Series B, Vol. 46, No. 3 (1984),
		       pp. 440-464.
		
		Examples
		--------
		
		(See `chisquare` for more examples.)
		
		When just `f_obs` is given, it is assumed that the expected frequencies
		are uniform and given by the mean of the observed frequencies.  Here we
		perform a G-test (i.e. use the log-likelihood ratio statistic):
		
		>>> from scipy.stats import power_divergence
		>>> power_divergence([16, 18, 16, 14, 12, 12], lambda_='log-likelihood')
		(2.006573162632538, 0.84823476779463769)
		
		The expected frequencies can be given with the `f_exp` argument:
		
		>>> power_divergence([16, 18, 16, 14, 12, 12],
		...                  f_exp=[16, 16, 16, 16, 16, 8],
		...                  lambda_='log-likelihood')
		(3.3281031458963746, 0.6495419288047497)
		
		When `f_obs` is 2-D, by default the test is applied to each column.
		
		>>> obs = np.array([[16, 18, 16, 14, 12, 12], [32, 24, 16, 28, 20, 24]]).T
		>>> obs.shape
		(6, 2)
		>>> power_divergence(obs, lambda_="log-likelihood")
		(array([ 2.00657316,  6.77634498]), array([ 0.84823477,  0.23781225]))
		
		By setting ``axis=None``, the test is applied to all data in the array,
		which is equivalent to applying the test to the flattened array.
		
		>>> power_divergence(obs, axis=None)
		(23.31034482758621, 0.015975692534127565)
		>>> power_divergence(obs.ravel())
		(23.31034482758621, 0.015975692534127565)
		
		`ddof` is the change to make to the default degrees of freedom.
		
		>>> power_divergence([16, 18, 16, 14, 12, 12], ddof=1)
		(2.0, 0.73575888234288467)
		
		The calculation of the p-values is done by broadcasting the
		test statistic with `ddof`.
		
		>>> power_divergence([16, 18, 16, 14, 12, 12], ddof=[0,1,2])
		(2.0, array([ 0.84914504,  0.73575888,  0.5724067 ]))
		
		`f_obs` and `f_exp` are also broadcast.  In the following, `f_obs` has
		shape (6,) and `f_exp` has shape (2, 6), so the result of broadcasting
		`f_obs` and `f_exp` has shape (2, 6).  To compute the desired chi-squared
		statistics, we must use ``axis=1``:
		
		>>> power_divergence([16, 18, 16, 14, 12, 12],
		...                  f_exp=[[16, 16, 16, 16, 16, 8],
		...                         [8, 20, 20, 16, 12, 12]],
		...                  axis=1)
		(array([ 3.5 ,  9.25]), array([ 0.62338763,  0.09949846]))
	**/
	static public function power_divergence(f_obs:Dynamic, ?f_exp:Dynamic, ?ddof:Dynamic, ?axis:Dynamic, ?lambda_:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Assign ranks to data, dealing with ties appropriately.
		
		Ranks begin at 1.  The `method` argument controls how ranks are assigned
		to equal values.  See [1]_ for further discussion of ranking methods.
		
		Parameters
		----------
		a : array_like
		    The array of values to be ranked.  The array is first flattened.
		method : str, optional
		    The method used to assign ranks to tied elements.
		    The options are 'average', 'min', 'max', 'dense' and 'ordinal'.
		
		    'average':
		        The average of the ranks that would have been assigned to
		        all the tied values is assigned to each value.
		    'min':
		        The minimum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.  (This is also
		        referred to as "competition" ranking.)
		    'max':
		        The maximum of the ranks that would have been assigned to all
		        the tied values is assigned to each value.
		    'dense':
		        Like 'min', but the rank of the next highest element is assigned
		        the rank immediately after those assigned to the tied elements.
		    'ordinal':
		        All values are given a distinct rank, corresponding to the order
		        that the values occur in `a`.
		
		    The default is 'average'.
		
		Returns
		-------
		ranks : ndarray
		     An array of length equal to the size of `a`, containing rank
		     scores.
		
		References
		----------
		.. [1] "Ranking", http://en.wikipedia.org/wiki/Ranking
		
		Examples
		--------
		>>> from scipy.stats import rankdata
		>>> rankdata([0, 2, 3, 2])
		array([ 1. ,  2.5,  4. ,  2.5])
		>>> rankdata([0, 2, 3, 2], method='min')
		array([ 1,  2,  4,  2])
		>>> rankdata([0, 2, 3, 2], method='max')
		array([ 1,  3,  4,  3])
		>>> rankdata([0, 2, 3, 2], method='dense')
		array([ 1,  2,  3,  2])
		>>> rankdata([0, 2, 3, 2], method='ordinal')
		array([ 1,  2,  4,  3])
	**/
	static public function rankdata(a:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Compute the Wilcoxon rank-sum statistic for two samples.
		
		The Wilcoxon rank-sum test tests the null hypothesis that two sets
		of measurements are drawn from the same distribution.  The alternative
		hypothesis is that values in one sample are more likely to be
		larger than the values in the other sample.
		
		This test should be used to compare two samples from continuous
		distributions.  It does not handle ties between measurements
		in x and y.  For tie-handling and an optional continuity correction
		see `scipy.stats.mannwhitneyu`.
		
		Parameters
		----------
		x,y : array_like
		    The data from the two samples
		
		Returns
		-------
		statistic : float
		    The test statistic under the large-sample approximation that the
		    rank sum statistic is normally distributed
		pvalue : float
		    The two-sided p-value of the test
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/Wilcoxon_rank-sum_test
	**/
	static public function ranksums(x:Dynamic, y:Dynamic):Float;
	/**
		Return a relative frequency histogram, using the histogram function.
		
		A relative frequency  histogram is a mapping of the number of
		observations in each of the bins relative to the total of observations.
		
		Parameters
		----------
		a : array_like
		    Input array.
		numbins : int, optional
		    The number of bins to use for the histogram. Default is 10.
		defaultreallimits : tuple (lower, upper), optional
		    The lower and upper values for the range of the histogram.
		    If no value is given, a range slightly larger than the range of the
		    values in a is used. Specifically ``(a.min() - s, a.max() + s)``,
		    where ``s = (1/2)(a.max() - a.min()) / (numbins - 1)``.
		weights : array_like, optional
		    The weights for each value in `a`. Default is None, which gives each
		    value a weight of 1.0
		
		Returns
		-------
		frequency : ndarray
		    Binned values of relative frequency.
		lowerlimit : float
		    Lower real limit
		binsize : float
		    Width of each bin.
		extrapoints : int
		    Extra points.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		>>> a = np.array([2, 4, 1, 2, 3, 2])
		>>> res = stats.relfreq(a, numbins=4)
		>>> res.frequency
		array([ 0.16666667, 0.5       , 0.16666667,  0.16666667])
		>>> np.sum(res.frequency)  # relative frequencies should add up to 1
		1.0
		
		Create a normal distribution with 1000 random values
		
		>>> rng = np.random.RandomState(seed=12345)
		>>> samples = stats.norm.rvs(size=1000, random_state=rng)
		
		Calculate relative frequencies
		
		>>> res = stats.relfreq(samples, numbins=25)
		
		Calculate space of values for x
		
		>>> x = res.lowerlimit + np.linspace(0, res.binsize*res.frequency.size,
		...                                  res.frequency.size)
		
		Plot relative frequency histogram
		
		>>> fig = plt.figure(figsize=(5, 4))
		>>> ax = fig.add_subplot(1, 1, 1)
		>>> ax.bar(x, res.frequency, width=res.binsize)
		>>> ax.set_title('Relative frequency histogram')
		>>> ax.set_xlim([x.min(), x.max()])
		
		>>> plt.show()
	**/
	static public function relfreq(a:Dynamic, ?numbins:Dynamic, ?defaultreallimits:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Calculate the score at a given percentile of the input sequence.
		
		For example, the score at `per=50` is the median. If the desired quantile
		lies between two data points, we interpolate between them, according to
		the value of `interpolation`. If the parameter `limit` is provided, it
		should be a tuple (lower, upper) of two values.
		
		Parameters
		----------
		a : array_like
		    A 1-D array of values from which to extract score.
		per : array_like
		    Percentile(s) at which to extract score.  Values should be in range
		    [0,100].
		limit : tuple, optional
		    Tuple of two scalars, the lower and upper limits within which to
		    compute the percentile. Values of `a` outside
		    this (closed) interval will be ignored.
		interpolation_method : {'fraction', 'lower', 'higher'}, optional
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`
		
		      - fraction: ``i + (j - i) * fraction`` where ``fraction`` is the
		        fractional part of the index surrounded by ``i`` and ``j``.
		      - lower: ``i``.
		      - higher: ``j``.
		
		axis : int, optional
		    Axis along which the percentiles are computed. Default is None. If
		    None, compute over the whole array `a`.
		
		Returns
		-------
		score : float or ndarray
		    Score at percentile(s).
		
		See Also
		--------
		percentileofscore, numpy.percentile
		
		Notes
		-----
		This function will become obsolete in the future.
		For Numpy 1.9 and higher, `numpy.percentile` provides all the functionality
		that `scoreatpercentile` provides.  And it's significantly faster.
		Therefore it's recommended to use `numpy.percentile` for users that have
		numpy >= 1.9.
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(100)
		>>> stats.scoreatpercentile(a, 50)
		49.5
	**/
	static public function scoreatpercentile(a:Dynamic, per:Dynamic, ?limit:Dynamic, ?interpolation_method:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Calculate the standard error of the mean (or standard error of
		measurement) of the values in the input array.
		
		Parameters
		----------
		a : array_like
		    An array containing the values for which the standard error is
		    returned.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Delta degrees-of-freedom. How many degrees of freedom to adjust
		    for bias in limited samples relative to the population estimate
		    of variance. Defaults to 1.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		s : ndarray or float
		    The standard error of the mean in the sample(s), along the input axis.
		
		Notes
		-----
		The default value for `ddof` is different to the default (0) used by other
		ddof containing routines, such as np.std and np.nanstd.
		
		Examples
		--------
		Find standard error along the first axis:
		
		>>> from scipy import stats
		>>> a = np.arange(20).reshape(5,4)
		>>> stats.sem(a)
		array([ 2.8284,  2.8284,  2.8284,  2.8284])
		
		Find standard error across the whole array, using n degrees of freedom:
		
		>>> stats.sem(a, axis=None, ddof=0)
		1.2893796958227628
	**/
	static public function sem(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Iterative sigma-clipping of array elements.
		
		Starting from the full sample, all elements outside the critical range are
		removed, i.e. all elements of the input array `c` that satisfy either of
		the following conditions ::
		
		    c < mean(c) - std(c)*low
		    c > mean(c) + std(c)*high
		
		The iteration continues with the updated sample until no
		elements are outside the (updated) range.
		
		Parameters
		----------
		a : array_like
		    Data array, will be raveled if not 1-D.
		low : float, optional
		    Lower bound factor of sigma clipping. Default is 4.
		high : float, optional
		    Upper bound factor of sigma clipping. Default is 4.
		
		Returns
		-------
		clipped : ndarray
		    Input array with clipped elements removed.
		lower : float
		    Lower threshold value use for clipping.
		upper : float
		    Upper threshold value use for clipping.
		
		Examples
		--------
		>>> from scipy.stats import sigmaclip
		>>> a = np.concatenate((np.linspace(9.5, 10.5, 31),
		...                     np.linspace(0, 20, 5)))
		>>> fact = 1.5
		>>> c, low, upp = sigmaclip(a, fact, fact)
		>>> c
		array([  9.96666667,  10.        ,  10.03333333,  10.        ])
		>>> c.var(), c.std()
		(0.00055555555555555165, 0.023570226039551501)
		>>> low, c.mean() - fact*c.std(), c.min()
		(9.9646446609406727, 9.9646446609406727, 9.9666666666666668)
		>>> upp, c.mean() + fact*c.std(), c.max()
		(10.035355339059327, 10.035355339059327, 10.033333333333333)
		
		>>> a = np.concatenate((np.linspace(9.5, 10.5, 11),
		...                     np.linspace(-100, -50, 3)))
		>>> c, low, upp = sigmaclip(a, 1.8, 1.8)
		>>> (c == np.linspace(9.5, 10.5, 11)).all()
		True
	**/
	static public function sigmaclip(a:Dynamic, ?low:Dynamic, ?high:Dynamic):Dynamic;
	/**
		Compute the skewness of a data set.
		
		For normally distributed data, the skewness should be about 0. For
		unimodal continuous distributions, a skewness value > 0 means that
		there is more weight in the right tail of the distribution. The
		function `skewtest` can be used to determine if the skewness value
		is close enough to 0, statistically speaking.
		
		Parameters
		----------
		a : ndarray
		    data
		axis : int or None, optional
		    Axis along which skewness is calculated. Default is 0.
		    If None, compute over the whole array `a`.
		bias : bool, optional
		    If False, then the calculations are corrected for statistical bias.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		skewness : ndarray
		    The skewness of values along an axis, returning 0 where all values are
		    equal.
		
		References
		----------
		
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		   Section 2.2.24.1
		
		Examples
		--------
		>>> from scipy.stats import skew
		>>> skew([1, 2, 3, 4, 5])
		0.0
		>>> skew([2, 8, 0, 4, 1, 9, 9, 0])
		0.2650554122698573
	**/
	static public function skew(a:Dynamic, ?axis:Dynamic, ?bias:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Test whether the skew is different from the normal distribution.
		
		This function tests the null hypothesis that the skewness of
		the population that the sample was drawn from is the same
		as that of a corresponding normal distribution.
		
		Parameters
		----------
		a : array
		    The data to be tested
		axis : int or None, optional
		   Axis along which statistics are calculated. Default is 0.
		   If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float
		    The computed z-score for this test.
		pvalue : float
		    a 2-sided p-value for the hypothesis test
		
		Notes
		-----
		The sample size must be at least 8.
		
		References
		----------
		.. [1] R. B. D'Agostino, A. J. Belanger and R. B. D'Agostino Jr.,
		        "A suggestion for using powerful and informative tests of
		        normality", American Statistician 44, pp. 316-321, 1990.
		
		Examples
		--------
		>>> from scipy.stats import skewtest
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8])
		SkewtestResult(statistic=1.0108048609177787, pvalue=0.3121098361421897)
		>>> skewtest([2, 8, 0, 4, 1, 9, 9, 0])
		SkewtestResult(statistic=0.44626385374196975, pvalue=0.6554066631275459)
		>>> skewtest([1, 2, 3, 4, 5, 6, 7, 8000])
		SkewtestResult(statistic=3.571773510360407, pvalue=0.0003545719905823133)
		>>> skewtest([100, 100, 100, 100, 100, 100, 100, 101])
		SkewtestResult(statistic=3.5717766638478072, pvalue=0.000354567720281634)
	**/
	static public function skewtest(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Float;
	/**
		Calculate a Spearman rank-order correlation coefficient and the p-value
		to test for non-correlation.
		
		The Spearman correlation is a nonparametric measure of the monotonicity
		of the relationship between two datasets. Unlike the Pearson correlation,
		the Spearman correlation does not assume that both datasets are normally
		distributed. Like other correlation coefficients, this one varies
		between -1 and +1 with 0 implying no correlation. Correlations of -1 or
		+1 imply an exact monotonic relationship. Positive correlations imply that
		as x increases, so does y. Negative correlations imply that as x
		increases, y decreases.
		
		The p-value roughly indicates the probability of an uncorrelated system
		producing datasets that have a Spearman correlation at least as extreme
		as the one computed from these datasets. The p-values are not entirely
		reliable but are probably reasonable for datasets larger than 500 or so.
		
		Parameters
		----------
		a, b : 1D or 2D array_like, b is optional
		    One or two 1-D or 2-D arrays containing multiple variables and
		    observations. When these are 1-D, each represents a vector of
		    observations of a single variable. For the behavior in the 2-D case,
		    see under ``axis``, below.
		    Both arrays need to have the same length in the ``axis`` dimension.
		axis : int or None, optional
		    If axis=0 (default), then each column represents a variable, with
		    observations in the rows. If axis=1, the relationship is transposed:
		    each row represents a variable, while the columns contain observations.
		    If axis=None, then both arrays will be raveled.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		correlation : float or ndarray (2-D square)
		    Spearman correlation matrix or correlation coefficient (if only 2
		    variables are given as parameters. Correlation matrix is square with
		    length equal to total number of variables (columns or rows) in a and b
		    combined.
		pvalue : float
		    The two-sided p-value for a hypothesis test whose null hypothesis is
		    that two sets of data are uncorrelated, has same dimension as rho.
		
		Notes
		-----
		Changes in scipy 0.8.0: rewrite to add tie-handling, and axis.
		
		References
		----------
		
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		   Section  14.7
		
		Examples
		--------
		>>> from scipy import stats
		>>> stats.spearmanr([1,2,3,4,5], [5,6,7,8,7])
		(0.82078268166812329, 0.088587005313543798)
		>>> np.random.seed(1234321)
		>>> x2n = np.random.randn(100, 2)
		>>> y2n = np.random.randn(100, 2)
		>>> stats.spearmanr(x2n)
		(0.059969996999699973, 0.55338590803773591)
		>>> stats.spearmanr(x2n[:,0], x2n[:,1])
		(0.059969996999699973, 0.55338590803773591)
		>>> rho, pval = stats.spearmanr(x2n, y2n)
		>>> rho
		array([[ 1.        ,  0.05997   ,  0.18569457,  0.06258626],
		       [ 0.05997   ,  1.        ,  0.110003  ,  0.02534653],
		       [ 0.18569457,  0.110003  ,  1.        ,  0.03488749],
		       [ 0.06258626,  0.02534653,  0.03488749,  1.        ]])
		>>> pval
		array([[ 0.        ,  0.55338591,  0.06435364,  0.53617935],
		       [ 0.55338591,  0.        ,  0.27592895,  0.80234077],
		       [ 0.06435364,  0.27592895,  0.        ,  0.73039992],
		       [ 0.53617935,  0.80234077,  0.73039992,  0.        ]])
		>>> rho, pval = stats.spearmanr(x2n.T, y2n.T, axis=1)
		>>> rho
		array([[ 1.        ,  0.05997   ,  0.18569457,  0.06258626],
		       [ 0.05997   ,  1.        ,  0.110003  ,  0.02534653],
		       [ 0.18569457,  0.110003  ,  1.        ,  0.03488749],
		       [ 0.06258626,  0.02534653,  0.03488749,  1.        ]])
		>>> stats.spearmanr(x2n, y2n, axis=None)
		(0.10816770419260482, 0.1273562188027364)
		>>> stats.spearmanr(x2n.ravel(), y2n.ravel())
		(0.10816770419260482, 0.1273562188027364)
		
		>>> xint = np.random.randint(10, size=(100, 2))
		>>> stats.spearmanr(xint)
		(0.052760927029710199, 0.60213045837062351)
	**/
	static public function spearmanr(a:Dynamic, ?b:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Computes the Theil-Sen estimator for a set of points (x, y).
		
		`theilslopes` implements a method for robust linear regression.  It
		computes the slope as the median of all slopes between paired values.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		alpha : float, optional
		    Confidence degree between 0 and 1. Default is 95% confidence.
		    Note that `alpha` is symmetric around 0.5, i.e. both 0.1 and 0.9 are
		    interpreted as "find the 90% confidence interval".
		
		Returns
		-------
		medslope : float
		    Theil slope.
		medintercept : float
		    Intercept of the Theil line, as ``median(y) - medslope*median(x)``.
		lo_slope : float
		    Lower bound of the confidence interval on `medslope`.
		up_slope : float
		    Upper bound of the confidence interval on `medslope`.
		
		Notes
		-----
		The implementation of `theilslopes` follows [1]_. The intercept is
		not defined in [1]_, and here it is defined as ``median(y) -
		medslope*median(x)``, which is given in [3]_. Other definitions of
		the intercept exist in the literature. A confidence interval for
		the intercept is not given as this question is not addressed in
		[1]_.
		
		References
		----------
		.. [1] P.K. Sen, "Estimates of the regression coefficient based on Kendall's tau",
		       J. Am. Stat. Assoc., Vol. 63, pp. 1379-1389, 1968.
		.. [2] H. Theil, "A rank-invariant method of linear and polynomial
		       regression analysis I, II and III",  Nederl. Akad. Wetensch., Proc.
		       53:, pp. 386-392, pp. 521-525, pp. 1397-1412, 1950.
		.. [3] W.L. Conover, "Practical nonparametric statistics", 2nd ed.,
		       John Wiley and Sons, New York, pp. 493.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-5, 5, num=150)
		>>> y = x + np.random.normal(size=x.size)
		>>> y[11:15] += 10  # add outliers
		>>> y[-5:] -= 7
		
		Compute the slope, intercept and 90% confidence interval.  For comparison,
		also compute the least-squares fit with `linregress`:
		
		>>> res = stats.theilslopes(y, x, 0.90)
		>>> lsq_res = stats.linregress(x, y)
		
		Plot the results. The Theil-Sen regression line is shown in red, with the
		dashed red lines illustrating the confidence interval of the slope (note
		that the dashed red lines are not the confidence interval of the regression
		as the confidence interval of the intercept is not included). The green
		line shows the least-squares fit for comparison.
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, y, 'b.')
		>>> ax.plot(x, res[1] + res[0] * x, 'r-')
		>>> ax.plot(x, res[1] + res[2] * x, 'r--')
		>>> ax.plot(x, res[1] + res[3] * x, 'r--')
		>>> ax.plot(x, lsq_res[1] + lsq_res[0] * x, 'g-')
		>>> plt.show()
	**/
	static public function theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic):Float;
	/**
		Tie correction factor for ties in the Mann-Whitney U and
		Kruskal-Wallis H tests.
		
		Parameters
		----------
		rankvals : array_like
		    A 1-D sequence of ranks.  Typically this will be the array
		    returned by `stats.rankdata`.
		
		Returns
		-------
		factor : float
		    Correction factor for U or H.
		
		See Also
		--------
		rankdata : Assign ranks to the data
		mannwhitneyu : Mann-Whitney rank test
		kruskal : Kruskal-Wallis H test
		
		References
		----------
		.. [1] Siegel, S. (1956) Nonparametric Statistics for the Behavioral
		       Sciences.  New York: McGraw-Hill.
		
		Examples
		--------
		>>> from scipy.stats import tiecorrect, rankdata
		>>> tiecorrect([1, 2.5, 2.5, 4])
		0.9
		>>> ranks = rankdata([1, 3, 2, 4, 5, 7, 2, 8, 4])
		>>> ranks
		array([ 1. ,  4. ,  2.5,  5.5,  7. ,  8. ,  2.5,  9. ,  5.5])
		>>> tiecorrect(ranks)
		0.9833333333333333
	**/
	static public function tiecorrect(rankvals:Dynamic):Float;
	/**
		Compute the trimmed maximum.
		
		This function computes the maximum value of an array along a given axis,
		while ignoring values larger than a specified upper limit.
		
		Parameters
		----------
		a : array_like
		    array of values
		upperlimit : None or float, optional
		    Values in the input array greater than the given limit will be ignored.
		    When upperlimit is None, then all values are used. The default value
		    is None.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		inclusive : {True, False}, optional
		    This flag determines whether values exactly equal to the upper limit
		    are included.  The default value is True.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		tmax : float, int or ndarray
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmax(x)
		19
		
		>>> stats.tmax(x, 13)
		13
		
		>>> stats.tmax(x, 13, inclusive=False)
		12
	**/
	static public function tmax(a:Dynamic, ?upperlimit:Dynamic, ?axis:Dynamic, ?inclusive:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the trimmed mean.
		
		This function finds the arithmetic mean of given values, ignoring values
		outside the given `limits`.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored.  When limits is None (default), then all
		    values are used.  Either of the limit values in the tuple can also be
		    None representing a half-open interval.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to compute test. Default is None.
		
		Returns
		-------
		tmean : float
		
		See also
		--------
		trim_mean : returns mean after trimming a proportion from both tails.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmean(x)
		9.5
		>>> stats.tmean(x, (3,17))
		10.0
	**/
	static public function tmean(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic):Float;
	/**
		Compute the trimmed minimum.
		
		This function finds the miminum value of an array `a` along the
		specified axis, but only considering values greater than a specified
		lower limit.
		
		Parameters
		----------
		a : array_like
		    array of values
		lowerlimit : None or float, optional
		    Values in the input array less than the given limit will be ignored.
		    When lowerlimit is None, then all values are used. The default value
		    is None.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		inclusive : {True, False}, optional
		    This flag determines whether values exactly equal to the lower limit
		    are included.  The default value is True.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		tmin : float, int or ndarray
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tmin(x)
		0
		
		>>> stats.tmin(x, 13)
		13
		
		>>> stats.tmin(x, 13, inclusive=False)
		14
	**/
	static public function tmin(a:Dynamic, ?lowerlimit:Dynamic, ?axis:Dynamic, ?inclusive:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Slices off a proportion from ONE end of the passed array distribution.
		
		If `proportiontocut` = 0.1, slices off 'leftmost' or 'rightmost'
		10% of scores. The lowest or highest values are trimmed (depending on
		the tail).
		Slices off less if proportion results in a non-integer slice index
		(i.e., conservatively slices off `proportiontocut` ).
		
		Parameters
		----------
		a : array_like
		    Input array
		proportiontocut : float
		    Fraction to cut off of 'left' or 'right' of distribution
		tail : {'left', 'right'}, optional
		    Defaults to 'right'.
		axis : int or None, optional
		    Axis along which to trim data. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		trim1 : ndarray
		    Trimmed version of array `a`. The order of the trimmed content is
		    undefined.
	**/
	static public function trim1(a:Dynamic, proportiontocut:Dynamic, ?tail:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return mean of array after trimming distribution from both tails.
		
		If `proportiontocut` = 0.1, slices off 'leftmost' and 'rightmost' 10% of
		scores. The input is sorted before slicing. Slices off less if proportion
		results in a non-integer slice index (i.e., conservatively slices off
		`proportiontocut` ).
		
		Parameters
		----------
		a : array_like
		    Input array
		proportiontocut : float
		    Fraction to cut off of both tails of the distribution
		axis : int or None, optional
		    Axis along which the trimmed means are computed. Default is 0.
		    If None, compute over the whole array `a`.
		
		Returns
		-------
		trim_mean : ndarray
		    Mean of trimmed array.
		
		See Also
		--------
		trimboth
		tmean : compute the trimmed mean ignoring values outside given `limits`.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.trim_mean(x, 0.1)
		9.5
		>>> x2 = x.reshape(5, 4)
		>>> x2
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15],
		       [16, 17, 18, 19]])
		>>> stats.trim_mean(x2, 0.25)
		array([  8.,   9.,  10.,  11.])
		>>> stats.trim_mean(x2, 0.25, axis=1)
		array([  1.5,   5.5,   9.5,  13.5,  17.5])
	**/
	static public function trim_mean(a:Dynamic, proportiontocut:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Slices off a proportion of items from both ends of an array.
		
		Slices off the passed proportion of items from both ends of the passed
		array (i.e., with `proportiontocut` = 0.1, slices leftmost 10% **and**
		rightmost 10% of scores). The trimmed values are the lowest and
		highest ones.
		Slices off less if proportion results in a non-integer slice index (i.e.,
		conservatively slices off`proportiontocut`).
		
		Parameters
		----------
		a : array_like
		    Data to trim.
		proportiontocut : float
		    Proportion (in range 0-1) of total data set to trim of each end.
		axis : int or None, optional
		    Axis along which to trim data. Default is 0. If None, compute over
		    the whole array `a`.
		
		Returns
		-------
		out : ndarray
		    Trimmed version of array `a`. The order of the trimmed content
		    is undefined.
		
		See Also
		--------
		trim_mean
		
		Examples
		--------
		>>> from scipy import stats
		>>> a = np.arange(20)
		>>> b = stats.trimboth(a, 0.1)
		>>> b.shape
		(16,)
	**/
	static public function trimboth(a:Dynamic, proportiontocut:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute the trimmed standard error of the mean.
		
		This function finds the standard error of the mean for given
		values, ignoring values outside the given `limits`.
		
		Parameters
		----------
		a : array_like
		    array of values
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored. When limits is None, then all values are
		    used. Either of the limit values in the tuple can also be None
		    representing a half-open interval.  The default value is None.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tsem : float
		
		Notes
		-----
		`tsem` uses unbiased sample standard deviation, i.e. it uses a
		correction factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tsem(x)
		1.3228756555322954
		>>> stats.tsem(x, (3,17))
		1.1547005383792515
	**/
	static public function tsem(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Compute the trimmed sample standard deviation.
		
		This function finds the sample standard deviation of given values,
		ignoring values outside the given `limits`.
		
		Parameters
		----------
		a : array_like
		    array of values
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored. When limits is None, then all values are
		    used. Either of the limit values in the tuple can also be None
		    representing a half-open interval.  The default value is None.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tstd : float
		
		Notes
		-----
		`tstd` computes the unbiased sample standard deviation, i.e. it uses a
		correction factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tstd(x)
		5.9160797830996161
		>>> stats.tstd(x, (3,17))
		4.4721359549995796
	**/
	static public function tstd(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Calculate the T-test for the mean of ONE group of scores.
		
		This is a two-sided test for the null hypothesis that the expected value
		(mean) of a sample of independent observations `a` is equal to the given
		population mean, `popmean`.
		
		Parameters
		----------
		a : array_like
		    sample observation
		popmean : float or array_like
		    expected value in null hypothesis. If array_like, then it must have the
		    same shape as `a` excluding the axis dimension
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    two-tailed p-value
		
		Examples
		--------
		>>> from scipy import stats
		
		>>> np.random.seed(7654567)  # fix seed to get the same result
		>>> rvs = stats.norm.rvs(loc=5, scale=10, size=(50,2))
		
		Test if mean of random sample is equal to true mean, and different mean.
		We reject the null hypothesis in the second case and don't reject it in
		the first case.
		
		>>> stats.ttest_1samp(rvs,5.0)
		(array([-0.68014479, -0.04323899]), array([ 0.49961383,  0.96568674]))
		>>> stats.ttest_1samp(rvs,0.0)
		(array([ 2.77025808,  4.11038784]), array([ 0.00789095,  0.00014999]))
		
		Examples using axis and non-scalar dimension for population mean.
		
		>>> stats.ttest_1samp(rvs,[5.0,0.0])
		(array([-0.68014479,  4.11038784]), array([  4.99613833e-01,   1.49986458e-04]))
		>>> stats.ttest_1samp(rvs.T,[5.0,0.0],axis=1)
		(array([-0.68014479,  4.11038784]), array([  4.99613833e-01,   1.49986458e-04]))
		>>> stats.ttest_1samp(rvs,[[5.0],[0.0]])
		(array([[-0.68014479, -0.04323899],
		       [ 2.77025808,  4.11038784]]), array([[  4.99613833e-01,   9.65686743e-01],
		       [  7.89094663e-03,   1.49986458e-04]]))
	**/
	static public function ttest_1samp(a:Dynamic, popmean:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Calculate the T-test for the means of *two independent* samples of scores.
		
		This is a two-sided test for the null hypothesis that 2 independent samples
		have identical average (expected) values. This test assumes that the
		populations have identical variances by default.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		equal_var : bool, optional
		    If True (default), perform a standard independent 2 sample test
		    that assumes equal population variances [1]_.
		    If False, perform Welch's t-test, which does not assume equal
		    population variance [2]_.
		
		    .. versionadded:: 0.11.0
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistic.
		pvalue : float or array
		    The two-tailed p-value.
		
		Notes
		-----
		We can use this test, if we observe two independent samples from
		the same or different population, e.g. exam scores of boys and
		girls or of two ethnic groups. The test measures whether the
		average (expected) value differs significantly across samples. If
		we observe a large p-value, for example larger than 0.05 or 0.1,
		then we cannot reject the null hypothesis of identical average scores.
		If the p-value is smaller than the threshold, e.g. 1%, 5% or 10%,
		then we reject the null hypothesis of equal averages.
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/T-test#Independent_two-sample_t-test
		
		.. [2] http://en.wikipedia.org/wiki/Welch%27s_t_test
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678)
		
		Test with sample with identical means:
		
		>>> rvs1 = stats.norm.rvs(loc=5,scale=10,size=500)
		>>> rvs2 = stats.norm.rvs(loc=5,scale=10,size=500)
		>>> stats.ttest_ind(rvs1,rvs2)
		(0.26833823296239279, 0.78849443369564776)
		>>> stats.ttest_ind(rvs1,rvs2, equal_var = False)
		(0.26833823296239279, 0.78849452749500748)
		
		`ttest_ind` underestimates p for unequal variances:
		
		>>> rvs3 = stats.norm.rvs(loc=5, scale=20, size=500)
		>>> stats.ttest_ind(rvs1, rvs3)
		(-0.46580283298287162, 0.64145827413436174)
		>>> stats.ttest_ind(rvs1, rvs3, equal_var = False)
		(-0.46580283298287162, 0.64149646246569292)
		
		When n1 != n2, the equal variance t-statistic is no longer equal to the
		unequal variance t-statistic:
		
		>>> rvs4 = stats.norm.rvs(loc=5, scale=20, size=100)
		>>> stats.ttest_ind(rvs1, rvs4)
		(-0.99882539442782481, 0.3182832709103896)
		>>> stats.ttest_ind(rvs1, rvs4, equal_var = False)
		(-0.69712570584654099, 0.48716927725402048)
		
		T-test with different means, variance, and n:
		
		>>> rvs5 = stats.norm.rvs(loc=8, scale=20, size=100)
		>>> stats.ttest_ind(rvs1, rvs5)
		(-1.4679669854490653, 0.14263895620529152)
		>>> stats.ttest_ind(rvs1, rvs5, equal_var = False)
		(-0.94365973617132992, 0.34744170334794122)
	**/
	static public function ttest_ind(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?equal_var:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		T-test for means of two independent samples from descriptive statistics.
		
		This is a two-sided test for the null hypothesis that two independent
		samples have identical average (expected) values.
		
		Parameters
		----------
		mean1 : array_like
		    The mean(s) of sample 1.
		std1 : array_like
		    The standard deviation(s) of sample 1.
		nobs1 : array_like
		    The number(s) of observations of sample 1.
		mean2 : array_like
		    The mean(s) of sample 2
		std2 : array_like
		    The standard deviations(s) of sample 2.
		nobs2 : array_like
		    The number(s) of observations of sample 2.
		equal_var : bool, optional
		    If True (default), perform a standard independent 2 sample test
		    that assumes equal population variances [1]_.
		    If False, perform Welch's t-test, which does not assume equal
		    population variance [2]_.
		
		Returns
		-------
		statistic : float or array
		    The calculated t-statistics
		pvalue : float or array
		    The two-tailed p-value.
		
		See Also
		--------
		scipy.stats.ttest_ind
		
		Notes
		-----
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] http://en.wikipedia.org/wiki/T-test#Independent_two-sample_t-test
		
		.. [2] http://en.wikipedia.org/wiki/Welch%27s_t_test
		
		Examples
		--------
		Suppose we have the summary data for two samples, as follows::
		
		                     Sample   Sample
		               Size   Mean   Variance
		    Sample 1    13    15.0     87.5
		    Sample 2    11    12.0     39.0
		
		Apply the t-test to this data (with the assumption that the population
		variances are equal):
		
		>>> from scipy.stats import ttest_ind_from_stats
		>>> ttest_ind_from_stats(mean1=15.0, std1=np.sqrt(87.5), nobs1=13,
		...                      mean2=12.0, std2=np.sqrt(39.0), nobs2=11)
		Ttest_indResult(statistic=0.9051358093310269, pvalue=0.3751996797581487)
		
		For comparison, here is the data from which those summary statistics
		were taken.  With this data, we can compute the same result using
		`scipy.stats.ttest_ind`:
		
		>>> a = np.array([1, 3, 4, 6, 11, 13, 15, 19, 22, 24, 25, 26, 26])
		>>> b = np.array([2, 4, 6, 9, 11, 13, 14, 15, 18, 19, 21])
		>>> from scipy.stats import ttest_ind
		>>> ttest_ind(a, b)
		Ttest_indResult(statistic=0.905135809331027, pvalue=0.3751996797581486)
	**/
	static public function ttest_ind_from_stats(mean1:Dynamic, std1:Dynamic, nobs1:Dynamic, mean2:Dynamic, std2:Dynamic, nobs2:Dynamic, ?equal_var:Dynamic):Dynamic;
	/**
		Calculate the T-test on TWO RELATED samples of scores, a and b.
		
		This is a two-sided test for the null hypothesis that 2 related or
		repeated samples have identical average (expected) values.
		
		Parameters
		----------
		a, b : array_like
		    The arrays must have the same shape.
		axis : int or None, optional
		    Axis along which to compute test. If None, compute over the whole
		    arrays, `a`, and `b`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		statistic : float or array
		    t-statistic
		pvalue : float or array
		    two-tailed p-value
		
		Notes
		-----
		Examples for the use are scores of the same set of student in
		different exams, or repeated sampling from the same units. The
		test measures whether the average score differs significantly
		across samples (e.g. exams). If we observe a large p-value, for
		example greater than 0.05 or 0.1 then we cannot reject the null
		hypothesis of identical average scores. If the p-value is smaller
		than the threshold, e.g. 1%, 5% or 10%, then we reject the null
		hypothesis of equal averages. Small p-values are associated with
		large t-statistics.
		
		References
		----------
		https://en.wikipedia.org/wiki/T-test#Dependent_t-test_for_paired_samples
		
		Examples
		--------
		>>> from scipy import stats
		>>> np.random.seed(12345678) # fix random seed to get same numbers
		
		>>> rvs1 = stats.norm.rvs(loc=5,scale=10,size=500)
		>>> rvs2 = (stats.norm.rvs(loc=5,scale=10,size=500) +
		...         stats.norm.rvs(scale=0.2,size=500))
		>>> stats.ttest_rel(rvs1,rvs2)
		(0.24101764965300962, 0.80964043445811562)
		>>> rvs3 = (stats.norm.rvs(loc=8,scale=10,size=500) +
		...         stats.norm.rvs(scale=0.2,size=500))
		>>> stats.ttest_rel(rvs1,rvs3)
		(-3.9995108708727933, 7.3082402191726459e-005)
	**/
	static public function ttest_rel(a:Dynamic, b:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the trimmed variance.
		
		This function computes the sample variance of an array of values,
		while ignoring values which are outside of given `limits`.
		
		Parameters
		----------
		a : array_like
		    Array of values.
		limits : None or (lower limit, upper limit), optional
		    Values in the input array less than the lower limit or greater than the
		    upper limit will be ignored. When limits is None, then all values are
		    used. Either of the limit values in the tuple can also be None
		    representing a half-open interval.  The default value is None.
		inclusive : (bool, bool), optional
		    A tuple consisting of the (lower flag, upper flag).  These flags
		    determine whether values exactly equal to the lower or upper limits
		    are included.  The default value is (True, True).
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over the
		    whole array `a`.
		ddof : int, optional
		    Delta degrees of freedom.  Default is 1.
		
		Returns
		-------
		tvar : float
		    Trimmed variance.
		
		Notes
		-----
		`tvar` computes the unbiased sample variance, i.e. it uses a correction
		factor ``n / (n - 1)``.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = np.arange(20)
		>>> stats.tvar(x)
		35.0
		>>> stats.tvar(x, (3,17))
		20.0
	**/
	static public function tvar(a:Dynamic, ?limits:Dynamic, ?inclusive:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Float;
	/**
		Compute the coefficient of variation, the ratio of the biased standard
		deviation to the mean.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int or None, optional
		    Axis along which to calculate the coefficient of variation. Default
		    is 0. If None, compute over the whole array `a`.
		nan_policy : {'propagate', 'raise', 'omit'}, optional
		    Defines how to handle when input contains nan. 'propagate' returns nan,
		    'raise' throws an error, 'omit' performs the calculations ignoring nan
		    values. Default is 'propagate'.
		
		Returns
		-------
		variation : ndarray
		    The calculated variation along the requested axis.
		
		References
		----------
		.. [1] Zwillinger, D. and Kokoska, S. (2000). CRC Standard
		   Probability and Statistics Tables and Formulae. Chapman & Hall: New
		   York. 2000.
		
		Examples
		--------
		>>> from scipy.stats import variation
		>>> variation([1, 2, 3, 4, 5])
		0.47140452079103173
	**/
	static public function variation(a:Dynamic, ?axis:Dynamic, ?nan_policy:Dynamic):Dynamic;
	/**
		Compute the first Wasserstein distance between two 1D distributions.
		
		This distance is also known as the earth mover's distance, since it can be
		seen as the minimum amount of "work" required to transform :math:`u` into
		:math:`v`, where "work" is measured as the amount of distribution weight
		that must be moved, multiplied by the distance it has to be moved.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		u_values, v_values : array_like
		    Values observed in the (empirical) distribution.
		u_weights, v_weights : array_like, optional
		    Weight for each value. If unspecified, each value is assigned the same
		    weight.
		    `u_weights` (resp. `v_weights`) must have the same length as
		    `u_values` (resp. `v_values`). If the weight sum differs from 1, it
		    must still be positive and finite so that the weights can be normalized
		    to sum to 1.
		
		Returns
		-------
		distance : float
		    The computed distance between the distributions.
		
		Notes
		-----
		The first Wasserstein distance between the distributions :math:`u` and
		:math:`v` is:
		
		.. math::
		
		    l_1 (u, v) = \inf_{\pi \in \Gamma (u, v)} \int_{\mathbb{R} \times
		    \mathbb{R}} |x-y| \mathrm{d} \pi (x, y)
		
		where :math:`\Gamma (u, v)` is the set of (probability) distributions on
		:math:`\mathbb{R} \times \mathbb{R}` whose marginals are :math:`u` and
		:math:`v` on the first and second factors respectively.
		
		If :math:`U` and :math:`V` are the respective CDFs of :math:`u` and
		:math:`v`, this distance also equals to:
		
		.. math::
		
		    l_1(u, v) = \int_{-\infty}^{+\infty} |U-V|
		
		See [2]_ for a proof of the equivalence of both definitions.
		
		The input distributions can be empirical, therefore coming from samples
		whose values are effectively inputs of the function, or they can be seen as
		generalized functions, in which case they are weighted sums of Dirac delta
		functions located at the specified values.
		
		References
		----------
		.. [1] "Wasserstein metric", http://en.wikipedia.org/wiki/Wasserstein_metric
		.. [2] Ramdas, Garcia, Cuturi "On Wasserstein Two Sample Testing and Related
		       Families of Nonparametric Tests" (2015). :arXiv:`1509.02237`.
		
		Examples
		--------
		>>> from scipy.stats import wasserstein_distance
		>>> wasserstein_distance([0, 1, 3], [5, 6, 8])
		5.0
		>>> wasserstein_distance([0, 1], [0, 1], [3, 1], [2, 2])
		0.25
		>>> wasserstein_distance([3.4, 3.9, 7.5, 7.8], [4.5, 1.4],
		...                      [1.4, 0.9, 3.1, 7.2], [3.2, 3.5])
		4.0781331438047861
	**/
	static public function wasserstein_distance(u_values:Dynamic, v_values:Dynamic, ?u_weights:Dynamic, ?v_weights:Dynamic):Float;
	/**
		Compute a weighted version of Kendall's :math:`\tau`.
		
		The weighted :math:`\tau` is a weighted version of Kendall's
		:math:`\tau` in which exchanges of high weight are more influential than
		exchanges of low weight. The default parameters compute the additive
		hyperbolic version of the index, :math:`\tau_\mathrm h`, which has
		been shown to provide the best balance between important and
		unimportant elements [1]_.
		
		The weighting is defined by means of a rank array, which assigns a
		nonnegative rank to each element, and a weigher function, which
		assigns a weight based from the rank to each element. The weight of an
		exchange is then the sum or the product of the weights of the ranks of
		the exchanged elements. The default parameters compute
		:math:`\tau_\mathrm h`: an exchange between elements with rank
		:math:`r` and :math:`s` (starting from zero) has weight
		:math:`1/(r+1) + 1/(s+1)`.
		
		Specifying a rank array is meaningful only if you have in mind an
		external criterion of importance. If, as it usually happens, you do
		not have in mind a specific rank, the weighted :math:`\tau` is
		defined by averaging the values obtained using the decreasing
		lexicographical rank by (`x`, `y`) and by (`y`, `x`). This is the
		behavior with default parameters.
		
		Note that if you are computing the weighted :math:`\tau` on arrays of
		ranks, rather than of scores (i.e., a larger value implies a lower
		rank) you must negate the ranks, so that elements of higher rank are
		associated with a larger value.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of scores, of the same shape. If arrays are not 1-D, they will
		    be flattened to 1-D.
		rank: array_like of ints or bool, optional
		    A nonnegative rank assigned to each element. If it is None, the
		    decreasing lexicographical rank by (`x`, `y`) will be used: elements of
		    higher rank will be those with larger `x`-values, using `y`-values to
		    break ties (in particular, swapping `x` and `y` will give a different
		    result). If it is False, the element indices will be used
		    directly as ranks. The default is True, in which case this
		    function returns the average of the values obtained using the
		    decreasing lexicographical rank by (`x`, `y`) and by (`y`, `x`).
		weigher : callable, optional
		    The weigher function. Must map nonnegative integers (zero
		    representing the most important element) to a nonnegative weight.
		    The default, None, provides hyperbolic weighing, that is,
		    rank :math:`r` is mapped to weight :math:`1/(r+1)`.
		additive : bool, optional
		    If True, the weight of an exchange is computed by adding the
		    weights of the ranks of the exchanged elements; otherwise, the weights
		    are multiplied. The default is True.
		
		Returns
		-------
		correlation : float
		   The weighted :math:`\tau` correlation index.
		pvalue : float
		   Presently ``np.nan``, as the null statistics is unknown (even in the
		   additive hyperbolic case).
		
		See also
		--------
		kendalltau : Calculates Kendall's tau.
		spearmanr : Calculates a Spearman rank-order correlation coefficient.
		theilslopes : Computes the Theil-Sen estimator for a set of points (x, y).
		
		Notes
		-----
		This function uses an :math:`O(n \log n)`, mergesort-based algorithm
		[1]_ that is a weighted extension of Knight's algorithm for Kendall's
		:math:`\tau` [2]_. It can compute Shieh's weighted :math:`\tau` [3]_
		between rankings without ties (i.e., permutations) by setting
		`additive` and `rank` to False, as the definition given in [1]_ is a
		generalization of Shieh's.
		
		NaNs are considered the smallest possible score.
		
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] Sebastiano Vigna, "A weighted correlation index for rankings with
		       ties", Proceedings of the 24th international conference on World
		       Wide Web, pp. 1166-1176, ACM, 2015.
		.. [2] W.R. Knight, "A Computer Method for Calculating Kendall's Tau with
		       Ungrouped Data", Journal of the American Statistical Association,
		       Vol. 61, No. 314, Part 1, pp. 436-439, 1966.
		.. [3] Grace S. Shieh. "A weighted Kendall's tau statistic", Statistics &
		       Probability Letters, Vol. 39, No. 1, pp. 17-24, 1998.
		
		Examples
		--------
		>>> from scipy import stats
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> tau, p_value = stats.weightedtau(x, y)
		>>> tau
		-0.56694968153682723
		>>> p_value
		nan
		>>> tau, p_value = stats.weightedtau(x, y, additive=False)
		>>> tau
		-0.62205716951801038
		
		NaNs are considered the smallest possible score:
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, np.nan]
		>>> tau, _ = stats.weightedtau(x, y)
		>>> tau
		-0.56694968153682723
		
		This is exactly Kendall's tau:
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> tau, _ = stats.weightedtau(x, y, weigher=lambda x: 1)
		>>> tau
		-0.47140452079103173
		
		>>> x = [12, 2, 1, 12, 2]
		>>> y = [1, 4, 7, 1, 0]
		>>> stats.weightedtau(x, y, rank=None)
		WeightedTauResult(correlation=-0.4157652301037516, pvalue=nan)
		>>> stats.weightedtau(y, x, rank=None)
		WeightedTauResult(correlation=-0.7181341329699028, pvalue=nan)
	**/
	static public function weightedtau(x:Dynamic, y:Dynamic, ?rank:Dynamic, ?weigher:Dynamic, ?additive:Dynamic):Float;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or tuple of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=int)
		array([0, 0, 0, 0, 0])
		
		>>> np.zeros((2, 1))
		array([[ 0.],
		       [ 0.]])
		
		>>> s = (2,2)
		>>> np.zeros(s)
		array([[ 0.,  0.],
		       [ 0.,  0.]])
		
		>>> np.zeros((2,), dtype=[('x', 'i4'), ('y', 'i4')]) # custom dtype
		array([(0, 0), (0, 0)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
	**/
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculate the relative z-scores.
		
		Return an array of z-scores, i.e., scores that are standardized to
		zero mean and unit variance, where mean and variance are calculated
		from the comparison array.
		
		Parameters
		----------
		scores : array_like
		    The input for which z-scores are calculated.
		compare : array_like
		    The input from which the mean and standard deviation of the
		    normalization are taken; assumed to have the same dimension as
		    `scores`.
		axis : int or None, optional
		    Axis over which mean and variance of `compare` are calculated.
		    Default is 0. If None, compute over the whole array `scores`.
		ddof : int, optional
		    Degrees of freedom correction in the calculation of the
		    standard deviation. Default is 0.
		
		Returns
		-------
		zscore : array_like
		    Z-scores, in the same shape as `scores`.
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses `asanyarray` instead of
		`asarray` for parameters).
		
		Examples
		--------
		>>> from scipy.stats import zmap
		>>> a = [0.5, 2.0, 2.5, 3]
		>>> b = [0, 1, 2, 3, 4]
		>>> zmap(a, b)
		array([-1.06066017,  0.        ,  0.35355339,  0.70710678])
	**/
	static public function zmap(scores:Dynamic, compare:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		Calculate the z score of each value in the sample, relative to the
		sample mean and standard deviation.
		
		Parameters
		----------
		a : array_like
		    An array like object containing the sample data.
		axis : int or None, optional
		    Axis along which to operate. Default is 0. If None, compute over
		    the whole array `a`.
		ddof : int, optional
		    Degrees of freedom correction in the calculation of the
		    standard deviation. Default is 0.
		
		Returns
		-------
		zscore : array_like
		    The z-scores, standardized by mean and standard deviation of
		    input array `a`.
		
		Notes
		-----
		This function preserves ndarray subclasses, and works also with
		matrices and masked arrays (it uses `asanyarray` instead of
		`asarray` for parameters).
		
		Examples
		--------
		>>> a = np.array([ 0.7972,  0.0767,  0.4383,  0.7866,  0.8091,
		...                0.1954,  0.6307,  0.6599,  0.1065,  0.0508])
		>>> from scipy import stats
		>>> stats.zscore(a)
		array([ 1.1273, -1.247 , -0.0552,  1.0923,  1.1664, -0.8559,  0.5786,
		        0.6748, -1.1488, -1.3324])
		
		Computing along a specified axis, using n-1 degrees of freedom
		(``ddof=1``) to calculate the standard deviation:
		
		>>> b = np.array([[ 0.3148,  0.0478,  0.6243,  0.4608],
		...               [ 0.7149,  0.0775,  0.6072,  0.9656],
		...               [ 0.6341,  0.1403,  0.9759,  0.4064],
		...               [ 0.5918,  0.6948,  0.904 ,  0.3721],
		...               [ 0.0921,  0.2481,  0.1188,  0.1366]])
		>>> stats.zscore(b, axis=1, ddof=1)
		array([[-0.19264823, -1.28415119,  1.07259584,  0.40420358],
		       [ 0.33048416, -1.37380874,  0.04251374,  1.00081084],
		       [ 0.26796377, -1.12598418,  1.23283094, -0.37481053],
		       [-0.22095197,  0.24468594,  1.19042819, -1.21416216],
		       [-0.82780366,  1.4457416 , -0.43867764, -0.1792603 ]])
	**/
	static public function zscore(a:Dynamic, ?axis:Dynamic, ?ddof:Dynamic):Dynamic;
}