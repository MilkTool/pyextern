/* This file is generated, do not edit! */
package scipy.ndimage;
@:pythonImport("scipy.ndimage.measurements") extern class Measurements {
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
		Test whether the numpy data type `dt` can be safely cast to an int.
	**/
	static public function _safely_castable_to_int(dt:Dynamic):Dynamic;
	/**
		Returns min, max, or both, plus their positions (if requested), and
		median.
	**/
	static public function _select(input:Dynamic, ?labels:Dynamic, ?index:Dynamic, ?find_min:Dynamic, ?find_max:Dynamic, ?find_min_positions:Dynamic, ?find_max_positions:Dynamic, ?find_median:Dynamic):Dynamic;
	/**
		Count, sum, and optionally compute (sum - centre)^2 of input by label
		
		Parameters
		----------
		input : array_like, n-dimensional
		    The input data to be analyzed.
		labels : array_like (n-dimensional), optional
		    The labels of the data in `input`.  This array must be broadcast
		    compatible with `input`; typically it is the same shape as `input`.
		    If `labels` is None, all nonzero values in `input` are treated as
		    the single labeled group.
		index : label or sequence of labels, optional
		    These are the labels of the groups for which the stats are computed.
		    If `index` is None, the stats are computed for the single group where
		    `labels` is greater than 0.
		centered : bool, optional
		    If True, the centered sum of squares for each labeled group is
		    also returned.  Default is False.
		
		Returns
		-------
		counts : int or ndarray of ints
		    The number of elements in each labeled group.
		sums : scalar or ndarray of scalars
		    The sums of the values in each labeled group.
		sums_c : scalar or ndarray of scalars, optional
		    The sums of mean-centered squares of the values in each labeled group.
		    This is only returned if `centered` is True.
	**/
	static public function _stats(input:Dynamic, ?labels:Dynamic, ?index:Dynamic, ?centered:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Calculate the center of mass of the values of an array at labels.
		
		Parameters
		----------
		input : ndarray
		    Data from which to calculate center-of-mass.
		labels : ndarray, optional
		    Labels for objects in `input`, as generated by `ndimage.label`.
		    Only used with `index`.  Dimensions must be the same as `input`.
		index : int or sequence of ints, optional
		    Labels for which to calculate centers-of-mass. If not specified,
		    all labels greater than zero are used.  Only used with `labels`.
		
		Returns
		-------
		center_of_mass : tuple, or list of tuples
		    Coordinates of centers-of-mass.
		
		Examples
		--------
		>>> a = np.array(([0,0,0,0],
		                  [0,1,1,0],
		                  [0,1,1,0],
		                  [0,1,1,0]))
		>>> from scipy import ndimage
		>>> ndimage.measurements.center_of_mass(a)
		(2.0, 1.5)
		
		Calculation of multiple objects in an image
		
		>>> b = np.array(([0,1,1,0],
		                  [0,1,0,0],
		                  [0,0,0,0],
		                  [0,0,1,1],
		                  [0,0,1,1]))
		>>> lbl = ndimage.label(b)[0]
		>>> ndimage.measurements.center_of_mass(b, lbl, [1,2])
		[(0.33333333333333331, 1.3333333333333333), (3.5, 2.5)]
	**/
	static public function center_of_mass(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Calculate the minimums and maximums of the values of an array
		at labels, along with their positions.
		
		Parameters
		----------
		input : ndarray
		    Nd-image data to process.
		labels : ndarray, optional
		    Labels of features in input.
		    If not None, must be same shape as `input`.
		index : int or sequence of ints, optional
		    Labels to include in output.  If None (default), all values where
		    non-zero `labels` are used.
		
		Returns
		-------
		minimums, maximums : int or ndarray
		    Values of minimums and maximums in each feature.
		min_positions, max_positions : tuple or list of tuples
		    Each tuple gives the n-D coordinates of the corresponding minimum
		    or maximum.
		
		See Also
		--------
		maximum, minimum, maximum_position, minimum_position, center_of_mass
		
		Examples
		--------
		>>> a = np.array([[1, 2, 0, 0],
		                  [5, 3, 0, 4],
		                  [0, 0, 0, 7],
		                  [9, 3, 0, 0]])
		>>> from scipy import ndimage
		>>> ndimage.extrema(a)
		(0, 9, (0, 2), (3, 0))
		
		Features to process can be specified using `labels` and `index`:
		
		>>> lbl, nlbl = ndimage.label(a)
		>>> ndimage.extrema(a, lbl, index=np.arange(1, nlbl+1))
		(array([1, 4, 3]),
		 array([5, 7, 9]),
		 [(0, 0), (1, 3), (3, 1)],
		 [(1, 0), (2, 3), (3, 0)])
		
		If no index is given, non-zero `labels` are processed:
		
		>>> ndimage.extrema(a, lbl)
		(1, 9, (0, 0), (3, 0))
	**/
	static public function extrema(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Find objects in a labeled array.
		
		Parameters
		----------
		input : ndarray of ints
		    Array containing objects defined by different labels. Labels with
		    value 0 are ignored.
		max_label : int, optional
		    Maximum label to be searched for in `input`. If max_label is not
		    given, the positions of all objects are returned.
		
		Returns
		-------
		object_slices : list of tuples
		    A list of tuples, with each tuple containing N slices (with N the
		    dimension of the input array).  Slices correspond to the minimal
		    parallelepiped that contains the object. If a number is missing,
		    None is returned instead of a slice.
		
		See Also
		--------
		label, center_of_mass
		
		Notes
		-----
		This function is very useful for isolating a volume of interest inside
		a 3-D array, that cannot be "seen through".
		
		Examples
		--------
		>>> a = np.zeros((6,6), dtype=np.int)
		>>> a[2:4, 2:4] = 1
		>>> a[4, 4] = 1
		>>> a[:2, :3] = 2
		>>> a[0, 5] = 3
		>>> a
		array([[2, 2, 2, 0, 0, 3],
		       [2, 2, 2, 0, 0, 0],
		       [0, 0, 1, 1, 0, 0],
		       [0, 0, 1, 1, 0, 0],
		       [0, 0, 0, 0, 1, 0],
		       [0, 0, 0, 0, 0, 0]])
		>>> ndimage.find_objects(a)
		[(slice(2, 5, None), slice(2, 5, None)), (slice(0, 2, None), slice(0, 3, None)), (slice(0, 1, None), slice(5, 6, None))]
		>>> ndimage.find_objects(a, max_label=2)
		[(slice(2, 5, None), slice(2, 5, None)), (slice(0, 2, None), slice(0, 3, None))]
		>>> ndimage.find_objects(a == 1, max_label=2)
		[(slice(2, 5, None), slice(2, 5, None)), None]
		
		>>> loc = ndimage.find_objects(a)[0]
		>>> a[loc]
		array([[1, 1, 0]
		       [1, 1, 0]
		       [0, 0, 1]])
	**/
	static public function find_objects(input:Dynamic, ?max_label:Dynamic):Dynamic;
	/**
		Calculate the histogram of the values of an array, optionally at labels.
		
		Histogram calculates the frequency of values in an array within bins
		determined by `min`, `max`, and `bins`. The `labels` and `index`
		keywords can limit the scope of the histogram to specified sub-regions
		within the array.
		
		Parameters
		----------
		input : array_like
		    Data for which to calculate histogram.
		min, max : int
		    Minimum and maximum values of range of histogram bins.
		bins : int
		    Number of bins.
		labels : array_like, optional
		    Labels for objects in `input`.
		    If not None, must be same shape as `input`.
		index : int or sequence of ints, optional
		    Label or labels for which to calculate histogram. If None, all values
		    where label is greater than zero are used
		
		Returns
		-------
		hist : ndarray
		    Histogram counts.
		
		Examples
		--------
		>>> a = np.array([[ 0.    ,  0.2146,  0.5962,  0.    ],
		                  [ 0.    ,  0.7778,  0.    ,  0.    ],
		                  [ 0.    ,  0.    ,  0.    ,  0.    ],
		                  [ 0.    ,  0.    ,  0.7181,  0.2787],
		                  [ 0.    ,  0.    ,  0.6573,  0.3094]])
		>>> from scipy import ndimage
		>>> ndimage.measurements.histogram(a, 0, 1, 10)
		array([13,  0,  2,  1,  0,  1,  1,  2,  0,  0])
		
		With labels and no indices, non-zero elements are counted:
		
		>>> lbl, nlbl = ndimage.label(a)
		>>> ndimage.measurements.histogram(a, 0, 1, 10, lbl)
		array([0, 0, 2, 1, 0, 1, 1, 2, 0, 0])
		
		Indices can be used to count only certain objects:
		
		>>> ndimage.measurements.histogram(a, 0, 1, 10, lbl, 2)
		array([0, 0, 1, 1, 0, 0, 1, 1, 0, 0])
	**/
	static public function histogram(input:Dynamic, min:Dynamic, max:Dynamic, bins:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Label features in an array.
		
		Parameters
		----------
		input : array_like
		    An array-like object to be labeled.  Any non-zero values in `input` are
		    counted as features and zero values are considered the background.
		structure : array_like, optional
		    A structuring element that defines feature connections.
		    `structure` must be symmetric.  If no structuring element is provided,
		    one is automatically generated with a squared connectivity equal to
		    one.  That is, for a 2-D `input` array, the default structuring element
		    is::
		
		        [[0,1,0],
		         [1,1,1],
		         [0,1,0]]
		
		output : (None, data-type, array_like), optional
		    If `output` is a data type, it specifies the type of the resulting
		    labeled feature array
		    If `output` is an array-like object, then `output` will be updated
		    with the labeled features from this function.  This function can
		    operate in-place, by passing output=input.
		    Note that the output must be able to store the largest label, or this
		    function will raise an Exception.
		
		Returns
		-------
		label : ndarray or int
		    An integer ndarray where each unique feature in `input` has a unique
		    label in the returned array.
		num_features : int
		    How many objects were found.
		
		    If `output` is None, this function returns a tuple of
		    (`labeled_array`, `num_features`).
		
		    If `output` is a ndarray, then it will be updated with values in
		    `labeled_array` and only `num_features` will be returned by this
		    function.
		
		See Also
		--------
		find_objects : generate a list of slices for the labeled features (or
		               objects); useful for finding features' position or
		               dimensions
		
		Examples
		--------
		Create an image with some features, then label it using the default
		(cross-shaped) structuring element:
		
		>>> a = np.array([[0,0,1,1,0,0],
		...               [0,0,0,1,0,0],
		...               [1,1,0,0,1,0],
		...               [0,0,0,1,0,0]])
		>>> labeled_array, num_features = label(a)
		
		Each of the 4 features are labeled with a different integer:
		
		>>> print(num_features)
		4
		>>> print(labeled_array)
		array([[0, 0, 1, 1, 0, 0],
		       [0, 0, 0, 1, 0, 0],
		       [2, 2, 0, 0, 3, 0],
		       [0, 0, 0, 4, 0, 0]])
		
		Generate a structuring element that will consider features connected even
		if they touch diagonally:
		
		>>> s = generate_binary_structure(2,2)
		
		or,
		
		>>> s = [[1,1,1],
		         [1,1,1],
		         [1,1,1]]
		
		Label the image using the new structuring element:
		
		>>> labeled_array, num_features = label(a, structure=s)
		
		Show the 2 labeled features (note that features 1, 3, and 4 from above are
		now considered a single feature):
		
		>>> print(num_features)
		2
		>>> print(labeled_array)
		array([[0, 0, 1, 1, 0, 0],
		       [0, 0, 0, 1, 0, 0],
		       [2, 2, 0, 0, 1, 0],
		       [0, 0, 0, 1, 0, 0]])
	**/
	static public function label(input:Dynamic, ?structure:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Roughly equivalent to [func(input[labels == i]) for i in index].
		
		Sequentially applies an arbitrary function (that works on array_like input)
		to subsets of an n-D image array specified by `labels` and `index`.
		The option exists to provide the function with positional parameters as the
		second argument.
		
		Parameters
		----------
		input : array_like
		    Data from which to select `labels` to process.
		labels : array_like or None
		    Labels to objects in `input`.
		    If not None, array must be same shape as `input`.
		    If None, `func` is applied to raveled `input`.
		index : int, sequence of ints or None
		    Subset of `labels` to which to apply `func`.
		    If a scalar, a single value is returned.
		    If None, `func` is applied to all non-zero values of `labels`.
		func : callable
		    Python function to apply to `labels` from `input`.
		out_dtype : dtype
		    Dtype to use for `result`.
		default : int, float or None
		    Default return value when a element of `index` does not exist
		    in `labels`.
		pass_positions : bool, optional
		    If True, pass linear indices to `func` as a second argument.
		    Default is False.
		
		Returns
		-------
		result : ndarray
		    Result of applying `func` to each of `labels` to `input` in `index`.
		
		Examples
		--------
		>>> a = np.array([[1, 2, 0, 0],
		                  [5, 3, 0, 4],
		                  [0, 0, 0, 7],
		                  [9, 3, 0, 0]])
		>>> from scipy import ndimage
		>>> lbl, nlbl = ndimage.label(a)
		>>> lbls = np.arange(1, nlbl+1)
		>>> ndimage.labeled_comprehension(a, lbl, lbls, np.mean, float, 0)
		array([ 2.75,  5.5 ,  6.  ])
		
		Falling back to `default`:
		
		>>> lbls = np.arange(1, nlbl+2)
		>>> ndimage.labeled_comprehension(a, lbl, lbls, np.mean, float, -1)
		array([ 2.75,  5.5 ,  6.  , -1.  ])
		
		Passing positions:
		
		>>> def fn(val, pos):
		...     print("fn says: %s : %s" % (val, pos))
		...     return (val.sum()) if (pos.sum() % 2 == 0) else (-val.sum())
		...
		>>> ndimage.labeled_comprehension(a, lbl, lbls, fn, float, 0, True)
		fn says: [1 2 5 3] : [0 1 4 5]
		fn says: [4 7] : [7 11]
		fn says: [9 3] : [12 13]
		array([ 11.,  11., -12.])
	**/
	static public function labeled_comprehension(input:Dynamic, labels:Dynamic, index:Dynamic, func:Dynamic, out_dtype:Dynamic, _default:Dynamic, ?pass_positions:Dynamic):Dynamic;
	/**
		Calculate the maximum of the values of an array over labeled regions.
		
		Parameters
		----------
		input : array_like
		    Array_like of values. For each region specified by `labels`, the
		    maximal values of `input` over the region is computed.
		labels : array_like, optional
		    An array of integers marking different regions over which the
		    maximum value of `input` is to be computed. `labels` must have the
		    same shape as `input`. If `labels` is not specified, the maximum
		    over the whole array is returned.
		index : array_like, optional
		    A list of region labels that are taken into account for computing the
		    maxima. If index is None, the maximum over all elements where `labels`
		    is non-zero is returned.
		
		Returns
		-------
		output : float or list of floats
		    List of maxima of `input` over the regions determined by `labels` and
		    whose index is in `index`. If `index` or `labels` are not specified, a
		    float is returned: the maximal value of `input` if `labels` is None,
		    and the maximal value of elements where `labels` is greater than zero
		    if `index` is None.
		
		See also
		--------
		label, minimum, median, maximum_position, extrema, sum, mean, variance,
		standard_deviation
		
		Notes
		-----
		The function returns a Python list and not a Numpy array, use
		`np.array` to convert the list to an array.
		
		Examples
		--------
		>>> a = np.arange(16).reshape((4,4))
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		>>> labels = np.zeros_like(a)
		>>> labels[:2,:2] = 1
		>>> labels[2:, 1:3] = 2
		>>> labels
		array([[1, 1, 0, 0],
		       [1, 1, 0, 0],
		       [0, 2, 2, 0],
		       [0, 2, 2, 0]])
		>>> from scipy import ndimage
		>>> ndimage.maximum(a)
		15.0
		>>> ndimage.maximum(a, labels=labels, index=[1,2])
		[5.0, 14.0]
		>>> ndimage.maximum(a, labels=labels)
		14.0
		
		>>> b = np.array([[1, 2, 0, 0],
		                  [5, 3, 0, 4],
		                  [0, 0, 0, 7],
		                  [9, 3, 0, 0]])
		>>> labels, labels_nb = ndimage.label(b)
		>>> labels
		array([[1, 1, 0, 0],
		       [1, 1, 0, 2],
		       [0, 0, 0, 2],
		       [3, 3, 0, 0]])
		>>> ndimage.maximum(b, labels=labels, index=np.arange(1, labels_nb + 1))
		[5.0, 7.0, 9.0]
	**/
	static public function maximum(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Find the positions of the maximums of the values of an array at labels.
		
		For each region specified by `labels`, the position of the maximum
		value of `input` within the region is returned.
		
		Parameters
		----------
		input : array_like
		    Array_like of values.
		labels : array_like, optional
		    An array of integers marking different regions over which the
		    position of the maximum value of `input` is to be computed.
		    `labels` must have the same shape as `input`. If `labels` is not
		    specified, the location of the first maximum over the whole
		    array is returned.
		
		    The `labels` argument only works when `index` is specified.
		index : array_like, optional
		    A list of region labels that are taken into account for finding the
		    location of the maxima.  If `index` is None, the first maximum
		    over all elements where `labels` is non-zero is returned.
		
		    The `index` argument only works when `labels` is specified.
		
		Returns
		-------
		output : list of tuples of ints
		    List of tuples of ints that specify the location of maxima of
		    `input` over the regions determined by `labels` and whose index
		    is in `index`.
		
		    If `index` or `labels` are not specified, a tuple of ints is
		    returned specifying the location of the ``first`` maximal value
		    of `input`.
		
		See also
		--------
		label, minimum, median, maximum_position, extrema, sum, mean, variance,
		standard_deviation
	**/
	static public function maximum_position(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Calculate the mean of the values of an array at labels.
		
		Parameters
		----------
		input : array_like
		    Array on which to compute the mean of elements over distinct
		    regions.
		labels : array_like, optional
		    Array of labels of same shape, or broadcastable to the same shape as
		    `input`. All elements sharing the same label form one region over
		    which the mean of the elements is computed.
		index : int or sequence of ints, optional
		    Labels of the objects over which the mean is to be computed.
		    Default is None, in which case the mean for all values where label is
		    greater than 0 is calculated.
		
		Returns
		-------
		out : list
		    Sequence of same length as `index`, with the mean of the different
		    regions labeled by the labels in `index`.
		
		See also
		--------
		ndimage.variance, ndimage.standard_deviation, ndimage.minimum,
		ndimage.maximum, ndimage.sum
		ndimage.label
		
		Examples
		--------
		>>> a = np.arange(25).reshape((5,5))
		>>> labels = np.zeros_like(a)
		>>> labels[3:5,3:5] = 1
		>>> index = np.unique(labels)
		>>> labels
		array([[0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0],
		       [0, 0, 0, 1, 1],
		       [0, 0, 0, 1, 1]])
		>>> index
		array([0, 1])
		>>> ndimage.mean(a, labels=labels, index=index)
		[10.285714285714286, 21.0]
	**/
	static public function mean(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Calculate the median of the values of an array over labeled regions.
		
		Parameters
		----------
		input : array_like
		    Array_like of values. For each region specified by `labels`, the
		    median value of `input` over the region is computed.
		labels : array_like, optional
		    An array_like of integers marking different regions over which the
		    median value of `input` is to be computed. `labels` must have the
		    same shape as `input`. If `labels` is not specified, the median
		    over the whole array is returned.
		index : array_like, optional
		    A list of region labels that are taken into account for computing the
		    medians. If index is None, the median over all elements where `labels`
		    is non-zero is returned.
		
		Returns
		-------
		median : float or list of floats
		    List of medians of `input` over the regions determined by `labels` and
		    whose index is in `index`. If `index` or `labels` are not specified, a
		    float is returned: the median value of `input` if `labels` is None,
		    and the median value of elements where `labels` is greater than zero
		    if `index` is None.
		
		See also
		--------
		label, minimum, maximum, extrema, sum, mean, variance, standard_deviation
		
		Notes
		-----
		The function returns a Python list and not a Numpy array, use
		`np.array` to convert the list to an array.
		
		Examples
		--------
		>>> a = np.array([[1, 2, 0, 1],
		...               [5, 3, 0, 4],
		...               [0, 0, 0, 7],
		...               [9, 3, 0, 0]])
		>>> labels, labels_nb = ndimage.label(a)
		>>> labels
		array([[1, 1, 0, 2],
		       [1, 1, 0, 2],
		       [0, 0, 0, 2],
		       [3, 3, 0, 0]])
		>>> ndimage.median(a, labels=labels, index=np.arange(1, labels_nb + 1))
		[2.5, 4.0, 6.0]
		>>> ndimage.median(a)
		1.0
		>>> ndimage.median(a, labels=labels)
		3.0
	**/
	static public function median(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Calculate the minimum of the values of an array over labeled regions.
		
		Parameters
		----------
		input : array_like
		    Array_like of values. For each region specified by `labels`, the
		    minimal values of `input` over the region is computed.
		labels : array_like, optional
		    An array_like of integers marking different regions over which the
		    minimum value of `input` is to be computed. `labels` must have the
		    same shape as `input`. If `labels` is not specified, the minimum
		    over the whole array is returned.
		index : array_like, optional
		    A list of region labels that are taken into account for computing the
		    minima. If index is None, the minimum over all elements where `labels`
		    is non-zero is returned.
		
		Returns
		-------
		minimum : float or list of floats
		    List of minima of `input` over the regions determined by `labels` and
		    whose index is in `index`. If `index` or `labels` are not specified, a
		    float is returned: the minimal value of `input` if `labels` is None,
		    and the minimal value of elements where `labels` is greater than zero
		    if `index` is None.
		
		See also
		--------
		label, maximum, median, minimum_position, extrema, sum, mean, variance,
		standard_deviation
		
		Notes
		-----
		The function returns a Python list and not a Numpy array, use
		`np.array` to convert the list to an array.
		
		Examples
		--------
		>>> a = np.array([[1, 2, 0, 0],
		...               [5, 3, 0, 4],
		...               [0, 0, 0, 7],
		...               [9, 3, 0, 0]])
		>>> labels, labels_nb = ndimage.label(a)
		>>> labels
		array([[1, 1, 0, 0],
		       [1, 1, 0, 2],
		       [0, 0, 0, 2],
		       [3, 3, 0, 0]])
		>>> ndimage.minimum(a, labels=labels, index=np.arange(1, labels_nb + 1))
		[1.0, 4.0, 3.0]
		>>> ndimage.minimum(a)
		0.0
		>>> ndimage.minimum(a, labels=labels)
		1.0
	**/
	static public function minimum(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Find the positions of the minimums of the values of an array at labels.
		
		Parameters
		----------
		input : array_like
		    Array_like of values.
		labels : array_like, optional
		    An array of integers marking different regions over which the
		    position of the minimum value of `input` is to be computed.
		    `labels` must have the same shape as `input`. If `labels` is not
		    specified, the location of the first minimum over the whole
		    array is returned.
		
		    The `labels` argument only works when `index` is specified.
		index : array_like, optional
		    A list of region labels that are taken into account for finding the
		    location of the minima. If `index` is None, the ``first`` minimum
		    over all elements where `labels` is non-zero is returned.
		
		    The `index` argument only works when `labels` is specified.
		
		Returns
		-------
		output : list of tuples of ints
		    Tuple of ints or list of tuples of ints that specify the location
		    of minima of `input` over the regions determined by `labels` and
		    whose index is in `index`.
		
		    If `index` or `labels` are not specified, a tuple of ints is
		    returned specifying the location of the first minimal value of `input`.
		
		See also
		--------
		label, minimum, median, maximum_position, extrema, sum, mean, variance,
		standard_deviation
	**/
	static public function minimum_position(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Calculate the standard deviation of the values of an n-D image array,
		optionally at specified sub-regions.
		
		Parameters
		----------
		input : array_like
		    Nd-image data to process.
		labels : array_like, optional
		    Labels to identify sub-regions in `input`.
		    If not None, must be same shape as `input`.
		index : int or sequence of ints, optional
		    `labels` to include in output.  If None (default), all values where
		    `labels` is non-zero are used.
		
		Returns
		-------
		standard_deviation : float or ndarray
		    Values of standard deviation, for each sub-region if `labels` and
		    `index` are specified.
		
		See Also
		--------
		label, variance, maximum, minimum, extrema
		
		Examples
		--------
		>>> a = np.array([[1, 2, 0, 0],
		                  [5, 3, 0, 4],
		                  [0, 0, 0, 7],
		                  [9, 3, 0, 0]])
		>>> from scipy import ndimage
		>>> ndimage.standard_deviation(a)
		2.7585095613392387
		
		Features to process can be specified using `labels` and `index`:
		
		>>> lbl, nlbl = ndimage.label(a)
		>>> ndimage.standard_deviation(a, lbl, index=np.arange(1, nlbl+1))
		array([ 1.479,  1.5  ,  3.   ])
		
		If no index is given, non-zero `labels` are processed:
		
		>>> ndimage.standard_deviation(a, lbl)
		2.4874685927665499
	**/
	static public function standard_deviation(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Calculate the sum of the values of the array.
		
		Parameters
		----------
		input : array_like
		    Values of `input` inside the regions defined by `labels`
		    are summed together.
		labels : array_like of ints, optional
		    Assign labels to the values of the array. Has to have the same shape as
		    `input`.
		index : array_like, optional
		    A single label number or a sequence of label numbers of
		    the objects to be measured.
		
		Returns
		-------
		sum : ndarray or scalar
		    An array of the sums of values of `input` inside the regions defined
		    by `labels` with the same shape as `index`. If 'index' is None or scalar,
		    a scalar is returned.
		
		See also
		--------
		mean, median
		
		Examples
		--------
		>>> input =  [0,1,2,3]
		>>> labels = [1,1,2,2]
		>>> sum(input, labels, index=[1,2])
		[1.0, 5.0]
		>>> sum(input, labels, index=1)
		1
		>>> sum(input, labels)
		6
	**/
	static public function sum(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Calculate the variance of the values of an n-D image array, optionally at
		specified sub-regions.
		
		Parameters
		----------
		input : array_like
		    Nd-image data to process.
		labels : array_like, optional
		    Labels defining sub-regions in `input`.
		    If not None, must be same shape as `input`.
		index : int or sequence of ints, optional
		    `labels` to include in output.  If None (default), all values where
		    `labels` is non-zero are used.
		
		Returns
		-------
		variance : float or ndarray
		    Values of variance, for each sub-region if `labels` and `index` are
		    specified.
		
		See Also
		--------
		label, standard_deviation, maximum, minimum, extrema
		
		Examples
		--------
		>>> a = np.array([[1, 2, 0, 0],
		                  [5, 3, 0, 4],
		                  [0, 0, 0, 7],
		                  [9, 3, 0, 0]])
		>>> from scipy import ndimage
		>>> ndimage.variance(a)
		7.609375
		
		Features to process can be specified using `labels` and `index`:
		
		>>> lbl, nlbl = ndimage.label(a)
		>>> ndimage.variance(a, lbl, index=np.arange(1, nlbl+1))
		array([ 2.1875,  2.25  ,  9.    ])
		
		If no index is given, all non-zero `labels` are processed:
		
		>>> ndimage.variance(a, lbl)
		6.1875
	**/
	static public function variance(input:Dynamic, ?labels:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Apply watershed from markers using image foresting transform algorithm.
		
		Parameters
		----------
		input : array_like
		    Input.
		markers : array_like
		    Markers are points within each watershed that form the beginning
		    of the process.  Negative markers are considered background markers
		    which are processed after the other markers.
		structure : structure element, optional
		    A structuring element defining the connectivity of the object can be
		    provided. If None, an element is generated with a squared
		    connectivity equal to one.
		output : ndarray, optional
		    An output array can optionally be provided.  The same shape as input.
		
		Returns
		-------
		watershed_ift : ndarray
		    Output.  Same shape as `input`.
		
		References
		----------
		.. [1] A.X. Falcao, J. Stolfi and R. de Alencar Lotufo, "The image
		       foresting transform: theory, algorithms, and applications",
		       Pattern Analysis and Machine Intelligence, vol. 26, pp. 19-29, 2004.
	**/
	static public function watershed_ift(input:Dynamic, markers:Dynamic, ?structure:Dynamic, ?output:Dynamic):Dynamic;
}