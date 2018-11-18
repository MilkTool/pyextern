/* This file is generated, do not edit! */
package scipy.optimize._linprog_ip;
@:pythonImport("scipy.optimize._linprog_ip") extern class _Linprog_ip_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	/**
		Given user inputs for a linear programming problem, return the
		objective vector, upper bound constraints, equality constraints,
		and simple bounds in a preferred format.
		
		Parameters
		----------
		c : array_like
		    Coefficients of the linear objective function to be minimized.
		A_ub : array_like, optional
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``.
		b_ub : array_like, optional
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``.
		A_eq : array_like, optional
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``.
		b_eq : array_like, optional
		    1-D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``.
		bounds : sequence, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative)
		    If a sequence containing a single tuple is provided, then ``min`` and
		    ``max`` will be applied to all variables in the problem.
		
		Returns
		-------
		c : 1-D array
		    Coefficients of the linear objective function to be minimized.
		A_ub : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``.
		b_ub : 1-D array
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``.
		A_eq : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``.
		b_eq : 1-D array
		    1-D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``.
		bounds : sequence of tuples
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for each of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative)
	**/
	static public function _clean_inputs(c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic):Dynamic;
	/**
		Print indicators of optimization status to the console.
		
		Parameters
		----------
		rho_p : float
		    The (normalized) primal feasibility, see [1] 4.5
		rho_d : float
		    The (normalized) dual feasibility, see [1] 4.5
		rho_g : float
		    The (normalized) duality gap, see [1] 4.5
		alpha : float
		    The step size, see [1] 4.3
		rho_mu : float
		    The (normalized) path parameter, see [1] 4.5
		obj : float
		    The objective function value of the current iterate
		header : bool
		    True if a header is to be printed
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _display_iter(rho_p:Dynamic, rho_d:Dynamic, rho_g:Dynamic, alpha:Dynamic, rho_mu:Dynamic, obj:Dynamic, ?header:Dynamic):Dynamic;
	/**
		An implementation of [1] Equation 8.9
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _do_step(x:Dynamic, y:Dynamic, z:Dynamic, tau:Dynamic, kappa:Dynamic, d_x:Dynamic, d_y:Dynamic, d_z:Dynamic, d_tau:Dynamic, d_kappa:Dynamic, alpha:Dynamic):Dynamic;
	/**
		Given a linear programming problem of the form:
		
		minimize:     c^T * x
		
		subject to:   A_ub * x <= b_ub
		              A_eq * x == b_eq
		              bounds[i][0] < x_i < bounds[i][1]
		
		return the problem in standard form:
		minimize:     c'^T * x'
		
		subject to:   A * x' == b
		              0 < x' < oo
		
		by adding slack variables and making variable substitutions as necessary.
		
		Parameters
		----------
		c : 1-D array
		    Coefficients of the linear objective function to be minimized.
		    Components corresponding with fixed variables have been eliminated.
		c0 : float
		    Constant term in objective function due to fixed (and eliminated)
		    variables.
		A_ub : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``. Unnecessary
		    rows/columns have been removed.
		b_ub : 1-D array
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``. Unnecessary elements have been removed.
		A_eq : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``. Unnecessary rows/columns have been
		    removed.
		b_eq : 1-D array
		    1-D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``. Unnecessary elements have been removed.
		bounds : sequence of tuples
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for each of ``min`` or
		    ``max`` when there is no bound in that direction. Bounds have been
		    tightened where possible.
		undo: list of tuples
		    (`index`, `value`) pairs that record the original index and fixed value
		    for each variable removed from the problem
		
		Returns
		-------
		A : 2-D array
		    2-D array which, when matrix-multiplied by x, gives the values of the
		    equality constraints at x (for standard form problem).
		b : 1-D array
		    1-D array of values representing the RHS of each equality constraint
		    (row) in A (for standard form problem).
		c : 1-D array
		    Coefficients of the linear objective function to be minimized (for
		    standard form problem).
		c0 : float
		    Constant term in objective function due to fixed (and eliminated)
		    variables.
		
		References
		----------
		.. [6] Bertsimas, Dimitris, and J. Tsitsiklis. "Introduction to linear
		       programming." Athena Scientific 1 (1997): 997.
	**/
	static public function _get_Abc(c:Dynamic, ?c0:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?undo:Dynamic):Dynamic;
	/**
		Return the starting point from [1] 4.4
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _get_blind_start(shape:Dynamic):Dynamic;
	/**
		Given standard form problem defined by ``A``, ``b``, and ``c``;
		current variable estimates ``x``, ``y``, ``z``, ``tau``, and ``kappa``;
		algorithmic parameters ``gamma and ``eta;
		and options ``sparse``, ``lstsq``, ``sym_pos``, ``cholesky``, ``pc``
		(predictor-corrector), and ``ip`` (initial point improvement),
		get the search direction for increments to the variable estimates.
		
		Parameters
		----------
		As defined in [1], except:
		sparse : bool
		    True if the system to be solved is sparse. This is typically set
		    True when the original ``A_ub`` and ``A_eq`` arrays are sparse.
		lstsq : bool
		    True if the system is ill-conditioned and/or (nearly) singular and
		    thus a more robust least-squares solver is desired. This is sometimes
		    needed as the solution is approached.
		sym_pos : bool
		    True if the system matrix is symmetric positive definite
		    Sometimes this needs to be set false as the solution is approached,
		    even when the system should be symmetric positive definite, due to
		    numerical difficulties.
		cholesky : bool
		    True if the system is to be solved by Cholesky, rather than LU,
		    decomposition. This is typically faster unless the problem is very
		    small or prone to numerical difficulties.
		pc : bool
		    True if the predictor-corrector method of Mehrota is to be used. This
		    is almost always (if not always) beneficial. Even though it requires
		    the solution of an additional linear system, the factorization
		    is typically (implicitly) reused so solution is efficient, and the
		    number of algorithm iterations is typically reduced.
		ip : bool
		    True if the improved initial point suggestion due to [1] section 4.3
		    is desired. It's unclear whether this is beneficial.
		permc_spec : str (default = 'MMD_AT_PLUS_A')
		    (Has effect only with ``sparse = True``, ``lstsq = False``, ``sym_pos =
		    True``.) A matrix is factorized in each iteration of the algorithm.
		    This option specifies how to permute the columns of the matrix for
		    sparsity preservation. Acceptable values are:
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering.
		
		    This option can impact the convergence of the
		    interior point algorithm; test different values to determine which
		    performs best for your problem. For more information, refer to
		    ``scipy.sparse.linalg.splu``.
		
		Returns
		-------
		Search directions as defined in [1]
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _get_delta(A:Dynamic, b:Dynamic, c:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, tau:Dynamic, kappa:Dynamic, gamma:Dynamic, eta:Dynamic, ?sparse:Dynamic, ?lstsq:Dynamic, ?sym_pos:Dynamic, ?cholesky:Dynamic, ?pc:Dynamic, ?ip:Dynamic, ?permc_spec:Dynamic):Dynamic;
	/**
		Given problem status code, return a more detailed message.
		
		Parameters
		----------
		status : int
		    An integer representing the exit status of the optimization::
		
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		     4 : Serious numerical difficulties encountered.
		
		Returns
		-------
		message : str
		    A string descriptor of the exit status of the optimization.
	**/
	static public function _get_message(status:Dynamic):String;
	/**
		Given solver options, return a handle to the appropriate linear system
		solver.
		
		Parameters
		----------
		sparse : bool
		    True if the system to be solved is sparse. This is typically set
		    True when the original ``A_ub`` and ``A_eq`` arrays are sparse.
		lstsq : bool
		    True if the system is ill-conditioned and/or (nearly) singular and
		    thus a more robust least-squares solver is desired. This is sometimes
		    needed as the solution is approached.
		sym_pos : bool
		    True if the system matrix is symmetric positive definite
		    Sometimes this needs to be set false as the solution is approached,
		    even when the system should be symmetric positive definite, due to
		    numerical difficulties.
		cholesky : bool
		    True if the system is to be solved by Cholesky, rather than LU,
		    decomposition. This is typically faster unless the problem is very
		    small or prone to numerical difficulties.
		
		Returns
		-------
		solve : function
		    Handle to the appropriate solver function
	**/
	static public function _get_solver(?sparse:Dynamic, ?lstsq:Dynamic, ?sym_pos:Dynamic, ?cholesky:Dynamic):haxe.Constraints.Function;
	/**
		An implementation of [1] equation 8.21
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _get_step(x:Dynamic, d_x:Dynamic, z:Dynamic, d_z:Dynamic, tau:Dynamic, d_tau:Dynamic, kappa:Dynamic, d_kappa:Dynamic, alpha0:Dynamic):Dynamic;
	/**
		Implementation of several equations from [1] used as indicators of
		the status of optimization.
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _indicators(A:Dynamic, b:Dynamic, c:Dynamic, c0:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, tau:Dynamic, kappa:Dynamic):Dynamic;
	/**
		Solve a linear programming problem in standard form:
		
		minimize:     c'^T * x'
		
		subject to:   A * x' == b
		              0 < x' < oo
		
		using the interior point method of [1].
		
		Parameters
		----------
		A : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x`` (for standard form problem).
		b : 1-D array
		    1-D array of values representing the RHS of each equality constraint
		    (row) in ``A`` (for standard form problem).
		c : 1-D array
		    Coefficients of the linear objective function to be minimized (for
		    standard form problem).
		c0 : float
		    Constant term in objective function due to fixed (and eliminated)
		    variables. (Purely for display.)
		alpha0 : float
		    The maximal step size for Mehrota's predictor-corrector search
		    direction; see :math:`\beta_3`of [1] Table 8.1
		beta : float
		    The desired reduction of the path parameter :math:`\mu` (see  [3]_)
		maxiter : int
		    The maximum number of iterations of the algorithm.
		disp : bool
		    Set to ``True`` if indicators of optimization status are to be printed
		    to the console each iteration.
		tol : float
		    Termination tolerance; see [1]_ Section 4.5.
		sparse : bool
		    Set to ``True`` if the problem is to be treated as sparse. However,
		    the inputs ``A_eq`` and ``A_ub`` should nonetheless be provided as
		    (dense) arrays rather than sparse matrices.
		lstsq : bool
		    Set to ``True`` if the problem is expected to be very poorly
		    conditioned. This should always be left as ``False`` unless severe
		    numerical difficulties are frequently encountered, and a better option
		    would be to improve the formulation of the problem.
		sym_pos : bool
		    Leave ``True`` if the problem is expected to yield a well conditioned
		    symmetric positive definite normal equation matrix (almost always).
		cholesky : bool
		    Set to ``True`` if the normal equations are to be solved by explicit
		    Cholesky decomposition followed by explicit forward/backward
		    substitution. This is typically faster for moderate, dense problems
		    that are numerically well-behaved.
		pc : bool
		    Leave ``True`` if the predictor-corrector method of Mehrota is to be
		    used. This is almost always (if not always) beneficial.
		ip : bool
		    Set to ``True`` if the improved initial point suggestion due to [1]_
		    Section 4.3 is desired. It's unclear whether this is beneficial.
		permc_spec : str (default = 'MMD_AT_PLUS_A')
		    (Has effect only with ``sparse = True``, ``lstsq = False``, ``sym_pos =
		    True``.) A matrix is factorized in each iteration of the algorithm.
		    This option specifies how to permute the columns of the matrix for
		    sparsity preservation. Acceptable values are:
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering.
		
		    This option can impact the convergence of the
		    interior point algorithm; test different values to determine which
		    performs best for your problem. For more information, refer to
		    ``scipy.sparse.linalg.splu``.
		
		Returns
		-------
		x_hat : float
		    Solution vector (for standard form problem).
		status : int
		    An integer representing the exit status of the optimization::
		
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		     4 : Serious numerical difficulties encountered.
		
		message : str
		    A string descriptor of the exit status of the optimization.
		iteration : int
		    The number of iterations taken to solve the problem
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
		.. [3] Freund, Robert M. "Primal-Dual Interior-Point Methods for Linear
		       Programming based on Newton's Method." Unpublished Course Notes,
		       March 2004. Available 2/25/2017 at:
		       https://ocw.mit.edu/courses/sloan-school-of-management/15-084j-nonlinear-programming-spring-2004/lecture-notes/lec14_int_pt_mthd.pdf
	**/
	static public function _ip_hsd(A:Dynamic, b:Dynamic, c:Dynamic, c0:Dynamic, alpha0:Dynamic, beta:Dynamic, maxiter:Dynamic, disp:Dynamic, tol:Dynamic, sparse:Dynamic, lstsq:Dynamic, sym_pos:Dynamic, cholesky:Dynamic, pc:Dynamic, ip:Dynamic, permc_spec:Dynamic):Float;
	/**
		Minimize a linear objective function subject to linear
		equality constraints, linear inequality constraints, and simple bounds
		using the interior point method of [1]_.
		
		Linear programming is intended to solve problems of the following form::
		
		    Minimize:     c^T * x
		
		    Subject to:   A_ub * x <= b_ub
		                  A_eq * x == b_eq
		                  bounds[i][0] < x_i < bounds[i][1]
		
		Parameters
		----------
		c : array_like
		    Coefficients of the linear objective function to be minimized.
		A_ub : array_like, optional
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``.
		b_ub : array_like, optional
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``.
		A_eq : array_like, optional
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``.
		b_eq : array_like, optional
		    1-D array of values representing the right hand side of each equality
		    constraint (row) in ``A_eq``.
		bounds : sequence, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use ``None`` for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative).
		    If a sequence containing a single tuple is provided, then ``min`` and
		    ``max`` will be applied to all variables in the problem.
		
		Options
		-------
		maxiter : int (default = 1000)
		    The maximum number of iterations of the algorithm.
		disp : bool (default = False)
		    Set to ``True`` if indicators of optimization status are to be printed
		    to the console each iteration.
		tol : float (default = 1e-8)
		    Termination tolerance to be used for all termination criteria;
		    see [1]_ Section 4.5.
		alpha0 : float (default = 0.99995)
		    The maximal step size for Mehrota's predictor-corrector search
		    direction; see :math:`\beta_{3}` of [1]_ Table 8.1.
		beta : float (default = 0.1)
		    The desired reduction of the path parameter :math:`\mu` (see [3]_)
		    when Mehrota's predictor-corrector is not in use (uncommon).
		sparse : bool (default = False)
		    Set to ``True`` if the problem is to be treated as sparse after
		    presolve. If either ``A_eq`` or ``A_ub`` is a sparse matrix,
		    this option will automatically be set ``True``, and the problem
		    will be treated as sparse even during presolve. If your constraint
		    matrices contain mostly zeros and the problem is not very small (less
		    than about 100 constraints or variables), consider setting ``True``
		    or providing ``A_eq`` and ``A_ub`` as sparse matrices.
		lstsq : bool (default = False)
		    Set to ``True`` if the problem is expected to be very poorly
		    conditioned. This should always be left ``False`` unless severe
		    numerical difficulties are encountered. Leave this at the default
		    unless you receive a warning message suggesting otherwise.
		sym_pos : bool (default = True)
		    Leave ``True`` if the problem is expected to yield a well conditioned
		    symmetric positive definite normal equation matrix
		    (almost always). Leave this at the default unless you receive
		    a warning message suggesting otherwise.
		cholesky : bool (default = True)
		    Set to ``True`` if the normal equations are to be solved by explicit
		    Cholesky decomposition followed by explicit forward/backward
		    substitution. This is typically faster for moderate, dense problems
		    that are numerically well-behaved.
		pc : bool (default = True)
		    Leave ``True`` if the predictor-corrector method of Mehrota is to be
		    used. This is almost always (if not always) beneficial.
		ip : bool (default = False)
		    Set to ``True`` if the improved initial point suggestion due to [1]_
		    Section 4.3 is desired. Whether this is beneficial or not
		    depends on the problem.
		presolve : bool (default = True)
		    Leave ``True`` if presolve routine should be run. The presolve routine
		    is almost always useful because it can detect trivial infeasibilities
		    and unboundedness, eliminate fixed variables, and remove redundancies.
		    One circumstance in which it might be turned off (set ``False``) is
		    when it detects that the problem is trivially unbounded; it is possible
		    that that the problem is truly infeasibile but this has not been
		    detected.
		rr : bool (default = True)
		    Default ``True`` attempts to eliminate any redundant rows in ``A_eq``.
		    Set ``False`` if ``A_eq`` is known to be of full row rank, or if you
		    are looking for a potential speedup (at the expense of reliability).
		permc_spec : str (default = 'MMD_AT_PLUS_A')
		    (Has effect only with ``sparse = True``, ``lstsq = False``, ``sym_pos =
		    True``.) A matrix is factorized in each iteration of the algorithm.
		    This option specifies how to permute the columns of the matrix for
		    sparsity preservation. Acceptable values are:
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering.
		
		    This option can impact the convergence of the
		    interior point algorithm; test different values to determine which
		    performs best for your problem. For more information, refer to
		    ``scipy.sparse.linalg.splu``.
		
		Returns
		-------
		A ``scipy.optimize.OptimizeResult`` consisting of the following fields:
		
		    x : ndarray
		        The independent variable vector which optimizes the linear
		        programming problem.
		    fun : float
		        The optimal value of the objective function
		    con : float
		        The residuals of the equality constraints (nominally zero).
		    slack : ndarray
		        The values of the slack variables.  Each slack variable corresponds
		        to an inequality constraint.  If the slack is zero, then the
		        corresponding constraint is active.
		    success : bool
		        Returns True if the algorithm succeeded in finding an optimal
		        solution.
		    status : int
		        An integer representing the exit status of the optimization::
		
		             0 : Optimization terminated successfully
		             1 : Iteration limit reached
		             2 : Problem appears to be infeasible
		             3 : Problem appears to be unbounded
		             4 : Serious numerical difficulties encountered
		
		    nit : int
		        The number of iterations performed.
		    message : str
		        A string descriptor of the exit status of the optimization.
		
		Notes
		-----
		
		This method implements the algorithm outlined in [1]_ with ideas from [5]_
		and a structure inspired by the simpler methods of [3]_ and [4]_.
		
		First, a presolve procedure based on [5]_ attempts to identify trivial
		infeasibilities, trivial unboundedness, and potential problem
		simplifications. Specifically, it checks for:
		
		- rows of zeros in ``A_eq`` or ``A_ub``, representing trivial constraints;
		- columns of zeros in ``A_eq`` `and` ``A_ub``, representing unconstrained
		  variables;
		- column singletons in ``A_eq``, representing fixed variables; and
		- column singletons in ``A_ub``, representing simple bounds.
		
		If presolve reveals that the problem is unbounded (e.g. an unconstrained
		and unbounded variable has negative cost) or infeasible (e.g. a row of
		zeros in ``A_eq`` corresponds with a nonzero in ``b_eq``), the solver
		terminates with the appropriate status code. Note that presolve terminates
		as soon as any sign of unboundedness is detected; consequently, a problem
		may be reported as unbounded when in reality the problem is infeasible
		(but infeasibility has not been detected yet). Therefore, if the output
		message states that unboundedness is detected in presolve and it is
		necessary to know whether the problem is actually infeasible, set option
		``presolve=False``.
		
		If neither infeasibility nor unboundedness are detected in a single pass
		of the presolve check, bounds are tightened where possible and fixed
		variables are removed from the problem. Then, linearly dependent rows
		of the ``A_eq`` matrix are removed, (unless they represent an
		infeasibility) to avoid numerical difficulties in the primary solve
		routine. Note that rows that are nearly linearly dependent (within a
		prescibed tolerance) may also be removed, which can change the optimal
		solution in rare cases. If this is a concern, eliminate redundancy from
		your problem formulation and run with option ``rr=False`` or
		``presolve=False``.
		
		Several potential improvements can be made here: additional presolve
		checks outlined in [5]_ should be implemented, the presolve routine should
		be run multiple times (until no further simplifications can be made), and
		more of the efficiency improvements from [2]_ should be implemented in the
		redundancy removal routines.
		
		After presolve, the problem is transformed to standard form by converting
		the (tightened) simple bounds to upper bound constraints, introducing
		non-negative slack variables for inequality constraints, and expressing
		unbounded variables as the difference between two non-negative variables.
		
		The primal-dual path following method begins with initial 'guesses' of
		the primal and dual variables of the standard form problem and iteratively
		attempts to solve the (nonlinear) Karush-Kuhn-Tucker conditions for the
		problem with a gradually reduced logarithmic barrier term added to the
		objective. This particular implementation uses a homogeneous self-dual
		formulation, which provides certificates of infeasibility or unboundedness
		where applicable.
		
		The default initial point for the primal and dual variables is that
		defined in [1]_ Section 4.4 Equation 8.22. Optionally (by setting initial
		point option ``ip=True``), an alternate (potentially improved) starting
		point can be calculated according to the additional recommendations of
		[1]_ Section 4.4.
		
		A search direction is calculated using the predictor-corrector method
		(single correction) proposed by Mehrota and detailed in [1]_ Section 4.1.
		(A potential improvement would be to implement the method of multiple
		corrections described in [1]_ Section 4.2.) In practice, this is
		accomplished by solving the normal equations, [1]_ Section 5.1 Equations
		8.31 and 8.32, derived from the Newton equations [1]_ Section 5 Equations
		8.25 (compare to [1]_ Section 4 Equations 8.6-8.8). The advantage of
		solving the normal equations rather than 8.25 directly is that the
		matrices involved are symmetric positive definite, so Cholesky
		decomposition can be used rather than the more expensive LU factorization.
		
		With the default ``cholesky=True``, this is accomplished using
		``scipy.linalg.cho_factor`` followed by forward/backward substitutions
		via ``scipy.linalg.cho_solve``. With ``cholesky=False`` and
		``sym_pos=True``, Cholesky decomposition is performed instead by
		``scipy.linalg.solve``. Based on speed tests, this also appears to retain
		the Cholesky decomposition of the matrix for later use, which is beneficial
		as the same system is solved four times with different right hand sides
		in each iteration of the algorithm.
		
		In problems with redundancy (e.g. if presolve is turned off with option
		``presolve=False``) or if the matrices become ill-conditioned (e.g. as the
		solution is approached and some decision variables approach zero),
		Cholesky decomposition can fail. Should this occur, successively more
		robust solvers (``scipy.linalg.solve`` with ``sym_pos=False`` then
		``scipy.linalg.lstsq``) are tried, at the cost of computational efficiency.
		These solvers can be used from the outset by setting the options
		``sym_pos=False`` and ``lstsq=True``, respectively.
		
		Note that with the option ``sparse=True``, the normal equations are solved
		using ``scipy.sparse.linalg.spsolve``. Unfortunately, this uses the more
		expensive LU decomposition from the outset, but for large, sparse problems,
		the use of sparse linear algebra techniques improves the solve speed
		despite the use of LU rather than Cholesky decomposition. A simple
		improvement would be to use the sparse Cholesky decomposition of
		``CHOLMOD`` via ``scikit-sparse`` when available.
		
		Other potential improvements for combatting issues associated with dense
		columns in otherwise sparse problems are outlined in [1]_ Section 5.3 and
		[7]_ Section 4.1-4.2; the latter also discusses the alleviation of
		accuracy issues associated with the substitution approach to free
		variables.
		
		After calculating the search direction, the maximum possible step size
		that does not activate the non-negativity constraints is calculated, and
		the smaller of this step size and unity is applied (as in [1]_ Section
		4.1.) [1]_ Section 4.3 suggests improvements for choosing the step size.
		
		The new point is tested according to the termination conditions of [1]_
		Section 4.5. The same tolerance, which can be set using the ``tol`` option,
		is used for all checks. (A potential improvement would be to expose
		the different tolerances to be set independently.) If optimality,
		unboundedness, or infeasibility is detected, the solve procedure
		terminates; otherwise it repeats.
		
		If optimality is achieved, a postsolve procedure undoes transformations
		associated with presolve and converting to standard form. It then
		calculates the residuals (equality constraint violations, which should
		be very small) and slacks (difference between the left and right hand
		sides of the upper bound constraints) of the original problem, which are
		returned with the solution in an ``OptimizeResult`` object.
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
		.. [3] Freund, Robert M. "Primal-Dual Interior-Point Methods for Linear
		       Programming based on Newton's Method." Unpublished Course Notes,
		       March 2004. Available 2/25/2017 at
		       https://ocw.mit.edu/courses/sloan-school-of-management/15-084j-nonlinear-programming-spring-2004/lecture-notes/lec14_int_pt_mthd.pdf
		.. [4] Fourer, Robert. "Solving Linear Programs by Interior-Point Methods."
		       Unpublished Course Notes, August 26, 2005. Available 2/25/2017 at
		       http://www.4er.org/CourseNotes/Book%20B/B-III.pdf
		.. [5] Andersen, Erling D., and Knud D. Andersen. "Presolving in linear
		       programming." Mathematical Programming 71.2 (1995): 221-245.
		.. [6] Bertsimas, Dimitris, and J. Tsitsiklis. "Introduction to linear
		       programming." Athena Scientific 1 (1997): 997.
		.. [7] Andersen, Erling D., et al. Implementation of interior point methods
		       for large scale linear programming. HEC/Universite de Geneve, 1996.
	**/
	static public function _linprog_ip(c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?callback:Dynamic, ?alpha0:Dynamic, ?beta:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?tol:Dynamic, ?sparse:Dynamic, ?lstsq:Dynamic, ?sym_pos:Dynamic, ?cholesky:Dynamic, ?pc:Dynamic, ?ip:Dynamic, ?presolve:Dynamic, ?permc_spec:Dynamic, ?rr:Dynamic, ?_sparse_presolve:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Given solution x to presolved, standard form linear program x, add
		fixed variables back into the problem and undo the variable substitutions
		to get solution to original linear program. Also, calculate the objective
		function value, slack in original upper bound constraints, and residuals
		in original equality constraints.
		
		Parameters
		----------
		x : 1-D array
		    Solution vector to the standard-form problem.
		c : 1-D array
		    Original coefficients of the linear objective function to be minimized.
		A_ub : 2-D array
		    Original upper bound constraint matrix.
		b_ub : 1-D array
		    Original upper bound constraint vector.
		A_eq : 2-D array
		    Original equality constraint matrix.
		b_eq : 1-D array
		    Original equality constraint vector.
		bounds : sequence of tuples
		    Bounds, as modified in presolve
		complete : bool
		    Whether the solution is was determined in presolve (``True`` if so)
		undo: list of tuples
		    (`index`, `value`) pairs that record the original index and fixed value
		    for each variable removed from the problem
		status : int
		    An integer representing the exit status of the optimization::
		
		         0 : Optimization terminated successfully
		         1 : Iteration limit reached
		         2 : Problem appears to be infeasible
		         3 : Problem appears to be unbounded
		         4 : Serious numerical difficulties encountered
		
		message : str
		    A string descriptor of the exit status of the optimization.
		tol : float
		    Termination tolerance; see [1]_ Section 4.5.
		
		Returns
		-------
		x : 1-D array
		    Solution vector to original linear programming problem
		fun: float
		    optimal objective value for original problem
		slack: 1-D array
		    The (non-negative) slack in the upper bound constraints, that is,
		    ``b_ub - A_ub * x``
		con : 1-D array
		    The (nominally zero) residuals of the equality constraints, that is,
		    ``b - A_eq * x``
		status : int
		    An integer representing the exit status of the optimization::
		
		         0 : Optimization terminated successfully
		         1 : Iteration limit reached
		         2 : Problem appears to be infeasible
		         3 : Problem appears to be unbounded
		         4 : Serious numerical difficulties encountered
		
		message : str
		    A string descriptor of the exit status of the optimization.
	**/
	static public function _postprocess(x:Dynamic, c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?complete:Dynamic, ?undo:Dynamic, ?status:Dynamic, ?message:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Given inputs for a linear programming problem in preferred format,
		presolve the problem: identify trivial infeasibilities, redundancies,
		and unboundedness, tighten bounds where possible, and eliminate fixed
		variables.
		
		Parameters
		----------
		c : 1-D array
		    Coefficients of the linear objective function to be minimized.
		A_ub : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``.
		b_ub : 1-D array
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``.
		A_eq : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``.
		b_eq : 1-D array
		    1-D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``.
		bounds : sequence of tuples
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for each of ``min`` or
		    ``max`` when there is no bound in that direction.
		
		Returns
		-------
		c : 1-D array
		    Coefficients of the linear objective function to be minimized.
		c0 : 1-D array
		    Constant term in objective function due to fixed (and eliminated)
		    variables.
		A_ub : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``. Unnecessary
		    rows/columns have been removed.
		b_ub : 1-D array
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``. Unnecessary elements have been removed.
		A_eq : 2-D array
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``. Unnecessary rows/columns have been
		    removed.
		b_eq : 1-D array
		    1-D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``. Unnecessary elements have been removed.
		bounds : sequence of tuples
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for each of ``min`` or
		    ``max`` when there is no bound in that direction. Bounds have been
		    tightened where possible.
		x : 1-D array
		    Solution vector (when the solution is trivial and can be determined
		    in presolve)
		undo: list of tuples
		    (index, value) pairs that record the original index and fixed value
		    for each variable removed from the problem
		complete: bool
		    Whether the solution is complete (solved or determined to be infeasible
		    or unbounded in presolve)
		status : int
		    An integer representing the exit status of the optimization::
		
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
		.. [5] Andersen, Erling D., and Knud D. Andersen. "Presolving in linear
		   programming." Mathematical Programming 71.2 (1995): 221-245.
	**/
	static public function _presolve(c:Dynamic, A_ub:Dynamic, b_ub:Dynamic, A_eq:Dynamic, b_eq:Dynamic, bounds:Dynamic, rr:Dynamic):Dynamic;
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D array
		    An array representing the left-hand side of a system of equations
		b : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		-------
		A : 2-D array
		    An array representing the left-hand side of a system of equations
		b : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy(A:Dynamic, b:Dynamic):Dynamic;
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D sparse matrix
		    An matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		----------
		A : 2-D sparse matrix
		    A matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy_dense(A:Dynamic, rhs:Dynamic):Dynamic;
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D sparse matrix
		    An matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		-------
		A : 2-D sparse matrix
		    A matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy_sparse(A:Dynamic, rhs:Dynamic):Dynamic;
	/**
		An implementation of [1] equation 8.31 and 8.32
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _sym_solve(Dinv:Dynamic, M:Dynamic, A:Dynamic, r1:Dynamic, r2:Dynamic, solve:Dynamic, ?splu:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}