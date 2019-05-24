/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.linear_operator_low_rank_update;
@:pythonImport("tensorflow.python.ops.linalg.linear_operator_low_rank_update", "LinearOperatorLowRankUpdate") extern class LinearOperatorLowRankUpdate {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Initialize a `LinearOperatorLowRankUpdate`.
		
		This creates a `LinearOperator` of the form `A = L + U D V^H`, with
		`L` a `LinearOperator`, `U, V` both [batch] matrices, and `D` a [batch]
		diagonal matrix.
		
		If `L` is non-singular, solves and determinants are available.
		Solves/determinants both involve a solve/determinant of a `K x K` system.
		In the event that L and D are self-adjoint positive-definite, and U = V,
		this can be done using a Cholesky factorization.  The user should set the
		`is_X` matrix property hints, which will trigger the appropriate code path.
		
		Args:
		  base_operator:  Shape `[B1,...,Bb, M, N]`.
		  u:  Shape `[B1,...,Bb, M, K]` `Tensor` of same `dtype` as `base_operator`.
		    This is `U` above.
		  diag_update:  Optional shape `[B1,...,Bb, K]` `Tensor` with same `dtype`
		    as `base_operator`.  This is the diagonal of `D` above.
		     Defaults to `D` being the identity operator.
		  v:  Optional `Tensor` of same `dtype` as `u` and shape `[B1,...,Bb, N, K]`
		     Defaults to `v = u`, in which case the perturbation is symmetric.
		     If `M != N`, then `v` must be set since the perturbation is not square.
		  is_diag_update_positive:  Python `bool`.
		    If `True`, expect `diag_update > 0`.
		  is_non_singular:  Expect that this operator is non-singular.
		    Default is `None`, unless `is_positive_definite` is auto-set to be
		    `True` (see below).
		  is_self_adjoint:  Expect that this operator is equal to its hermitian
		    transpose.  Default is `None`, unless `base_operator` is self-adjoint
		    and `v = None` (meaning `u=v`), in which case this defaults to `True`.
		  is_positive_definite:  Expect that this operator is positive definite.
		    Default is `None`, unless `base_operator` is positive-definite
		    `v = None` (meaning `u=v`), and `is_diag_update_positive`, in which case
		    this defaults to `True`.
		    Note that we say an operator is positive definite when the quadratic
		    form `x^H A x` has positive real part for all nonzero `x`.
		  is_square:  Expect that this operator acts like square [batch] matrices.
		  name: A name for this `LinearOperator`.
		
		Raises:
		  ValueError:  If `is_X` flags are set in an inconsistent way.
	**/
	@:native("__init__")
	public function ___init__(base_operator:Dynamic, u:Dynamic, ?diag_update:Dynamic, ?v:Dynamic, ?is_diag_update_positive:Dynamic, ?is_non_singular:Dynamic, ?is_self_adjoint:Dynamic, ?is_positive_definite:Dynamic, ?is_square:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize a `LinearOperatorLowRankUpdate`.
		
		This creates a `LinearOperator` of the form `A = L + U D V^H`, with
		`L` a `LinearOperator`, `U, V` both [batch] matrices, and `D` a [batch]
		diagonal matrix.
		
		If `L` is non-singular, solves and determinants are available.
		Solves/determinants both involve a solve/determinant of a `K x K` system.
		In the event that L and D are self-adjoint positive-definite, and U = V,
		this can be done using a Cholesky factorization.  The user should set the
		`is_X` matrix property hints, which will trigger the appropriate code path.
		
		Args:
		  base_operator:  Shape `[B1,...,Bb, M, N]`.
		  u:  Shape `[B1,...,Bb, M, K]` `Tensor` of same `dtype` as `base_operator`.
		    This is `U` above.
		  diag_update:  Optional shape `[B1,...,Bb, K]` `Tensor` with same `dtype`
		    as `base_operator`.  This is the diagonal of `D` above.
		     Defaults to `D` being the identity operator.
		  v:  Optional `Tensor` of same `dtype` as `u` and shape `[B1,...,Bb, N, K]`
		     Defaults to `v = u`, in which case the perturbation is symmetric.
		     If `M != N`, then `v` must be set since the perturbation is not square.
		  is_diag_update_positive:  Python `bool`.
		    If `True`, expect `diag_update > 0`.
		  is_non_singular:  Expect that this operator is non-singular.
		    Default is `None`, unless `is_positive_definite` is auto-set to be
		    `True` (see below).
		  is_self_adjoint:  Expect that this operator is equal to its hermitian
		    transpose.  Default is `None`, unless `base_operator` is self-adjoint
		    and `v = None` (meaning `u=v`), in which case this defaults to `True`.
		  is_positive_definite:  Expect that this operator is positive definite.
		    Default is `None`, unless `base_operator` is positive-definite
		    `v = None` (meaning `u=v`), and `is_diag_update_positive`, in which case
		    this defaults to `True`.
		    Note that we say an operator is positive definite when the quadratic
		    form `x^H A x` has positive real part for all nonzero `x`.
		  is_square:  Expect that this operator acts like square [batch] matrices.
		  name: A name for this `LinearOperator`.
		
		Raises:
		  ValueError:  If `is_X` flags are set in an inconsistent way.
	**/
	public function new(base_operator:Dynamic, u:Dynamic, ?diag_update:Dynamic, ?v:Dynamic, ?is_diag_update_positive:Dynamic, ?is_non_singular:Dynamic, ?is_self_adjoint:Dynamic, ?is_positive_definite:Dynamic, ?is_square:Dynamic, ?name:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	public function _add_to_tensor(x:Dynamic):Dynamic;
	/**
		Private default implementation of _assert_non_singular.
	**/
	public function _assert_non_singular():Dynamic;
	/**
		Default implementation of _assert_positive_definite.
	**/
	public function _assert_positive_definite():Dynamic;
	public function _assert_self_adjoint():Dynamic;
	public function _can_use_cholesky():Dynamic;
	/**
		Check that arg.dtype == self.dtype.
	**/
	public function _check_input_dtype(arg:Dynamic):Dynamic;
	/**
		Static check that shapes are compatible.
	**/
	public function _check_shapes():Dynamic;
	public function _determinant():Dynamic;
	/**
		Generic and often inefficient implementation.  Override often.
	**/
	public function _diag_part():Dynamic;
	public function _log_abs_determinant():Dynamic;
	public function _make_capacitance():Dynamic;
	public function _matmul(x:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic):Dynamic;
	public function _matvec(x:Dynamic, ?adjoint:Dynamic):Dynamic;
	/**
		Return the maximum condition number that we consider nonsingular.
	**/
	public function _max_condition_number_to_be_non_singular():Dynamic;
	/**
		Helper function to standardize op scope.
	**/
	public function _name_scope(?name:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Set attributes self._diag_update and self._diag_operator.
	**/
	public function _set_diag_operators(diag_update:Dynamic, is_diag_update_positive:Dynamic):Dynamic;
	public function _shape():Dynamic;
	public function _shape_tensor():Dynamic;
	/**
		Default implementation of _solve.
	**/
	public function _solve(rhs:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic):Dynamic;
	/**
		Default implementation of _solvevec.
	**/
	public function _solvevec(rhs:Dynamic, ?adjoint:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Generic and often inefficient implementation.  Override often.
	**/
	public function _to_dense():Dynamic;
	public function _trace():Dynamic;
	/**
		Add matrix represented by this operator to `x`.  Equivalent to `A + x`.
		
		Args:
		  x:  `Tensor` with same `dtype` and shape broadcastable to `self.shape`.
		  name:  A name to give this `Op`.
		
		Returns:
		  A `Tensor` with broadcast shape and same `dtype` as `self`.
	**/
	public function add_to_tensor(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns an `Op` that asserts this operator is non singular.
		
		This operator is considered non-singular if
		
		```
		ConditionNumber < max{100, range_dimension, domain_dimension} * eps,
		eps := np.finfo(self.dtype.as_numpy_dtype).eps
		```
		
		Args:
		  name:  A string name to prepend to created ops.
		
		Returns:
		  An `Assert` `Op`, that, when run, will raise an `InvalidArgumentError` if
		    the operator is singular.
	**/
	public function assert_non_singular(?name:Dynamic):Dynamic;
	/**
		Returns an `Op` that asserts this operator is positive definite.
		
		Here, positive definite means that the quadratic form `x^H A x` has positive
		real part for all nonzero `x`.  Note that we do not require the operator to
		be self-adjoint to be positive definite.
		
		Args:
		  name:  A name to give this `Op`.
		
		Returns:
		  An `Assert` `Op`, that, when run, will raise an `InvalidArgumentError` if
		    the operator is not positive definite.
	**/
	public function assert_positive_definite(?name:Dynamic):Dynamic;
	/**
		Returns an `Op` that asserts this operator is self-adjoint.
		
		Here we check that this operator is *exactly* equal to its hermitian
		transpose.
		
		Args:
		  name:  A string name to prepend to created ops.
		
		Returns:
		  An `Assert` `Op`, that, when run, will raise an `InvalidArgumentError` if
		    the operator is not self-adjoint.
	**/
	public function assert_self_adjoint(?name:Dynamic):Dynamic;
	/**
		If this operator is `A = L + U D V^H`, this is the `L`.
	**/
	public var base_operator : Dynamic;
	/**
		`TensorShape` of batch dimensions of this `LinearOperator`.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns
		`TensorShape([B1,...,Bb])`, equivalent to `A.get_shape()[:-2]`
		
		Returns:
		  `TensorShape`, statically determined, may be undefined.
	**/
	public var batch_shape : Dynamic;
	/**
		Shape of batch dimensions of this operator, determined at runtime.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns a `Tensor` holding
		`[B1,...,Bb]`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function batch_shape_tensor(?name:Dynamic):Dynamic;
	/**
		Returns a Cholesky factor as a `LinearOperator`.
		
		Given `A` representing this `LinearOperator`, if `A` is positive definite
		self-adjoint, return `L`, where `A = L L^T`, i.e. the cholesky
		decomposition.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `LinearOperator` which represents the lower triangular matrix
		  in the Cholesky decomposition.
		
		Raises:
		  ValueError: When the `LinearOperator` is not hinted to be positive
		    definite and self adjoint.
	**/
	public function cholesky(?name:Dynamic):Dynamic;
	/**
		Determinant for every batch member.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `Tensor` with shape `self.batch_shape` and same `dtype` as `self`.
		
		Raises:
		  NotImplementedError:  If `self.is_square` is `False`.
	**/
	public function determinant(?name:Dynamic):Dynamic;
	/**
		If this operator is `A = L + U D V^H`, this is `D`.
	**/
	public var diag_operator : Dynamic;
	/**
		Efficiently get the [batch] diagonal part of this operator.
		
		If this operator has shape `[B1,...,Bb, M, N]`, this returns a
		`Tensor` `diagonal`, of shape `[B1,...,Bb, min(M, N)]`, where
		`diagonal[b1,...,bb, i] = self.to_dense()[b1,...,bb, i, i]`.
		
		```
		my_operator = LinearOperatorDiag([1., 2.])
		
		# Efficiently get the diagonal
		my_operator.diag_part()
		==> [1., 2.]
		
		# Equivalent, but inefficient method
		tf.matrix_diag_part(my_operator.to_dense())
		==> [1., 2.]
		```
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  diag_part:  A `Tensor` of same `dtype` as self.
	**/
	public function diag_part(?name:Dynamic):Dynamic;
	/**
		If this operator is `A = L + U D V^H`, this is the diagonal of `D`.
	**/
	public var diag_update : Dynamic;
	/**
		Dimension (in the sense of vector spaces) of the domain of this operator.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `N`.
		
		Returns:
		  `Dimension` object.
	**/
	public var domain_dimension : Dynamic;
	/**
		Dimension (in the sense of vector spaces) of the domain of this operator.
		
		Determined at runtime.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `N`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function domain_dimension_tensor(?name:Dynamic):Dynamic;
	/**
		The `DType` of `Tensor`s handled by this `LinearOperator`.
	**/
	public var dtype : Dynamic;
	/**
		List of graph dependencies of this `LinearOperator`.
	**/
	public var graph_parents : Dynamic;
	/**
		If this operator is `A = L + U D V^H`, this hints `D > 0` elementwise.
	**/
	public var is_diag_update_positive : Dynamic;
	public var is_non_singular : Dynamic;
	public var is_positive_definite : Dynamic;
	public var is_self_adjoint : Dynamic;
	/**
		Return `True/False` depending on if this operator is square.
	**/
	public var is_square : Dynamic;
	/**
		Log absolute value of determinant for every batch member.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `Tensor` with shape `self.batch_shape` and same `dtype` as `self`.
		
		Raises:
		  NotImplementedError:  If `self.is_square` is `False`.
	**/
	public function log_abs_determinant(?name:Dynamic):Dynamic;
	/**
		Transform [batch] matrix `x` with left multiplication:  `x --> Ax`.
		
		```python
		# Make an operator acting like batch matrix A.  Assume A.shape = [..., M, N]
		operator = LinearOperator(...)
		operator.shape = [..., M, N]
		
		X = ... # shape [..., N, R], batch matrix, R > 0.
		
		Y = operator.matmul(X)
		Y.shape
		==> [..., M, R]
		
		Y[..., :, r] = sum_j A[..., :, j] X[j, r]
		```
		
		Args:
		  x: `LinearOperator` or `Tensor` with compatible shape and same `dtype` as
		    `self`. See class docstring for definition of compatibility.
		  adjoint: Python `bool`.  If `True`, left multiply by the adjoint: `A^H x`.
		  adjoint_arg:  Python `bool`.  If `True`, compute `A x^H` where `x^H` is
		    the hermitian transpose (transposition and complex conjugation).
		  name:  A name for this `Op`.
		
		Returns:
		  A `LinearOperator` or `Tensor` with shape `[..., M, R]` and same `dtype`
		    as `self`.
	**/
	public function matmul(x:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transform [batch] vector `x` with left multiplication:  `x --> Ax`.
		
		```python
		# Make an operator acting like batch matric A.  Assume A.shape = [..., M, N]
		operator = LinearOperator(...)
		
		X = ... # shape [..., N], batch vector
		
		Y = operator.matvec(X)
		Y.shape
		==> [..., M]
		
		Y[..., :] = sum_j A[..., :, j] X[..., j]
		```
		
		Args:
		  x: `Tensor` with compatible shape and same `dtype` as `self`.
		    `x` is treated as a [batch] vector meaning for every set of leading
		    dimensions, the last dimension defines a vector.
		    See class docstring for definition of compatibility.
		  adjoint: Python `bool`.  If `True`, left multiply by the adjoint: `A^H x`.
		  name:  A name for this `Op`.
		
		Returns:
		  A `Tensor` with shape `[..., M]` and same `dtype` as `self`.
	**/
	public function matvec(x:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Name prepended to all ops created by this `LinearOperator`.
	**/
	public var name : Dynamic;
	/**
		Dimension (in the sense of vector spaces) of the range of this operator.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `M`.
		
		Returns:
		  `Dimension` object.
	**/
	public var range_dimension : Dynamic;
	/**
		Dimension (in the sense of vector spaces) of the range of this operator.
		
		Determined at runtime.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `M`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function range_dimension_tensor(?name:Dynamic):Dynamic;
	/**
		`TensorShape` of this `LinearOperator`.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns
		`TensorShape([B1,...,Bb, M, N])`, equivalent to `A.get_shape()`.
		
		Returns:
		  `TensorShape`, statically determined, may be undefined.
	**/
	public var shape : Dynamic;
	/**
		Shape of this `LinearOperator`, determined at runtime.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns a `Tensor` holding
		`[B1,...,Bb, M, N]`, equivalent to `tf.shape(A)`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function shape_tensor(?name:Dynamic):Dynamic;
	/**
		Solve (exact or approx) `R` (batch) systems of equations: `A X = rhs`.
		
		The returned `Tensor` will be close to an exact solution if `A` is well
		conditioned. Otherwise closeness will vary. See class docstring for details.
		
		Examples:
		
		```python
		# Make an operator acting like batch matrix A.  Assume A.shape = [..., M, N]
		operator = LinearOperator(...)
		operator.shape = [..., M, N]
		
		# Solve R > 0 linear systems for every member of the batch.
		RHS = ... # shape [..., M, R]
		
		X = operator.solve(RHS)
		# X[..., :, r] is the solution to the r'th linear system
		# sum_j A[..., :, j] X[..., j, r] = RHS[..., :, r]
		
		operator.matmul(X)
		==> RHS
		```
		
		Args:
		  rhs: `Tensor` with same `dtype` as this operator and compatible shape.
		    `rhs` is treated like a [batch] matrix meaning for every set of leading
		    dimensions, the last two dimensions defines a matrix.
		    See class docstring for definition of compatibility.
		  adjoint: Python `bool`.  If `True`, solve the system involving the adjoint
		    of this `LinearOperator`:  `A^H X = rhs`.
		  adjoint_arg:  Python `bool`.  If `True`, solve `A X = rhs^H` where `rhs^H`
		    is the hermitian transpose (transposition and complex conjugation).
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `Tensor` with shape `[...,N, R]` and same `dtype` as `rhs`.
		
		Raises:
		  NotImplementedError:  If `self.is_non_singular` or `is_square` is False.
	**/
	public function solve(rhs:Dynamic, ?adjoint:Dynamic, ?adjoint_arg:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve single equation with best effort: `A X = rhs`.
		
		The returned `Tensor` will be close to an exact solution if `A` is well
		conditioned. Otherwise closeness will vary. See class docstring for details.
		
		Examples:
		
		```python
		# Make an operator acting like batch matrix A.  Assume A.shape = [..., M, N]
		operator = LinearOperator(...)
		operator.shape = [..., M, N]
		
		# Solve one linear system for every member of the batch.
		RHS = ... # shape [..., M]
		
		X = operator.solvevec(RHS)
		# X is the solution to the linear system
		# sum_j A[..., :, j] X[..., j] = RHS[..., :]
		
		operator.matvec(X)
		==> RHS
		```
		
		Args:
		  rhs: `Tensor` with same `dtype` as this operator.
		    `rhs` is treated like a [batch] vector meaning for every set of leading
		    dimensions, the last dimension defines a vector.  See class docstring
		    for definition of compatibility regarding batch dimensions.
		  adjoint: Python `bool`.  If `True`, solve the system involving the adjoint
		    of this `LinearOperator`:  `A^H X = rhs`.
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `Tensor` with shape `[...,N]` and same `dtype` as `rhs`.
		
		Raises:
		  NotImplementedError:  If `self.is_non_singular` or `is_square` is False.
	**/
	public function solvevec(rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Rank (in the sense of tensors) of matrix corresponding to this operator.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `b + 2`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  Python integer, or None if the tensor rank is undefined.
	**/
	public var tensor_rank : Dynamic;
	/**
		Rank (in the sense of tensors) of matrix corresponding to this operator.
		
		If this operator acts like the batch matrix `A` with
		`A.shape = [B1,...,Bb, M, N]`, then this returns `b + 2`.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  `int32` `Tensor`, determined at runtime.
	**/
	public function tensor_rank_tensor(?name:Dynamic):Dynamic;
	/**
		Return a dense (batch) matrix representing this operator.
	**/
	public function to_dense(?name:Dynamic):Dynamic;
	/**
		Trace of the linear operator, equal to sum of `self.diag_part()`.
		
		If the operator is square, this is also the sum of the eigenvalues.
		
		Args:
		  name:  A name for this `Op`.
		
		Returns:
		  Shape `[B1,...,Bb]` `Tensor` of same `dtype` as `self`.
	**/
	public function trace(?name:Dynamic):Dynamic;
	/**
		If this operator is `A = L + U D V^H`, this is the `U`.
	**/
	public var u : Dynamic;
	/**
		If this operator is `A = L + U D V^H`, this is the `V`.
	**/
	public var v : Dynamic;
}