/* This file is generated, do not edit! */
package numpy.dual;
@:pythonImport("numpy.dual") extern class Dual_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _restore_dict : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Compute the Cholesky decomposition of a matrix.
		
		Returns the Cholesky decomposition, :math:`A = L L^*` or
		:math:`A = U^* U` of a Hermitian positive-definite matrix A.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to be decomposed
		lower : bool, optional
		    Whether to compute the upper or lower triangular Cholesky
		    factorization.  Default is upper-triangular.
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		c : (M, M) ndarray
		    Upper- or lower-triangular Cholesky factor of `a`.
		
		Raises
		------
		LinAlgError : if decomposition fails.
		
		Examples
		--------
		>>> from scipy.linalg import cholesky
		>>> a = np.array([[1,-2j],[2j,5]])
		>>> L = cholesky(a, lower=True)
		>>> L
		array([[ 1.+0.j,  0.+0.j],
		       [ 0.+2.j,  1.+0.j]])
		>>> L @ L.T.conj()
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
	**/
	static public function cholesky(a:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the determinant of a matrix
		
		The determinant of a square matrix is a value derived arithmetically
		from the coefficients of the matrix.
		
		The determinant for a 3x3 matrix, for example, is computed as follows::
		
		    a    b    c
		    d    e    f = A
		    g    h    i
		
		    det(A) = a*e*i + b*f*g + c*d*h - c*e*g - b*d*i - a*f*h
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix.
		overwrite_a : bool, optional
		    Allow overwriting data in a (may enhance performance).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		det : float or complex
		    Determinant of `a`.
		
		Notes
		-----
		The determinant is computed via LU factorization, LAPACK routine z/dgetrf.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[1,2,3], [4,5,6], [7,8,9]])
		>>> linalg.det(a)
		0.0
		>>> a = np.array([[0,2,3], [4,5,6], [7,8,9]])
		>>> linalg.det(a)
		3.0
	**/
	static public function det(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem of a square matrix.
		
		Find eigenvalues w and right or left eigenvectors of a general matrix::
		
		    a   vr[:,i] = w[i]        b   vr[:,i]
		    a.H vl[:,i] = w[i].conj() b.H vl[:,i]
		
		where ``.H`` is the Hermitian conjugation.
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex or real matrix whose eigenvalues and eigenvectors
		    will be computed.
		b : (M, M) array_like, optional
		    Right-hand side matrix in a generalized eigenvalue problem.
		    Default is None, identity matrix is assumed.
		left : bool, optional
		    Whether to calculate and return left eigenvectors.  Default is False.
		right : bool, optional
		    Whether to calculate and return right eigenvectors.  Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.  Default is False.
		overwrite_b : bool, optional
		    Whether to overwrite `b`; may improve performance.  Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		homogeneous_eigvals : bool, optional
		    If True, return the eigenvalues in homogeneous coordinates.
		    In this case ``w`` is a (2, M) array so that::
		
		        w[1,i] a vr[:,i] = w[0,i] b vr[:,i]
		
		    Default is False.
		
		Returns
		-------
		w : (M,) or (2, M) double or complex ndarray
		    The eigenvalues, each repeated according to its
		    multiplicity. The shape is (M,) unless
		    ``homogeneous_eigvals=True``.
		vl : (M, M) double or complex ndarray
		    The normalized left eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column vl[:,i]. Only returned if ``left=True``.
		vr : (M, M) double or complex ndarray
		    The normalized right eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column ``vr[:,i]``.  Only returned if ``right=True``.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eigvals : eigenvalues of general arrays
		eigh : Eigenvalues and right eigenvectors for symmetric/Hermitian arrays.
		eig_banded : eigenvalues and right eigenvectors for symmetric/Hermitian
		    band matrices
		eigh_tridiagonal : eigenvalues and right eiegenvectors for
		    symmetric/Hermitian tridiagonal matrices
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[0., -1.], [1., 0.]])
		>>> linalg.eigvals(a)
		array([0.+1.j, 0.-1.j])
		
		>>> b = np.array([[0., 1.], [1., 1.]])
		>>> linalg.eigvals(a, b)
		array([ 1.+0.j, -1.+0.j])
		
		>>> a = np.array([[3., 0., 0.], [0., 8., 0.], [0., 0., 7.]])
		>>> linalg.eigvals(a, homogeneous_eigvals=True)
		array([[3.+0.j, 8.+0.j, 7.+0.j],
		       [1.+0.j, 1.+0.j, 1.+0.j]])
		
		>>> a = np.array([[0., -1.], [1., 0.]])
		>>> linalg.eigvals(a) == linalg.eig(a)[0]
		array([ True,  True])
		>>> linalg.eig(a, left=True, right=False)[1] # normalized left eigenvector
		array([[-0.70710678+0.j        , -0.70710678-0.j        ],
		       [-0.        +0.70710678j, -0.        -0.70710678j]])
		>>> linalg.eig(a, left=False, right=True)[1] # normalized right eigenvector
		array([[0.70710678+0.j        , 0.70710678-0.j        ],
		       [0.        -0.70710678j, 0.        +0.70710678j]])
	**/
	static public function eig(a:Dynamic, ?b:Dynamic, ?left:Dynamic, ?right:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic, ?homogeneous_eigvals:Dynamic):Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues w and optionally eigenvectors v of matrix `a`, where
		`b` is positive definite::
		
		                  a v[:,i] = w[i] b v[:,i]
		    v[i,:].conj() a v[:,i] = w[i]
		    v[i,:].conj() b v[:,i] = 1
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex Hermitian or real symmetric matrix whose eigenvalues and
		    eigenvectors will be computed.
		b : (M, M) array_like, optional
		    A complex Hermitian or real symmetric definite positive matrix in.
		    If omitted, identity matrix is assumed.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of `a`. (Default: lower)
		eigvals_only : bool, optional
		    Whether to calculate only eigenvalues and no eigenvectors.
		    (Default: both are calculated)
		turbo : bool, optional
		    Use divide and conquer algorithm (faster but expensive in memory,
		    only for generalized eigenvalue problem and if eigvals=None)
		eigvals : tuple (lo, hi), optional
		    Indexes of the smallest and largest (in ascending order) eigenvalues
		    and corresponding eigenvectors to be returned: 0 <= lo <= hi <= M-1.
		    If omitted, all eigenvalues and eigenvectors are returned.
		type : int, optional
		    Specifies the problem type to be solved:
		
		       type = 1: a   v[:,i] = w[i] b v[:,i]
		
		       type = 2: a b v[:,i] = w[i]   v[:,i]
		
		       type = 3: b a v[:,i] = w[i]   v[:,i]
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in `b` (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (N,) float ndarray
		    The N (1<=N<=M) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		v : (M, N) complex ndarray
		    (if eigvals_only == False)
		
		    The normalized selected eigenvector corresponding to the
		    eigenvalue w[i] is the column v[:,i].
		
		    Normalization:
		
		        type 1 and 3: v.conj() a      v  = w
		
		        type 2: inv(v).conj() a  inv(v) = w
		
		        type = 1 or 2: v.conj() b      v  = I
		
		        type = 3: v.conj() inv(b) v  = I
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge,
		    an error occurred, or b matrix is not definite positive. Note that
		    if input matrices are not symmetric or hermitian, no error is reported
		    but results will be wrong.
		
		See Also
		--------
		eigvalsh : eigenvalues of symmetric or Hermitian arrays
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eigh_tridiagonal : eigenvalues and right eiegenvectors for
		    symmetric/Hermitian tridiagonal matrices
		
		Notes
		-----
		This function does not check the input array for being hermitian/symmetric
		in order to allow for representing arrays with only their upper/lower
		triangular parts.
		
		Examples
		--------
		>>> from scipy.linalg import eigh
		>>> A = np.array([[6, 3, 1, 5], [3, 0, 5, 1], [1, 5, 6, 2], [5, 1, 2, 2]])
		>>> w, v = eigh(A)
		>>> np.allclose(A @ v - v @ np.diag(w), np.zeros((4, 4)))
		True
	**/
	static public function eigh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?eigvals_only:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute eigenvalues from an ordinary or generalized eigenvalue problem.
		
		Find eigenvalues of a general matrix::
		
		    a   vr[:,i] = w[i]        b   vr[:,i]
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex or real matrix whose eigenvalues and eigenvectors
		    will be computed.
		b : (M, M) array_like, optional
		    Right-hand side matrix in a generalized eigenvalue problem.
		    If omitted, identity matrix is assumed.
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities
		    or NaNs.
		homogeneous_eigvals : bool, optional
		    If True, return the eigenvalues in homogeneous coordinates.
		    In this case ``w`` is a (2, M) array so that::
		
		        w[1,i] a vr[:,i] = w[0,i] b vr[:,i]
		
		    Default is False.
		
		Returns
		-------
		w : (M,) or (2, M) double or complex ndarray
		    The eigenvalues, each repeated according to its multiplicity
		    but not in any specific order. The shape is (M,) unless
		    ``homogeneous_eigvals=True``.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors of general arrays.
		eigvalsh : eigenvalues of symmetric or Hermitian arrays
		eigvals_banded : eigenvalues for symmetric/Hermitian band matrices
		eigvalsh_tridiagonal : eigenvalues of symmetric/Hermitian tridiagonal
		    matrices
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[0., -1.], [1., 0.]])
		>>> linalg.eigvals(a)
		array([0.+1.j, 0.-1.j])
		
		>>> b = np.array([[0., 1.], [1., 1.]])
		>>> linalg.eigvals(a, b)
		array([ 1.+0.j, -1.+0.j])
		
		>>> a = np.array([[3., 0., 0.], [0., 8., 0.], [0., 0., 7.]])
		>>> linalg.eigvals(a, homogeneous_eigvals=True)
		array([[3.+0.j, 8.+0.j, 7.+0.j],
		       [1.+0.j, 1.+0.j, 1.+0.j]])
	**/
	static public function eigvals(a:Dynamic, ?b:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic, ?homogeneous_eigvals:Dynamic):Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues w of matrix a, where b is positive definite::
		
		                  a v[:,i] = w[i] b v[:,i]
		    v[i,:].conj() a v[:,i] = w[i]
		    v[i,:].conj() b v[:,i] = 1
		
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex Hermitian or real symmetric matrix whose eigenvalues and
		    eigenvectors will be computed.
		b : (M, M) array_like, optional
		    A complex Hermitian or real symmetric definite positive matrix in.
		    If omitted, identity matrix is assumed.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of `a`. (Default: lower)
		turbo : bool, optional
		    Use divide and conquer algorithm (faster but expensive in memory,
		    only for generalized eigenvalue problem and if eigvals=None)
		eigvals : tuple (lo, hi), optional
		    Indexes of the smallest and largest (in ascending order) eigenvalues
		    and corresponding eigenvectors to be returned: 0 <= lo < hi <= M-1.
		    If omitted, all eigenvalues and eigenvectors are returned.
		type : int, optional
		    Specifies the problem type to be solved:
		
		       type = 1: a   v[:,i] = w[i] b v[:,i]
		
		       type = 2: a b v[:,i] = w[i]   v[:,i]
		
		       type = 3: b a v[:,i] = w[i]   v[:,i]
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in `b` (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (N,) float ndarray
		    The N (1<=N<=M) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge,
		    an error occurred, or b matrix is not definite positive. Note that
		    if input matrices are not symmetric or hermitian, no error is reported
		    but results will be wrong.
		
		See Also
		--------
		eigh : eigenvalues and right eigenvectors for symmetric/Hermitian arrays
		eigvals : eigenvalues of general arrays
		eigvals_banded : eigenvalues for symmetric/Hermitian band matrices
		eigvalsh_tridiagonal : eigenvalues of symmetric/Hermitian tridiagonal
		    matrices
		
		Notes
		-----
		This function does not check the input array for being hermitian/symmetric
		in order to allow for representing arrays with only their upper/lower
		triangular parts.
		
		Examples
		--------
		>>> from scipy.linalg import eigvalsh
		>>> A = np.array([[6, 3, 1, 5], [3, 0, 5, 1], [1, 5, 6, 2], [5, 1, 2, 2]])
		>>> w = eigvalsh(A)
		>>> w
		array([-3.74637491, -0.76263923,  6.08502336, 12.42399079])
	**/
	static public function eigvalsh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Return discrete Fourier transform of real or complex sequence.
		
		The returned complex array contains ``y(0), y(1),..., y(n-1)`` where
		
		``y(j) = (x * exp(-2*pi*sqrt(-1)*j*np.arange(n)/n)).sum()``.
		
		Parameters
		----------
		x : array_like
		    Array to Fourier transform.
		n : int, optional
		    Length of the Fourier transform.  If ``n < x.shape[axis]``, `x` is
		    truncated.  If ``n > x.shape[axis]``, `x` is zero-padded. The
		    default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the fft's are computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		z : complex ndarray
		    with the elements::
		
		        [y(0),y(1),..,y(n/2),y(1-n/2),...,y(-1)]        if n is even
		        [y(0),y(1),..,y((n-1)/2),y(-(n-1)/2),...,y(-1)]  if n is odd
		
		    where::
		
		        y(j) = sum[k=0..n-1] x[k] * exp(-sqrt(-1)*j*k* 2*pi/n), j = 0..n-1
		
		See Also
		--------
		ifft : Inverse FFT
		rfft : FFT of a real sequence
		
		Notes
		-----
		The packing of the result is "standard": If ``A = fft(a, n)``, then
		``A[0]`` contains the zero-frequency term, ``A[1:n/2]`` contains the
		positive-frequency terms, and ``A[n/2:]`` contains the negative-frequency
		terms, in order of decreasingly negative frequency. So for an 8-point
		transform, the frequencies of the result are [0, 1, 2, 3, -4, -3, -2, -1].
		To rearrange the fft output so that the zero-frequency component is
		centered, like [-4, -3, -2, -1,  0,  1,  2,  3], use `fftshift`.
		
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		This function is most efficient when `n` is a power of two, and least
		efficient when `n` is prime.
		
		Note that if ``x`` is real-valued then ``A[j] == A[n-j].conjugate()``.
		If ``x`` is real-valued and ``n`` is even then ``A[n/2]`` is real.
		
		If the data type of `x` is real, a "real FFT" algorithm is automatically
		used, which roughly halves the computation time.  To increase efficiency
		a little further, use `rfft`, which does the same calculation, but only
		outputs half of the symmetrical spectrum.  If the data is both real and
		symmetrical, the `dct` can again double the efficiency, by generating
		half of the spectrum from half of the signal.
		
		Examples
		--------
		>>> from scipy.fftpack import fft, ifft
		>>> x = np.arange(5)
		>>> np.allclose(fft(ifft(x)), x, atol=1e-15)  # within numerical accuracy.
		True
	**/
	static public function fft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		2-D discrete Fourier transform.
		
		Return the two-dimensional discrete Fourier transform of the 2-D argument
		`x`.
		
		See Also
		--------
		fftn : for detailed information.
	**/
	static public function fft2(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return multidimensional discrete Fourier transform.
		
		The returned array contains::
		
		  y[j_1,..,j_d] = sum[k_1=0..n_1-1, ..., k_d=0..n_d-1]
		     x[k_1,..,k_d] * prod[i=1..d] exp(-sqrt(-1)*2*pi/n_i * j_i * k_i)
		
		where d = len(x.shape) and n = x.shape.
		
		Parameters
		----------
		x : array_like
		    The (n-dimensional) array to transform.
		shape : int or array_like of ints or None, optional
		    The shape of the result.  If both `shape` and `axes` (see below) are
		    None, `shape` is ``x.shape``; if `shape` is None but `axes` is
		    not None, then `shape` is ``scipy.take(x.shape, axes, axis=0)``.
		    If ``shape[i] > x.shape[i]``, the i-th dimension is padded with zeros.
		    If ``shape[i] < x.shape[i]``, the i-th dimension is truncated to
		    length ``shape[i]``.
		    If any element of `shape` is -1, the size of the corresponding
		    dimension of `x` is used.
		axes : int or array_like of ints or None, optional
		    The axes of `x` (`y` if `shape` is not None) along which the
		    transform is applied.
		    The default is over all axes.
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed.  Default is False.
		
		Returns
		-------
		y : complex-valued n-dimensional numpy array
		    The (n-dimensional) DFT of the input array.
		
		See Also
		--------
		ifftn
		
		Notes
		-----
		If ``x`` is real-valued, then
		``y[..., j_i, ...] == y[..., n_i-j_i, ...].conjugate()``.
		
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		Examples
		--------
		>>> from scipy.fftpack import fftn, ifftn
		>>> y = (-np.arange(16), 8 - np.arange(16), np.arange(16))
		>>> np.allclose(y, fftn(ifftn(y)))
		True
	**/
	static public function fftn(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		i0(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		i0(x)
		
		Modified Bessel function of order 0.
		
		Defined as,
		
		.. math::
		    I_0(x) = \sum_{k=0}^\infty \frac{(x^2/4)^k}{(k!)^2} = J_0(\imath x),
		
		where :math:`J_0` is the Bessel function of the first kind of order 0.
		
		Parameters
		----------
		x : array_like
		    Argument (float)
		
		Returns
		-------
		I : ndarray
		    Value of the modified Bessel function of order 0 at `x`.
		
		Notes
		-----
		The range is partitioned into the two intervals [0, 8] and (8, infinity).
		Chebyshev polynomial expansions are employed in each interval.
		
		This function is a wrapper for the Cephes [1]_ routine `i0`.
		
		See also
		--------
		iv
		i0e
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/
	**/
	static public function i0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return discrete inverse Fourier transform of real or complex sequence.
		
		The returned complex array contains ``y(0), y(1),..., y(n-1)`` where
		
		``y(j) = (x * exp(2*pi*sqrt(-1)*j*np.arange(n)/n)).mean()``.
		
		Parameters
		----------
		x : array_like
		    Transformed data to invert.
		n : int, optional
		    Length of the inverse Fourier transform.  If ``n < x.shape[axis]``,
		    `x` is truncated.  If ``n > x.shape[axis]``, `x` is zero-padded.
		    The default results in ``n = x.shape[axis]``.
		axis : int, optional
		    Axis along which the ifft's are computed; the default is over the
		    last axis (i.e., ``axis=-1``).
		overwrite_x : bool, optional
		    If True, the contents of `x` can be destroyed; the default is False.
		
		Returns
		-------
		ifft : ndarray of floats
		    The inverse discrete Fourier transform.
		
		See Also
		--------
		fft : Forward FFT
		
		Notes
		-----
		Both single and double precision routines are implemented.  Half precision
		inputs will be converted to single precision.  Non floating-point inputs
		will be converted to double precision.  Long-double precision inputs are
		not supported.
		
		This function is most efficient when `n` is a power of two, and least
		efficient when `n` is prime.
		
		If the data type of `x` is real, a "real IFFT" algorithm is automatically
		used, which roughly halves the computation time.
		
		Examples
		--------
		>>> from scipy.fftpack import fft, ifft
		>>> import numpy as np
		>>> x = np.arange(5)
		>>> np.allclose(ifft(fft(x)), x, atol=1e-15)  # within numerical accuracy.
		True
	**/
	static public function ifft(x:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		2-D discrete inverse Fourier transform of real or complex sequence.
		
		Return inverse two-dimensional discrete Fourier transform of
		arbitrary type sequence x.
		
		See `ifft` for more information.
		
		See also
		--------
		fft2, ifft
	**/
	static public function ifft2(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Return inverse multi-dimensional discrete Fourier transform.
		
		The sequence can be of an arbitrary type.
		
		The returned array contains::
		
		  y[j_1,..,j_d] = 1/p * sum[k_1=0..n_1-1, ..., k_d=0..n_d-1]
		     x[k_1,..,k_d] * prod[i=1..d] exp(sqrt(-1)*2*pi/n_i * j_i * k_i)
		
		where ``d = len(x.shape)``, ``n = x.shape``, and ``p = prod[i=1..d] n_i``.
		
		For description of parameters see `fftn`.
		
		See Also
		--------
		fftn : for detailed information.
		
		Examples
		--------
		>>> from scipy.fftpack import fftn, ifftn
		>>> import numpy as np
		>>> y = (-np.arange(16), 8 - np.arange(16), np.arange(16))
		>>> np.allclose(y, ifftn(fftn(y)))
		True
	**/
	static public function ifftn(x:Dynamic, ?shape:Dynamic, ?axes:Dynamic, ?overwrite_x:Dynamic):Dynamic;
	/**
		Compute the inverse of a matrix.
		
		Parameters
		----------
		a : array_like
		    Square matrix to be inverted.
		overwrite_a : bool, optional
		    Discard data in `a` (may improve performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		ainv : ndarray
		    Inverse of the matrix `a`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular.
		ValueError
		    If `a` is not square, or not 2-dimensional.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[1., 2.], [3., 4.]])
		>>> linalg.inv(a)
		array([[-2. ,  1. ],
		       [ 1.5, -0.5]])
		>>> np.dot(a, linalg.inv(a))
		array([[ 1.,  0.],
		       [ 0.,  1.]])
	**/
	static public function inv(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):numpy.Ndarray;
	/**
		Compute least-squares solution to equation Ax = b.
		
		Compute a vector x such that the 2-norm ``|b - A x|`` is minimized.
		
		Parameters
		----------
		a : (M, N) array_like
		    Left hand side array
		b : (M,) or (M, K) array_like
		    Right hand side array
		cond : float, optional
		    Cutoff for 'small' singular values; used to determine effective
		    rank of a. Singular values smaller than
		    ``rcond * largest_singular_value`` are considered zero.
		overwrite_a : bool, optional
		    Discard data in `a` (may enhance performance). Default is False.
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		lapack_driver : str, optional
		    Which LAPACK driver is used to solve the least-squares problem.
		    Options are ``'gelsd'``, ``'gelsy'``, ``'gelss'``. Default
		    (``'gelsd'``) is a good choice.  However, ``'gelsy'`` can be slightly
		    faster on many problems.  ``'gelss'`` was used historically.  It is
		    generally slow but uses less memory.
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		x : (N,) or (N, K) ndarray
		    Least-squares solution.  Return shape matches shape of `b`.
		residues : (K,) ndarray or float
		    Square of the 2-norm for each column in ``b - a x``, if ``M > N`` and
		    ``ndim(A) == n`` (returns a scalar if b is 1-D). Otherwise a
		    (0,)-shaped array is returned.
		rank : int
		    Effective rank of `a`.
		s : (min(M, N),) ndarray or None
		    Singular values of `a`. The condition number of a is
		    ``abs(s[0] / s[-1])``.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		ValueError
		    When parameters are not compatible.
		
		See Also
		--------
		scipy.optimize.nnls : linear least squares with non-negativity constraint
		
		Notes
		-----
		When ``'gelsy'`` is used as a driver, `residues` is set to a (0,)-shaped
		array and `s` is always ``None``.
		
		Examples
		--------
		>>> from scipy.linalg import lstsq
		>>> import matplotlib.pyplot as plt
		
		Suppose we have the following data:
		
		>>> x = np.array([1, 2.5, 3.5, 4, 5, 7, 8.5])
		>>> y = np.array([0.3, 1.1, 1.5, 2.0, 3.2, 6.6, 8.6])
		
		We want to fit a quadratic polynomial of the form ``y = a + b*x**2``
		to this data.  We first form the "design matrix" M, with a constant
		column of 1s and a column containing ``x**2``:
		
		>>> M = x[:, np.newaxis]**[0, 2]
		>>> M
		array([[  1.  ,   1.  ],
		       [  1.  ,   6.25],
		       [  1.  ,  12.25],
		       [  1.  ,  16.  ],
		       [  1.  ,  25.  ],
		       [  1.  ,  49.  ],
		       [  1.  ,  72.25]])
		
		We want to find the least-squares solution to ``M.dot(p) = y``,
		where ``p`` is a vector with length 2 that holds the parameters
		``a`` and ``b``.
		
		>>> p, res, rnk, s = lstsq(M, y)
		>>> p
		array([ 0.20925829,  0.12013861])
		
		Plot the data and the fitted curve.
		
		>>> plt.plot(x, y, 'o', label='data')
		>>> xx = np.linspace(0, 9, 101)
		>>> yy = p[0] + p[1]*xx**2
		>>> plt.plot(xx, yy, label='least squares fit, $y = a + bx^2$')
		>>> plt.xlabel('x')
		>>> plt.ylabel('y')
		>>> plt.legend(framealpha=1, shadow=True)
		>>> plt.grid(alpha=0.25)
		>>> plt.show()
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?cond:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of seven different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		a : (M,) or (M, N) array_like
		    Input array.  If `axis` is None, `a` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `a`.
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The ``axis`` and ``keepdims`` arguments are passed directly to
		``numpy.linalg.norm`` and are only usable if they are supported
		by the version of numpy in use.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.linalg import norm
		>>> a = np.arange(9) - 4.0
		>>> a
		array([-4., -3., -2., -1.,  0.,  1.,  2.,  3.,  4.])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4., -3., -2.],
		       [-1.,  0.,  1.],
		       [ 2.,  3.,  4.]])
		
		>>> norm(a)
		7.745966692414834
		>>> norm(b)
		7.745966692414834
		>>> norm(b, 'fro')
		7.745966692414834
		>>> norm(a, np.inf)
		4
		>>> norm(b, np.inf)
		9
		>>> norm(a, -np.inf)
		0
		>>> norm(b, -np.inf)
		2
		
		>>> norm(a, 1)
		20
		>>> norm(b, 1)
		7
		>>> norm(a, -1)
		-4.6566128774142013e-010
		>>> norm(b, -1)
		6
		>>> norm(a, 2)
		7.745966692414834
		>>> norm(b, 2)
		7.3484692283495345
		
		>>> norm(a, -2)
		0
		>>> norm(b, -2)
		1.8570331885190563e-016
		>>> norm(a, 3)
		5.8480354764257312
		>>> norm(a, -3)
		0
	**/
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate a generalized inverse of a matrix using its
		singular-value decomposition and including all 'large' singular
		values.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be pseudo-inverted.
		cond, rcond : float or None
		    Cutoff for 'small' singular values; singular values smaller than this
		    value are considered as zero. If both are omitted, the default value
		    ``max(M,N)*largest_singular_value*eps`` is used where ``eps`` is the
		    machine precision value of the datatype of ``a``.
		
		    .. versionchanged:: 1.3.0
		        Previously the default cutoff value was just ``eps*f`` where ``f``
		        was ``1e3`` for single precision and ``1e6`` for double precision.
		
		return_rank : bool, optional
		    If True, return the effective rank of the matrix.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		B : (N, M) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix.  Returned if `return_rank` is True.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.random.randn(9, 6)
		>>> B = linalg.pinv2(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv(a:Dynamic, ?cond:Dynamic, ?rcond:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function register_func(name:Dynamic, func:Dynamic):Dynamic;
	static public function restore_all():Dynamic;
	static public function restore_func(name:Dynamic):Dynamic;
	/**
		Solves the linear equation set ``a * x = b`` for the unknown ``x``
		for square ``a`` matrix.
		
		If the data matrix is known to be a particular type then supplying the
		corresponding string to ``assume_a`` key chooses the dedicated solver.
		The available options are
		
		===================  ========
		 generic matrix       'gen'
		 symmetric            'sym'
		 hermitian            'her'
		 positive definite    'pos'
		===================  ========
		
		If omitted, ``'gen'`` is the default structure.
		
		The datatype of the arrays define which solver is called regardless
		of the values. In other words, even when the complex array entries have
		precisely zero imaginary parts, the complex solver will be called based
		on the data type of the array.
		
		Parameters
		----------
		a : (N, N) array_like
		    Square input data
		b : (N, NRHS) array_like
		    Input data for the right hand side.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite. This key is deprecated
		    and assume_a = 'pos' keyword is recommended instead. The functionality
		    is the same. It will be removed in the future.
		lower : bool, optional
		    If True, only the data contained in the lower triangle of `a`. Default
		    is to use upper triangle. (ignored for ``'gen'``)
		overwrite_a : bool, optional
		    Allow overwriting data in `a` (may enhance performance).
		    Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance).
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		assume_a : str, optional
		    Valid entries are explained above.
		transposed: bool, optional
		    If True, ``a^T x = b`` for real matrices, raises `NotImplementedError`
		    for complex matrices (only for True).
		
		Returns
		-------
		x : (N, NRHS) ndarray
		    The solution array.
		
		Raises
		------
		ValueError
		    If size mismatches detected or input a is not square.
		LinAlgError
		    If the matrix is singular.
		LinAlgWarning
		    If an ill-conditioned input a is detected.
		NotImplementedError
		    If transposed is True and input a is a complex matrix.
		
		Examples
		--------
		Given `a` and `b`, solve for `x`:
		
		>>> a = np.array([[3, 2, 0], [1, -1, 0], [0, 5, 1]])
		>>> b = np.array([2, 4, -1])
		>>> from scipy import linalg
		>>> x = linalg.solve(a, b)
		>>> x
		array([ 2., -2.,  9.])
		>>> np.dot(a, x) == b
		array([ True,  True,  True], dtype=bool)
		
		Notes
		-----
		If the input b matrix is a 1D array with N elements, when supplied
		together with an NxN input a, it is assumed as a valid column vector
		despite the apparent size mismatch. This is compatible with the
		numpy.dot() behavior and the returned result is still 1D array.
		
		The generic, symmetric, hermitian and positive definite solutions are
		obtained via calling ?GESV, ?SYSV, ?HESV, and ?POSV routines of
		LAPACK respectively.
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic, ?assume_a:Dynamic, ?transposed:Dynamic):Dynamic;
	/**
		Singular Value Decomposition.
		
		Factorizes the matrix `a` into two unitary matrices ``U`` and ``Vh``, and
		a 1-D array ``s`` of singular values (real, non-negative) such that
		``a == U @ S @ Vh``, where ``S`` is a suitably shaped matrix of zeros with
		main diagonal ``s``.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		full_matrices : bool, optional
		    If True (default), `U` and `Vh` are of shape ``(M, M)``, ``(N, N)``.
		    If False, the shapes are ``(M, K)`` and ``(K, N)``, where
		    ``K = min(M, N)``.
		compute_uv : bool, optional
		    Whether to compute also ``U`` and ``Vh`` in addition to ``s``.
		    Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		lapack_driver : {'gesdd', 'gesvd'}, optional
		    Whether to use the more efficient divide-and-conquer approach
		    (``'gesdd'``) or general rectangular approach (``'gesvd'``)
		    to compute the SVD. MATLAB and Octave use the ``'gesvd'`` approach.
		    Default is ``'gesdd'``.
		
		    .. versionadded:: 0.18
		
		Returns
		-------
		U : ndarray
		    Unitary matrix having left singular vectors as columns.
		    Of shape ``(M, M)`` or ``(M, K)``, depending on `full_matrices`.
		s : ndarray
		    The singular values, sorted in non-increasing order.
		    Of shape (K,), with ``K = min(M, N)``.
		Vh : ndarray
		    Unitary matrix having right singular vectors as rows.
		    Of shape ``(N, N)`` or ``(K, N)`` depending on `full_matrices`.
		
		For ``compute_uv=False``, only ``s`` is returned.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		See also
		--------
		svdvals : Compute singular values of a matrix.
		diagsvd : Construct the Sigma matrix, given the vector s.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> m, n = 9, 6
		>>> a = np.random.randn(m, n) + 1.j*np.random.randn(m, n)
		>>> U, s, Vh = linalg.svd(a)
		>>> U.shape,  s.shape, Vh.shape
		((9, 9), (6,), (6, 6))
		
		Reconstruct the original matrix from the decomposition:
		
		>>> sigma = np.zeros((m, n))
		>>> for i in range(min(m, n)):
		...     sigma[i, i] = s[i]
		>>> a1 = np.dot(U, np.dot(sigma, Vh))
		>>> np.allclose(a, a1)
		True
		
		Alternatively, use ``full_matrices=False`` (notice that the shape of
		``U`` is then ``(m, n)`` instead of ``(m, m)``):
		
		>>> U, s, Vh = linalg.svd(a, full_matrices=False)
		>>> U.shape, s.shape, Vh.shape
		((9, 6), (6,), (6, 6))
		>>> S = np.diag(s)
		>>> np.allclose(a, np.dot(U, np.dot(S, Vh)))
		True
		
		>>> s2 = linalg.svd(a, compute_uv=False)
		>>> np.allclose(s, s2)
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):numpy.Ndarray;
}