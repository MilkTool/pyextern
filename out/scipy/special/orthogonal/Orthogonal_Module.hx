/* This file is generated, do not edit! */
package scipy.special.orthogonal;
@:pythonImport("scipy.special.orthogonal") extern class Orthogonal_Module {
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
		Helper function for Tricomi initial guesses
		
		For details, see formula 3.1 in lemma 3.1 in the
		original paper.
		
		Parameters
		----------
		n : int
		    Quadrature order
		k : ndarray of type int
		    Index of roots :math:`  au_k` to compute
		maxit : int
		    Number of Newton maxit performed, the default
		    value of 5 is sufficient.
		
		Returns
		-------
		tauk : ndarray
		    Roots of equation 3.1
		
		See Also
		--------
		initial_nodes_a
		roots_hermite_asy
	**/
	static public function _compute_tauk(n:Dynamic, k:Dynamic, ?maxit:Dynamic):Dynamic;
	static public var _evalfuns : Dynamic;
	/**
		gamma(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		gamma(z)
		
		Gamma function.
		
		.. math::
		
		      \Gamma(z) = \int_0^\infty x^{z-1} e^{-x} dx = (z - 1)!
		
		The gamma function is often referred to as the generalized
		factorial since ``z*gamma(z) = gamma(z+1)`` and ``gamma(n+1) =
		n!`` for natural number *n*.
		
		Parameters
		----------
		z : float or complex array_like
		
		Returns
		-------
		float or complex
		    The value(s) of gamma(z)
		
		Examples
		--------
		>>> from scipy.special import gamma, factorial
		
		>>> gamma([0, 0.5, 1, 5])
		array([         inf,   1.77245385,   1.        ,  24.        ])
		
		>>> z = 2.5 + 1j
		>>> gamma(z)
		(0.77476210455108352+0.70763120437959293j)
		>>> gamma(z+1), z*gamma(z)  # Recurrence property
		((1.2292740569981171+2.5438401155000685j),
		 (1.2292740569981158+2.5438401155000658j))
		
		>>> gamma(0.5)**2  # gamma(0.5) = sqrt(pi)
		3.1415926535897927
		
		Plot gamma(x) for real x
		
		>>> x = np.linspace(-3.5, 5.5, 2251)
		>>> y = gamma(x)
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'b', alpha=0.6, label='gamma(x)')
		>>> k = np.arange(1, 7)
		>>> plt.plot(k, factorial(k-1), 'k*', alpha=0.6,
		...          label='(x-1)!, x = 1, 2, ...')
		>>> plt.xlim(-3.5, 5.5)
		>>> plt.ylim(-10, 25)
		>>> plt.grid()
		>>> plt.xlabel('x')
		>>> plt.legend(loc='lower right')
		>>> plt.show()
	**/
	static public function _gam(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[x,w] = gen_roots_and_weights(n,an_func,sqrt_bn_func,mu)
		
		Returns the roots (x) of an nth order orthogonal polynomial,
		and weights (w) to use in appropriate Gaussian quadrature with that
		orthogonal polynomial.
		
		The polynomials have the recurrence relation
		      P_n+1(x) = (x - A_n) P_n(x) - B_n P_n-1(x)
		
		an_func(n)          should return A_n
		sqrt_bn_func(n)     should return sqrt(B_n)
		mu ( = h_0 )        is the integral of the weight over the orthogonal
		                    interval
	**/
	static public function _gen_roots_and_weights(n:Dynamic, mu0:Dynamic, an_func:Dynamic, bn_func:Dynamic, f:Dynamic, df:Dynamic, symmetrize:Dynamic, mu:Dynamic):Dynamic;
	/**
		Initial guesses for the Hermite roots
		
		Computes an initial approximation to the non-negative
		roots :math:`x_k` of the Hermite polynomial :math:`H_n`
		of order :math:`n`. The Tricomi and Gatteschi initial
		guesses are used in the region where they are accurate.
		
		Parameters
		----------
		n : int
		    Quadrature order
		
		Returns
		-------
		xk : ndarray
		    Approximate roots
		
		See Also
		--------
		roots_hermite_asy
	**/
	static public function _initial_nodes(n:Dynamic):Dynamic;
	/**
		Tricomi initial guesses
		
		Computes an initial approximation to the square of the `k`-th
		(positive) root :math:`x_k` of the Hermite polynomial :math:`H_n`
		of order :math:`n`. The formula is the one from lemma 3.1 in the
		original paper. The guesses are accurate except in the region
		near :math:`\sqrt{2n + 1}`.
		
		Parameters
		----------
		n : int
		    Quadrature order
		k : ndarray of type int
		    Index of roots to compute
		
		Returns
		-------
		xksq : ndarray
		    Square of the approximate roots
		
		See Also
		--------
		initial_nodes
		roots_hermite_asy
	**/
	static public function _initial_nodes_a(n:Dynamic, k:Dynamic):Dynamic;
	/**
		Gatteschi initial guesses
		
		Computes an initial approximation to the square of the `k`-th
		(positive) root :math:`x_k` of the Hermite polynomial :math:`H_n`
		of order :math:`n`. The formula is the one from lemma 3.2 in the
		original paper. The guesses are accurate in the region just
		below :math:`\sqrt{2n + 1}`.
		
		Parameters
		----------
		n : int
		    Quadrature order
		k : ndarray of type int
		    Index of roots to compute
		
		Returns
		-------
		xksq : ndarray
		    Square of the approximate root
		
		See Also
		--------
		initial_nodes
		roots_hermite_asy
	**/
	static public function _initial_nodes_b(n:Dynamic, k:Dynamic):Dynamic;
	static public var _modattrs : Dynamic;
	/**
		Newton iteration for polishing the asymptotic approximation
		to the zeros of the Hermite polynomials.
		
		Parameters
		----------
		n : int
		    Quadrature order
		x_initial : ndarray
		    Initial guesses for the roots
		maxit : int
		    Maximal number of Newton iterations.
		    The default 5 is sufficient, usually
		    only one or two steps are needed.
		
		Returns
		-------
		nodes : ndarray
		    Quadrature nodes
		weights : ndarray
		    Quadrature weights
		
		See Also
		--------
		roots_hermite_asy
	**/
	static public function _newton(n:Dynamic, x_initial:Dynamic, ?maxit:Dynamic):Dynamic;
	/**
		Asymptotic series expansion of parabolic cylinder function
		
		The implementation is based on sections 3.2 and 3.3 from the
		original paper. Compared to the published version this code
		adds one more term to the asymptotic series. The detailed
		formulas can be found at [parabolic-asymptotics]_. The evaluation
		is done in a transformed variable :math:`\theta := \arccos(t)`
		where :math:`t := x / \mu` and :math:`\mu := \sqrt{2n + 1}`.
		
		Parameters
		----------
		n : int
		    Quadrature order
		theta : ndarray
		    Transformed position variable
		
		Returns
		-------
		U : ndarray
		    Value of the parabolic cylinder function :math:`U(a, \theta)`.
		Ud : ndarray
		    Value of the derivative :math:`U^{\prime}(a, \theta)` of
		    the parabolic cylinder function.
		
		See Also
		--------
		roots_hermite_asy
		
		References
		----------
		.. [parabolic-asymptotics]
		   https://dlmf.nist.gov/12.10#vii
	**/
	static public function _pbcf(n:Dynamic, theta:Dynamic):Dynamic;
	static public var _polyfuns : Dynamic;
	static public var _rootfuns_map : Dynamic;
	/**
		Gauss-Hermite (physicst's) quadrature for large n.
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the n-th degree Hermite polynomial,
		:math:`H_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-\infty, \infty]` with weight function :math:`f(x) = e^{-x^2}`.
		
		This method relies on asymptotic expansions which work best for n > 150.
		The algorithm has linear runtime making computation for very large n
		feasible.
		
		Parameters
		----------
		n : int
		    quadrature order
		
		Returns
		-------
		nodes : ndarray
		    Quadrature nodes
		weights : ndarray
		    Quadrature weights
		
		See Also
		--------
		roots_hermite
		
		References
		----------
		.. [townsend.trogdon.olver-2014]
		   Townsend, A. and Trogdon, T. and Olver, S. (2014)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*. :arXiv:`1410.5286`.
		
		.. [townsend.trogdon.olver-2015]
		   Townsend, A. and Trogdon, T. and Olver, S. (2015)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*.
		   IMA Journal of Numerical Analysis
		   :doi:`10.1093/imanum/drv002`.
	**/
	static public function _roots_hermite_asy(n:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		airy(x[, out1, out2, out3, out4], / [, out=(None, None, None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		airy(z)
		
		Airy functions and their derivatives.
		
		Parameters
		----------
		z : array_like
		    Real or complex argument.
		
		Returns
		-------
		Ai, Aip, Bi, Bip : ndarrays
		    Airy functions Ai and Bi, and their derivatives Aip and Bip.
		
		Notes
		-----
		The Airy functions Ai and Bi are two independent solutions of
		
		.. math:: y''(x) = x y(x).
		
		For real `z` in [-10, 10], the computation is carried out by calling
		the Cephes [1]_ `airy` routine, which uses power series summation
		for small `z` and rational minimax approximations for large `z`.
		
		Outside this range, the AMOS [2]_ `zairy` and `zbiry` routines are
		employed.  They are computed using power series for :math:`|z| < 1` and
		the following relations to modified Bessel functions for larger `z`
		(where :math:`t \equiv 2 z^{3/2}/3`):
		
		.. math::
		
		    Ai(z) = \frac{1}{\pi \sqrt{3}} K_{1/3}(t)
		
		    Ai'(z) = -\frac{z}{\pi \sqrt{3}} K_{2/3}(t)
		
		    Bi(z) = \sqrt{\frac{z}{3}} \left(I_{-1/3}(t) + I_{1/3}(t) \right)
		
		    Bi'(z) = \frac{z}{\sqrt{3}} \left(I_{-2/3}(t) + I_{2/3}(t)\right)
		
		See also
		--------
		airye : exponentially scaled Airy functions.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/
		.. [2] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
		
		Examples
		--------
		Compute the Airy functions on the interval [-15, 5].
		
		>>> from scipy import special
		>>> x = np.linspace(-15, 5, 201)
		>>> ai, aip, bi, bip = special.airy(x)
		
		Plot Ai(x) and Bi(x).
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, ai, 'r', label='Ai(x)')
		>>> plt.plot(x, bi, 'b--', label='Bi(x)')
		>>> plt.ylim(-0.5, 1.0)
		>>> plt.grid()
		>>> plt.legend(loc='upper left')
		>>> plt.show()
	**/
	static public function airy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range` function, but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use `numpy.linspace` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified as a position argument,
		    `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arccos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Trigonometric inverse cosine, element-wise.
		
		The inverse of `cos` so that, if ``y = cos(x)``, then ``x = arccos(y)``.
		
		Parameters
		----------
		x : array_like
		    `x`-coordinate on the unit circle.
		    For real arguments, the domain is [-1, 1].
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
		angle : ndarray
		    The angle of the ray intersecting the unit circle at the given
		    `x`-coordinate in radians [0, pi].
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		cos, arctan, arcsin, emath.arccos
		
		Notes
		-----
		`arccos` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cos(z) = x`. The convention is to return
		the angle `z` whose real part lies in `[0, pi]`.
		
		For real-valued input data types, `arccos` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytic function that
		has branch cuts `[-inf, -1]` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse `cos` is also known as `acos` or cos^-1.
		
		References
		----------
		M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		10th printing, 1964, pp. 79. http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		We expect the arccos of 1 to be 0, and of -1 to be pi:
		
		>>> np.arccos([1, -1])
		array([ 0.        ,  3.14159265])
		
		Plot arccos:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-1, 1, num=100)
		>>> plt.plot(x, np.arccos(x))
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function arccos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Evenly round to the given number of decimals.
		
		Parameters
		----------
		a : array_like
		    Input data.
		decimals : int, optional
		    Number of decimal places to round to (default: 0).  If
		    decimals is negative, it specifies the number of positions to
		    the left of the decimal point.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary. See `doc.ufuncs` (Section
		    "Output arguments") for details.
		
		Returns
		-------
		rounded_array : ndarray
		    An array of the same type as `a`, containing the rounded values.
		    Unless `out` was specified, a new array is created.  A reference to
		    the result is returned.
		
		    The real and imaginary parts of complex numbers are rounded
		    separately.  The result of rounding a float is a float.
		
		See Also
		--------
		ndarray.round : equivalent method
		
		ceil, fix, floor, rint, trunc
		
		
		Notes
		-----
		For values exactly halfway between rounded decimal values, NumPy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc. Results may also be surprising due
		to the inexact representation of decimal fractions in the IEEE
		floating point standard [1]_ and errors introduced when scaling
		by powers of ten.
		
		References
		----------
		.. [1] "Lecture Notes on the Status of IEEE 754", William Kahan,
		       https://people.eecs.berkeley.edu/~wkahan/ieee754status/IEEE754.PDF
		.. [2] "How Futile are Mindless Assessments of
		       Roundoff in Floating-Point Computation?", William Kahan,
		       https://people.eecs.berkeley.edu/~wkahan/Mindless.pdf
		
		Examples
		--------
		>>> np.around([0.37, 1.64])
		array([ 0.,  2.])
		>>> np.around([0.37, 1.64], decimals=1)
		array([ 0.4,  1.6])
		>>> np.around([.5, 1.5, 2.5, 3.5, 4.5]) # rounds to nearest even value
		array([ 0.,  2.,  2.,  4.,  4.])
		>>> np.around([1,2,3,11], decimals=1) # ndarray of ints is returned
		array([ 1,  2,  3, 11])
		>>> np.around([1,2,3,11], decimals=-1)
		array([ 0,  0,  0, 10])
	**/
	static public function around(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		binom(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		binom(n, k)
		
		Binomial coefficient
		
		See Also
		--------
		comb : The number of combinations of N things taken k at a time.
	**/
	static public function binom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the first kind, :math:`C_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-2, 2]` with weight function :math:`f(x) = 1/\sqrt{1 - (x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function c_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Gegenbauer quadrature.
		
		Computes the sample points and weights for Gauss-Gegenbauer quadrature.
		The sample points are the roots of the n-th degree Gegenbauer polynomial,
		:math:`C^{\alpha}_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function
		:math:`f(x) = (1 - x^2)^{\alpha - 1/2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -0.5
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function cg_roots(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Chebyshev polynomial of the first kind on :math:`[-2, 2]`.
		
		Defined as :math:`C_n(x) = 2T_n(x/2)`, where :math:`T_n` is the
		nth Chebychev polynomial of the first kind.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		C : orthopoly1d
		    Chebyshev polynomial of the first kind on :math:`[-2, 2]`.
		
		Notes
		-----
		The polynomials :math:`C_n(x)` are orthogonal over :math:`[-2, 2]`
		with weight function :math:`1/\sqrt{1 - (x/2)^2}`.
		
		See Also
		--------
		chebyt : Chebyshev polynomial of the first kind.
		
		References
		----------
		.. [1] Abramowitz and Stegun, "Handbook of Mathematical Functions"
		       Section 22. National Bureau of Standards, 1972.
	**/
	static public function chebyc(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Chebyshev polynomial of the second kind on :math:`[-2, 2]`.
		
		Defined as :math:`S_n(x) = U_n(x/2)` where :math:`U_n` is the
		nth Chebychev polynomial of the second kind.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		S : orthopoly1d
		    Chebyshev polynomial of the second kind on :math:`[-2, 2]`.
		
		Notes
		-----
		The polynomials :math:`S_n(x)` are orthogonal over :math:`[-2, 2]`
		with weight function :math:`\sqrt{1 - (x/2)}^2`.
		
		See Also
		--------
		chebyu : Chebyshev polynomial of the second kind
		
		References
		----------
		.. [1] Abramowitz and Stegun, "Handbook of Mathematical Functions"
		       Section 22. National Bureau of Standards, 1972.
	**/
	static public function chebys(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Chebyshev polynomial of the first kind.
		
		Defined to be the solution of
		
		.. math::
		    (1 - x^2)\frac{d^2}{dx^2}T_n - x\frac{d}{dx}T_n + n^2T_n = 0;
		
		:math:`T_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		T : orthopoly1d
		    Chebyshev polynomial of the first kind.
		
		Notes
		-----
		The polynomials :math:`T_n` are orthogonal over :math:`[-1, 1]`
		with weight function :math:`(1 - x^2)^{-1/2}`.
		
		See Also
		--------
		chebyu : Chebyshev polynomial of the second kind.
	**/
	static public function chebyt(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Chebyshev polynomial of the second kind.
		
		Defined to be the solution of
		
		.. math::
		    (1 - x^2)\frac{d^2}{dx^2}U_n - 3x\frac{d}{dx}U_n
		      + n(n + 2)U_n = 0;
		
		:math:`U_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		U : orthopoly1d
		    Chebyshev polynomial of the second kind.
		
		Notes
		-----
		The polynomials :math:`U_n` are orthogonal over :math:`[-1, 1]`
		with weight function :math:`(1 - x^2)^{1/2}`.
		
		See Also
		--------
		chebyt : Chebyshev polynomial of the first kind.
	**/
	static public function chebyu(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		cos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
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
		    The corresponding cosine values.
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
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		eval_chebyc(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_chebyc(n, x, out=None)
		
		Evaluate Chebyshev polynomial of the first kind on [-2, 2] at a
		point.
		
		These polynomials are defined as
		
		.. math::
		
		    S_n(x) = T_n(x/2)
		
		where :math:`T_n` is a Chebyshev polynomial of the first kind.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `eval_chebyt`.
		x : array_like
		    Points at which to evaluate the Chebyshev polynomial
		
		Returns
		-------
		C : ndarray
		    Values of the Chebyshev polynomial
		
		See Also
		--------
		roots_chebyc : roots and quadrature weights of Chebyshev
		               polynomials of the first kind on [-2, 2]
		chebyc : Chebyshev polynomial object
		numpy.polynomial.chebyshev.Chebyshev : Chebyshev series
		eval_chebyt : evaluate Chebycshev polynomials of the first kind
	**/
	static public function eval_chebyc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebys(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_chebys(n, x, out=None)
		
		Evaluate Chebyshev polynomial of the second kind on [-2, 2] at a
		point.
		
		These polynomials are defined as
		
		.. math::
		
		    S_n(x) = U_n(x/2)
		
		where :math:`U_n` is a Chebyshev polynomial of the second kind.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `eval_chebyu`.
		x : array_like
		    Points at which to evaluate the Chebyshev polynomial
		
		Returns
		-------
		S : ndarray
		    Values of the Chebyshev polynomial
		
		See Also
		--------
		roots_chebys : roots and quadrature weights of Chebyshev
		               polynomials of the second kind on [-2, 2]
		chebys : Chebyshev polynomial object
		eval_chebyu : evaluate Chebyshev polynomials of the second kind
	**/
	static public function eval_chebys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyt(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_chebyt(n, x, out=None)
		
		Evaluate Chebyshev polynomial of the first kind at a point.
		
		The Chebyshev polynomials of the first kind can be defined via the
		Gauss hypergeometric function :math:`{}_2F_1` as
		
		.. math::
		
		    T_n(x) = {}_2F_1(n, -n; 1/2; (1 - x)/2).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		x : array_like
		    Points at which to evaluate the Chebyshev polynomial
		
		Returns
		-------
		T : ndarray
		    Values of the Chebyshev polynomial
		
		See Also
		--------
		roots_chebyt : roots and quadrature weights of Chebyshev
		               polynomials of the first kind
		chebyu : Chebychev polynomial object
		eval_chebyu : evaluate Chebyshev polynomials of the second kind
		hyp2f1 : Gauss hypergeometric function
		numpy.polynomial.chebyshev.Chebyshev : Chebyshev series
		
		Notes
		-----
		This routine is numerically stable for `x` in ``[-1, 1]`` at least
		up to order ``10000``.
	**/
	static public function eval_chebyt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyu(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_chebyu(n, x, out=None)
		
		Evaluate Chebyshev polynomial of the second kind at a point.
		
		The Chebyshev polynomials of the second kind can be defined via
		the Gauss hypergeometric function :math:`{}_2F_1` as
		
		.. math::
		
		    U_n(x) = (n + 1) {}_2F_1(-n, n + 2; 3/2; (1 - x)/2).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		x : array_like
		    Points at which to evaluate the Chebyshev polynomial
		
		Returns
		-------
		U : ndarray
		    Values of the Chebyshev polynomial
		
		See Also
		--------
		roots_chebyu : roots and quadrature weights of Chebyshev
		               polynomials of the second kind
		chebyu : Chebyshev polynomial object
		eval_chebyt : evaluate Chebyshev polynomials of the first kind
		hyp2f1 : Gauss hypergeometric function
	**/
	static public function eval_chebyu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_gegenbauer(x1, x2, x3, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_gegenbauer(n, alpha, x, out=None)
		
		Evaluate Gegenbauer polynomial at a point.
		
		The Gegenbauer polynomials can be defined via the Gauss
		hypergeometric function :math:`{}_2F_1` as
		
		.. math::
		
		    C_n^{(\alpha)} = \frac{(2\alpha)_n}{\Gamma(n + 1)}
		      {}_2F_1(-n, 2\alpha + n; \alpha + 1/2; (1 - z)/2).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		alpha : array_like
		    Parameter
		x : array_like
		    Points at which to evaluate the Gegenbauer polynomial
		
		Returns
		-------
		C : ndarray
		    Values of the Gegenbauer polynomial
		
		See Also
		--------
		roots_gegenbauer : roots and quadrature weights of Gegenbauer
		                   polynomials
		gegenbauer : Gegenbauer polynomial object
		hyp2f1 : Gauss hypergeometric function
	**/
	static public function eval_gegenbauer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_genlaguerre(x1, x2, x3, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_genlaguerre(n, alpha, x, out=None)
		
		Evaluate generalized Laguerre polynomial at a point.
		
		The generalized Laguerre polynomials can be defined via the
		confluent hypergeometric function :math:`{}_1F_1` as
		
		.. math::
		
		    L_n^{(\alpha)}(x) = \binom{n + \alpha}{n}
		      {}_1F_1(-n, \alpha + 1, x).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`. The Laguerre polynomials are the special case where
		:math:`\alpha = 0`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer the result is
		    determined via the relation to the confluent hypergeometric
		    function.
		alpha : array_like
		    Parameter; must have ``alpha > -1``
		x : array_like
		    Points at which to evaluate the generalized Laguerre
		    polynomial
		
		Returns
		-------
		L : ndarray
		    Values of the generalized Laguerre polynomial
		
		See Also
		--------
		roots_genlaguerre : roots and quadrature weights of generalized
		                    Laguerre polynomials
		genlaguerre : generalized Laguerre polynomial object
		hyp1f1 : confluent hypergeometric function
		eval_laguerre : evaluate Laguerre polynomials
	**/
	static public function eval_genlaguerre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_hermite(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_hermite(n, x, out=None)
		
		Evaluate physicist's Hermite polynomial at a point.
		
		Defined by
		
		.. math::
		
		    H_n(x) = (-1)^n e^{x^2} \frac{d^n}{dx^n} e^{-x^2};
		
		:math:`H_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial
		x : array_like
		    Points at which to evaluate the Hermite polynomial
		
		Returns
		-------
		H : ndarray
		    Values of the Hermite polynomial
		
		See Also
		--------
		roots_hermite : roots and quadrature weights of physicist's
		                Hermite polynomials
		hermite : physicist's Hermite polynomial object
		numpy.polynomial.hermite.Hermite : Physicist's Hermite series
		eval_hermitenorm : evaluate Probabilist's Hermite polynomials
	**/
	static public function eval_hermite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_hermitenorm(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_hermitenorm(n, x, out=None)
		
		Evaluate probabilist's (normalized) Hermite polynomial at a
		point.
		
		Defined by
		
		.. math::
		
		    He_n(x) = (-1)^n e^{x^2/2} \frac{d^n}{dx^n} e^{-x^2/2};
		
		:math:`He_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial
		x : array_like
		    Points at which to evaluate the Hermite polynomial
		
		Returns
		-------
		He : ndarray
		    Values of the Hermite polynomial
		
		See Also
		--------
		roots_hermitenorm : roots and quadrature weights of probabilist's
		                    Hermite polynomials
		hermitenorm : probabilist's Hermite polynomial object
		numpy.polynomial.hermite_e.HermiteE : Probabilist's Hermite series
		eval_hermite : evaluate physicist's Hermite polynomials
	**/
	static public function eval_hermitenorm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_jacobi(x1, x2, x3, x4, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_jacobi(n, alpha, beta, x, out=None)
		
		Evaluate Jacobi polynomial at a point.
		
		The Jacobi polynomials can be defined via the Gauss hypergeometric
		function :math:`{}_2F_1` as
		
		.. math::
		
		    P_n^{(\alpha, \beta)}(x) = \frac{(\alpha + 1)_n}{\Gamma(n + 1)}
		      {}_2F_1(-n, 1 + \alpha + \beta + n; \alpha + 1; (1 - z)/2)
		
		where :math:`(\cdot)_n` is the Pochhammer symbol; see `poch`. When
		:math:`n` is an integer the result is a polynomial of degree
		:math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		alpha : array_like
		    Parameter
		beta : array_like
		    Parameter
		x : array_like
		    Points at which to evaluate the polynomial
		
		Returns
		-------
		P : ndarray
		    Values of the Jacobi polynomial
		
		See Also
		--------
		roots_jacobi : roots and quadrature weights of Jacobi polynomials
		jacobi : Jacobi polynomial object
		hyp2f1 : Gauss hypergeometric function
	**/
	static public function eval_jacobi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_laguerre(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_laguerre(n, x, out=None)
		
		Evaluate Laguerre polynomial at a point.
		
		The Laguerre polynomials can be defined via the confluent
		hypergeometric function :math:`{}_1F_1` as
		
		.. math::
		
		    L_n(x) = {}_1F_1(-n, 1, x).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer the result is
		    determined via the relation to the confluent hypergeometric
		    function.
		x : array_like
		    Points at which to evaluate the Laguerre polynomial
		
		Returns
		-------
		L : ndarray
		    Values of the Laguerre polynomial
		
		See Also
		--------
		roots_laguerre : roots and quadrature weights of Laguerre
		                 polynomials
		laguerre : Laguerre polynomial object
		numpy.polynomial.laguerre.Laguerre : Laguerre series
		eval_genlaguerre : evaluate generalized Laguerre polynomials
	**/
	static public function eval_laguerre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_legendre(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_legendre(n, x, out=None)
		
		Evaluate Legendre polynomial at a point.
		
		The Legendre polynomials can be defined via the Gauss
		hypergeometric function :math:`{}_2F_1` as
		
		.. math::
		
		    P_n(x) = {}_2F_1(-n, n + 1; 1; (1 - x)/2).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		x : array_like
		    Points at which to evaluate the Legendre polynomial
		
		Returns
		-------
		P : ndarray
		    Values of the Legendre polynomial
		
		See Also
		--------
		roots_legendre : roots and quadrature weights of Legendre
		                 polynomials
		legendre : Legendre polynomial object
		hyp2f1 : Gauss hypergeometric function
		numpy.polynomial.legendre.Legendre : Legendre series
	**/
	static public function eval_legendre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_chebyt(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_sh_chebyt(n, x, out=None)
		
		Evaluate shifted Chebyshev polynomial of the first kind at a
		point.
		
		These polynomials are defined as
		
		.. math::
		
		    T_n^*(x) = T_n(2x - 1)
		
		where :math:`T_n` is a Chebyshev polynomial of the first kind.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `eval_chebyt`.
		x : array_like
		    Points at which to evaluate the shifted Chebyshev polynomial
		
		Returns
		-------
		T : ndarray
		    Values of the shifted Chebyshev polynomial
		
		See Also
		--------
		roots_sh_chebyt : roots and quadrature weights of shifted
		                  Chebyshev polynomials of the first kind
		sh_chebyt : shifted Chebyshev polynomial object
		eval_chebyt : evaluate Chebyshev polynomials of the first kind
		numpy.polynomial.chebyshev.Chebyshev : Chebyshev series
	**/
	static public function eval_sh_chebyt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_chebyu(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_sh_chebyu(n, x, out=None)
		
		Evaluate shifted Chebyshev polynomial of the second kind at a
		point.
		
		These polynomials are defined as
		
		.. math::
		
		    U_n^*(x) = U_n(2x - 1)
		
		where :math:`U_n` is a Chebyshev polynomial of the first kind.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `eval_chebyu`.
		x : array_like
		    Points at which to evaluate the shifted Chebyshev polynomial
		
		Returns
		-------
		U : ndarray
		    Values of the shifted Chebyshev polynomial
		
		See Also
		--------
		roots_sh_chebyu : roots and quadrature weights of shifted
		                  Chebychev polynomials of the second kind
		sh_chebyu : shifted Chebyshev polynomial object
		eval_chebyu : evaluate Chebyshev polynomials of the second kind
	**/
	static public function eval_sh_chebyu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_jacobi(x1, x2, x3, x4, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_sh_jacobi(n, p, q, x, out=None)
		
		Evaluate shifted Jacobi polynomial at a point.
		
		Defined by
		
		.. math::
		
		    G_n^{(p, q)}(x)
		      = \binom{2n + p - 1}{n}^{-1} P_n^{(p - q, q - 1)}(2x - 1),
		
		where :math:`P_n^{(\cdot, \cdot)}` is the n-th Jacobi polynomial.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `binom` and `eval_jacobi`.
		p : float
		    Parameter
		q : float
		    Parameter
		
		Returns
		-------
		G : ndarray
		    Values of the shifted Jacobi polynomial.
		
		See Also
		--------
		roots_sh_jacobi : roots and quadrature weights of shifted Jacobi
		                  polynomials
		sh_jacobi : shifted Jacobi polynomial object
		eval_jacobi : evaluate Jacobi polynomials
	**/
	static public function eval_sh_jacobi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_legendre(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_sh_legendre(n, x, out=None)
		
		Evaluate shifted Legendre polynomial at a point.
		
		These polynomials are defined as
		
		.. math::
		
		    P_n^*(x) = P_n(2x - 1)
		
		where :math:`P_n` is a Legendre polynomial.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the value is
		    determined via the relation to `eval_legendre`.
		x : array_like
		    Points at which to evaluate the shifted Legendre polynomial
		
		Returns
		-------
		P : ndarray
		    Values of the shifted Legendre polynomial
		
		See Also
		--------
		roots_sh_legendre : roots and quadrature weights of shifted
		                    Legendre polynomials
		sh_legendre : shifted Legendre polynomial object
		eval_legendre : evaluate Legendre polynomials
		numpy.polynomial.legendre.Legendre : Legendre series
	**/
	static public function eval_sh_legendre(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		       https://en.wikipedia.org/wiki/Exponential_function
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
		floor(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
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
		    The floor of each element in `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ceil, trunc, rint
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", in other
		words ``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gegenbauer (ultraspherical) polynomial.
		
		Defined to be the solution of
		
		.. math::
		    (1 - x^2)\frac{d^2}{dx^2}C_n^{(\alpha)}
		      - (2\alpha + 1)x\frac{d}{dx}C_n^{(\alpha)}
		      + n(n + 2\alpha)C_n^{(\alpha)} = 0
		
		for :math:`\alpha > -1/2`; :math:`C_n^{(\alpha)}` is a polynomial
		of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		C : orthopoly1d
		    Gegenbauer polynomial.
		
		Notes
		-----
		The polynomials :math:`C_n^{(\alpha)}` are orthogonal over
		:math:`[-1,1]` with weight function :math:`(1 - x^2)^{(\alpha -
		1/2)}`.
	**/
	static public function gegenbauer(n:Dynamic, alpha:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Generalized (associated) Laguerre polynomial.
		
		Defined to be the solution of
		
		.. math::
		    x\frac{d^2}{dx^2}L_n^{(\alpha)}
		      + (\alpha + 1 - x)\frac{d}{dx}L_n^{(\alpha)}
		      + nL_n^{(\alpha)} = 0,
		
		where :math:`\alpha > -1`; :math:`L_n^{(\alpha)}` is a polynomial
		of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		alpha : float
		    Parameter, must be greater than -1.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		L : orthopoly1d
		    Generalized Laguerre polynomial.
		
		Notes
		-----
		For fixed :math:`\alpha`, the polynomials :math:`L_n^{(\alpha)}`
		are orthogonal over :math:`[0, \infty)` with weight function
		:math:`e^{-x}x^\alpha`.
		
		The Laguerre polynomials are the special case where :math:`\alpha
		= 0`.
		
		See Also
		--------
		laguerre : Laguerre polynomial.
	**/
	static public function genlaguerre(n:Dynamic, alpha:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Gauss-Hermite (physicst's) quadrature.
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the n-th degree Hermite polynomial,
		:math:`H_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-\infty, \infty]` with weight function :math:`f(x) = e^{-x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		Notes
		-----
		For small n up to 150 a modified version of the Golub-Welsch
		algorithm is used. Nodes are computed from the eigenvalue
		problem and improved by one step of a Newton iteration.
		The weights are computed from the well-known analytical formula.
		
		For n larger than 150 an optimal asymptotic algorithm is applied
		which computes nodes and weights in a numerically stable manner.
		The algorithm has linear runtime making computation for very
		large n (several thousand or more) feasible.
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite.hermgauss
		roots_hermitenorm
		
		References
		----------
		.. [townsend.trogdon.olver-2014]
		   Townsend, A. and Trogdon, T. and Olver, S. (2014)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*. :arXiv:`1410.5286`.
		
		.. [townsend.trogdon.olver-2015]
		   Townsend, A. and Trogdon, T. and Olver, S. (2015)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*.
		   IMA Journal of Numerical Analysis
		   :doi:`10.1093/imanum/drv002`.
	**/
	static public function h_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Hermite (statistician's) quadrature.
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the n-th degree Hermite polynomial,
		:math:`He_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-\infty, \infty]` with weight function :math:`f(x) = e^{-x^2/2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		Notes
		-----
		For small n up to 150 a modified version of the Golub-Welsch
		algorithm is used. Nodes are computed from the eigenvalue
		problem and improved by one step of a Newton iteration.
		The weights are computed from the well-known analytical formula.
		
		For n larger than 150 an optimal asymptotic algorithm is used
		which computes nodes and weights in a numerical stable manner.
		The algorithm has linear runtime making computation for very
		large n (several thousand or more) feasible.
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite_e.hermegauss
	**/
	static public function he_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Physicist's Hermite polynomial.
		
		Defined by
		
		.. math::
		
		    H_n(x) = (-1)^ne^{x^2}\frac{d^n}{dx^n}e^{-x^2};
		
		:math:`H_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		H : orthopoly1d
		    Hermite polynomial.
		
		Notes
		-----
		The polynomials :math:`H_n` are orthogonal over :math:`(-\infty,
		\infty)` with weight function :math:`e^{-x^2}`.
	**/
	static public function hermite(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Normalized (probabilist's) Hermite polynomial.
		
		Defined by
		
		.. math::
		
		    He_n(x) = (-1)^ne^{x^2/2}\frac{d^n}{dx^n}e^{-x^2/2};
		
		:math:`He_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		He : orthopoly1d
		    Hermite polynomial.
		
		Notes
		-----
		
		The polynomials :math:`He_n` are orthogonal over :math:`(-\infty,
		\infty)` with weight function :math:`e^{-x^2/2}`.
	**/
	static public function hermitenorm(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Stack arrays in sequence horizontally (column wise).
		
		This is equivalent to concatenation along the second axis, except for 1-D
		arrays where it concatenates along the first axis. Rebuilds arrays divided
		by `hsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the second axis,
		    except 1-D arrays which can be any length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		stack : Join a sequence of arrays along a new axis.
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		concatenate : Join a sequence of arrays along an existing axis.
		hsplit : Split array along second axis.
		block : Assemble arrays from blocks.
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((2,3,4))
		>>> np.hstack((a,b))
		array([1, 2, 3, 2, 3, 4])
		>>> a = np.array([[1],[2],[3]])
		>>> b = np.array([[2],[3],[4]])
		>>> np.hstack((a,b))
		array([[1, 2],
		       [2, 3],
		       [3, 4]])
	**/
	static public function hstack(tup:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		Gauss-Jacobi quadrature.
		
		Computes the sample points and weights for Gauss-Jacobi quadrature. The
		sample points are the roots of the n-th degree Jacobi polynomial,
		:math:`P^{\alpha, \beta}_n(x)`.  These sample points and weights
		correctly integrate polynomials of degree :math:`2n - 1` or less over the
		interval :math:`[-1, 1]` with weight function
		:math:`f(x) = (1 - x)^{\alpha} (1 + x)^{\beta}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		beta : float
		    beta must be > -1
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function j_roots(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Jacobi polynomial.
		
		Defined to be the solution of
		
		.. math::
		    (1 - x^2)\frac{d^2}{dx^2}P_n^{(\alpha, \beta)}
		      + (\beta - \alpha - (\alpha + \beta + 2)x)
		        \frac{d}{dx}P_n^{(\alpha, \beta)}
		      + n(n + \alpha + \beta + 1)P_n^{(\alpha, \beta)} = 0
		
		for :math:`\alpha, \beta > -1`; :math:`P_n^{(\alpha, \beta)}` is a
		polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		alpha : float
		    Parameter, must be greater than -1.
		beta : float
		    Parameter, must be greater than -1.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		P : orthopoly1d
		    Jacobi polynomial.
		
		Notes
		-----
		For fixed :math:`\alpha, \beta`, the polynomials
		:math:`P_n^{(\alpha, \beta)}` are orthogonal over :math:`[-1, 1]`
		with weight function :math:`(1 - x)^\alpha(1 + x)^\beta`.
	**/
	static public function jacobi(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Gauss-Jacobi (shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Jacobi (shifted)
		quadrature. The sample points are the roots of the n-th degree shifted
		Jacobi polynomial, :math:`G^{p,q}_n(x)`.  These sample points and weights
		correctly integrate polynomials of degree :math:`2n - 1` or less over the
		interval :math:`[0, 1]` with weight function
		:math:`f(x) = (1 - x)^{p-q} x^{q-1}`
		
		Parameters
		----------
		n : int
		    quadrature order
		p1 : float
		    (p1 - q1) must be > -1
		q1 : float
		    q1 must be > 0
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function js_roots(n:Dynamic, p1:Dynamic, q1:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Laguerre quadrature.
		
		Computes the sample points and weights for Gauss-Laguerre quadrature.
		The sample points are the roots of the n-th degree Laguerre polynomial,
		:math:`L_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[0, \infty]` with weight function :math:`f(x) = e^{-x}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.laguerre.laggauss
	**/
	static public function l_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-generalized Laguerre quadrature.
		
		Computes the sample points and weights for Gauss-generalized Laguerre
		quadrature. The sample points are the roots of the n-th degree generalized
		Laguerre polynomial, :math:`L^{\alpha}_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, \infty]` with weight function
		:math:`f(x) = x^{\alpha} e^{-x}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function la_roots(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Laguerre polynomial.
		
		Defined to be the solution of
		
		.. math::
		    x\frac{d^2}{dx^2}L_n + (1 - x)\frac{d}{dx}L_n + nL_n = 0;
		
		:math:`L_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		L : orthopoly1d
		    Laguerre Polynomial.
		
		Notes
		-----
		The polynomials :math:`L_n` are orthogonal over :math:`[0,
		\infty)` with weight function :math:`e^{-x}`.
	**/
	static public function laguerre(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Legendre polynomial.
		
		Defined to be the solution of
		
		.. math::
		    \frac{d}{dx}\left[(1 - x^2)\frac{d}{dx}P_n(x)\right]
		      + n(n + 1)P_n(x) = 0;
		
		:math:`P_n(x)` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		P : orthopoly1d
		    Legendre polynomial.
		
		Notes
		-----
		The polynomials :math:`P_n` are orthogonal over :math:`[-1, 1]`
		with weight function 1.
		
		Examples
		--------
		Generate the 3rd-order Legendre polynomial 1/2*(5x^3 + 0x^2 - 3x + 0):
		
		>>> from scipy.special import legendre
		>>> legendre(3)
		poly1d([ 2.5,  0. , -1.5,  0. ])
	**/
	static public function legendre(n:Dynamic, ?monic:Dynamic):Dynamic;
	static public var newfun : Dynamic;
	static public var oldfun : Dynamic;
	/**
		Gauss-Legendre quadrature.
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the n-th degree Legendre polynomial
		:math:`P_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.legendre.leggauss
	**/
	static public function p_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		poch(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		poch(z, m)
		
		Rising factorial (z)_m
		
		The Pochhammer symbol (rising factorial), is defined as
		
		.. math::
		
		    (z)_m = \frac{\Gamma(z + m)}{\Gamma(z)}
		
		For positive integer `m` it reads
		
		.. math::
		
		    (z)_m = z (z + 1) ... (z + m - 1)
		
		Parameters
		----------
		z : array_like
		    (int or float)
		m : array_like
		    (int or float)
		
		Returns
		-------
		poch : ndarray
		    The value of the function.
	**/
	static public function poch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Gauss-Legendre (shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the n-th degree shifted Legendre
		polynomial :math:`P^*_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[0, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function ps_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the first kind, :math:`C_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-2, 2]` with weight function :math:`f(x) = 1/\sqrt{1 - (x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_chebyc(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the second kind, :math:`S_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-2, 2]` with weight function :math:`f(x) = \sqrt{1 - (x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_chebys(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the first kind, :math:`T_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1/\sqrt{1 - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.chebyshev.chebgauss
	**/
	static public function roots_chebyt(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the second kind, :math:`U_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = \sqrt{1 - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_chebyu(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Gegenbauer quadrature.
		
		Computes the sample points and weights for Gauss-Gegenbauer quadrature.
		The sample points are the roots of the n-th degree Gegenbauer polynomial,
		:math:`C^{\alpha}_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function
		:math:`f(x) = (1 - x^2)^{\alpha - 1/2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -0.5
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_gegenbauer(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-generalized Laguerre quadrature.
		
		Computes the sample points and weights for Gauss-generalized Laguerre
		quadrature. The sample points are the roots of the n-th degree generalized
		Laguerre polynomial, :math:`L^{\alpha}_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, \infty]` with weight function
		:math:`f(x) = x^{\alpha} e^{-x}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_genlaguerre(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Hermite (physicst's) quadrature.
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the n-th degree Hermite polynomial,
		:math:`H_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-\infty, \infty]` with weight function :math:`f(x) = e^{-x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		Notes
		-----
		For small n up to 150 a modified version of the Golub-Welsch
		algorithm is used. Nodes are computed from the eigenvalue
		problem and improved by one step of a Newton iteration.
		The weights are computed from the well-known analytical formula.
		
		For n larger than 150 an optimal asymptotic algorithm is applied
		which computes nodes and weights in a numerically stable manner.
		The algorithm has linear runtime making computation for very
		large n (several thousand or more) feasible.
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite.hermgauss
		roots_hermitenorm
		
		References
		----------
		.. [townsend.trogdon.olver-2014]
		   Townsend, A. and Trogdon, T. and Olver, S. (2014)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*. :arXiv:`1410.5286`.
		
		.. [townsend.trogdon.olver-2015]
		   Townsend, A. and Trogdon, T. and Olver, S. (2015)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*.
		   IMA Journal of Numerical Analysis
		   :doi:`10.1093/imanum/drv002`.
	**/
	static public function roots_hermite(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Hermite (statistician's) quadrature.
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the n-th degree Hermite polynomial,
		:math:`He_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-\infty, \infty]` with weight function :math:`f(x) = e^{-x^2/2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		Notes
		-----
		For small n up to 150 a modified version of the Golub-Welsch
		algorithm is used. Nodes are computed from the eigenvalue
		problem and improved by one step of a Newton iteration.
		The weights are computed from the well-known analytical formula.
		
		For n larger than 150 an optimal asymptotic algorithm is used
		which computes nodes and weights in a numerical stable manner.
		The algorithm has linear runtime making computation for very
		large n (several thousand or more) feasible.
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite_e.hermegauss
	**/
	static public function roots_hermitenorm(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Jacobi quadrature.
		
		Computes the sample points and weights for Gauss-Jacobi quadrature. The
		sample points are the roots of the n-th degree Jacobi polynomial,
		:math:`P^{\alpha, \beta}_n(x)`.  These sample points and weights
		correctly integrate polynomials of degree :math:`2n - 1` or less over the
		interval :math:`[-1, 1]` with weight function
		:math:`f(x) = (1 - x)^{\alpha} (1 + x)^{\beta}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		beta : float
		    beta must be > -1
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_jacobi(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Laguerre quadrature.
		
		Computes the sample points and weights for Gauss-Laguerre quadrature.
		The sample points are the roots of the n-th degree Laguerre polynomial,
		:math:`L_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[0, \infty]` with weight function :math:`f(x) = e^{-x}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.laguerre.laggauss
	**/
	static public function roots_laguerre(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Legendre quadrature.
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the n-th degree Legendre polynomial
		:math:`P_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.legendre.leggauss
	**/
	static public function roots_legendre(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind, shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree shifted Chebyshev
		polynomial of the first kind, :math:`T_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, 1]` with weight function
		:math:`f(x) = 1/\sqrt{x - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_sh_chebyt(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind, shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree shifted Chebyshev
		polynomial of the second kind, :math:`U_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, 1]` with weight function
		:math:`f(x) = \sqrt{x - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_sh_chebyu(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Jacobi (shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Jacobi (shifted)
		quadrature. The sample points are the roots of the n-th degree shifted
		Jacobi polynomial, :math:`G^{p,q}_n(x)`.  These sample points and weights
		correctly integrate polynomials of degree :math:`2n - 1` or less over the
		interval :math:`[0, 1]` with weight function
		:math:`f(x) = (1 - x)^{p-q} x^{q-1}`
		
		Parameters
		----------
		n : int
		    quadrature order
		p1 : float
		    (p1 - q1) must be > -1
		q1 : float
		    q1 must be > 0
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_sh_jacobi(n:Dynamic, p1:Dynamic, q1:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Legendre (shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the n-th degree shifted Legendre
		polynomial :math:`P^*_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[0, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function roots_sh_legendre(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the second kind, :math:`S_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-2, 2]` with weight function :math:`f(x) = \sqrt{1 - (x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function s_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Shifted Chebyshev polynomial of the first kind.
		
		Defined as :math:`T^*_n(x) = T_n(2x - 1)` for :math:`T_n` the nth
		Chebyshev polynomial of the first kind.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		T : orthopoly1d
		    Shifted Chebyshev polynomial of the first kind.
		
		Notes
		-----
		The polynomials :math:`T^*_n` are orthogonal over :math:`[0, 1]`
		with weight function :math:`(x - x^2)^{-1/2}`.
	**/
	static public function sh_chebyt(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Shifted Chebyshev polynomial of the second kind.
		
		Defined as :math:`U^*_n(x) = U_n(2x - 1)` for :math:`U_n` the nth
		Chebyshev polynomial of the second kind.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		U : orthopoly1d
		    Shifted Chebyshev polynomial of the second kind.
		
		Notes
		-----
		The polynomials :math:`U^*_n` are orthogonal over :math:`[0, 1]`
		with weight function :math:`(x - x^2)^{1/2}`.
	**/
	static public function sh_chebyu(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Shifted Jacobi polynomial.
		
		Defined by
		
		.. math::
		
		    G_n^{(p, q)}(x)
		      = \binom{2n + p - 1}{n}^{-1}P_n^{(p - q, q - 1)}(2x - 1),
		
		where :math:`P_n^{(\cdot, \cdot)}` is the nth Jacobi polynomial.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		p : float
		    Parameter, must have :math:`p > q - 1`.
		q : float
		    Parameter, must be greater than 0.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		G : orthopoly1d
		    Shifted Jacobi polynomial.
		
		Notes
		-----
		For fixed :math:`p, q`, the polynomials :math:`G_n^{(p, q)}` are
		orthogonal over :math:`[0, 1]` with weight function :math:`(1 -
		x)^{p - q}x^{q - 1}`.
	**/
	static public function sh_jacobi(n:Dynamic, p:Dynamic, q:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Shifted Legendre polynomial.
		
		Defined as :math:`P^*_n(x) = P_n(2x - 1)` for :math:`P_n` the nth
		Legendre polynomial.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		P : orthopoly1d
		    Shifted Legendre polynomial.
		
		Notes
		-----
		The polynomials :math:`P^*_n` are orthogonal over :math:`[0, 1]`
		with weight function 1.
	**/
	static public function sh_legendre(n:Dynamic, ?monic:Dynamic):Dynamic;
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
		Gauss-Chebyshev (first kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the first kind, :math:`T_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1/\sqrt{1 - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.chebyshev.chebgauss
	**/
	static public function t_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind, shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree shifted Chebyshev
		polynomial of the first kind, :math:`T_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, 1]` with weight function
		:math:`f(x) = 1/\sqrt{x - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function ts_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree Chebyshev polynomial of
		the second kind, :math:`U_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = \sqrt{1 - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function u_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind, shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the n-th degree shifted Chebyshev
		polynomial of the second kind, :math:`U_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1` or less
		over the interval :math:`[0, 1]` with weight function
		:math:`f(x) = \sqrt{x - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
	**/
	static public function us_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
}