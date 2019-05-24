/* This file is generated, do not edit! */
package numpy.lib.arraypad;
@:pythonImport("numpy.lib.arraypad") extern class Arraypad_Module {
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
		Append constant `val` along `axis` of `arr`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to append.
		val : scalar
		    Constant value to use. For best results should be of type `arr.dtype`;
		    if not `arr.dtype` will be cast to `arr.dtype`.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` constant `val` appended along `axis`.
	**/
	static public function _append_const(arr:Dynamic, pad_amt:Dynamic, val:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Append `pad_amt` to `arr` along `axis` by extending edge values.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to append.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, extended by `pad_amt` edge values prepended along
		    `axis`.
	**/
	static public function _append_edge(arr:Dynamic, pad_amt:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Pad one `axis` of `arr` with the maximum of the last `num` elements.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to append.
		num : int
		    Depth into `arr` along `axis` to calculate maximum.
		    Range: [1, `arr.shape[axis]`] or None (entire axis)
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values appended along `axis`. The
		    appended region is the maximum of the final `num` values along `axis`.
	**/
	static public function _append_max(arr:Dynamic, pad_amt:Dynamic, num:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Append `pad_amt` mean values along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to append.
		num : int
		    Depth into `arr` along `axis` to calculate mean.
		    Range: [1, `arr.shape[axis]`] or None (entire axis)
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values appended along `axis`. The
		    appended region is the maximum of the final `num` values along `axis`.
	**/
	static public function _append_mean(arr:Dynamic, pad_amt:Dynamic, num:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Append `pad_amt` median values along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to append.
		num : int
		    Depth into `arr` along `axis` to calculate median.
		    Range: [1, `arr.shape[axis]`] or None (entire axis)
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values appended along `axis`. The
		    appended region is the median of the final `num` values along `axis`.
	**/
	static public function _append_med(arr:Dynamic, pad_amt:Dynamic, num:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Append `pad_amt` median values along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to append.
		num : int
		    Depth into `arr` along `axis` to calculate minimum.
		    Range: [1, `arr.shape[axis]`] or None (entire axis)
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values appended along `axis`. The
		    appended region is the minimum of the final `num` values along `axis`.
	**/
	static public function _append_min(arr:Dynamic, pad_amt:Dynamic, num:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Append linear ramp along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to append.
		end : scalar
		    Constal value to use. For best results should be of type `arr.dtype`;
		    if not `arr.dtype` will be cast to `arr.dtype`.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values appended along `axis`. The
		    appended region ramps linearly from the edge value to `end`.
	**/
	static public function _append_ramp(arr:Dynamic, pad_amt:Dynamic, end:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Create an ndarray of `shape` with increments along specified `axis`
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		shape : tuple of ints
		    Shape of desired array. Should be equivalent to `arr.shape` except
		    `shape[axis]` which may have any positive value.
		axis : int
		    Axis to increment along.
		reverse : bool
		    If False, increment in a positive fashion from 1 to `shape[axis]`,
		    inclusive. If True, the bounds are the same but the order reversed.
		
		Returns
		-------
		padarr : ndarray
		    Output array sized to pad `arr` along `axis`, with linear range from
		    1 to `shape[axis]` along specified `axis`.
		
		Notes
		-----
		The range is deliberately 1-indexed for this specific use case. Think of
		this algorithm as broadcasting `np.arange` to a single `axis` of an
		arbitrarily shaped ndarray.
	**/
	static public function _arange_ndarray(arr:Dynamic, shape:Dynamic, axis:Dynamic, ?reverse:Dynamic):numpy.Ndarray;
	/**
		Broadcast `x` to an array with the shape (`ndim`, 2).
		
		A helper function for `pad` that prepares and validates arguments like
		`pad_width` for iteration in pairs.
		
		Parameters
		----------
		x : {None, scalar, array-like}
		    The object to broadcast to the shape (`ndim`, 2).
		ndim : int
		    Number of pairs the broadcasted `x` will have.
		as_index : bool, optional
		    If `x` is not None, try to round each element of `x` to an integer
		    (dtype `np.intp`) and ensure every element is positive.
		
		Returns
		-------
		pairs : nested iterables, shape (`ndim`, 2)
		    The broadcasted version of `x`.
		
		Raises
		------
		ValueError
		    If `as_index` is True and `x` contains negative elements.
		    Or if `x` is not broadcastable to the shape (`ndim`, 2).
	**/
	static public function _as_pairs(x:Dynamic, ndim:Dynamic, ?as_index:Dynamic):Dynamic;
	static public function _do_append(arr:Dynamic, pad_chunk:Dynamic, axis:Dynamic):Dynamic;
	static public function _do_prepend(arr:Dynamic, pad_chunk:Dynamic, axis:Dynamic):Dynamic;
	static public function _pad_dispatcher(array:Dynamic, pad_width:Dynamic, mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pad `axis` of `arr` by reflection.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : tuple of ints, length 2
		    Padding to (prepend, append) along `axis`.
		method : str
		    Controls method of reflection; options are 'even' or 'odd'.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt[0]` values prepended and `pad_amt[1]`
		    values appended along `axis`. Both regions are padded with reflected
		    values from the original array.
		
		Notes
		-----
		This algorithm does not pad with repetition, i.e. the edges are not
		repeated in the reflection. For that behavior, use `mode='symmetric'`.
		
		The modes 'reflect', 'symmetric', and 'wrap' must be padded with a
		single function, lest the indexing tricks in non-integer multiples of the
		original shape would violate repetition in the final iteration.
	**/
	static public function _pad_ref(arr:Dynamic, pad_amt:Dynamic, method:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Pad `axis` of `arr` by symmetry.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : tuple of ints, length 2
		    Padding to (prepend, append) along `axis`.
		method : str
		    Controls method of symmetry; options are 'even' or 'odd'.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt[0]` values prepended and `pad_amt[1]`
		    values appended along `axis`. Both regions are padded with symmetric
		    values from the original array.
		
		Notes
		-----
		This algorithm DOES pad with repetition, i.e. the edges are repeated.
		For padding without repeated edges, use `mode='reflect'`.
		
		The modes 'reflect', 'symmetric', and 'wrap' must be padded with a
		single function, lest the indexing tricks in non-integer multiples of the
		original shape would violate repetition in the final iteration.
	**/
	static public function _pad_sym(arr:Dynamic, pad_amt:Dynamic, method:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Pad `axis` of `arr` via wrapping.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : tuple of ints, length 2
		    Padding to (prepend, append) along `axis`.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt[0]` values prepended and `pad_amt[1]`
		    values appended along `axis`. Both regions are padded wrapped values
		    from the opposite end of `axis`.
		
		Notes
		-----
		This method of padding is also known as 'tile' or 'tiling'.
		
		The modes 'reflect', 'symmetric', and 'wrap' must be padded with a
		single function, lest the indexing tricks in non-integer multiples of the
		original shape would violate repetition in the final iteration.
	**/
	static public function _pad_wrap(arr:Dynamic, pad_amt:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Prepend constant `val` along `axis` of `arr`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to prepend.
		val : scalar
		    Constant value to use. For best results should be of type `arr.dtype`;
		    if not `arr.dtype` will be cast to `arr.dtype`.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` constant `val` prepended along `axis`.
	**/
	static public function _prepend_const(arr:Dynamic, pad_amt:Dynamic, val:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Prepend `pad_amt` to `arr` along `axis` by extending edge values.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to prepend.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, extended by `pad_amt` edge values appended along `axis`.
	**/
	static public function _prepend_edge(arr:Dynamic, pad_amt:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Prepend `pad_amt` maximum values along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to prepend.
		num : int
		    Depth into `arr` along `axis` to calculate maximum.
		    Range: [1, `arr.shape[axis]`] or None (entire axis)
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values appended along `axis`. The
		    prepended region is the maximum of the first `num` values along
		    `axis`.
	**/
	static public function _prepend_max(arr:Dynamic, pad_amt:Dynamic, num:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Prepend `pad_amt` mean values along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to prepend.
		num : int
		    Depth into `arr` along `axis` to calculate mean.
		    Range: [1, `arr.shape[axis]`] or None (entire axis)
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values prepended along `axis`. The
		    prepended region is the mean of the first `num` values along `axis`.
	**/
	static public function _prepend_mean(arr:Dynamic, pad_amt:Dynamic, num:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Prepend `pad_amt` median values along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to prepend.
		num : int
		    Depth into `arr` along `axis` to calculate median.
		    Range: [1, `arr.shape[axis]`] or None (entire axis)
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values prepended along `axis`. The
		    prepended region is the median of the first `num` values along `axis`.
	**/
	static public function _prepend_med(arr:Dynamic, pad_amt:Dynamic, num:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Prepend `pad_amt` minimum values along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to prepend.
		num : int
		    Depth into `arr` along `axis` to calculate minimum.
		    Range: [1, `arr.shape[axis]`] or None (entire axis)
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values prepended along `axis`. The
		    prepended region is the minimum of the first `num` values along
		    `axis`.
	**/
	static public function _prepend_min(arr:Dynamic, pad_amt:Dynamic, num:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Prepend linear ramp along `axis`.
		
		Parameters
		----------
		arr : ndarray
		    Input array of arbitrary shape.
		pad_amt : int
		    Amount of padding to prepend.
		end : scalar
		    Constal value to use. For best results should be of type `arr.dtype`;
		    if not `arr.dtype` will be cast to `arr.dtype`.
		axis : int
		    Axis along which to pad `arr`.
		
		Returns
		-------
		padarr : ndarray
		    Output array, with `pad_amt` values prepended along `axis`. The
		    prepended region ramps linearly from the edge value to `end`.
	**/
	static public function _prepend_ramp(arr:Dynamic, pad_amt:Dynamic, end:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Rounds arr inplace if destination dtype is integer.
		
		Parameters
		----------
		arr : ndarray
		    Input array.
		dtype : dtype
		    The dtype of the destination array.
	**/
	static public function _round_ifneeded(arr:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Construct a slice tuple the length of shape, with sl at the specified axis
	**/
	static public function _slice_at_axis(shape:Dynamic, sl:Dynamic, axis:Dynamic):Dynamic;
	/**
		Construct a slice tuple to take the first n elements along axis 
	**/
	static public function _slice_first(shape:Dynamic, n:Dynamic, axis:Dynamic):Dynamic;
	/**
		Construct a slice tuple to take the last n elements along axis 
	**/
	static public function _slice_last(shape:Dynamic, n:Dynamic, axis:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for adding dispatch with the __array_function__ protocol.
		
		See NEP-18 for example usage.
		
		Parameters
		----------
		dispatcher : callable
		    Function that when called like ``dispatcher(*args, **kwargs)`` with
		    arguments from the NumPy function call returns an iterable of
		    array-like arguments to check for ``__array_function__``.
		module : str, optional
		    __module__ attribute to set on new function, e.g., ``module='numpy'``.
		    By default, module is copied from the decorated function.
		verify : bool, optional
		    If True, verify the that the signature of the dispatcher and decorated
		    function signatures match exactly: all required and optional arguments
		    should appear in order with the same names, but the default values for
		    all optional arguments should be ``None``. Only disable verification
		    if the dispatcher's signature needs to deviate for some particular
		    reason, e.g., because the function has a signature like
		    ``func(*args, **kwargs)``.
		docs_from_dispatcher : bool, optional
		    If True, copy docs from the dispatcher function onto the dispatched
		    function, rather than from the implementation. This is useful for
		    functions defined in C, which otherwise don't have docstrings.
		
		Returns
		-------
		Function suitable for decorating the implementation of a NumPy function.
	**/
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Pads an array.
		
		Parameters
		----------
		array : array_like of rank N
		    Input array
		pad_width : {sequence, array_like, int}
		    Number of values padded to the edges of each axis.
		    ((before_1, after_1), ... (before_N, after_N)) unique pad widths
		    for each axis.
		    ((before, after),) yields same before and after pad for each axis.
		    (pad,) or int is a shortcut for before = after = pad width for all
		    axes.
		mode : str or function
		    One of the following string values or a user supplied function.
		
		    'constant'
		        Pads with a constant value.
		    'edge'
		        Pads with the edge values of array.
		    'linear_ramp'
		        Pads with the linear ramp between end_value and the
		        array edge value.
		    'maximum'
		        Pads with the maximum value of all or part of the
		        vector along each axis.
		    'mean'
		        Pads with the mean value of all or part of the
		        vector along each axis.
		    'median'
		        Pads with the median value of all or part of the
		        vector along each axis.
		    'minimum'
		        Pads with the minimum value of all or part of the
		        vector along each axis.
		    'reflect'
		        Pads with the reflection of the vector mirrored on
		        the first and last values of the vector along each
		        axis.
		    'symmetric'
		        Pads with the reflection of the vector mirrored
		        along the edge of the array.
		    'wrap'
		        Pads with the wrap of the vector along the axis.
		        The first values are used to pad the end and the
		        end values are used to pad the beginning.
		    <function>
		        Padding function, see Notes.
		stat_length : sequence or int, optional
		    Used in 'maximum', 'mean', 'median', and 'minimum'.  Number of
		    values at edge of each axis used to calculate the statistic value.
		
		    ((before_1, after_1), ... (before_N, after_N)) unique statistic
		    lengths for each axis.
		
		    ((before, after),) yields same before and after statistic lengths
		    for each axis.
		
		    (stat_length,) or int is a shortcut for before = after = statistic
		    length for all axes.
		
		    Default is ``None``, to use the entire axis.
		constant_values : sequence or int, optional
		    Used in 'constant'.  The values to set the padded values for each
		    axis.
		
		    ((before_1, after_1), ... (before_N, after_N)) unique pad constants
		    for each axis.
		
		    ((before, after),) yields same before and after constants for each
		    axis.
		
		    (constant,) or int is a shortcut for before = after = constant for
		    all axes.
		
		    Default is 0.
		end_values : sequence or int, optional
		    Used in 'linear_ramp'.  The values used for the ending value of the
		    linear_ramp and that will form the edge of the padded array.
		
		    ((before_1, after_1), ... (before_N, after_N)) unique end values
		    for each axis.
		
		    ((before, after),) yields same before and after end values for each
		    axis.
		
		    (constant,) or int is a shortcut for before = after = end value for
		    all axes.
		
		    Default is 0.
		reflect_type : {'even', 'odd'}, optional
		    Used in 'reflect', and 'symmetric'.  The 'even' style is the
		    default with an unaltered reflection around the edge value.  For
		    the 'odd' style, the extended part of the array is created by
		    subtracting the reflected values from two times the edge value.
		
		Returns
		-------
		pad : ndarray
		    Padded array of rank equal to `array` with shape increased
		    according to `pad_width`.
		
		Notes
		-----
		.. versionadded:: 1.7.0
		
		For an array with rank greater than 1, some of the padding of later
		axes is calculated from padding of previous axes.  This is easiest to
		think about with a rank 2 array where the corners of the padded array
		are calculated by using padded values from the first axis.
		
		The padding function, if used, should return a rank 1 array equal in
		length to the vector argument with padded values replaced. It has the
		following signature::
		
		    padding_func(vector, iaxis_pad_width, iaxis, kwargs)
		
		where
		
		    vector : ndarray
		        A rank 1 array already padded with zeros.  Padded values are
		        vector[:pad_tuple[0]] and vector[-pad_tuple[1]:].
		    iaxis_pad_width : tuple
		        A 2-tuple of ints, iaxis_pad_width[0] represents the number of
		        values padded at the beginning of vector where
		        iaxis_pad_width[1] represents the number of values padded at
		        the end of vector.
		    iaxis : int
		        The axis currently being calculated.
		    kwargs : dict
		        Any keyword arguments the function requires.
		
		Examples
		--------
		>>> a = [1, 2, 3, 4, 5]
		>>> np.pad(a, (2,3), 'constant', constant_values=(4, 6))
		array([4, 4, 1, 2, 3, 4, 5, 6, 6, 6])
		
		>>> np.pad(a, (2, 3), 'edge')
		array([1, 1, 1, 2, 3, 4, 5, 5, 5, 5])
		
		>>> np.pad(a, (2, 3), 'linear_ramp', end_values=(5, -4))
		array([ 5,  3,  1,  2,  3,  4,  5,  2, -1, -4])
		
		>>> np.pad(a, (2,), 'maximum')
		array([5, 5, 1, 2, 3, 4, 5, 5, 5])
		
		>>> np.pad(a, (2,), 'mean')
		array([3, 3, 1, 2, 3, 4, 5, 3, 3])
		
		>>> np.pad(a, (2,), 'median')
		array([3, 3, 1, 2, 3, 4, 5, 3, 3])
		
		>>> a = [[1, 2], [3, 4]]
		>>> np.pad(a, ((3, 2), (2, 3)), 'minimum')
		array([[1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1],
		       [3, 3, 3, 4, 3, 3, 3],
		       [1, 1, 1, 2, 1, 1, 1],
		       [1, 1, 1, 2, 1, 1, 1]])
		
		>>> a = [1, 2, 3, 4, 5]
		>>> np.pad(a, (2, 3), 'reflect')
		array([3, 2, 1, 2, 3, 4, 5, 4, 3, 2])
		
		>>> np.pad(a, (2, 3), 'reflect', reflect_type='odd')
		array([-1,  0,  1,  2,  3,  4,  5,  6,  7,  8])
		
		>>> np.pad(a, (2, 3), 'symmetric')
		array([2, 1, 1, 2, 3, 4, 5, 5, 4, 3])
		
		>>> np.pad(a, (2, 3), 'symmetric', reflect_type='odd')
		array([0, 1, 1, 2, 3, 4, 5, 5, 6, 7])
		
		>>> np.pad(a, (2, 3), 'wrap')
		array([4, 5, 1, 2, 3, 4, 5, 1, 2, 3])
		
		>>> def pad_with(vector, pad_width, iaxis, kwargs):
		...     pad_value = kwargs.get('padder', 10)
		...     vector[:pad_width[0]] = pad_value
		...     vector[-pad_width[1]:] = pad_value
		...     return vector
		>>> a = np.arange(6)
		>>> a = a.reshape((2, 3))
		>>> np.pad(a, 2, pad_with)
		array([[10, 10, 10, 10, 10, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10],
		       [10, 10,  0,  1,  2, 10, 10],
		       [10, 10,  3,  4,  5, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10],
		       [10, 10, 10, 10, 10, 10, 10]])
		>>> np.pad(a, 2, pad_with, padder=100)
		array([[100, 100, 100, 100, 100, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100],
		       [100, 100,   0,   1,   2, 100, 100],
		       [100, 100,   3,   4,   5, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100],
		       [100, 100, 100, 100, 100, 100, 100]])
	**/
	static public function pad(array:Dynamic, pad_width:Dynamic, mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	static public var print_function : Dynamic;
}