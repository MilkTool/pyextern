/* This file is generated, do not edit! */
package scipy.io.mmio;
@:pythonImport("scipy.io.mmio") extern class Mmio_Module {
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
		Check whether `stream` is compatible with numpy.fromfile.
		
		Passing a gzipped file object to ``fromfile/fromstring`` doesn't work with
		Python3.
	**/
	static public function _is_fromfile_compatible(stream:Dynamic):Dynamic;
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
	static public function asbytes(s:Dynamic):Dynamic;
	/**
		Return a contiguous array in memory (C order).
		
		Parameters
		----------
		a : array_like
		    Input array.
		dtype : str or dtype object, optional
		    Data-type of returned array.
		
		Returns
		-------
		out : ndarray
		    Contiguous array of same shape and content as `a`, with type `dtype`
		    if specified.
		
		See Also
		--------
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		require : Return an ndarray that satisfies requirements.
		ndarray.flags : Information about the memory layout of the array.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2,3)
		>>> np.ascontiguousarray(x, dtype=np.float32)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.]], dtype=float32)
		>>> x.flags['C_CONTIGUOUS']
		True
	**/
	static public function ascontiguousarray(a:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function asstr(s:Dynamic):Dynamic;
	/**
		can_cast(from_, to, casting='safe')
		
		Returns True if cast between data types can occur according to the
		casting rule.  If from is a scalar or array scalar, also returns
		True if the scalar value can be cast without overflow or truncation
		to an integer.
		
		Parameters
		----------
		from_ : dtype, dtype specifier, scalar, or array
		    Data type, scalar, or array to cast from.
		to : dtype or dtype specifier
		    Data type to cast to.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		Returns
		-------
		out : bool
		    True if cast can occur according to the casting rule.
		
		Notes
		-----
		Starting in NumPy 1.9, can_cast function now returns False in 'safe'
		casting mode for integer/float dtype and string dtype if the string dtype
		length is not long enough to store the max integer/float value converted
		to a string. Previously can_cast in 'safe' mode returned True for
		integer/float dtype and a string dtype of any length.
		
		See also
		--------
		dtype, result_type
		
		Examples
		--------
		Basic examples
		
		>>> np.can_cast(np.int32, np.int64)
		True
		>>> np.can_cast(np.float64, complex)
		True
		>>> np.can_cast(complex, float)
		False
		
		>>> np.can_cast('i8', 'f8')
		True
		>>> np.can_cast('i8', 'f4')
		False
		>>> np.can_cast('i4', 'S4')
		False
		
		Casting scalars
		
		>>> np.can_cast(100, 'i1')
		True
		>>> np.can_cast(150, 'i1')
		False
		>>> np.can_cast(150, 'u1')
		True
		
		>>> np.can_cast(3.5e100, np.float32)
		False
		>>> np.can_cast(1000.0, np.float32)
		True
		
		Array scalar checks the value, array does not
		
		>>> np.can_cast(np.array(1000.0), np.float32)
		True
		>>> np.can_cast(np.array([1000.0]), np.float32)
		False
		
		Using the casting rules
		
		>>> np.can_cast('i8', 'i8', 'no')
		True
		>>> np.can_cast('<i8', '>i8', 'no')
		False
		
		>>> np.can_cast('<i8', '>i8', 'equiv')
		True
		>>> np.can_cast('<i4', '>i8', 'equiv')
		False
		
		>>> np.can_cast('<i4', '>i8', 'safe')
		True
		>>> np.can_cast('<i8', '>i4', 'safe')
		False
		
		>>> np.can_cast('<i8', '>i4', 'same_kind')
		True
		>>> np.can_cast('<i8', '>u4', 'same_kind')
		False
		
		>>> np.can_cast('<i8', '>u4', 'unsafe')
		True
	**/
	static public function can_cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		fromfile(file, dtype=float, count=-1, sep='')
		
		Construct an array from data in a text or binary file.
		
		A highly efficient way of reading binary data with a known data-type,
		as well as parsing simply formatted text files.  Data written using the
		`tofile` method can be read using this function.
		
		Parameters
		----------
		file : file or str
		    Open file object or filename.
		dtype : data-type
		    Data type of the returned array.
		    For binary files, it is used to determine the size and byte-order
		    of the items in the file.
		count : int
		    Number of items to read. ``-1`` means all items (i.e., the complete
		    file).
		sep : str
		    Separator between items if file is a text file.
		    Empty ("") separator means the file should be treated as binary.
		    Spaces (" ") in the separator match zero or more whitespace characters.
		    A separator consisting only of spaces must match at least one
		    whitespace.
		
		See also
		--------
		load, save
		ndarray.tofile
		loadtxt : More flexible way of loading data from a text file.
		
		Notes
		-----
		Do not rely on the combination of `tofile` and `fromfile` for
		data storage, as the binary files generated are are not platform
		independent.  In particular, no byte-order or data-type information is
		saved.  Data can be stored in the platform independent ``.npy`` format
		using `save` and `load` instead.
		
		Examples
		--------
		Construct an ndarray:
		
		>>> dt = np.dtype([('time', [('min', int), ('sec', int)]),
		...                ('temp', float)])
		>>> x = np.zeros((1,), dtype=dt)
		>>> x['time']['min'] = 10; x['temp'] = 98.25
		>>> x
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
		
		Save the raw data to disk:
		
		>>> import os
		>>> fname = os.tmpnam()
		>>> x.tofile(fname)
		
		Read the raw data from disk:
		
		>>> np.fromfile(fname, dtype=dt)
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
		
		The recommended way to store and load data:
		
		>>> np.save(fname, x)
		>>> np.load(fname + '.npy')
		array([((10, 0), 98.25)],
		      dtype=[('time', [('min', '<i4'), ('sec', '<i4')]), ('temp', '<f8')])
	**/
	static public function fromfile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromstring(string, dtype=float, count=-1, sep='')
		
		A new 1-D array initialized from text data in a string.
		
		Parameters
		----------
		string : str
		    A string containing the data.
		dtype : data-type, optional
		    The data type of the array; default: float.  For binary input data,
		    the data must be in exactly this format.
		count : int, optional
		    Read this number of `dtype` elements from the data.  If this is
		    negative (the default), the count will be determined from the
		    length of the data.
		sep : str, optional
		    The string separating numbers in the data; extra whitespace between
		    elements is also ignored.
		
		    .. deprecated:: 1.14
		        If this argument is not provided, `fromstring` falls back on the
		        behaviour of `frombuffer` after encoding unicode string inputs as
		        either utf-8 (python 3), or the default encoding (python 2).
		
		Returns
		-------
		arr : ndarray
		    The constructed array.
		
		Raises
		------
		ValueError
		    If the string is not the correct size to satisfy the requested
		    `dtype` and `count`.
		
		See Also
		--------
		frombuffer, fromfile, fromiter
		
		Examples
		--------
		>>> np.fromstring('1 2', dtype=int, sep=' ')
		array([1, 2])
		>>> np.fromstring('1, 2', dtype=int, sep=',')
		array([1, 2])
	**/
	static public function fromstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the imaginary part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The imaginary component of the complex argument. If `val` is real,
		    the type of `val` is used for the output.  If `val` has complex
		    elements, the returned type is float.
		
		See Also
		--------
		real, angle, real_if_close
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.imag
		array([ 2.,  4.,  6.])
		>>> a.imag = np.array([8, 10, 12])
		>>> a
		array([ 1. +8.j,  3.+10.j,  5.+12.j])
		>>> np.imag(1 + 1j)
		1.0
	**/
	static public function imag(val:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function isspmatrix(x:Dynamic):Dynamic;
	/**
		Return size and storage parameters from Matrix Market file-like 'source'.
		
		Parameters
		----------
		source : str or file-like
		    Matrix Market filename (extension .mtx) or open file-like object
		
		Returns
		-------
		rows : int
		    Number of matrix rows.
		cols : int
		    Number of matrix columns.
		entries : int
		    Number of non-zero entries of a sparse matrix
		    or rows*cols for a dense matrix.
		format : str
		    Either 'coordinate' or 'array'.
		field : str
		    Either 'real', 'complex', 'pattern', or 'integer'.
		symmetry : str
		    Either 'general', 'symmetric', 'skew-symmetric', or 'hermitian'.
	**/
	static public function mminfo(source:Dynamic):Int;
	/**
		Reads the contents of a Matrix Market file-like 'source' into a matrix.
		
		Parameters
		----------
		source : str or file-like
		    Matrix Market filename (extensions .mtx, .mtz.gz)
		    or open file-like object.
		
		Returns
		-------
		a : ndarray or coo_matrix
		    Dense or sparse matrix depending on the matrix format in the
		    Matrix Market file.
	**/
	static public function mmread(source:Dynamic):Dynamic;
	/**
		Writes the sparse or dense array `a` to Matrix Market file-like `target`.
		
		Parameters
		----------
		target : str or file-like
		    Matrix Market filename (extension .mtx) or open file-like object.
		a : array like
		    Sparse or dense 2D array.
		comment : str, optional
		    Comments to be prepended to the Matrix Market file.
		field : None or str, optional
		    Either 'real', 'complex', 'pattern', or 'integer'.
		precision : None or int, optional
		    Number of digits to display for real or complex values.
		symmetry : None or str, optional
		    Either 'general', 'symmetric', 'skew-symmetric', or 'hermitian'.
		    If symmetry is None the symmetry type of 'a' is determined by its
		    values.
	**/
	static public function mmwrite(target:Dynamic, a:Dynamic, ?comment:Dynamic, ?field:Dynamic, ?precision:Dynamic, ?symmetry:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
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
		Save an array to a text file.
		
		Parameters
		----------
		fname : filename or file handle
		    If the filename ends in ``.gz``, the file is automatically saved in
		    compressed gzip format.  `loadtxt` understands gzipped files
		    transparently.
		X : 1D or 2D array_like
		    Data to be saved to a text file.
		fmt : str or sequence of strs, optional
		    A single format (%10.5f), a sequence of formats, or a
		    multi-format string, e.g. 'Iteration %d -- %10.5f', in which
		    case `delimiter` is ignored. For complex `X`, the legal options
		    for `fmt` are:
		
		    * a single specifier, `fmt='%.4e'`, resulting in numbers formatted
		      like `' (%s+%sj)' % (fmt, fmt)`
		    * a full string specifying every real and imaginary part, e.g.
		      `' %.4e %+.4ej %.4e %+.4ej %.4e %+.4ej'` for 3 columns
		    * a list of specifiers, one per column - in this case, the real
		      and imaginary part must have separate specifiers,
		      e.g. `['%.3e + %.3ej', '(%.15e%+.15ej)']` for 2 columns
		delimiter : str, optional
		    String or character separating columns.
		newline : str, optional
		    String or character separating lines.
		
		    .. versionadded:: 1.5.0
		header : str, optional
		    String that will be written at the beginning of the file.
		
		    .. versionadded:: 1.7.0
		footer : str, optional
		    String that will be written at the end of the file.
		
		    .. versionadded:: 1.7.0
		comments : str, optional
		    String that will be prepended to the ``header`` and ``footer`` strings,
		    to mark them as comments. Default: '# ',  as expected by e.g.
		    ``numpy.loadtxt``.
		
		    .. versionadded:: 1.7.0
		encoding : {None, str}, optional
		    Encoding used to encode the outputfile. Does not apply to output
		    streams. If the encoding is something other than 'bytes' or 'latin1'
		    you will not be able to load the file in NumPy versions < 1.14. Default
		    is 'latin1'.
		
		    .. versionadded:: 1.14.0
		
		
		See Also
		--------
		save : Save an array to a binary file in NumPy ``.npy`` format
		savez : Save several arrays into an uncompressed ``.npz`` archive
		savez_compressed : Save several arrays into a compressed ``.npz`` archive
		
		Notes
		-----
		Further explanation of the `fmt` parameter
		(``%[flag]width[.precision]specifier``):
		
		flags:
		    ``-`` : left justify
		
		    ``+`` : Forces to precede result with + or -.
		
		    ``0`` : Left pad the number with zeros instead of space (see width).
		
		width:
		    Minimum number of characters to be printed. The value is not truncated
		    if it has more characters.
		
		precision:
		    - For integer specifiers (eg. ``d,i,o,x``), the minimum number of
		      digits.
		    - For ``e, E`` and ``f`` specifiers, the number of digits to print
		      after the decimal point.
		    - For ``g`` and ``G``, the maximum number of significant digits.
		    - For ``s``, the maximum number of characters.
		
		specifiers:
		    ``c`` : character
		
		    ``d`` or ``i`` : signed decimal integer
		
		    ``e`` or ``E`` : scientific notation with ``e`` or ``E``.
		
		    ``f`` : decimal floating point
		
		    ``g,G`` : use the shorter of ``e,E`` or ``f``
		
		    ``o`` : signed octal
		
		    ``s`` : string of characters
		
		    ``u`` : unsigned decimal integer
		
		    ``x,X`` : unsigned hexadecimal integer
		
		This explanation of ``fmt`` is not complete, for an exhaustive
		specification see [1]_.
		
		References
		----------
		.. [1] `Format Specification Mini-Language
		       <http://docs.python.org/library/string.html#
		       format-specification-mini-language>`_, Python Documentation.
		
		Examples
		--------
		>>> x = y = z = np.arange(0.0,5.0,1.0)
		>>> np.savetxt('test.out', x, delimiter=',')   # X is an array
		>>> np.savetxt('test.out', (x,y,z))   # x,y,z equal sized 1D arrays
		>>> np.savetxt('test.out', x, fmt='%1.4e')   # use exponential notation
	**/
	static public function savetxt(fname:Dynamic, X:Dynamic, ?fmt:Dynamic, ?delimiter:Dynamic, ?newline:Dynamic, ?header:Dynamic, ?footer:Dynamic, ?comments:Dynamic, ?encoding:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Stack arrays in sequence vertically (row wise).
		
		This is equivalent to concatenation along the first axis after 1-D arrays
		of shape `(N,)` have been reshaped to `(1,N)`. Rebuilds arrays divided by
		`vsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the first axis.
		    1-D arrays must have the same length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays, will be at least 2-D.
		
		See Also
		--------
		stack : Join a sequence of arrays along a new axis.
		hstack : Stack arrays in sequence horizontally (column wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		concatenate : Join a sequence of arrays along an existing axis.
		vsplit : Split array into a list of multiple sub-arrays vertically.
		block : Assemble arrays from blocks.
		
		Examples
		--------
		>>> a = np.array([1, 2, 3])
		>>> b = np.array([2, 3, 4])
		>>> np.vstack((a,b))
		array([[1, 2, 3],
		       [2, 3, 4]])
		
		>>> a = np.array([[1], [2], [3]])
		>>> b = np.array([[2], [3], [4]])
		>>> np.vstack((a,b))
		array([[1],
		       [2],
		       [3],
		       [2],
		       [3],
		       [4]])
	**/
	static public function vstack(tup:Dynamic):Dynamic;
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
}