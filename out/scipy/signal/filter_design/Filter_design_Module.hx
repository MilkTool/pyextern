/* This file is generated, do not edit! */
package scipy.signal.filter_design;
@:pythonImport("scipy.signal.filter_design") extern class Filter_design_Module {
	static public var EPSILON : Dynamic;
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
		Given a function `f`, its first derivative `fp`, and a set of initial
		guesses `x0`, simultaneously find the roots of the polynomial using the
		Aberth-Ehrlich method.
		
		``len(x0)`` should equal the number of roots of `f`.
		
		(This is not a complete implementation of Bini's algorithm.)
	**/
	static public function _aberth(f:Dynamic, fp:Dynamic, x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Aligns the shapes of multiple numerators.
		
		Given an array of numerator coefficient arrays [[a_1, a_2,...,
		a_n],..., [b_1, b_2,..., b_m]], this function pads shorter numerator
		arrays with zero's so that all numerators have the same length. Such
		alignment is necessary for functions like 'tf2ss', which needs the
		alignment when dealing with SIMO transfer functions.
		
		Parameters
		----------
		nums: array_like
		    Numerator or list of numerators. Not necessarily with same length.
		
		Returns
		-------
		nums: array
		    The numerator. If `nums` input was a list of numerators then a 2d
		    array with padded zeros for shorter numerators is returned. Otherwise
		    returns ``np.asarray(nums)``.
	**/
	static public function _align_nums(nums:Dynamic):Dynamic;
	/**
		Return the coefficients of Bessel polynomial of degree `n`
		
		If `reverse` is true, a reverse Bessel polynomial is output.
		
		Output is a list of coefficients:
		[1]                   = 1
		[1,  1]               = 1*s   +  1
		[1,  3,  3]           = 1*s^2 +  3*s   +  3
		[1,  6, 15, 15]       = 1*s^3 +  6*s^2 + 15*s   +  15
		[1, 10, 45, 105, 105] = 1*s^4 + 10*s^3 + 45*s^2 + 105*s + 105
		etc.
		
		Output is a Python list of arbitrary precision long ints, so n is only
		limited by your hardware's memory.
		
		Sequence is http://oeis.org/A001498 , and output can be confirmed to
		match http://oeis.org/A001498/b001498.txt :
		
		>>> i = 0
		>>> for n in range(51):
		...     for x in _bessel_poly(n, reverse=True):
		...         print(i, x)
		...         i += 1
	**/
	static public function _bessel_poly(n:Dynamic, ?reverse:Dynamic):Dynamic;
	/**
		Find zeros of ordinary Bessel polynomial of order `N`, by root-finding of
		modified Bessel function of the second kind
	**/
	static public function _bessel_zeros(N:Dynamic):Dynamic;
	/**
		Return approximate zero locations of Bessel polynomials y_n(x) for order
		`n` using polynomial fit (Campos-Calderon 2011)
	**/
	static public function _campos_zeros(n:Dynamic):Dynamic;
	/**
		Sort into pairs of complex conjugates.
		
		Complex conjugates in `z` are sorted by increasing real part.  In each
		pair, the number with negative imaginary part appears first.
		
		If pairs have identical real parts, they are sorted by increasing
		imaginary magnitude.
		
		Two complex numbers are considered a conjugate pair if their real and
		imaginary parts differ in magnitude by less than ``tol * abs(z)``.  The
		pairs are forced to be exact complex conjugates by averaging the positive
		and negative values.
		
		Purely real numbers are also sorted, but placed after the complex
		conjugate pairs.  A number is considered real if its imaginary part is
		smaller than `tol` times the magnitude of the number.
		
		Parameters
		----------
		z : array_like
		    1-dimensional input array to be sorted.
		tol : float, optional
		    Relative tolerance for testing realness and conjugate equality.
		    Default is ``100 * spacing(1)`` of `z`'s data type (i.e. 2e-14 for
		    float64)
		
		Returns
		-------
		y : ndarray
		    Complex conjugate pairs followed by real numbers.
		
		Raises
		------
		ValueError
		    If there are any complex numbers in `z` for which a conjugate
		    cannot be found.
		
		See Also
		--------
		_cplxreal
		
		Examples
		--------
		>>> a = [4, 3, 1, 2-2j, 2+2j, 2-1j, 2+1j, 2-1j, 2+1j, 1+1j, 1-1j]
		>>> z = _cplxpair(a)
		>>> print(z)
		[ 1.-1.j  1.+1.j  2.-1.j  2.+1.j  2.-1.j  2.+1.j  2.-2.j  2.+2.j  1.+0.j
		  3.+0.j  4.+0.j]
	**/
	static public function _cplxpair(z:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Split into complex and real parts, combining conjugate pairs.
		
		The 1D input vector `z` is split up into its complex (`zc`) and real (`zr`)
		elements.  Every complex element must be part of a complex-conjugate pair,
		which are combined into a single number (with positive imaginary part) in
		the output.  Two complex numbers are considered a conjugate pair if their
		real and imaginary parts differ in magnitude by less than ``tol * abs(z)``.
		
		Parameters
		----------
		z : array_like
		    Vector of complex numbers to be sorted and split
		tol : float, optional
		    Relative tolerance for testing realness and conjugate equality.
		    Default is ``100 * spacing(1)`` of `z`'s data type (i.e. 2e-14 for
		    float64)
		
		Returns
		-------
		zc : ndarray
		    Complex elements of `z`, with each pair represented by a single value
		    having positive imaginary part, sorted first by real part, and then
		    by magnitude of imaginary part.  The pairs are averaged when combined
		    to reduce error.
		zr : ndarray
		    Real elements of `z` (those having imaginary part less than
		    `tol` times their magnitude), sorted by value.
		
		Raises
		------
		ValueError
		    If there are any complex numbers in `z` for which a conjugate
		    cannot be found.
		
		See Also
		--------
		_cplxpair
		
		Examples
		--------
		>>> a = [4, 3, 1, 2-2j, 2+2j, 2-1j, 2+1j, 2-1j, 2+1j, 1+1j, 1-1j]
		>>> zc, zr = _cplxreal(a)
		>>> print(zc)
		[ 1.+1.j  2.+1.j  2.+1.j  2.+2.j]
		>>> print(zr)
		[ 1.  3.  4.]
	**/
	static public function _cplxreal(z:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Design notch or peak digital filter.
		
		Parameters
		----------
		w0 : float
		    Normalized frequency to remove from a signal. It is a
		    scalar that must satisfy  ``0 < w0 < 1``, with ``w0 = 1``
		    corresponding to half of the sampling frequency.
		Q : float
		    Quality factor. Dimensionless parameter that characterizes
		    notch filter -3 dB bandwidth ``bw`` relative to its center
		    frequency, ``Q = w0/bw``.
		ftype : str
		    The type of IIR filter to design:
		
		        - notch filter : ``notch``
		        - peak filter  : ``peak``
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (``b``) and denominator (``a``) polynomials
		    of the IIR filter.
	**/
	static public function _design_notch_peak_filter(w0:Dynamic, Q:Dynamic, ftype:Dynamic):Dynamic;
	/**
		Return the factorial of `x` to the `n` falling.
		
		This is defined as:
		
		.. math::   x^\underline n = (x)_n = x (x-1) \cdots (x-n+1)
		
		This can more efficiently calculate ratios of factorials, since:
		
		n!/m! == falling_factorial(n, n-m)
		
		where n >= m
		
		skipping the factors that cancel out
		
		the usual factorial n! == ff(n, n)
	**/
	static public function _falling_factorial(x:Dynamic, n:Dynamic):Dynamic;
	static public function _kratio(m:Dynamic, k_ratio:Dynamic):Dynamic;
	/**
		Get the next closest real or complex element based on distance
	**/
	static public function _nearest_real_complex_idx(fro:Dynamic, to:Dynamic, which:Dynamic):Dynamic;
	/**
		Numerically find frequency shift to apply to delay-normalized filter such
		that -3 dB point is at 1 rad/sec.
		
		`p` is an array_like of polynomial poles
		`k` is a float gain
		
		First 10 values are listed in "Bessel Scale Factors" table,
		"Bessel Filters Polynomials, Poles and Circuit Elements 2003, C. Bond."
	**/
	static public function _norm_factor(p:Dynamic, k:Dynamic):Dynamic;
	/**
		Return relative degree of transfer function from zeros and poles
	**/
	static public function _relative_degree(z:Dynamic, p:Dynamic):Dynamic;
	/**
		Helper to validate a SOS input
	**/
	static public function _validate_sos(sos:Dynamic):Dynamic;
	static public function _vratio(u:Dynamic, ineps:Dynamic, mp:Dynamic):Dynamic;
	/**
		absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the absolute value element-wise.
		
		``np.abs`` is a shorthand for this function.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> x = np.array([-1.2, 1.2])
		>>> np.absolute(x)
		array([ 1.2,  1.2])
		>>> np.absolute(1.2 + 1j)
		1.5620499351813308
		
		Plot the function over ``[-10, 10]``:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(start=-10, stop=10, num=101)
		>>> plt.plot(x, np.absolute(x))
		>>> plt.show()
		
		Plot the function over the complex plane:
		
		>>> xx = x + 1j * x[:, np.newaxis]
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
		>>> plt.show()
	**/
	static public function abs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the absolute value element-wise.
		
		``np.abs`` is a shorthand for this function.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> x = np.array([-1.2, 1.2])
		>>> np.absolute(x)
		array([ 1.2,  1.2])
		>>> np.absolute(1.2 + 1j)
		1.5620499351813308
		
		Plot the function over ``[-10, 10]``:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(start=-10, stop=10, num=101)
		>>> plt.plot(x, np.absolute(x))
		>>> plt.show()
		
		Plot the function over the complex plane:
		
		>>> xx = x + 1j * x[:, np.newaxis]
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
		>>> plt.show()
	**/
	static public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Append values to the end of an array.
		
		Parameters
		----------
		arr : array_like
		    Values are appended to a copy of this array.
		values : array_like
		    These values are appended to a copy of `arr`.  It must be of the
		    correct shape (the same shape as `arr`, excluding `axis`).  If
		    `axis` is not specified, `values` can be any shape and will be
		    flattened before use.
		axis : int, optional
		    The axis along which `values` are appended.  If `axis` is not
		    given, both `arr` and `values` are flattened before use.
		
		Returns
		-------
		append : ndarray
		    A copy of `arr` with `values` appended to `axis`.  Note that
		    `append` does not occur in-place: a new array is allocated and
		    filled.  If `axis` is None, `out` is a flattened array.
		
		See Also
		--------
		insert : Insert elements into an array.
		delete : Delete elements from an array.
		
		Examples
		--------
		>>> np.append([1, 2, 3], [[4, 5, 6], [7, 8, 9]])
		array([1, 2, 3, 4, 5, 6, 7, 8, 9])
		
		When `axis` is specified, `values` must have the correct shape.
		
		>>> np.append([[1, 2, 3], [4, 5, 6]], [[7, 8, 9]], axis=0)
		array([[1, 2, 3],
		       [4, 5, 6],
		       [7, 8, 9]])
		>>> np.append([[1, 2, 3], [4, 5, 6]], [7, 8, 9], axis=0)
		Traceback (most recent call last):
		...
		ValueError: arrays must have same number of dimensions
	**/
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		arccosh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic cosine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		arccosh : ndarray
		    Array of the same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		
		cosh, arcsinh, sinh, arctanh, tanh
		
		Notes
		-----
		`arccosh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cosh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]` and the real part in
		``[0, inf]``.
		
		For real-valued input data types, `arccosh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccosh` is a complex analytical function that
		has a branch cut `[-inf, 1]` and is continuous from above on it.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arccosh
		
		Examples
		--------
		>>> np.arccosh([np.e, 10.0])
		array([ 1.65745445,  2.99322285])
		>>> np.arccosh(1)
		0.0
	**/
	static public function arccosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic sine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Array of the same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		`arcsinh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `sinh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi/2, pi/2]`.
		
		For real-valued input data types, `arcsinh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		returns ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytical function that
		has branch cuts `[1j, infj]` and `[-1j, -infj]` and is continuous from
		the right on the former and from the left on the latter.
		
		The inverse hyperbolic sine is also known as `asinh` or ``sinh^-1``.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arcsinh
		
		Examples
		--------
		>>> np.arcsinh(np.array([np.e, 10.0]))
		array([ 1.72538256,  2.99822295])
	**/
	static public function arcsinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric inverse tangent, element-wise.
		
		The inverse of tan, so that if ``y = tan(x)`` then ``x = arctan(y)``.
		
		Parameters
		----------
		x : array_like
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Out has the same shape as `x`.  Its real part is in
		    ``[-pi/2, pi/2]`` (``arctan(+/-inf)`` returns ``+/-pi/2``).
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		arctan2 : The "four quadrant" arctan of the angle formed by (`x`, `y`)
		    and the positive `x`-axis.
		angle : Argument of complex values.
		
		Notes
		-----
		`arctan` is a multi-valued function: for each `x` there are infinitely
		many numbers `z` such that tan(`z`) = `x`.  The convention is to return
		the angle `z` whose real part lies in [-pi/2, pi/2].
		
		For real-valued input data types, `arctan` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arctan` is a complex analytic function that
		has [`1j, infj`] and [`-1j, -infj`] as branch cuts, and is continuous
		from the left on the former and from the right on the latter.
		
		The inverse tangent is also known as `atan` or tan^{-1}.
		
		References
		----------
		Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
		10th printing, New York: Dover, 1964, pp. 79.
		http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		We expect the arctan of 0 to be 0, and of 1 to be pi/4:
		
		>>> np.arctan([0, 1])
		array([ 0.        ,  0.78539816])
		
		>>> np.pi/4
		0.78539816339744828
		
		Plot arctan:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-10, 10)
		>>> plt.plot(x, np.arctan(x))
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function arctan(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Convert inputs to arrays with at least one dimension.
		
		Scalar inputs are converted to 1-dimensional arrays, whilst
		higher-dimensional inputs are preserved.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more input arrays.
		
		Returns
		-------
		ret : ndarray
		    An array, or list of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([ 1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.],
		       [ 6.,  7.,  8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	static public var band_dict : Dynamic;
	/**
		Band Stop Objective Function for order minimization.
		
		Returns the non-integer order for an analog band stop filter.
		
		Parameters
		----------
		wp : scalar
		    Edge of passband `passb`.
		ind : int, {0, 1}
		    Index specifying which `passb` edge to vary (0 or 1).
		passb : ndarray
		    Two element sequence of fixed passband edges.
		stopb : ndarray
		    Two element sequence of fixed stopband edges.
		gstop : float
		    Amount of attenuation in stopband in dB.
		gpass : float
		    Amount of ripple in the passband in dB.
		type : {'butter', 'cheby', 'ellip'}
		    Type of filter.
		
		Returns
		-------
		n : scalar
		    Filter order (possibly non-integer).
	**/
	static public function band_stop_obj(wp:Dynamic, ind:Dynamic, passb:Dynamic, stopb:Dynamic, gpass:Dynamic, gstop:Dynamic, type:Dynamic):Dynamic;
	/**
		Bessel/Thomson digital and analog filter design.
		
		Design an Nth-order digital or analog Bessel filter and return the
		filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies (defined
		    by the `norm` parameter).
		    For analog filters, `Wn` is an angular frequency (e.g. rad/s).
		    For digital filters, `Wn` is normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`Wn` is thus in
		    half-cycles / sample.)
		btype : {'lowpass', 'highpass', 'bandpass', 'bandstop'}, optional
		    The type of filter.  Default is 'lowpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.  (See Notes.)
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba'.
		norm : {'phase', 'delay', 'mag'}, optional
		    Critical frequency normalization:
		
		    ``phase``
		        The filter is normalized such that the phase response reaches its
		        midpoint at angular (e.g. rad/s) frequency `Wn`.  This happens for
		        both low-pass and high-pass filters, so this is the
		        "phase-matched" case.
		
		        The magnitude response asymptotes are the same as a Butterworth
		        filter of the same order with a cutoff of `Wn`.
		
		        This is the default, and matches MATLAB's implementation.
		
		    ``delay``
		        The filter is normalized such that the group delay in the passband
		        is 1/`Wn` (e.g. seconds).  This is the "natural" type obtained by
		        solving Bessel polynomials.
		
		    ``mag``
		        The filter is normalized such that the gain magnitude is -3 dB at
		        angular frequency `Wn`.
		
		    .. versionadded:: 0.18.0
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (`b`) and denominator (`a`) polynomials of the IIR filter.
		    Only returned if ``output='ba'``.
		z, p, k : ndarray, ndarray, float
		    Zeros, poles, and system gain of the IIR filter transfer
		    function.  Only returned if ``output='zpk'``.
		sos : ndarray
		    Second-order sections representation of the IIR filter.
		    Only returned if ``output=='sos'``.
		
		Notes
		-----
		Also known as a Thomson filter, the analog Bessel filter has maximally
		flat group delay and maximally linear phase response, with very little
		ringing in the step response. [1]_
		
		The Bessel is inherently an analog filter.  This function generates digital
		Bessel filters using the bilinear transform, which does not preserve the
		phase response of the analog filter.  As such, it is only approximately
		correct at frequencies below about fs/4.  To get maximally-flat group
		delay at higher frequencies, the analog Bessel filter must be transformed
		using phase-preserving techniques.
		
		See `besselap` for implementation details and references.
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the phase-normalized frequency response, showing the relationship
		to the Butterworth's cutoff frequency (green):
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.butter(4, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(np.abs(h)), color='silver', ls='dashed')
		>>> b, a = signal.bessel(4, 100, 'low', analog=True, norm='phase')
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(np.abs(h)))
		>>> plt.title('Bessel filter magnitude response (with Butterworth)')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green')  # cutoff frequency
		>>> plt.show()
		
		and the phase midpoint:
		
		>>> plt.figure()
		>>> plt.semilogx(w, np.unwrap(np.angle(h)))
		>>> plt.axvline(100, color='green')  # cutoff frequency
		>>> plt.axhline(-np.pi, color='red')  # phase midpoint
		>>> plt.title('Bessel filter phase response')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Phase [radians]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.show()
		
		Plot the magnitude-normalized frequency response, showing the -3 dB cutoff:
		
		>>> b, a = signal.bessel(3, 10, 'low', analog=True, norm='mag')
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(np.abs(h)))
		>>> plt.axhline(-3, color='red')  # -3 dB magnitude
		>>> plt.axvline(10, color='green')  # cutoff frequency
		>>> plt.title('Magnitude-normalized Bessel filter frequency response')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.show()
		
		Plot the delay-normalized filter, showing the maximally-flat group delay
		at 0.1 seconds:
		
		>>> b, a = signal.bessel(5, 1/0.1, 'low', analog=True, norm='delay')
		>>> w, h = signal.freqs(b, a)
		>>> plt.figure()
		>>> plt.semilogx(w[1:], -np.diff(np.unwrap(np.angle(h)))/np.diff(w))
		>>> plt.axhline(0.1, color='red')  # 0.1 seconds group delay
		>>> plt.title('Bessel filter group delay')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Group delay [seconds]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.show()
		
		References
		----------
		.. [1] Thomson, W.E., "Delay Networks having Maximally Flat Frequency
		       Characteristics", Proceedings of the Institution of Electrical
		       Engineers, Part III, November 1949, Vol. 96, No. 44, pp. 487-490.
	**/
	static public function bessel(N:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic, ?norm:Dynamic):Dynamic;
	static public var bessel_norms : Dynamic;
	/**
		Return (z,p,k) for analog prototype of an Nth-order Bessel filter.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		norm : {'phase', 'delay', 'mag'}, optional
		    Frequency normalization:
		
		    ``phase``
		        The filter is normalized such that the phase response reaches its
		        midpoint at an angular (e.g. rad/s) cutoff frequency of 1.  This
		        happens for both low-pass and high-pass filters, so this is the
		        "phase-matched" case. [6]_
		
		        The magnitude response asymptotes are the same as a Butterworth
		        filter of the same order with a cutoff of `Wn`.
		
		        This is the default, and matches MATLAB's implementation.
		
		    ``delay``
		        The filter is normalized such that the group delay in the passband
		        is 1 (e.g. 1 second).  This is the "natural" type obtained by
		        solving Bessel polynomials
		
		    ``mag``
		        The filter is normalized such that the gain magnitude is -3 dB at
		        angular frequency 1.  This is called "frequency normalization" by
		        Bond. [1]_
		
		    .. versionadded:: 0.18.0
		
		Returns
		-------
		z : ndarray
		    Zeros of the transfer function. Is always an empty array.
		p : ndarray
		    Poles of the transfer function.
		k : scalar
		    Gain of the transfer function.  For phase-normalized, this is always 1.
		
		See Also
		--------
		bessel : Filter design function using this prototype
		
		Notes
		-----
		To find the pole locations, approximate starting points are generated [2]_
		for the zeros of the ordinary Bessel polynomial [3]_, then the
		Aberth-Ehrlich method [4]_ [5]_ is used on the Kv(x) Bessel function to
		calculate more accurate zeros, and these locations are then inverted about
		the unit circle.
		
		References
		----------
		.. [1] C.R. Bond, "Bessel Filter Constants",
		       http://www.crbond.com/papers/bsf.pdf
		.. [2] Campos and Calderon, "Approximate closed-form formulas for the
		       zeros of the Bessel Polynomials", :arXiv:`1105.0957`.
		.. [3] Thomson, W.E., "Delay Networks having Maximally Flat Frequency
		       Characteristics", Proceedings of the Institution of Electrical
		       Engineers, Part III, November 1949, Vol. 96, No. 44, pp. 487-490.
		.. [4] Aberth, "Iteration Methods for Finding all Zeros of a Polynomial
		       Simultaneously", Mathematics of Computation, Vol. 27, No. 122,
		       April 1973
		.. [5] Ehrlich, "A modified Newton method for polynomials", Communications
		       of the ACM, Vol. 10, Issue 2, pp. 107-108, Feb. 1967,
		       :DOI:`10.1145/363067.363115`
		.. [6] Miller and Bohn, "A Bessel Filter Crossover, and Its Relation to
		       Others", RaneNote 147, 1998, http://www.rane.com/note147.html
	**/
	static public function besselap(N:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Return a digital filter from an analog one using a bilinear transform.
		
		The bilinear transform substitutes ``(z-1) / (z+1)`` for ``s``.
		
		See Also
		--------
		lp2lp, lp2hp, lp2bp, lp2bs
		bilinear_zpk
	**/
	static public function bilinear(b:Dynamic, a:Dynamic, ?fs:Dynamic):Dynamic;
	/**
		Return a digital IIR filter from an analog one using a bilinear transform.
		
		Transform a set of poles and zeros from the analog s-plane to the digital
		z-plane using Tustin's method, which substitutes ``(z-1) / (z+1)`` for
		``s``, maintaining the shape of the frequency response.
		
		Parameters
		----------
		z : array_like
		    Zeros of the analog filter transfer function.
		p : array_like
		    Poles of the analog filter transfer function.
		k : float
		    System gain of the analog filter transfer function.
		fs : float
		    Sample rate, as ordinary frequency (e.g. hertz). No prewarping is
		    done in this function.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transformed digital filter transfer function.
		p : ndarray
		    Poles of the transformed digital filter transfer function.
		k : float
		    System gain of the transformed digital filter.
		
		See Also
		--------
		lp2lp_zpk, lp2hp_zpk, lp2bp_zpk, lp2bs_zpk
		bilinear
		
		Notes
		-----
		.. versionadded:: 1.1.0
	**/
	static public function bilinear_zpk(z:Dynamic, p:Dynamic, k:Dynamic, fs:Dynamic):Dynamic;
	/**
		Return (z,p,k) for analog prototype of Nth-order Butterworth filter.
		
		The filter will have an angular (e.g. rad/s) cutoff frequency of 1.
		
		See Also
		--------
		butter : Filter design function using this prototype
	**/
	static public function buttap(N:Dynamic):Dynamic;
	/**
		Butterworth digital and analog filter design.
		
		Design an Nth-order digital or analog Butterworth filter and return
		the filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For a Butterworth filter, this is the point at which the gain
		    drops to 1/sqrt(2) that of the passband (the "-3 dB point").
		    For digital filters, `Wn` is normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`Wn` is thus in
		    half-cycles / sample.)
		    For analog filters, `Wn` is an angular frequency (e.g. rad/s).
		btype : {'lowpass', 'highpass', 'bandpass', 'bandstop'}, optional
		    The type of filter.  Default is 'lowpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba'.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (`b`) and denominator (`a`) polynomials of the IIR filter.
		    Only returned if ``output='ba'``.
		z, p, k : ndarray, ndarray, float
		    Zeros, poles, and system gain of the IIR filter transfer
		    function.  Only returned if ``output='zpk'``.
		sos : ndarray
		    Second-order sections representation of the IIR filter.
		    Only returned if ``output=='sos'``.
		
		See Also
		--------
		buttord, buttap
		
		Notes
		-----
		The Butterworth filter has maximally flat frequency response in the
		passband.
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the critical points:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.butter(4, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Butterworth filter frequency response')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.show()
	**/
	static public function butter(N:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Butterworth filter order selection.
		
		Return the order of the lowest order digital or analog Butterworth filter
		that loses no more than `gpass` dB in the passband and has at least
		`gstop` dB attenuation in the stopband.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		
		Returns
		-------
		ord : int
		    The lowest order for a Butterworth filter which meets specs.
		wn : ndarray or float
		    The Butterworth natural frequency (i.e. the "3dB frequency").  Should
		    be used with `butter` to give filter results.
		
		See Also
		--------
		butter : Filter design using order and critical points
		cheb1ord : Find order and critical points from passband and stopband spec
		cheb2ord, ellipord
		iirfilter : General filter design using order and critical frequencies
		iirdesign : General filter design using passband and stopband spec
		
		Examples
		--------
		Design an analog bandpass filter with passband within 3 dB from 20 to
		50 rad/s, while rejecting at least -40 dB below 14 and above 60 rad/s.
		Plot its frequency response, showing the passband and stopband
		constraints in gray.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> N, Wn = signal.buttord([20, 50], [14, 60], 3, 40, True)
		>>> b, a = signal.butter(N, Wn, 'band', True)
		>>> w, h = signal.freqs(b, a, np.logspace(1, 2, 500))
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Butterworth bandpass filter fit to constraints')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.grid(which='both', axis='both')
		>>> plt.fill([1,  14,  14,   1], [-40, -40, 99, 99], '0.9', lw=0) # stop
		>>> plt.fill([20, 20,  50,  50], [-99, -3, -3, -99], '0.9', lw=0) # pass
		>>> plt.fill([60, 60, 1e9, 1e9], [99, -40, -40, 99], '0.9', lw=0) # stop
		>>> plt.axis([10, 100, -60, 3])
		>>> plt.show()
	**/
	static public function buttord(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic):Int;
	/**
		ceil(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the ceiling of the input, element-wise.
		
		The ceil of the scalar `x` is the smallest integer `i`, such that
		`i >= x`.  It is often denoted as :math:`\lceil x \rceil`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The ceiling of each element in `x`, with `float` dtype.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		floor, trunc, rint
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.ceil(a)
		array([-1., -1., -0.,  1.,  2.,  2.,  2.])
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return (z,p,k) for Nth-order Chebyshev type I analog lowpass filter.
		
		The returned filter prototype has `rp` decibels of ripple in the passband.
		
		The filter's angular (e.g. rad/s) cutoff frequency is normalized to 1,
		defined as the point at which the gain first drops below ``-rp``.
		
		See Also
		--------
		cheby1 : Filter design function using this prototype
	**/
	static public function cheb1ap(N:Dynamic, rp:Dynamic):Dynamic;
	/**
		Chebyshev type I filter order selection.
		
		Return the order of the lowest order digital or analog Chebyshev Type I
		filter that loses no more than `gpass` dB in the passband and has at
		least `gstop` dB attenuation in the stopband.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		
		Returns
		-------
		ord : int
		    The lowest order for a Chebyshev type I filter that meets specs.
		wn : ndarray or float
		    The Chebyshev natural frequency (the "3dB frequency") for use with
		    `cheby1` to give filter results.
		
		See Also
		--------
		cheby1 : Filter design using order and critical points
		buttord : Find order and critical points from passband and stopband spec
		cheb2ord, ellipord
		iirfilter : General filter design using order and critical frequencies
		iirdesign : General filter design using passband and stopband spec
		
		Examples
		--------
		Design a digital lowpass filter such that the passband is within 3 dB up
		to 0.2*(fs/2), while rejecting at least -40 dB above 0.3*(fs/2).  Plot its
		frequency response, showing the passband and stopband constraints in gray.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> N, Wn = signal.cheb1ord(0.2, 0.3, 3, 40)
		>>> b, a = signal.cheby1(N, 3, Wn, 'low')
		>>> w, h = signal.freqz(b, a)
		>>> plt.semilogx(w / np.pi, 20 * np.log10(abs(h)))
		>>> plt.title('Chebyshev I lowpass filter fit to constraints')
		>>> plt.xlabel('Normalized frequency')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.grid(which='both', axis='both')
		>>> plt.fill([.01, 0.2, 0.2, .01], [-3, -3, -99, -99], '0.9', lw=0) # stop
		>>> plt.fill([0.3, 0.3,   2,   2], [ 9, -40, -40,  9], '0.9', lw=0) # pass
		>>> plt.axis([0.08, 1, -60, 3])
		>>> plt.show()
	**/
	static public function cheb1ord(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic):Int;
	/**
		Return (z,p,k) for Nth-order Chebyshev type I analog lowpass filter.
		
		The returned filter prototype has `rs` decibels of ripple in the stopband.
		
		The filter's angular (e.g. rad/s) cutoff frequency is normalized to 1,
		defined as the point at which the gain first reaches ``-rs``.
		
		See Also
		--------
		cheby2 : Filter design function using this prototype
	**/
	static public function cheb2ap(N:Dynamic, rs:Dynamic):Dynamic;
	/**
		Chebyshev type II filter order selection.
		
		Return the order of the lowest order digital or analog Chebyshev Type II
		filter that loses no more than `gpass` dB in the passband and has at least
		`gstop` dB attenuation in the stopband.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		
		Returns
		-------
		ord : int
		    The lowest order for a Chebyshev type II filter that meets specs.
		wn : ndarray or float
		    The Chebyshev natural frequency (the "3dB frequency") for use with
		    `cheby2` to give filter results.
		
		See Also
		--------
		cheby2 : Filter design using order and critical points
		buttord : Find order and critical points from passband and stopband spec
		cheb1ord, ellipord
		iirfilter : General filter design using order and critical frequencies
		iirdesign : General filter design using passband and stopband spec
		
		Examples
		--------
		Design a digital bandstop filter which rejects -60 dB from 0.2*(fs/2) to
		0.5*(fs/2), while staying within 3 dB below 0.1*(fs/2) or above
		0.6*(fs/2).  Plot its frequency response, showing the passband and
		stopband constraints in gray.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> N, Wn = signal.cheb2ord([0.1, 0.6], [0.2, 0.5], 3, 60)
		>>> b, a = signal.cheby2(N, 60, Wn, 'stop')
		>>> w, h = signal.freqz(b, a)
		>>> plt.semilogx(w / np.pi, 20 * np.log10(abs(h)))
		>>> plt.title('Chebyshev II bandstop filter fit to constraints')
		>>> plt.xlabel('Normalized frequency')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.grid(which='both', axis='both')
		>>> plt.fill([.01, .1, .1, .01], [-3,  -3, -99, -99], '0.9', lw=0) # stop
		>>> plt.fill([.2,  .2, .5,  .5], [ 9, -60, -60,   9], '0.9', lw=0) # pass
		>>> plt.fill([.6,  .6,  2,   2], [-99, -3,  -3, -99], '0.9', lw=0) # stop
		>>> plt.axis([0.06, 1, -80, 3])
		>>> plt.show()
	**/
	static public function cheb2ord(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic):Int;
	/**
		Chebyshev type I digital and analog filter design.
		
		Design an Nth-order digital or analog Chebyshev type I filter and
		return the filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		rp : float
		    The maximum ripple allowed below unity gain in the passband.
		    Specified in decibels, as a positive number.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For Type I filters, this is the point in the transition band at which
		    the gain first drops below -`rp`.
		    For digital filters, `Wn` is normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`Wn` is thus in
		    half-cycles / sample.)
		    For analog filters, `Wn` is an angular frequency (e.g. rad/s).
		btype : {'lowpass', 'highpass', 'bandpass', 'bandstop'}, optional
		    The type of filter.  Default is 'lowpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba'.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (`b`) and denominator (`a`) polynomials of the IIR filter.
		    Only returned if ``output='ba'``.
		z, p, k : ndarray, ndarray, float
		    Zeros, poles, and system gain of the IIR filter transfer
		    function.  Only returned if ``output='zpk'``.
		sos : ndarray
		    Second-order sections representation of the IIR filter.
		    Only returned if ``output=='sos'``.
		
		See Also
		--------
		cheb1ord, cheb1ap
		
		Notes
		-----
		The Chebyshev type I filter maximizes the rate of cutoff between the
		frequency response's passband and stopband, at the expense of ripple in
		the passband and increased ringing in the step response.
		
		Type I filters roll off faster than Type II (`cheby2`), but Type II
		filters do not have any ripple in the passband.
		
		The equiripple passband has N maxima or minima (for example, a
		5th-order filter has 3 maxima and 2 minima).  Consequently, the DC gain is
		unity for odd-order filters, or -rp dB for even-order filters.
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the critical points:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.cheby1(4, 5, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Chebyshev Type I frequency response (rp=5)')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.axhline(-5, color='green') # rp
		>>> plt.show()
	**/
	static public function cheby1(N:Dynamic, rp:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Chebyshev type II digital and analog filter design.
		
		Design an Nth-order digital or analog Chebyshev type II filter and
		return the filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		rs : float
		    The minimum attenuation required in the stop band.
		    Specified in decibels, as a positive number.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For Type II filters, this is the point in the transition band at which
		    the gain first reaches -`rs`.
		    For digital filters, `Wn` is normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`Wn` is thus in
		    half-cycles / sample.)
		    For analog filters, `Wn` is an angular frequency (e.g. rad/s).
		btype : {'lowpass', 'highpass', 'bandpass', 'bandstop'}, optional
		    The type of filter.  Default is 'lowpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba'.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (`b`) and denominator (`a`) polynomials of the IIR filter.
		    Only returned if ``output='ba'``.
		z, p, k : ndarray, ndarray, float
		    Zeros, poles, and system gain of the IIR filter transfer
		    function.  Only returned if ``output='zpk'``.
		sos : ndarray
		    Second-order sections representation of the IIR filter.
		    Only returned if ``output=='sos'``.
		
		See Also
		--------
		cheb2ord, cheb2ap
		
		Notes
		-----
		The Chebyshev type II filter maximizes the rate of cutoff between the
		frequency response's passband and stopband, at the expense of ripple in
		the stopband and increased ringing in the step response.
		
		Type II filters do not roll off as fast as Type I (`cheby1`).
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the critical points:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.cheby2(4, 40, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Chebyshev Type II frequency response (rs=40)')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.axhline(-40, color='green') # rs
		>>> plt.show()
	**/
	static public function cheby2(N:Dynamic, rs:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		The number of combinations of N things taken k at a time.
		
		This is often expressed as "N choose k".
		
		Parameters
		----------
		N : int, ndarray
		    Number of things.
		k : int, ndarray
		    Number of elements taken.
		exact : bool, optional
		    If `exact` is False, then floating point precision is used, otherwise
		    exact long integer is computed.
		repetition : bool, optional
		    If `repetition` is True, then the number of combinations with
		    repetition is computed.
		
		Returns
		-------
		val : int, float, ndarray
		    The total number of combinations.
		
		See Also
		--------
		binom : Binomial coefficient ufunc
		
		Notes
		-----
		- Array arguments accepted only for exact=False case.
		- If k > N, N < 0, or k < 0, then a 0 is returned.
		
		Examples
		--------
		>>> from scipy.special import comb
		>>> k = np.array([3, 4])
		>>> n = np.array([10, 10])
		>>> comb(n, k, exact=False)
		array([ 120.,  210.])
		>>> comb(10, 3, exact=True)
		120L
		>>> comb(10, 3, exact=True, repetition=True)
		220L
	**/
	static public function comb(N:Dynamic, k:Dynamic, ?exact:Dynamic, ?repetition:Dynamic):Dynamic;
	/**
		concatenate((a1, a2, ...), axis=0, out=None)
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  If axis is None,
		    arrays are flattened before use.  Default is 0.
		out : ndarray, optional
		    If provided, the destination to place the result. The shape must be
		    correct, matching that of what concatenate would have returned if no
		    out argument were specified.
		
		Returns
		-------
		res : ndarray
		    The concatenated array.
		
		See Also
		--------
		ma.concatenate : Concatenate function that preserves input masks.
		array_split : Split an array into multiple sub-arrays of equal or
		              near-equal size.
		split : Split array into a list of multiple sub-arrays of equal size.
		hsplit : Split array into multiple sub-arrays horizontally (column wise)
		vsplit : Split array into multiple sub-arrays vertically (row wise)
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise)
		vstack : Stack arrays in sequence vertically (row wise)
		dstack : Stack arrays in sequence depth wise (along third dimension)
		
		Notes
		-----
		When one or more of the arrays to be concatenated is a MaskedArray,
		this function will return a MaskedArray object instead of an ndarray,
		but the input masks are *not* preserved. In cases where a MaskedArray
		is expected as input, use the ma.concatenate function from the masked
		array module instead.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> b = np.array([[5, 6]])
		>>> np.concatenate((a, b), axis=0)
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.concatenate((a, b.T), axis=1)
		array([[1, 2, 5],
		       [3, 4, 6]])
		>>> np.concatenate((a, b), axis=None)
		array([1, 2, 3, 4, 5, 6])
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data = [0 -- 2],
		             mask = [False  True False],
		       fill_value = 999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data = [0 1 2 2 3 4],
		             mask = False,
		       fill_value = 999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data = [0 -- 2 2 3 4],
		             mask = [False  True False False False False],
		       fill_value = 999999)
	**/
	static public function concatenate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> np.conjugate(1+2j)
		(1-2j)
		
		>>> x = np.eye(2) + 1j * np.eye(2)
		>>> np.conjugate(x)
		array([[ 1.-1.j,  0.-0.j],
		       [ 0.-0.j,  1.-1.j]])
	**/
	static public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Hyperbolic cosine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) + np.exp(-x))`` and ``np.cos(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array of same shape as `x`.
		    This is a scalar if `x` is a scalar.
		
		Examples
		--------
		>>> np.cosh(0)
		1.0
		
		The hyperbolic cosine describes the shape of a hanging cable:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-4, 4, 1000)
		>>> plt.plot(x, np.cosh(x))
		>>> plt.show()
	**/
	static public function cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Elliptic (Cauer) digital and analog filter design.
		
		Design an Nth-order digital or analog elliptic filter and return
		the filter coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		rp : float
		    The maximum ripple allowed below unity gain in the passband.
		    Specified in decibels, as a positive number.
		rs : float
		    The minimum attenuation required in the stop band.
		    Specified in decibels, as a positive number.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For elliptic filters, this is the point in the transition band at
		    which the gain first drops below -`rp`.
		    For digital filters, `Wn` is normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`Wn` is thus in
		    half-cycles / sample.)
		    For analog filters, `Wn` is an angular frequency (e.g. rad/s).
		btype : {'lowpass', 'highpass', 'bandpass', 'bandstop'}, optional
		    The type of filter.  Default is 'lowpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba'.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (`b`) and denominator (`a`) polynomials of the IIR filter.
		    Only returned if ``output='ba'``.
		z, p, k : ndarray, ndarray, float
		    Zeros, poles, and system gain of the IIR filter transfer
		    function.  Only returned if ``output='zpk'``.
		sos : ndarray
		    Second-order sections representation of the IIR filter.
		    Only returned if ``output=='sos'``.
		
		See Also
		--------
		ellipord, ellipap
		
		Notes
		-----
		Also known as Cauer or Zolotarev filters, the elliptical filter maximizes
		the rate of transition between the frequency response's passband and
		stopband, at the expense of ripple in both, and increased ringing in the
		step response.
		
		As `rp` approaches 0, the elliptical filter becomes a Chebyshev
		type II filter (`cheby2`).  As `rs` approaches 0, it becomes a Chebyshev
		type I filter (`cheby1`).  As both approach 0, it becomes a Butterworth
		filter (`butter`).
		
		The equiripple passband has N maxima or minima (for example, a
		5th-order filter has 3 maxima and 2 minima).  Consequently, the DC gain is
		unity for odd-order filters, or -rp dB for even-order filters.
		
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Plot the filter's frequency response, showing the critical points:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.ellip(4, 5, 40, 100, 'low', analog=True)
		>>> w, h = signal.freqs(b, a)
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Elliptic filter frequency response (rp=5, rs=40)')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.margins(0, 0.1)
		>>> plt.grid(which='both', axis='both')
		>>> plt.axvline(100, color='green') # cutoff frequency
		>>> plt.axhline(-40, color='green') # rs
		>>> plt.axhline(-5, color='green') # rp
		>>> plt.show()
	**/
	static public function ellip(N:Dynamic, rp:Dynamic, rs:Dynamic, Wn:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Return (z,p,k) of Nth-order elliptic analog lowpass filter.
		
		The filter is a normalized prototype that has `rp` decibels of ripple
		in the passband and a stopband `rs` decibels down.
		
		The filter's angular (e.g. rad/s) cutoff frequency is normalized to 1,
		defined as the point at which the gain first drops below ``-rp``.
		
		See Also
		--------
		ellip : Filter design function using this prototype
		
		References
		----------
		.. [1] Lutova, Tosic, and Evans, "Filter Design for Signal Processing",
		       Chapters 5 and 12.
	**/
	static public function ellipap(N:Dynamic, rp:Dynamic, rs:Dynamic):Dynamic;
	/**
		Elliptic (Cauer) filter order selection.
		
		Return the order of the lowest order digital or analog elliptic filter
		that loses no more than `gpass` dB in the passband and has at least
		`gstop` dB attenuation in the stopband.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		
		Returns
		-------
		ord : int
		    The lowest order for an Elliptic (Cauer) filter that meets specs.
		wn : ndarray or float
		    The Chebyshev natural frequency (the "3dB frequency") for use with
		    `ellip` to give filter results.
		
		See Also
		--------
		ellip : Filter design using order and critical points
		buttord : Find order and critical points from passband and stopband spec
		cheb1ord, cheb2ord
		iirfilter : General filter design using order and critical frequencies
		iirdesign : General filter design using passband and stopband spec
		
		Examples
		--------
		Design an analog highpass filter such that the passband is within 3 dB
		above 30 rad/s, while rejecting -60 dB at 10 rad/s.  Plot its
		frequency response, showing the passband and stopband constraints in gray.
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> N, Wn = signal.ellipord(30, 10, 3, 60, True)
		>>> b, a = signal.ellip(N, 3, 60, Wn, 'high', True)
		>>> w, h = signal.freqs(b, a, np.logspace(0, 3, 500))
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.title('Elliptical highpass filter fit to constraints')
		>>> plt.xlabel('Frequency [radians / second]')
		>>> plt.ylabel('Amplitude [dB]')
		>>> plt.grid(which='both', axis='both')
		>>> plt.fill([.1, 10,  10,  .1], [1e4, 1e4, -60, -60], '0.9', lw=0) # stop
		>>> plt.fill([30, 30, 1e9, 1e9], [-99,  -3,  -3, -99], '0.9', lw=0) # pass
		>>> plt.axis([1, 300, -80, 3])
		>>> plt.show()
	**/
	static public function ellipord(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic):Int;
	/**
		exp(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise exponential of `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='gray')
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='hsv')
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The factorial of a number or array of numbers.
		
		The factorial of non-negative integer `n` is the product of all
		positive integers less than or equal to `n`::
		
		    n! = n * (n - 1) * (n - 2) * ... * 1
		
		Parameters
		----------
		n : int or array_like of ints
		    Input values.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    If True, calculate the answer exactly using long integer arithmetic.
		    If False, result is approximated in floating point rapidly using the
		    `gamma` function.
		    Default is False.
		
		Returns
		-------
		nf : float or int or ndarray
		    Factorial of `n`, as integer or float depending on `exact`.
		
		Notes
		-----
		For arrays with ``exact=True``, the factorial is computed only once, for
		the largest input, with each other result computed in the process.
		The output dtype is increased to ``int64`` or ``object`` if necessary.
		
		With ``exact=False`` the factorial is approximated using the gamma
		function:
		
		.. math:: n! = \Gamma(n+1)
		
		Examples
		--------
		>>> from scipy.special import factorial
		>>> arr = np.array([3, 4, 5])
		>>> factorial(arr, exact=False)
		array([   6.,   24.,  120.])
		>>> factorial(arr, exact=True)
		array([  6,  24, 120])
		>>> factorial(5, exact=True)
		120L
	**/
	static public function factorial(n:Dynamic, ?exact:Dynamic):Dynamic;
	static public var filter_dict : Dynamic;
	/**
		Find array of frequencies for computing the response of an analog filter.
		
		Parameters
		----------
		num, den : array_like, 1-D
		    The polynomial coefficients of the numerator and denominator of the
		    transfer function of the filter or LTI system, where the coefficients
		    are ordered from highest to lowest degree. Or, the roots  of the
		    transfer function numerator and denominator (i.e. zeroes and poles).
		N : int
		    The length of the array to be computed.
		kind : str {'ba', 'zp'}, optional
		    Specifies whether the numerator and denominator are specified by their
		    polynomial coefficients ('ba'), or their roots ('zp').
		
		Returns
		-------
		w : (N,) ndarray
		    A 1-D array of frequencies, logarithmically spaced.
		
		Examples
		--------
		Find a set of nine frequencies that span the "interesting part" of the
		frequency response for the filter with the transfer function
		
		    H(s) = s / (s^2 + 8s + 25)
		
		>>> from scipy import signal
		>>> signal.findfreqs([1, 0], [1, 8, 25], N=9)
		array([  1.00000000e-02,   3.16227766e-02,   1.00000000e-01,
		         3.16227766e-01,   1.00000000e+00,   3.16227766e+00,
		         1.00000000e+01,   3.16227766e+01,   1.00000000e+02])
	**/
	static public function findfreqs(num:Dynamic, den:Dynamic, N:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Compute frequency response of analog filter.
		
		Given the M-order numerator `b` and N-order denominator `a` of an analog
		filter, compute its frequency response::
		
		         b[0]*(jw)**M + b[1]*(jw)**(M-1) + ... + b[M]
		 H(w) = ----------------------------------------------
		         a[0]*(jw)**N + a[1]*(jw)**(N-1) + ... + a[N]
		
		Parameters
		----------
		b : array_like
		    Numerator of a linear filter.
		a : array_like
		    Denominator of a linear filter.
		worN : {None, int, array_like}, optional
		    If None, then compute at 200 frequencies around the interesting parts
		    of the response curve (determined by pole-zero locations).  If a single
		    integer, then compute at that many frequencies.  Otherwise, compute the
		    response at the angular frequencies (e.g. rad/s) given in `worN`.
		plot : callable, optional
		    A callable that takes two arguments. If given, the return parameters
		    `w` and `h` are passed to plot. Useful for plotting the frequency
		    response inside `freqs`.
		
		Returns
		-------
		w : ndarray
		    The angular frequencies at which `h` was computed.
		h : ndarray
		    The frequency response.
		
		See Also
		--------
		freqz : Compute the frequency response of a digital filter.
		
		Notes
		-----
		Using Matplotlib's "plot" function as the callable for `plot` produces
		unexpected results,  this plots the real part of the complex transfer
		function, not the magnitude.  Try ``lambda w, h: plot(w, abs(h))``.
		
		Examples
		--------
		>>> from scipy.signal import freqs, iirfilter
		
		>>> b, a = iirfilter(4, [1, 10], 1, 60, analog=True, ftype='cheby1')
		
		>>> w, h = freqs(b, a, worN=np.logspace(-1, 2, 1000))
		
		>>> import matplotlib.pyplot as plt
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.xlabel('Frequency')
		>>> plt.ylabel('Amplitude response [dB]')
		>>> plt.grid()
		>>> plt.show()
	**/
	static public function freqs(b:Dynamic, a:Dynamic, ?worN:Dynamic, ?plot:Dynamic):Dynamic;
	/**
		Compute frequency response of analog filter.
		
		Given the zeros `z`, poles `p`, and gain `k` of a filter, compute its
		frequency response::
		
		            (jw-z[0]) * (jw-z[1]) * ... * (jw-z[-1])
		 H(w) = k * ----------------------------------------
		            (jw-p[0]) * (jw-p[1]) * ... * (jw-p[-1])
		
		Parameters
		----------
		z : array_like
		    Zeroes of a linear filter
		p : array_like
		    Poles of a linear filter
		k : scalar
		    Gain of a linear filter
		worN : {None, int, array_like}, optional
		    If None, then compute at 200 frequencies around the interesting parts
		    of the response curve (determined by pole-zero locations).  If a single
		    integer, then compute at that many frequencies.  Otherwise, compute the
		    response at the angular frequencies (e.g. rad/s) given in `worN`.
		
		Returns
		-------
		w : ndarray
		    The angular frequencies at which `h` was computed.
		h : ndarray
		    The frequency response.
		
		See Also
		--------
		freqs : Compute the frequency response of an analog filter in TF form
		freqz : Compute the frequency response of a digital filter in TF form
		freqz_zpk : Compute the frequency response of a digital filter in ZPK form
		
		Notes
		-----
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy.signal import freqs_zpk, iirfilter
		
		>>> z, p, k = iirfilter(4, [1, 10], 1, 60, analog=True, ftype='cheby1',
		...                     output='zpk')
		
		>>> w, h = freqs_zpk(z, p, k, worN=np.logspace(-1, 2, 1000))
		
		>>> import matplotlib.pyplot as plt
		>>> plt.semilogx(w, 20 * np.log10(abs(h)))
		>>> plt.xlabel('Frequency')
		>>> plt.ylabel('Amplitude response [dB]')
		>>> plt.grid()
		>>> plt.show()
	**/
	static public function freqs_zpk(z:Dynamic, p:Dynamic, k:Dynamic, ?worN:Dynamic):Dynamic;
	/**
		Compute the frequency response of a digital filter.
		
		Given the M-order numerator `b` and N-order denominator `a` of a digital
		filter, compute its frequency response::
		
		             jw                 -jw              -jwM
		    jw    B(e  )    b[0] + b[1]e    + ... + b[M]e
		 H(e  ) = ------ = -----------------------------------
		             jw                 -jw              -jwN
		          A(e  )    a[0] + a[1]e    + ... + a[N]e
		
		Parameters
		----------
		b : array_like
		    Numerator of a linear filter.  If `b` has dimension greater than 1,
		    it is assumed that the coefficients are stored in the first dimension,
		    and ``b.shape[1:]``, ``a.shape[1:]``, and the shape of the frequencies
		    array must be compatible for broadcasting.
		a : array_like
		    Denominator of a linear filter.  If `b` has dimension greater than 1,
		    it is assumed that the coefficients are stored in the first dimension,
		    and ``b.shape[1:]``, ``a.shape[1:]``, and the shape of the frequencies
		    array must be compatible for broadcasting.
		worN : {None, int, array_like}, optional
		    If None, then compute at 512 equally spaced frequencies.
		    If a single integer, then compute at that many frequencies.  This is
		    a convenient alternative to::
		
		        np.linspace(0, 2*pi if whole else pi, N, endpoint=False)
		
		    Using a number that is fast for FFT computations can result in
		    faster computations (see Notes).
		    If an array_like, compute the response at the frequencies given (in
		    radians/sample).
		whole : bool, optional
		    Normally, frequencies are computed from 0 to the Nyquist frequency,
		    pi radians/sample (upper-half of unit-circle).  If `whole` is True,
		    compute frequencies from 0 to 2*pi radians/sample.
		plot : callable
		    A callable that takes two arguments. If given, the return parameters
		    `w` and `h` are passed to plot. Useful for plotting the frequency
		    response inside `freqz`.
		
		Returns
		-------
		w : ndarray
		    The normalized frequencies at which `h` was computed, in
		    radians/sample.
		h : ndarray
		    The frequency response, as complex numbers.
		
		See Also
		--------
		freqz_zpk
		sosfreqz
		
		Notes
		-----
		Using Matplotlib's :func:`matplotlib.pyplot.plot` function as the callable
		for `plot` produces unexpected results, as this plots the real part of the
		complex transfer function, not the magnitude.
		Try ``lambda w, h: plot(w, np.abs(h))``.
		
		A direct computation via (R)FFT is used to compute the frequency response
		when the following conditions are met:
		
		1. An integer value is given for `worN`.
		2. `worN` is fast to compute via FFT (i.e.,
		   `next_fast_len(worN) <scipy.fftpack.next_fast_len>` equals `worN`).
		3. The denominator coefficients are a single value (``a.shape[0] == 1``).
		4. `worN` is at least as long as the numerator coefficients
		   (``worN >= b.shape[0]``).
		5. If ``b.ndim > 1``, then ``b.shape[-1] == 1``.
		
		For long FIR filters, the FFT approach can have lower error and be much
		faster than the equivalent direct polynomial calculation.
		
		Examples
		--------
		>>> from scipy import signal
		>>> b = signal.firwin(80, 0.5, window=('kaiser', 8))
		>>> w, h = signal.freqz(b)
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.title('Digital filter frequency response')
		>>> ax1 = fig.add_subplot(111)
		
		>>> plt.plot(w, 20 * np.log10(abs(h)), 'b')
		>>> plt.ylabel('Amplitude [dB]', color='b')
		>>> plt.xlabel('Frequency [rad/sample]')
		
		>>> ax2 = ax1.twinx()
		>>> angles = np.unwrap(np.angle(h))
		>>> plt.plot(w, angles, 'g')
		>>> plt.ylabel('Angle (radians)', color='g')
		>>> plt.grid()
		>>> plt.axis('tight')
		>>> plt.show()
		
		Broadcasting Examples
		
		Suppose we have two FIR filters whose coefficients are stored in the
		rows of an array with shape (2, 25).  For this demonstration we'll
		use random data:
		
		>>> np.random.seed(42)
		>>> b = np.random.rand(2, 25)
		
		To compute the frequency response for these two filters with one call
		to `freqz`, we must pass in ``b.T``, because `freqz` expects the first
		axis to hold the coefficients. We must then extend the shape with a
		trivial dimension of length 1 to allow broadcasting with the array
		of frequencies.  That is, we pass in ``b.T[..., np.newaxis]``, which has
		shape (25, 2, 1):
		
		>>> w, h = signal.freqz(b.T[..., np.newaxis], worN=1024)
		>>> w.shape
		(1024,)
		>>> h.shape
		(2, 1024)
		
		Now suppose we have two transfer functions, with the same numerator
		coefficients ``b = [0.5, 0.5]``. The coefficients for the two denominators
		are stored in the first dimension of the two-dimensional array  `a`::
		
		    a = [   1      1  ]
		        [ -0.25, -0.5 ]
		
		>>> b = np.array([0.5, 0.5])
		>>> a = np.array([[1, 1], [-0.25, -0.5]])
		
		Only `a` is more than one-dimensional.  To make it compatible for
		broadcasting with the frequencies, we extend it with a trivial dimension
		in the call to `freqz`:
		
		>>> w, h = signal.freqz(b, a[..., np.newaxis], worN=1024)
		>>> w.shape
		(1024,)
		>>> h.shape
		(2, 1024)
	**/
	static public function freqz(b:Dynamic, ?a:Dynamic, ?worN:Dynamic, ?whole:Dynamic, ?plot:Dynamic):Dynamic;
	/**
		Compute the frequency response of a digital filter in ZPK form.
		
		Given the Zeros, Poles and Gain of a digital filter, compute its frequency
		response::
		
		:math:`H(z)=k \prod_i (z - Z[i]) / \prod_j (z - P[j])`
		
		where :math:`k` is the `gain`, :math:`Z` are the `zeros` and :math:`P` are
		the `poles`.
		
		Parameters
		----------
		z : array_like
		    Zeroes of a linear filter
		p : array_like
		    Poles of a linear filter
		k : scalar
		    Gain of a linear filter
		worN : {None, int, array_like}, optional
		    If single integer (default 512, same as None), then compute at `worN`
		    frequencies equally spaced around the unit circle. If an array_like,
		    compute the response at the frequencies given (in radians/sample).
		whole : bool, optional
		    Normally, frequencies are computed from 0 to the Nyquist frequency,
		    pi radians/sample (upper-half of unit-circle).  If `whole` is True,
		    compute frequencies from 0 to 2*pi radians/sample.
		
		Returns
		-------
		w : ndarray
		    The normalized frequencies at which `h` was computed, in
		    radians/sample.
		h : ndarray
		    The frequency response.
		
		See Also
		--------
		freqs : Compute the frequency response of an analog filter in TF form
		freqs_zpk : Compute the frequency response of an analog filter in ZPK form
		freqz : Compute the frequency response of a digital filter in TF form
		
		Notes
		-----
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy import signal
		>>> z, p, k = signal.butter(4, 0.2, output='zpk')
		>>> w, h = signal.freqz_zpk(z, p, k)
		
		>>> import matplotlib.pyplot as plt
		>>> fig = plt.figure()
		>>> plt.title('Digital filter frequency response')
		>>> ax1 = fig.add_subplot(111)
		
		>>> plt.plot(w, 20 * np.log10(abs(h)), 'b')
		>>> plt.ylabel('Amplitude [dB]', color='b')
		>>> plt.xlabel('Frequency [rad/sample]')
		
		>>> ax2 = ax1.twinx()
		>>> angles = np.unwrap(np.angle(h))
		>>> plt.plot(w, angles, 'g')
		>>> plt.ylabel('Angle (radians)', color='g')
		>>> plt.grid()
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function freqz_zpk(z:Dynamic, p:Dynamic, k:Dynamic, ?worN:Dynamic, ?whole:Dynamic):Dynamic;
	/**
		Compute the group delay of a digital filter.
		
		The group delay measures by how many samples amplitude envelopes of
		various spectral components of a signal are delayed by a filter.
		It is formally defined as the derivative of continuous (unwrapped) phase::
		
		           d        jw
		 D(w) = - -- arg H(e)
		          dw
		
		Parameters
		----------
		system : tuple of array_like (b, a)
		    Numerator and denominator coefficients of a filter transfer function.
		w : {None, int, array-like}, optional
		    If None, then compute at 512 frequencies equally spaced
		    around the unit circle.
		    If a single integer, then compute at that many frequencies.
		    If array, compute the delay at the frequencies given
		    (in radians/sample).
		whole : bool, optional
		    Normally, frequencies are computed from 0 to the Nyquist frequency,
		    pi radians/sample (upper-half of unit-circle).  If `whole` is True,
		    compute frequencies from 0 to ``2*pi`` radians/sample.
		
		Returns
		-------
		w : ndarray
		    The normalized frequencies at which the group delay was computed,
		    in radians/sample.
		gd : ndarray
		    The group delay.
		
		Notes
		-----
		The similar function in MATLAB is called `grpdelay`.
		
		If the transfer function :math:`H(z)` has zeros or poles on the unit
		circle, the group delay at corresponding frequencies is undefined.
		When such a case arises the warning is raised and the group delay
		is set to 0 at those frequencies.
		
		For the details of numerical computation of the group delay refer to [1]_.
		
		.. versionadded:: 0.16.0
		
		See Also
		--------
		freqz : Frequency response of a digital filter
		
		References
		----------
		.. [1] Richard G. Lyons, "Understanding Digital Signal Processing,
		       3rd edition", p. 830.
		
		Examples
		--------
		>>> from scipy import signal
		>>> b, a = signal.iirdesign(0.1, 0.3, 5, 50, ftype='cheby1')
		>>> w, gd = signal.group_delay((b, a))
		
		>>> import matplotlib.pyplot as plt
		>>> plt.title('Digital filter group delay')
		>>> plt.plot(w, gd)
		>>> plt.ylabel('Group delay [samples]')
		>>> plt.xlabel('Frequency [rad/sample]')
		>>> plt.show()
	**/
	static public function group_delay(system:Dynamic, ?w:Dynamic, ?whole:Dynamic):Dynamic;
	/**
		Complete IIR digital and analog filter design.
		
		Given passband and stopband frequencies and gains, construct an analog or
		digital IIR filter of minimum order for a given basic type.  Return the
		output in numerator, denominator ('ba'), pole-zero ('zpk') or second order
		sections ('sos') form.
		
		Parameters
		----------
		wp, ws : float
		    Passband and stopband edge frequencies.
		    For digital filters, these are normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`wp` and `ws` are thus in
		    half-cycles / sample.)  For example:
		
		        - Lowpass:   wp = 0.2,          ws = 0.3
		        - Highpass:  wp = 0.3,          ws = 0.2
		        - Bandpass:  wp = [0.2, 0.5],   ws = [0.1, 0.6]
		        - Bandstop:  wp = [0.1, 0.6],   ws = [0.2, 0.5]
		
		    For analog filters, `wp` and `ws` are angular frequencies (e.g. rad/s).
		
		gpass : float
		    The maximum loss in the passband (dB).
		gstop : float
		    The minimum attenuation in the stopband (dB).
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		ftype : str, optional
		    The type of IIR filter to design:
		
		        - Butterworth   : 'butter'
		        - Chebyshev I   : 'cheby1'
		        - Chebyshev II  : 'cheby2'
		        - Cauer/elliptic: 'ellip'
		        - Bessel/Thomson: 'bessel'
		
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba'.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (`b`) and denominator (`a`) polynomials of the IIR filter.
		    Only returned if ``output='ba'``.
		z, p, k : ndarray, ndarray, float
		    Zeros, poles, and system gain of the IIR filter transfer
		    function.  Only returned if ``output='zpk'``.
		sos : ndarray
		    Second-order sections representation of the IIR filter.
		    Only returned if ``output=='sos'``.
		
		See Also
		--------
		butter : Filter design using order and critical points
		cheby1, cheby2, ellip, bessel
		buttord : Find order and critical points from passband and stopband spec
		cheb1ord, cheb2ord, ellipord
		iirfilter : General filter design using order and critical frequencies
		
		Notes
		-----
		The ``'sos'`` output parameter was added in 0.16.0.
	**/
	static public function iirdesign(wp:Dynamic, ws:Dynamic, gpass:Dynamic, gstop:Dynamic, ?analog:Dynamic, ?ftype:Dynamic, ?output:Dynamic):Dynamic;
	/**
		IIR digital and analog filter design given order and critical points.
		
		Design an Nth-order digital or analog filter and return the filter
		coefficients.
		
		Parameters
		----------
		N : int
		    The order of the filter.
		Wn : array_like
		    A scalar or length-2 sequence giving the critical frequencies.
		    For digital filters, `Wn` is normalized from 0 to 1, where 1 is the
		    Nyquist frequency, pi radians/sample.  (`Wn` is thus in
		    half-cycles / sample.)
		    For analog filters, `Wn` is an angular frequency (e.g. rad/s).
		rp : float, optional
		    For Chebyshev and elliptic filters, provides the maximum ripple
		    in the passband. (dB)
		rs : float, optional
		    For Chebyshev and elliptic filters, provides the minimum attenuation
		    in the stop band. (dB)
		btype : {'bandpass', 'lowpass', 'highpass', 'bandstop'}, optional
		    The type of filter.  Default is 'bandpass'.
		analog : bool, optional
		    When True, return an analog filter, otherwise a digital filter is
		    returned.
		ftype : str, optional
		    The type of IIR filter to design:
		
		        - Butterworth   : 'butter'
		        - Chebyshev I   : 'cheby1'
		        - Chebyshev II  : 'cheby2'
		        - Cauer/elliptic: 'ellip'
		        - Bessel/Thomson: 'bessel'
		
		output : {'ba', 'zpk', 'sos'}, optional
		    Type of output:  numerator/denominator ('ba'), pole-zero ('zpk'), or
		    second-order sections ('sos'). Default is 'ba'.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (`b`) and denominator (`a`) polynomials of the IIR filter.
		    Only returned if ``output='ba'``.
		z, p, k : ndarray, ndarray, float
		    Zeros, poles, and system gain of the IIR filter transfer
		    function.  Only returned if ``output='zpk'``.
		sos : ndarray
		    Second-order sections representation of the IIR filter.
		    Only returned if ``output=='sos'``.
		
		See Also
		--------
		butter : Filter design using order and critical points
		cheby1, cheby2, ellip, bessel
		buttord : Find order and critical points from passband and stopband spec
		cheb1ord, cheb2ord, ellipord
		iirdesign : General filter design using passband and stopband spec
		
		Notes
		-----
		The ``'sos'`` output parameter was added in 0.16.0.
		
		Examples
		--------
		Generate a 17th-order Chebyshev II bandpass filter and plot the frequency
		response:
		
		>>> from scipy import signal
		>>> import matplotlib.pyplot as plt
		
		>>> b, a = signal.iirfilter(17, [50, 200], rs=60, btype='band',
		...                         analog=True, ftype='cheby2')
		>>> w, h = signal.freqs(b, a, 1000)
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.semilogx(w, 20 * np.log10(abs(h)))
		>>> ax.set_title('Chebyshev Type II bandpass frequency response')
		>>> ax.set_xlabel('Frequency [radians / second]')
		>>> ax.set_ylabel('Amplitude [dB]')
		>>> ax.axis((10, 1000, -100, 10))
		>>> ax.grid(which='both', axis='both')
		>>> plt.show()
	**/
	static public function iirfilter(N:Dynamic, Wn:Dynamic, ?rp:Dynamic, ?rs:Dynamic, ?btype:Dynamic, ?analog:Dynamic, ?ftype:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Design second-order IIR notch digital filter.
		
		A notch filter is a band-stop filter with a narrow bandwidth
		(high quality factor). It rejects a narrow frequency band and
		leaves the rest of the spectrum little changed.
		
		Parameters
		----------
		w0 : float
		    Normalized frequency to remove from a signal. It is a
		    scalar that must satisfy  ``0 < w0 < 1``, with ``w0 = 1``
		    corresponding to half of the sampling frequency.
		Q : float
		    Quality factor. Dimensionless parameter that characterizes
		    notch filter -3 dB bandwidth ``bw`` relative to its center
		    frequency, ``Q = w0/bw``.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (``b``) and denominator (``a``) polynomials
		    of the IIR filter.
		
		See Also
		--------
		iirpeak
		
		Notes
		-----
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] Sophocles J. Orfanidis, "Introduction To Signal Processing",
		       Prentice-Hall, 1996
		
		Examples
		--------
		Design and plot filter to remove the 60Hz component from a
		signal sampled at 200Hz, using a quality factor Q = 30
		
		>>> from scipy import signal
		>>> import numpy as np
		>>> import matplotlib.pyplot as plt
		
		>>> fs = 200.0  # Sample frequency (Hz)
		>>> f0 = 60.0  # Frequency to be removed from signal (Hz)
		>>> Q = 30.0  # Quality factor
		>>> w0 = f0/(fs/2)  # Normalized Frequency
		>>> # Design notch filter
		>>> b, a = signal.iirnotch(w0, Q)
		
		>>> # Frequency response
		>>> w, h = signal.freqz(b, a)
		>>> # Generate frequency axis
		>>> freq = w*fs/(2*np.pi)
		>>> # Plot
		>>> fig, ax = plt.subplots(2, 1, figsize=(8, 6))
		>>> ax[0].plot(freq, 20*np.log10(abs(h)), color='blue')
		>>> ax[0].set_title("Frequency Response")
		>>> ax[0].set_ylabel("Amplitude (dB)", color='blue')
		>>> ax[0].set_xlim([0, 100])
		>>> ax[0].set_ylim([-25, 10])
		>>> ax[0].grid()
		>>> ax[1].plot(freq, np.unwrap(np.angle(h))*180/np.pi, color='green')
		>>> ax[1].set_ylabel("Angle (degrees)", color='green')
		>>> ax[1].set_xlabel("Frequency (Hz)")
		>>> ax[1].set_xlim([0, 100])
		>>> ax[1].set_yticks([-90, -60, -30, 0, 30, 60, 90])
		>>> ax[1].set_ylim([-90, 90])
		>>> ax[1].grid()
		>>> plt.show()
	**/
	static public function iirnotch(w0:Dynamic, Q:Dynamic):Dynamic;
	/**
		Design second-order IIR peak (resonant) digital filter.
		
		A peak filter is a band-pass filter with a narrow bandwidth
		(high quality factor). It rejects components outside a narrow
		frequency band.
		
		Parameters
		----------
		w0 : float
		    Normalized frequency to be retained in a signal. It is a
		    scalar that must satisfy  ``0 < w0 < 1``, with ``w0 = 1`` corresponding
		    to half of the sampling frequency.
		Q : float
		    Quality factor. Dimensionless parameter that characterizes
		    peak filter -3 dB bandwidth ``bw`` relative to its center
		    frequency, ``Q = w0/bw``.
		
		Returns
		-------
		b, a : ndarray, ndarray
		    Numerator (``b``) and denominator (``a``) polynomials
		    of the IIR filter.
		
		See Also
		--------
		iirnotch
		
		Notes
		-----
		.. versionadded:: 0.19.0
		
		References
		----------
		.. [1] Sophocles J. Orfanidis, "Introduction To Signal Processing",
		       Prentice-Hall, 1996
		
		Examples
		--------
		Design and plot filter to remove the frequencies other than the 300Hz
		component from a signal sampled at 1000Hz, using a quality factor Q = 30
		
		>>> from scipy import signal
		>>> import numpy as np
		>>> import matplotlib.pyplot as plt
		
		>>> fs = 1000.0  # Sample frequency (Hz)
		>>> f0 = 300.0  # Frequency to be retained (Hz)
		>>> Q = 30.0  # Quality factor
		>>> w0 = f0/(fs/2)  # Normalized Frequency
		>>> # Design peak filter
		>>> b, a = signal.iirpeak(w0, Q)
		
		>>> # Frequency response
		>>> w, h = signal.freqz(b, a)
		>>> # Generate frequency axis
		>>> freq = w*fs/(2*np.pi)
		>>> # Plot
		>>> fig, ax = plt.subplots(2, 1, figsize=(8, 6))
		>>> ax[0].plot(freq, 20*np.log10(abs(h)), color='blue')
		>>> ax[0].set_title("Frequency Response")
		>>> ax[0].set_ylabel("Amplitude (dB)", color='blue')
		>>> ax[0].set_xlim([0, 500])
		>>> ax[0].set_ylim([-50, 10])
		>>> ax[0].grid()
		>>> ax[1].plot(freq, np.unwrap(np.angle(h))*180/np.pi, color='green')
		>>> ax[1].set_ylabel("Angle (degrees)", color='green')
		>>> ax[1].set_xlabel("Frequency (Hz)")
		>>> ax[1].set_xlim([0, 500])
		>>> ax[1].set_yticks([-90, -60, -30, 0, 30, 60, 90])
		>>> ax[1].set_ylim([-90, 90])
		>>> ax[1].grid()
		>>> plt.show()
	**/
	static public function iirpeak(w0:Dynamic, Q:Dynamic):Dynamic;
	/**
		log10(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the base 10 logarithm of the input array, element-wise.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The logarithm to the base 10 of `x`, element-wise. NaNs are
		    returned where x is negative.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		emath.log10
		
		Notes
		-----
		Logarithm is a multivalued function: for each `x` there is an infinite
		number of `z` such that `10**z = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi, pi]`.
		
		For real-valued input data types, `log10` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `log10` is a complex analytical function that
		has a branch cut `[-inf, 0]` and is continuous from above on it.
		`log10` handles the floating-point negative zero as an infinitesimal
		negative number, conforming to the C99 standard.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 67. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Logarithm". http://en.wikipedia.org/wiki/Logarithm
		
		Examples
		--------
		>>> np.log10([1e-15, -3.])
		array([-15.,  NaN])
	**/
	static public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return numbers spaced evenly on a log scale.
		
		In linear space, the sequence starts at ``base ** start``
		(`base` to the power of `start`) and ends with ``base ** stop``
		(see `endpoint` below).
		
		Parameters
		----------
		start : float
		    ``base ** start`` is the starting value of the sequence.
		stop : float
		    ``base ** stop`` is the final value of the sequence, unless `endpoint`
		    is False.  In that case, ``num + 1`` values are spaced over the
		    interval in log-space, of which all but the last (a sequence of
		    length `num`) are returned.
		num : integer, optional
		    Number of samples to generate.  Default is 50.
		endpoint : boolean, optional
		    If true, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		base : float, optional
		    The base of the log space. The step size between the elements in
		    ``ln(samples) / ln(base)`` (or ``log_base(samples)``) is uniform.
		    Default is 10.0.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		samples : ndarray
		    `num` samples, equally spaced on a log scale.
		
		See Also
		--------
		arange : Similar to linspace, with the step size specified instead of the
		         number of samples. Note that, when used with a float endpoint, the
		         endpoint may or may not be included.
		linspace : Similar to logspace, but with the samples uniformly distributed
		           in linear space, instead of log space.
		geomspace : Similar to logspace, but with endpoints specified directly.
		
		Notes
		-----
		Logspace is equivalent to the code
		
		>>> y = np.linspace(start, stop, num=num, endpoint=endpoint)
		... # doctest: +SKIP
		>>> power(base, y).astype(dtype)
		... # doctest: +SKIP
		
		Examples
		--------
		>>> np.logspace(2.0, 3.0, num=4)
		array([  100.        ,   215.443469  ,   464.15888336,  1000.        ])
		>>> np.logspace(2.0, 3.0, num=4, endpoint=False)
		array([ 100.        ,  177.827941  ,  316.22776602,  562.34132519])
		>>> np.logspace(2.0, 3.0, num=4, base=2.0)
		array([ 4.        ,  5.0396842 ,  6.34960421,  8.        ])
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 10
		>>> x1 = np.logspace(0.1, 1, N, endpoint=True)
		>>> x2 = np.logspace(0.1, 1, N, endpoint=False)
		>>> y = np.zeros(N)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function logspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?base:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a bandpass filter.
		
		Return an analog band-pass filter with center frequency `wo` and
		bandwidth `bw` from an analog low-pass filter prototype with unity
		cutoff frequency, in transfer function ('ba') representation.
		
		See Also
		--------
		lp2lp, lp2hp, lp2bs, bilinear
		lp2bp_zpk
	**/
	static public function lp2bp(b:Dynamic, a:Dynamic, ?wo:Dynamic, ?bw:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a bandpass filter.
		
		Return an analog band-pass filter with center frequency `wo` and
		bandwidth `bw` from an analog low-pass filter prototype with unity
		cutoff frequency, using zeros, poles, and gain ('zpk') representation.
		
		Parameters
		----------
		z : array_like
		    Zeros of the analog filter transfer function.
		p : array_like
		    Poles of the analog filter transfer function.
		k : float
		    System gain of the analog filter transfer function.
		wo : float
		    Desired passband center, as angular frequency (e.g. rad/s).
		    Defaults to no change.
		bw : float
		    Desired passband width, as angular frequency (e.g. rad/s).
		    Defaults to 1.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transformed band-pass filter transfer function.
		p : ndarray
		    Poles of the transformed band-pass filter transfer function.
		k : float
		    System gain of the transformed band-pass filter.
		
		See Also
		--------
		lp2lp_zpk, lp2hp_zpk, lp2bs_zpk, bilinear
		lp2bp
		
		Notes
		-----
		This is derived from the s-plane substitution
		
		.. math:: s \rightarrow \frac{s^2 + {\omega_0}^2}{s \cdot \mathrm{BW}}
		
		This is the "wideband" transformation, producing a passband with
		geometric (log frequency) symmetry about `wo`.
		
		.. versionadded:: 1.1.0
	**/
	static public function lp2bp_zpk(z:Dynamic, p:Dynamic, k:Dynamic, ?wo:Dynamic, ?bw:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a bandstop filter.
		
		Return an analog band-stop filter with center frequency `wo` and
		bandwidth `bw` from an analog low-pass filter prototype with unity
		cutoff frequency, in transfer function ('ba') representation.
		
		See Also
		--------
		lp2lp, lp2hp, lp2bp, bilinear
		lp2bs_zpk
	**/
	static public function lp2bs(b:Dynamic, a:Dynamic, ?wo:Dynamic, ?bw:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a bandstop filter.
		
		Return an analog band-stop filter with center frequency `wo` and
		stopband width `bw` from an analog low-pass filter prototype with unity
		cutoff frequency, using zeros, poles, and gain ('zpk') representation.
		
		Parameters
		----------
		z : array_like
		    Zeros of the analog filter transfer function.
		p : array_like
		    Poles of the analog filter transfer function.
		k : float
		    System gain of the analog filter transfer function.
		wo : float
		    Desired stopband center, as angular frequency (e.g. rad/s).
		    Defaults to no change.
		bw : float
		    Desired stopband width, as angular frequency (e.g. rad/s).
		    Defaults to 1.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transformed band-stop filter transfer function.
		p : ndarray
		    Poles of the transformed band-stop filter transfer function.
		k : float
		    System gain of the transformed band-stop filter.
		
		See Also
		--------
		lp2lp_zpk, lp2hp_zpk, lp2bp_zpk, bilinear
		lp2bs
		
		Notes
		-----
		This is derived from the s-plane substitution
		
		.. math:: s \rightarrow \frac{s \cdot \mathrm{BW}}{s^2 + {\omega_0}^2}
		
		This is the "wideband" transformation, producing a stopband with
		geometric (log frequency) symmetry about `wo`.
		
		.. versionadded:: 1.1.0
	**/
	static public function lp2bs_zpk(z:Dynamic, p:Dynamic, k:Dynamic, ?wo:Dynamic, ?bw:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a highpass filter.
		
		Return an analog high-pass filter with cutoff frequency `wo`
		from an analog low-pass filter prototype with unity cutoff frequency, in
		transfer function ('ba') representation.
		
		See Also
		--------
		lp2lp, lp2bp, lp2bs, bilinear
		lp2hp_zpk
	**/
	static public function lp2hp(b:Dynamic, a:Dynamic, ?wo:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a highpass filter.
		
		Return an analog high-pass filter with cutoff frequency `wo`
		from an analog low-pass filter prototype with unity cutoff frequency,
		using zeros, poles, and gain ('zpk') representation.
		
		Parameters
		----------
		z : array_like
		    Zeros of the analog filter transfer function.
		p : array_like
		    Poles of the analog filter transfer function.
		k : float
		    System gain of the analog filter transfer function.
		wo : float
		    Desired cutoff, as angular frequency (e.g. rad/s).
		    Defaults to no change.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transformed high-pass filter transfer function.
		p : ndarray
		    Poles of the transformed high-pass filter transfer function.
		k : float
		    System gain of the transformed high-pass filter.
		
		See Also
		--------
		lp2lp_zpk, lp2bp_zpk, lp2bs_zpk, bilinear
		lp2hp
		
		Notes
		-----
		This is derived from the s-plane substitution
		
		.. math:: s \rightarrow \frac{\omega_0}{s}
		
		This maintains symmetry of the lowpass and highpass responses on a
		logarithmic scale.
		
		.. versionadded:: 1.1.0
	**/
	static public function lp2hp_zpk(z:Dynamic, p:Dynamic, k:Dynamic, ?wo:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a different frequency.
		
		Return an analog low-pass filter with cutoff frequency `wo`
		from an analog low-pass filter prototype with unity cutoff frequency, in
		transfer function ('ba') representation.
		
		See Also
		--------
		lp2hp, lp2bp, lp2bs, bilinear
		lp2lp_zpk
	**/
	static public function lp2lp(b:Dynamic, a:Dynamic, ?wo:Dynamic):Dynamic;
	/**
		Transform a lowpass filter prototype to a different frequency.
		
		Return an analog low-pass filter with cutoff frequency `wo`
		from an analog low-pass filter prototype with unity cutoff frequency,
		using zeros, poles, and gain ('zpk') representation.
		
		Parameters
		----------
		z : array_like
		    Zeros of the analog filter transfer function.
		p : array_like
		    Poles of the analog filter transfer function.
		k : float
		    System gain of the analog filter transfer function.
		wo : float
		    Desired cutoff, as angular frequency (e.g. rad/s).
		    Defaults to no change.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transformed low-pass filter transfer function.
		p : ndarray
		    Poles of the transformed low-pass filter transfer function.
		k : float
		    System gain of the transformed low-pass filter.
		
		See Also
		--------
		lp2hp_zpk, lp2bp_zpk, lp2bs_zpk, bilinear
		lp2lp
		
		Notes
		-----
		This is derived from the s-plane substitution
		
		.. math:: s \rightarrow \frac{s}{\omega_0}
		
		.. versionadded:: 1.1.0
	**/
	static public function lp2lp_zpk(z:Dynamic, p:Dynamic, k:Dynamic, ?wo:Dynamic):Dynamic;
	static public function maxflat():Dynamic;
	/**
		Return the character for the minimum-size type to which given types can
		be safely cast.
		
		The returned type character must represent the smallest size dtype such
		that an array of the returned type can handle the data from an array of
		all types in `typechars` (or if `typechars` is an array, then its
		dtype.char).
		
		Parameters
		----------
		typechars : list of str or array_like
		    If a list of strings, each string should represent a dtype.
		    If array_like, the character representation of the array dtype is used.
		typeset : str or list of str, optional
		    The set of characters that the returned character is chosen from.
		    The default set is 'GDFgdf'.
		default : str, optional
		    The default character, this is returned if none of the characters in
		    `typechars` matches a character in `typeset`.
		
		Returns
		-------
		typechar : str
		    The character representing the minimum-size type that was found.
		
		See Also
		--------
		dtype, sctype2char, maximum_sctype
		
		Examples
		--------
		>>> np.mintypecode(['d', 'f', 'S'])
		'd'
		>>> x = np.array([1.1, 2-3.j])
		>>> np.mintypecode(x)
		'D'
		
		>>> np.mintypecode('abceh', default='G')
		'G'
	**/
	static public function mintypecode(typechars:Dynamic, ?typeset:Dynamic, ?_default:Dynamic):String;
	/**
		Normalize numerator/denominator of a continuous-time transfer function.
		
		If values of `b` are too close to 0, they are removed. In that case, a
		BadCoefficients warning is emitted.
		
		Parameters
		----------
		b: array_like
		    Numerator of the transfer function. Can be a 2d array to normalize
		    multiple transfer functions.
		a: array_like
		    Denominator of the transfer function. At most 1d.
		
		Returns
		-------
		num: array
		    The numerator of the normalized transfer function. At least a 1d
		    array. A 2d-array if the input `num` is a 2d array.
		den: 1d-array
		    The denominator of the normalized transfer function.
		
		Notes
		-----
		Coefficients for both the numerator and denominator should be specified in
		descending exponent order (e.g., ``s^2 + 3s + 5`` would be represented as
		``[1, 3, 5]``).
	**/
	static public function normalize(b:Dynamic, a:Dynamic):Dynamic;
	/**
		Evaluate a polynomial at points x.
		
		If `c` is of length `n + 1`, this function returns the value
		
		.. math:: p(x) = c_0 + c_1 * x + ... + c_n * x^n
		
		The parameter `x` is converted to an array only if it is a tuple or a
		list, otherwise it is treated as a scalar. In either case, either `x`
		or its elements must support multiplication and addition both with
		themselves and with the elements of `c`.
		
		If `c` is a 1-D array, then `p(x)` will have the same shape as `x`.  If
		`c` is multidimensional, then the shape of the result depends on the
		value of `tensor`. If `tensor` is true the shape will be c.shape[1:] +
		x.shape. If `tensor` is false the shape will be c.shape[1:]. Note that
		scalars have shape (,).
		
		Trailing zeros in the coefficients will be used in the evaluation, so
		they should be avoided if efficiency is a concern.
		
		Parameters
		----------
		x : array_like, compatible object
		    If `x` is a list or tuple, it is converted to an ndarray, otherwise
		    it is left unchanged and treated as a scalar. In either case, `x`
		    or its elements must support addition and multiplication with
		    with themselves and with the elements of `c`.
		c : array_like
		    Array of coefficients ordered so that the coefficients for terms of
		    degree n are contained in c[n]. If `c` is multidimensional the
		    remaining indices enumerate multiple polynomials. In the two
		    dimensional case the coefficients may be thought of as stored in
		    the columns of `c`.
		tensor : boolean, optional
		    If True, the shape of the coefficient array is extended with ones
		    on the right, one for each dimension of `x`. Scalars have dimension 0
		    for this action. The result is that every column of coefficients in
		    `c` is evaluated for every element of `x`. If False, `x` is broadcast
		    over the columns of `c` for the evaluation.  This keyword is useful
		    when `c` is multidimensional. The default value is True.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		values : ndarray, compatible object
		    The shape of the returned array is described above.
		
		See Also
		--------
		polyval2d, polygrid2d, polyval3d, polygrid3d
		
		Notes
		-----
		The evaluation uses Horner's method.
		
		Examples
		--------
		>>> from numpy.polynomial.polynomial import polyval
		>>> polyval(1, [1,2,3])
		6.0
		>>> a = np.arange(4).reshape(2,2)
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> polyval(a, [1,2,3])
		array([[  1.,   6.],
		       [ 17.,  34.]])
		>>> coef = np.arange(4).reshape(2,2) # multidimensional coefficients
		>>> coef
		array([[0, 1],
		       [2, 3]])
		>>> polyval([1,2], coef, tensor=True)
		array([[ 2.,  4.],
		       [ 4.,  7.]])
		>>> polyval([1,2], coef, tensor=False)
		array([ 2.,  7.])
	**/
	static public function npp_polyval(x:Dynamic, c:Dynamic, ?tensor:Dynamic):Dynamic;
	/**
		Return a new array of given shape and type, filled with ones.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: C
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		empty : Return a new uninitialized array.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Examples
		--------
		>>> np.ones(5)
		array([ 1.,  1.,  1.,  1.,  1.])
		
		>>> np.ones((5,), dtype=int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[ 1.],
		       [ 1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[ 1.,  1.],
		       [ 1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		Find the coefficients of a polynomial with the given sequence of roots.
		
		Returns the coefficients of the polynomial whose leading coefficient
		is one for the given sequence of zeros (multiple roots must be included
		in the sequence as many times as their multiplicity; see Examples).
		A square matrix (or array, which will be treated as a matrix) can also
		be given, in which case the coefficients of the characteristic polynomial
		of the matrix are returned.
		
		Parameters
		----------
		seq_of_zeros : array_like, shape (N,) or (N, N)
		    A sequence of polynomial roots, or a square array or matrix object.
		
		Returns
		-------
		c : ndarray
		    1D array of polynomial coefficients from highest to lowest degree:
		
		    ``c[0] * x**(N) + c[1] * x**(N-1) + ... + c[N-1] * x + c[N]``
		    where c[0] always equals 1.
		
		Raises
		------
		ValueError
		    If input is the wrong shape (the input must be a 1-D or square
		    2-D array).
		
		See Also
		--------
		polyval : Compute polynomial values.
		roots : Return the roots of a polynomial.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		Specifying the roots of a polynomial still leaves one degree of
		freedom, typically represented by an undetermined leading
		coefficient. [1]_ In the case of this function, that coefficient -
		the first one in the returned array - is always taken as one. (If
		for some reason you have one other point, the only automatic way
		presently to leverage that information is to use ``polyfit``.)
		
		The characteristic polynomial, :math:`p_a(t)`, of an `n`-by-`n`
		matrix **A** is given by
		
		    :math:`p_a(t) = \mathrm{det}(t\, \mathbf{I} - \mathbf{A})`,
		
		where **I** is the `n`-by-`n` identity matrix. [2]_
		
		References
		----------
		.. [1] M. Sullivan and M. Sullivan, III, "Algebra and Trignometry,
		   Enhanced With Graphing Utilities," Prentice-Hall, pg. 318, 1996.
		
		.. [2] G. Strang, "Linear Algebra and Its Applications, 2nd Edition,"
		   Academic Press, pg. 182, 1980.
		
		Examples
		--------
		Given a sequence of a polynomial's zeros:
		
		>>> np.poly((0, 0, 0)) # Multiple root example
		array([1, 0, 0, 0])
		
		The line above represents z**3 + 0*z**2 + 0*z + 0.
		
		>>> np.poly((-1./2, 0, 1./2))
		array([ 1.  ,  0.  , -0.25,  0.  ])
		
		The line above represents z**3 - z/4
		
		>>> np.poly((np.random.random(1.)[0], 0, np.random.random(1.)[0]))
		array([ 1.        , -0.77086955,  0.08618131,  0.        ]) #random
		
		Given a square array object:
		
		>>> P = np.array([[0, 1./3], [-1./2, 0]])
		>>> np.poly(P)
		array([ 1.        ,  0.        ,  0.16666667])
		
		Note how in all cases the leading coefficient is always 1.
	**/
	static public function poly(seq_of_zeros:Dynamic):Dynamic;
	/**
		Evaluate a polynomial at specific values.
		
		If `p` is of length N, this function returns the value:
		
		    ``p[0]*x**(N-1) + p[1]*x**(N-2) + ... + p[N-2]*x + p[N-1]``
		
		If `x` is a sequence, then `p(x)` is returned for each element of `x`.
		If `x` is another polynomial then the composite polynomial `p(x(t))`
		is returned.
		
		Parameters
		----------
		p : array_like or poly1d object
		   1D array of polynomial coefficients (including coefficients equal
		   to zero) from highest degree to the constant term, or an
		   instance of poly1d.
		x : array_like or poly1d object
		   A number, an array of numbers, or an instance of poly1d, at
		   which to evaluate `p`.
		
		Returns
		-------
		values : ndarray or poly1d
		   If `x` is a poly1d instance, the result is the composition of the two
		   polynomials, i.e., `x` is "substituted" in `p` and the simplified
		   result is returned. In addition, the type of `x` - array_like or
		   poly1d - governs the type of the output: `x` array_like => `values`
		   array_like, `x` a poly1d object => `values` is also.
		
		See Also
		--------
		poly1d: A polynomial class.
		
		Notes
		-----
		Horner's scheme [1]_ is used to evaluate the polynomial. Even so,
		for polynomials of high degree the values may be inaccurate due to
		rounding errors. Use carefully.
		
		References
		----------
		.. [1] I. N. Bronshtein, K. A. Semendyayev, and K. A. Hirsch (Eng.
		   trans. Ed.), *Handbook of Mathematics*, New York, Van Nostrand
		   Reinhold Co., 1985, pg. 720.
		
		Examples
		--------
		>>> np.polyval([3,0,1], 5)  # 3 * 5**2 + 0 * 5**1 + 1
		76
		>>> np.polyval([3,0,1], np.poly1d(5))
		poly1d([ 76.])
		>>> np.polyval(np.poly1d([3,0,1]), 5)
		76
		>>> np.polyval(np.poly1d([3,0,1]), np.poly1d(5))
		poly1d([ 76.])
	**/
	static public function polyval(p:Dynamic, x:Dynamic):Dynamic;
	/**
		Evaluate a polynomial specified by its roots at points x.
		
		If `r` is of length `N`, this function returns the value
		
		.. math:: p(x) = \prod_{n=1}^{N} (x - r_n)
		
		The parameter `x` is converted to an array only if it is a tuple or a
		list, otherwise it is treated as a scalar. In either case, either `x`
		or its elements must support multiplication and addition both with
		themselves and with the elements of `r`.
		
		If `r` is a 1-D array, then `p(x)` will have the same shape as `x`.  If `r`
		is multidimensional, then the shape of the result depends on the value of
		`tensor`. If `tensor is ``True`` the shape will be r.shape[1:] + x.shape;
		that is, each polynomial is evaluated at every value of `x`. If `tensor` is
		``False``, the shape will be r.shape[1:]; that is, each polynomial is
		evaluated only for the corresponding broadcast value of `x`. Note that
		scalars have shape (,).
		
		.. versionadded:: 1.12
		
		Parameters
		----------
		x : array_like, compatible object
		    If `x` is a list or tuple, it is converted to an ndarray, otherwise
		    it is left unchanged and treated as a scalar. In either case, `x`
		    or its elements must support addition and multiplication with
		    with themselves and with the elements of `r`.
		r : array_like
		    Array of roots. If `r` is multidimensional the first index is the
		    root index, while the remaining indices enumerate multiple
		    polynomials. For instance, in the two dimensional case the roots
		    of each polynomial may be thought of as stored in the columns of `r`.
		tensor : boolean, optional
		    If True, the shape of the roots array is extended with ones on the
		    right, one for each dimension of `x`. Scalars have dimension 0 for this
		    action. The result is that every column of coefficients in `r` is
		    evaluated for every element of `x`. If False, `x` is broadcast over the
		    columns of `r` for the evaluation.  This keyword is useful when `r` is
		    multidimensional. The default value is True.
		
		Returns
		-------
		values : ndarray, compatible object
		    The shape of the returned array is described above.
		
		See Also
		--------
		polyroots, polyfromroots, polyval
		
		Examples
		--------
		>>> from numpy.polynomial.polynomial import polyvalfromroots
		>>> polyvalfromroots(1, [1,2,3])
		0.0
		>>> a = np.arange(4).reshape(2,2)
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> polyvalfromroots(a, [-1, 0, 1])
		array([[ -0.,   0.],
		       [  6.,  24.]])
		>>> r = np.arange(-2, 2).reshape(2,2) # multidimensional coefficients
		>>> r # each column of r defines one polynomial
		array([[-2, -1],
		       [ 0,  1]])
		>>> b = [-2, 1]
		>>> polyvalfromroots(b, r, tensor=True)
		array([[-0.,  3.],
		       [ 3., 0.]])
		>>> polyvalfromroots(b, r, tensor=False)
		array([-0.,  0.])
	**/
	static public function polyvalfromroots(x:Dynamic, r:Dynamic, ?tensor:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a product is performed.  The default,
		    axis=None, will calculate the product of all the elements in the
		    input array. If axis is negative it counts from the last to the
		    first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, a product is performed on all of the
		    axes specified in the tuple instead of a single axis or all the
		    axes as before.
		dtype : dtype, optional
		    The type of the returned array, as well as of the accumulator in
		    which the elements are multiplied.  The dtype of `a` is used by
		    default unless `a` has an integer dtype of less precision than the
		    default platform integer.  In that case, if `a` is signed then the
		    platform integer is used while if `a` is unsigned then an unsigned
		    integer of the same precision as the platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `prod` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		initial : scalar, optional
		    The starting value for this product. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		product_along_axis : ndarray, see `dtype` parameter above.
		    An array shaped as `a` but with the specified axis removed.
		    Returns a reference to `out` if specified.
		
		See Also
		--------
		ndarray.prod : equivalent method
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.  That means that, on a 32-bit platform:
		
		>>> x = np.array([536870910, 536870910, 536870910, 536870910])
		>>> np.prod(x)  # random
		16
		
		The product of an empty array is the neutral element 1:
		
		>>> np.prod([])
		1.0
		
		Examples
		--------
		By default, calculate the product of all elements:
		
		>>> np.prod([1.,2.])
		2.0
		
		Even when the input array is two-dimensional:
		
		>>> np.prod([[1.,2.],[3.,4.]])
		24.0
		
		But we can also specify the axis over which to multiply:
		
		>>> np.prod([[1.,2.],[3.,4.]], axis=1)
		array([  2.,  12.])
		
		If the type of `x` is unsigned, then the output type is
		the unsigned platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.uint8)
		>>> np.prod(x).dtype == np.uint
		True
		
		If `x` is of a signed integer type, then the output type
		is the default platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.int8)
		>>> np.prod(x).dtype == int
		True
		
		You can also start the product with a value other than one:
		
		>>> np.prod([1, 2], initial=5)
		10
	**/
	static public function prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	static public var r_ : Dynamic;
	/**
		Return the real part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The real component of the complex argument. If `val` is real, the type
		    of `val` is used for the output.  If `val` has complex elements, the
		    returned type is float.
		
		See Also
		--------
		real_if_close, imag, angle
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.real
		array([ 1.,  3.,  5.])
		>>> a.real = 9
		>>> a
		array([ 9.+2.j,  9.+4.j,  9.+6.j])
		>>> a.real = np.array([9, 8, 7])
		>>> a
		array([ 9.+2.j,  8.+4.j,  7.+6.j])
		>>> np.real(1 + 1j)
		1.0
	**/
	static public function real(val:Dynamic):Dynamic;
	/**
		Return a new array with the specified shape.
		
		If the new array is larger than the original array, then the new
		array is filled with repeated copies of `a`.  Note that this behavior
		is different from a.resize(new_shape) which fills with zeros instead
		of repeated copies of `a`.
		
		Parameters
		----------
		a : array_like
		    Array to be resized.
		
		new_shape : int or tuple of int
		    Shape of resized array.
		
		Returns
		-------
		reshaped_array : ndarray
		    The new array is formed from the data in the old array, repeated
		    if necessary to fill out the required number of elements.  The
		    data are repeated in the order that they are stored in memory.
		
		See Also
		--------
		ndarray.resize : resize an array in-place.
		
		Examples
		--------
		>>> a=np.array([[0,1],[2,3]])
		>>> np.resize(a,(2,3))
		array([[0, 1, 2],
		       [3, 0, 1]])
		>>> np.resize(a,(1,4))
		array([[0, 1, 2, 3]])
		>>> np.resize(a,(2,4))
		array([[0, 1, 2, 3],
		       [0, 1, 2, 3]])
	**/
	static public function resize(a:Dynamic, new_shape:Dynamic):Dynamic;
	/**
		Return the roots of a polynomial with coefficients given in p.
		
		The values in the rank-1 array `p` are coefficients of a polynomial.
		If the length of `p` is n+1 then the polynomial is described by::
		
		  p[0] * x**n + p[1] * x**(n-1) + ... + p[n-1]*x + p[n]
		
		Parameters
		----------
		p : array_like
		    Rank-1 array of polynomial coefficients.
		
		Returns
		-------
		out : ndarray
		    An array containing the roots of the polynomial.
		
		Raises
		------
		ValueError
		    When `p` cannot be converted to a rank-1 array.
		
		See also
		--------
		poly : Find the coefficients of a polynomial with a given sequence
		       of roots.
		polyval : Compute polynomial values.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		The algorithm relies on computing the eigenvalues of the
		companion matrix [1]_.
		
		References
		----------
		.. [1] R. A. Horn & C. R. Johnson, *Matrix Analysis*.  Cambridge, UK:
		    Cambridge University Press, 1999, pp. 146-7.
		
		Examples
		--------
		>>> coeff = [3.2, 2, 1]
		>>> np.roots(coeff)
		array([-0.3125+0.46351241j, -0.3125-0.46351241j])
	**/
	static public function roots(p:Dynamic):Dynamic;
	/**
		sin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Hyperbolic sine, element-wise.
		
		Equivalent to ``1/2 * (np.exp(x) - np.exp(-x))`` or
		``-1j * np.sin(1j*x)``.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding hyperbolic sine values.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972, pg. 83.
		
		Examples
		--------
		>>> np.sinh(0)
		0.0
		>>> np.sinh(np.pi*1j/2)
		1j
		>>> np.sinh(np.pi*1j) # (exact value is 0)
		1.2246063538223773e-016j
		>>> # Discrepancy due to vagaries of floating point arithmetic.
		
		>>> # Example of providing the optional output parameter
		>>> out2 = np.sinh([0.1], out1)
		>>> out2 is out1
		True
		
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.sinh(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a single transfer function from a series of second-order sections
		
		Parameters
		----------
		sos : array_like
		    Array of second-order filter coefficients, must have shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		Returns
		-------
		b : ndarray
		    Numerator polynomial coefficients.
		a : ndarray
		    Denominator polynomial coefficients.
		
		Notes
		-----
		.. versionadded:: 0.16.0
	**/
	static public function sos2tf(sos:Dynamic):Dynamic;
	/**
		Return zeros, poles, and gain of a series of second-order sections
		
		Parameters
		----------
		sos : array_like
		    Array of second-order filter coefficients, must have shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transfer function.
		p : ndarray
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Notes
		-----
		.. versionadded:: 0.16.0
	**/
	static public function sos2zpk(sos:Dynamic):Dynamic;
	/**
		Compute the frequency response of a digital filter in SOS format.
		
		Given `sos`, an array with shape (n, 6) of second order sections of
		a digital filter, compute the frequency response of the system function::
		
		           B0(z)   B1(z)         B{n-1}(z)
		    H(z) = ----- * ----- * ... * ---------
		           A0(z)   A1(z)         A{n-1}(z)
		
		for z = exp(omega*1j), where B{k}(z) and A{k}(z) are numerator and
		denominator of the transfer function of the k-th second order section.
		
		Parameters
		----------
		sos : array_like
		    Array of second-order filter coefficients, must have shape
		    ``(n_sections, 6)``. Each row corresponds to a second-order
		    section, with the first three columns providing the numerator
		    coefficients and the last three providing the denominator
		    coefficients.
		worN : {None, int, array_like}, optional
		    If None (default), then compute at 512 frequencies equally spaced
		    around the unit circle.
		    If a single integer, then compute at that many frequencies.
		    Using a number that is fast for FFT computations can result in
		    faster computations (see Notes of `freqz`).
		    If an array_like, compute the response at the frequencies given (in
		    radians/sample; must be 1D).
		whole : bool, optional
		    Normally, frequencies are computed from 0 to the Nyquist frequency,
		    pi radians/sample (upper-half of unit-circle).  If `whole` is True,
		    compute frequencies from 0 to 2*pi radians/sample.
		
		Returns
		-------
		w : ndarray
		    The normalized frequencies at which `h` was computed, in
		    radians/sample.
		h : ndarray
		    The frequency response, as complex numbers.
		
		See Also
		--------
		freqz, sosfilt
		
		Notes
		-----
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		Design a 15th-order bandpass filter in SOS format.
		
		>>> from scipy import signal
		>>> sos = signal.ellip(15, 0.5, 60, (0.2, 0.4), btype='bandpass',
		...                    output='sos')
		
		Compute the frequency response at 1500 points from DC to Nyquist.
		
		>>> w, h = signal.sosfreqz(sos, worN=1500)
		
		Plot the response.
		
		>>> import matplotlib.pyplot as plt
		>>> plt.subplot(2, 1, 1)
		>>> db = 20*np.log10(np.abs(h))
		>>> plt.plot(w/np.pi, db)
		>>> plt.ylim(-75, 5)
		>>> plt.grid(True)
		>>> plt.yticks([0, -20, -40, -60])
		>>> plt.ylabel('Gain [dB]')
		>>> plt.title('Frequency Response')
		>>> plt.subplot(2, 1, 2)
		>>> plt.plot(w/np.pi, np.angle(h))
		>>> plt.grid(True)
		>>> plt.yticks([-np.pi, -0.5*np.pi, 0, 0.5*np.pi, np.pi],
		...            [r'$-\pi$', r'$-\pi/2$', '0', r'$\pi/2$', r'$\pi$'])
		>>> plt.ylabel('Phase [rad]')
		>>> plt.xlabel('Normalized frequency (1.0 = Nyquist)')
		>>> plt.show()
		
		If the same filter is implemented as a single transfer function,
		numerical error corrupts the frequency response:
		
		>>> b, a = signal.ellip(15, 0.5, 60, (0.2, 0.4), btype='bandpass',
		...                    output='ba')
		>>> w, h = signal.freqz(b, a, worN=1500)
		>>> plt.subplot(2, 1, 1)
		>>> db = 20*np.log10(np.abs(h))
		>>> plt.plot(w/np.pi, db)
		>>> plt.subplot(2, 1, 2)
		>>> plt.plot(w/np.pi, np.angle(h))
		>>> plt.show()
	**/
	static public function sosfreqz(sos:Dynamic, ?worN:Dynamic, ?whole:Dynamic):Dynamic;
	/**
		sqrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the non-negative square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		lib.scimath.sqrt
		    A version which returns complex numbers when given negative reals.
		
		Notes
		-----
		*sqrt* has--consistent with common convention--as its branch cut the
		real "interval" [`-inf`, 0), and is continuous from above on it.
		A branch cut is a curve in the complex plane across which a given
		complex function fails to be continuous.
		
		Examples
		--------
		>>> np.sqrt([1,4,9])
		array([ 1.,  2.,  3.])
		
		>>> np.sqrt([4, -1, -3+4J])
		array([ 2.+0.j,  0.+1.j,  1.+2.j])
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute tangent element-wise.
		
		Equivalent to ``np.sin(x)/np.cos(x)`` element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    The corresponding tangent values.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> from math import pi
		>>> np.tan(np.array([-pi,pi/2,pi]))
		array([  1.22460635e-16,   1.63317787e+16,  -1.22460635e-16])
		>>>
		>>> # Example of providing the optional output parameter illustrating
		>>> # that what is returned is a reference to said parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return second-order sections from transfer function representation
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		pairing : {'nearest', 'keep_odd'}, optional
		    The method to use to combine pairs of poles and zeros into sections.
		    See `zpk2sos`.
		
		Returns
		-------
		sos : ndarray
		    Array of second-order filter coefficients, with shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		See Also
		--------
		zpk2sos, sosfilt
		
		Notes
		-----
		It is generally discouraged to convert from TF to SOS format, since doing
		so usually will not improve numerical precision errors. Instead, consider
		designing filters in ZPK format and converting directly to SOS. TF is
		converted to SOS by first converting to ZPK format, then converting
		ZPK to SOS.
		
		.. versionadded:: 0.16.0
	**/
	static public function tf2sos(b:Dynamic, a:Dynamic, ?pairing:Dynamic):Dynamic;
	/**
		Return zero, pole, gain (z, p, k) representation from a numerator,
		denominator representation of a linear filter.
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transfer function.
		p : ndarray
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Notes
		-----
		If some values of `b` are too close to 0, they are removed. In that case,
		a BadCoefficients warning is emitted.
		
		The `b` and `a` arrays are interpreted as coefficients for positive,
		descending powers of the transfer function variable.  So the inputs
		:math:`b = [b_0, b_1, ..., b_M]` and :math:`a =[a_0, a_1, ..., a_N]`
		can represent an analog filter of the form:
		
		.. math::
		
		    H(s) = \frac
		    {b_0 s^M + b_1 s^{(M-1)} + \cdots + b_M}
		    {a_0 s^N + a_1 s^{(N-1)} + \cdots + a_N}
		
		or a discrete-time filter of the form:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 z^M + b_1 z^{(M-1)} + \cdots + b_M}
		    {a_0 z^N + a_1 z^{(N-1)} + \cdots + a_N}
		
		This "positive powers" form is found more commonly in controls
		engineering.  If `M` and `N` are equal (which is true for all filters
		generated by the bilinear transform), then this happens to be equivalent
		to the "negative powers" discrete-time form preferred in DSP:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 + b_1 z^{-1} + \cdots + b_M z^{-M}}
		    {a_0 + a_1 z^{-1} + \cdots + a_N z^{-N}}
		
		Although this is true for common filters, remember that this is not true
		in the general case.  If `M` and `N` are not equal, the discrete-time
		transfer function coefficients must first be converted to the "positive
		powers" form before finding the poles and zeros.
	**/
	static public function tf2zpk(b:Dynamic, a:Dynamic):Dynamic;
	static public function yulewalk():Dynamic;
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
		Return second-order sections from zeros, poles, and gain of a system
		
		Parameters
		----------
		z : array_like
		    Zeros of the transfer function.
		p : array_like
		    Poles of the transfer function.
		k : float
		    System gain.
		pairing : {'nearest', 'keep_odd'}, optional
		    The method to use to combine pairs of poles and zeros into sections.
		    See Notes below.
		
		Returns
		-------
		sos : ndarray
		    Array of second-order filter coefficients, with shape
		    ``(n_sections, 6)``. See `sosfilt` for the SOS filter format
		    specification.
		
		See Also
		--------
		sosfilt
		
		Notes
		-----
		The algorithm used to convert ZPK to SOS format is designed to
		minimize errors due to numerical precision issues. The pairing
		algorithm attempts to minimize the peak gain of each biquadratic
		section. This is done by pairing poles with the nearest zeros, starting
		with the poles closest to the unit circle.
		
		*Algorithms*
		
		The current algorithms are designed specifically for use with digital
		filters. (The output coefficients are not correct for analog filters.)
		
		The steps in the ``pairing='nearest'`` and ``pairing='keep_odd'``
		algorithms are mostly shared. The ``nearest`` algorithm attempts to
		minimize the peak gain, while ``'keep_odd'`` minimizes peak gain under
		the constraint that odd-order systems should retain one section
		as first order. The algorithm steps and are as follows:
		
		As a pre-processing step, add poles or zeros to the origin as
		necessary to obtain the same number of poles and zeros for pairing.
		If ``pairing == 'nearest'`` and there are an odd number of poles,
		add an additional pole and a zero at the origin.
		
		The following steps are then iterated over until no more poles or
		zeros remain:
		
		1. Take the (next remaining) pole (complex or real) closest to the
		   unit circle to begin a new filter section.
		
		2. If the pole is real and there are no other remaining real poles [#]_,
		   add the closest real zero to the section and leave it as a first
		   order section. Note that after this step we are guaranteed to be
		   left with an even number of real poles, complex poles, real zeros,
		   and complex zeros for subsequent pairing iterations.
		
		3. Else:
		
		    1. If the pole is complex and the zero is the only remaining real
		       zero*, then pair the pole with the *next* closest zero
		       (guaranteed to be complex). This is necessary to ensure that
		       there will be a real zero remaining to eventually create a
		       first-order section (thus keeping the odd order).
		
		    2. Else pair the pole with the closest remaining zero (complex or
		       real).
		
		    3. Proceed to complete the second-order section by adding another
		       pole and zero to the current pole and zero in the section:
		
		        1. If the current pole and zero are both complex, add their
		           conjugates.
		
		        2. Else if the pole is complex and the zero is real, add the
		           conjugate pole and the next closest real zero.
		
		        3. Else if the pole is real and the zero is complex, add the
		           conjugate zero and the real pole closest to those zeros.
		
		        4. Else (we must have a real pole and real zero) add the next
		           real pole closest to the unit circle, and then add the real
		           zero closest to that pole.
		
		.. [#] This conditional can only be met for specific odd-order inputs
		       with the ``pairing == 'keep_odd'`` method.
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		
		Design a 6th order low-pass elliptic digital filter for a system with a
		sampling rate of 8000 Hz that has a pass-band corner frequency of
		1000 Hz.  The ripple in the pass-band should not exceed 0.087 dB, and
		the attenuation in the stop-band should be at least 90 dB.
		
		In the following call to `signal.ellip`, we could use ``output='sos'``,
		but for this example, we'll use ``output='zpk'``, and then convert to SOS
		format with `zpk2sos`:
		
		>>> from scipy import signal
		>>> z, p, k = signal.ellip(6, 0.087, 90, 1000/(0.5*8000), output='zpk')
		
		Now convert to SOS format.
		
		>>> sos = signal.zpk2sos(z, p, k)
		
		The coefficients of the numerators of the sections:
		
		>>> sos[:, :3]
		array([[ 0.0014154 ,  0.00248707,  0.0014154 ],
		       [ 1.        ,  0.72965193,  1.        ],
		       [ 1.        ,  0.17594966,  1.        ]])
		
		The symmetry in the coefficients occurs because all the zeros are on the
		unit circle.
		
		The coefficients of the denominators of the sections:
		
		>>> sos[:, 3:]
		array([[ 1.        , -1.32543251,  0.46989499],
		       [ 1.        , -1.26117915,  0.6262586 ],
		       [ 1.        , -1.25707217,  0.86199667]])
		
		The next example shows the effect of the `pairing` option.  We have a
		system with three poles and three zeros, so the SOS array will have
		shape (2, 6).  The means there is, in effect, an extra pole and an extra
		zero at the origin in the SOS representation.
		
		>>> z1 = np.array([-1, -0.5-0.5j, -0.5+0.5j])
		>>> p1 = np.array([0.75, 0.8+0.1j, 0.8-0.1j])
		
		With ``pairing='nearest'`` (the default), we obtain
		
		>>> signal.zpk2sos(z1, p1, 1)
		array([[ 1.  ,  1.  ,  0.5 ,  1.  , -0.75,  0.  ],
		       [ 1.  ,  1.  ,  0.  ,  1.  , -1.6 ,  0.65]])
		
		The first section has the zeros {-0.5-0.05j, -0.5+0.5j} and the poles
		{0, 0.75}, and the second section has the zeros {-1, 0} and poles
		{0.8+0.1j, 0.8-0.1j}.  Note that the extra pole and zero at the origin
		have been assigned to different sections.
		
		With ``pairing='keep_odd'``, we obtain:
		
		>>> signal.zpk2sos(z1, p1, 1, pairing='keep_odd')
		array([[ 1.  ,  1.  ,  0.  ,  1.  , -0.75,  0.  ],
		       [ 1.  ,  1.  ,  0.5 ,  1.  , -1.6 ,  0.65]])
		
		The extra pole and zero at the origin are in the same section.
		The first section is, in effect, a first-order section.
	**/
	static public function zpk2sos(z:Dynamic, p:Dynamic, k:Dynamic, ?pairing:Dynamic):Dynamic;
	/**
		Return polynomial transfer function representation from zeros and poles
		
		Parameters
		----------
		z : array_like
		    Zeros of the transfer function.
		p : array_like
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Returns
		-------
		b : ndarray
		    Numerator polynomial coefficients.
		a : ndarray
		    Denominator polynomial coefficients.
	**/
	static public function zpk2tf(z:Dynamic, p:Dynamic, k:Dynamic):Dynamic;
}