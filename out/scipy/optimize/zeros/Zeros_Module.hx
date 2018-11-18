/* This file is generated, do not edit! */
package scipy.optimize.zeros;
@:pythonImport("scipy.optimize.zeros") extern class Zeros_Module {
	static public var CONVERGED : Dynamic;
	static public var CONVERR : Dynamic;
	static public var SIGNERR : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _iter : Dynamic;
	static public var _rtol : Dynamic;
	static public var _xtol : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Find root of a function within an interval.
		
		Basic bisection routine to find a zero of the function `f` between the
		arguments `a` and `b`. `f(a)` and `f(b)` cannot have the same signs.
		Slow but sure.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  `f` must be continuous, and
		    f(a) and f(b) must have opposite signs.
		a : number
		    One end of the bracketing interval [a,b].
		b : number
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative.
		rtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter cannot be smaller than its default value of
		    ``4*np.finfo(float).eps``.
		maxiter : number, optional
		    if convergence is not achieved in `maxiter` iterations, an error is
		    raised.  Must be >= 0.
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned.  If `full_output` is
		    True, the return value is ``(x, r)``, where x is the root, and r is
		    a `RootResults` object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : RootResults (present if ``full_output = True``)
		    Object containing information about the convergence.  In particular,
		    ``r.converged`` is True if the routine converged.
		
		Examples
		--------
		
		>>> def f(x):
		...     return (x**2 - 1)
		
		>>> from scipy import optimize
		
		>>> root = optimize.bisect(f, 0, 2)
		>>> root
		1.0
		
		>>> root = optimize.bisect(f, -2, 0)
		>>> root
		-1.0
		
		See Also
		--------
		brentq, brenth, bisect, newton
		fixed_point : scalar fixed-point finder
		fsolve : n-dimensional root-finding
	**/
	static public function bisect(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
	/**
		Find root of f in [a,b].
		
		A variation on the classic Brent routine to find a zero of the function f
		between the arguments a and b that uses hyperbolic extrapolation instead of
		inverse quadratic extrapolation. There was a paper back in the 1980's ...
		f(a) and f(b) cannot have the same signs. Generally on a par with the
		brent routine, but not as heavily tested.  It is a safe version of the
		secant method that uses hyperbolic extrapolation. The version here is by
		Chuck Harris.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  f must be continuous, and f(a) and
		    f(b) must have opposite signs.
		a : number
		    One end of the bracketing interval [a,b].
		b : number
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative. As with `brentq`, for nice
		    functions the method will often satisfy the above condition
		    with ``xtol/2`` and ``rtol/2``.
		rtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter cannot be smaller than its default value of
		    ``4*np.finfo(float).eps``. As with `brentq`, for nice functions
		    the method will often satisfy the above condition with
		    ``xtol/2`` and ``rtol/2``.
		maxiter : number, optional
		    if convergence is not achieved in maxiter iterations, an error is
		    raised.  Must be >= 0.
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned.  If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a RootResults object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : RootResults (present if ``full_output = True``)
		    Object containing information about the convergence.  In particular,
		    ``r.converged`` is True if the routine converged.
		
		Examples
		--------
		>>> def f(x):
		...     return (x**2 - 1)
		
		>>> from scipy import optimize
		
		>>> root = optimize.brenth(f, -2, 0)
		>>> root
		-1.0
		
		>>> root = optimize.brenth(f, 0, 2)
		>>> root
		1.0
		
		See Also
		--------
		fmin, fmin_powell, fmin_cg,
		       fmin_bfgs, fmin_ncg : multivariate local optimizers
		
		leastsq : nonlinear least squares minimizer
		
		fmin_l_bfgs_b, fmin_tnc, fmin_cobyla : constrained multivariate optimizers
		
		basinhopping, differential_evolution, brute : global optimizers
		
		fminbound, brent, golden, bracket : local scalar minimizers
		
		fsolve : n-dimensional root-finding
		
		brentq, brenth, ridder, bisect, newton : one-dimensional root-finding
		
		fixed_point : scalar fixed-point finder
	**/
	static public function brenth(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
	/**
		Find a root of a function in a bracketing interval using Brent's method.
		
		Uses the classic Brent's method to find a zero of the function `f` on
		the sign changing interval [a , b].  Generally considered the best of the
		rootfinding routines here.  It is a safe version of the secant method that
		uses inverse quadratic extrapolation.  Brent's method combines root
		bracketing, interval bisection, and inverse quadratic interpolation.  It is
		sometimes known as the van Wijngaarden-Dekker-Brent method.  Brent (1973)
		claims convergence is guaranteed for functions computable within [a,b].
		
		[Brent1973]_ provides the classic description of the algorithm.  Another
		description can be found in a recent edition of Numerical Recipes, including
		[PressEtal1992]_.  Another description is at
		http://mathworld.wolfram.com/BrentsMethod.html.  It should be easy to
		understand the algorithm just by reading our code.  Our code diverges a bit
		from standard presentations: we choose a different formula for the
		extrapolation step.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  The function :math:`f`
		    must be continuous, and :math:`f(a)` and :math:`f(b)` must
		    have opposite signs.
		a : number
		    One end of the bracketing interval :math:`[a, b]`.
		b : number
		    The other end of the bracketing interval :math:`[a, b]`.
		xtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative. For nice functions, Brent's
		    method will often satisfy the above condition with ``xtol/2``
		    and ``rtol/2``. [Brent1973]_
		rtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter cannot be smaller than its default value of
		    ``4*np.finfo(float).eps``. For nice functions, Brent's
		    method will often satisfy the above condition with ``xtol/2``
		    and ``rtol/2``. [Brent1973]_
		maxiter : number, optional
		    if convergence is not achieved in maxiter iterations, an error is
		    raised.  Must be >= 0.
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned.  If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a RootResults object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : RootResults (present if ``full_output = True``)
		    Object containing information about the convergence.  In particular,
		    ``r.converged`` is True if the routine converged.
		
		See Also
		--------
		multivariate local optimizers
		  `fmin`, `fmin_powell`, `fmin_cg`, `fmin_bfgs`, `fmin_ncg`
		nonlinear least squares minimizer
		  `leastsq`
		constrained multivariate optimizers
		  `fmin_l_bfgs_b`, `fmin_tnc`, `fmin_cobyla`
		global optimizers
		  `basinhopping`, `brute`, `differential_evolution`
		local scalar minimizers
		  `fminbound`, `brent`, `golden`, `bracket`
		n-dimensional root-finding
		  `fsolve`
		one-dimensional root-finding
		  `brenth`, `ridder`, `bisect`, `newton`
		scalar fixed-point finder
		  `fixed_point`
		
		Notes
		-----
		`f` must be continuous.  f(a) and f(b) must have opposite signs.
		
		Examples
		--------
		>>> def f(x):
		...     return (x**2 - 1)
		
		>>> from scipy import optimize
		
		>>> root = optimize.brentq(f, -2, 0)
		>>> root
		-1.0
		
		>>> root = optimize.brentq(f, 0, 2)
		>>> root
		1.0
		
		References
		----------
		.. [Brent1973]
		   Brent, R. P.,
		   *Algorithms for Minimization Without Derivatives*.
		   Englewood Cliffs, NJ: Prentice-Hall, 1973. Ch. 3-4.
		
		.. [PressEtal1992]
		   Press, W. H.; Flannery, B. P.; Teukolsky, S. A.; and Vetterling, W. T.
		   *Numerical Recipes in FORTRAN: The Art of Scientific Computing*, 2nd ed.
		   Cambridge, England: Cambridge University Press, pp. 352-355, 1992.
		   Section 9.3:  "Van Wijngaarden-Dekker-Brent Method."
	**/
	static public function brentq(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
	static public var division : Dynamic;
	static public var flag_map : Dynamic;
	/**
		Find a zero using the Newton-Raphson or secant method.
		
		Find a zero of the function `func` given a nearby starting point `x0`.
		The Newton-Raphson method is used if the derivative `fprime` of `func`
		is provided, otherwise the secant method is used.  If the second order
		derivative `fprime2` of `func` is provided, then Halley's method is used.
		
		Parameters
		----------
		func : function
		    The function whose zero is wanted. It must be a function of a
		    single variable of the form f(x,a,b,c...), where a,b,c... are extra
		    arguments that can be passed in the `args` parameter.
		x0 : float
		    An initial estimate of the zero that should be somewhere near the
		    actual zero.
		fprime : function, optional
		    The derivative of the function when available and convenient. If it
		    is None (default), then the secant method is used.
		args : tuple, optional
		    Extra arguments to be used in the function call.
		tol : float, optional
		    The allowable error of the zero value.
		maxiter : int, optional
		    Maximum number of iterations.
		fprime2 : function, optional
		    The second order derivative of the function when available and
		    convenient. If it is None (default), then the normal Newton-Raphson
		    or the secant method is used. If it is not None, then Halley's method
		    is used.
		
		Returns
		-------
		zero : float
		    Estimated location where function is zero.
		
		See Also
		--------
		brentq, brenth, ridder, bisect
		fsolve : find zeroes in n dimensions.
		
		Notes
		-----
		The convergence rate of the Newton-Raphson method is quadratic,
		the Halley method is cubic, and the secant method is
		sub-quadratic.  This means that if the function is well behaved
		the actual error in the estimated zero is approximately the square
		(cube for Halley) of the requested tolerance up to roundoff
		error. However, the stopping criterion used here is the step size
		and there is no guarantee that a zero has been found. Consequently
		the result should be verified. Safer algorithms are brentq,
		brenth, ridder, and bisect, but they all require that the root
		first be bracketed in an interval where the function changes
		sign. The brentq algorithm is recommended for general use in one
		dimensional problems when such an interval has been found.
		
		Examples
		--------
		
		>>> def f(x):
		...     return (x**3 - 1)  # only one real root at x = 1
		
		>>> from scipy import optimize
		
		``fprime`` not provided, use secant method
		
		>>> root = optimize.newton(f, 1.5)
		>>> root
		1.0000000000000016
		>>> root = optimize.newton(f, 1.5, fprime2=lambda x: 6 * x)
		>>> root
		1.0000000000000016
		
		Only ``fprime`` provided, use Newton Raphson method
		
		>>> root = optimize.newton(f, 1.5, fprime=lambda x: 3 * x**2)
		>>> root
		1.0
		
		Both ``fprime2`` and ``fprime`` provided, use Halley's method
		
		>>> root = optimize.newton(f, 1.5, fprime=lambda x: 3 * x**2,
		...                        fprime2=lambda x: 6 * x)
		>>> root
		1.0
	**/
	static public function newton(func:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?fprime2:Dynamic):Float;
	static public var print_function : Dynamic;
	static public function results_c(full_output:Dynamic, r:Dynamic):Dynamic;
	/**
		Find a root of a function in an interval.
		
		Parameters
		----------
		f : function
		    Python function returning a number.  f must be continuous, and f(a) and
		    f(b) must have opposite signs.
		a : number
		    One end of the bracketing interval [a,b].
		b : number
		    The other end of the bracketing interval [a,b].
		xtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter must be nonnegative.
		rtol : number, optional
		    The computed root ``x0`` will satisfy ``np.allclose(x, x0,
		    atol=xtol, rtol=rtol)``, where ``x`` is the exact root. The
		    parameter cannot be smaller than its default value of
		    ``4*np.finfo(float).eps``.
		maxiter : number, optional
		    if convergence is not achieved in maxiter iterations, an error is
		    raised.  Must be >= 0.
		args : tuple, optional
		    containing extra arguments for the function `f`.
		    `f` is called by ``apply(f, (x)+args)``.
		full_output : bool, optional
		    If `full_output` is False, the root is returned.  If `full_output` is
		    True, the return value is ``(x, r)``, where `x` is the root, and `r` is
		    a RootResults object.
		disp : bool, optional
		    If True, raise RuntimeError if the algorithm didn't converge.
		
		Returns
		-------
		x0 : float
		    Zero of `f` between `a` and `b`.
		r : RootResults (present if ``full_output = True``)
		    Object containing information about the convergence.
		    In particular, ``r.converged`` is True if the routine converged.
		
		See Also
		--------
		brentq, brenth, bisect, newton : one-dimensional root-finding
		fixed_point : scalar fixed-point finder
		
		Notes
		-----
		Uses [Ridders1979]_ method to find a zero of the function `f` between the
		arguments `a` and `b`. Ridders' method is faster than bisection, but not
		generally as fast as the Brent routines. [Ridders1979]_ provides the
		classic description and source of the algorithm. A description can also be
		found in any recent edition of Numerical Recipes.
		
		The routine used here diverges slightly from standard presentations in
		order to be a bit more careful of tolerance.
		
		Examples
		--------
		
		>>> def f(x):
		...     return (x**2 - 1)
		
		>>> from scipy import optimize
		
		>>> root = optimize.ridder(f, 0, 2)
		>>> root
		1.0
		
		>>> root = optimize.ridder(f, -2, 0)
		>>> root
		-1.0
		
		References
		----------
		.. [Ridders1979]
		   Ridders, C. F. J. "A New Algorithm for Computing a
		   Single Root of a Real Continuous Function."
		   IEEE Trans. Circuits Systems 26, 979-980, 1979.
	**/
	static public function ridder(f:Dynamic, a:Dynamic, b:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?rtol:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Float;
	/**
		sign(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns an element-wise indication of the sign of a number.
		
		The `sign` function returns ``-1 if x < 0, 0 if x==0, 1 if x > 0``.  nan
		is returned for nan inputs.
		
		For complex inputs, the `sign` function returns
		``sign(x.real) + 0j if x.real != 0 else sign(x.imag) + 0j``.
		
		complex(nan, 0) is returned for complex nan inputs.
		
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
		    The sign of `x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		There is more than one definition of sign in common use for complex
		numbers.  The definition used here is equivalent to :math:`x/\sqrt{x*x}`
		which is different from a common alternative, :math:`x/|x|`.
		
		Examples
		--------
		>>> np.sign([-5., 4.5])
		array([-1.,  1.])
		>>> np.sign(0)
		0
		>>> np.sign(5-2j)
		(1+0j)
	**/
	static public function sign(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}