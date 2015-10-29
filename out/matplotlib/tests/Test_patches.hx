/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_patches") extern class Test_patches {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Raises an AssertionError if two items are not equal up to desired
		precision.
		
		.. note:: It is recommended to use one of `assert_allclose`,
		          `assert_array_almost_equal_nulp` or `assert_array_max_ulp`
		          instead of this function for more consistent floating point
		          comparisons.
		
		The test is equivalent to ``abs(desired-actual) < 0.5 * 10**(-decimal)``.
		
		Given two objects (numbers or ndarrays), check that all elements of these
		objects are almost equal. An exception is raised at conflicting values.
		For ndarrays this delegates to assert_array_almost_equal
		
		Parameters
		----------
		actual : array_like
		    The object to check.
		desired : array_like
		    The expected object.
		decimal : int, optional
		    Desired precision, default is 7.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		  If actual and desired are not equal up to specified precision.
		
		See Also
		--------
		assert_allclose: Compare two array_like objects for equality with desired
		                 relative and/or absolute precision.
		assert_array_almost_equal_nulp, assert_array_max_ulp, assert_equal
		
		Examples
		--------
		>>> import numpy.testing as npt
		>>> npt.assert_almost_equal(2.3333333333333, 2.33333334)
		>>> npt.assert_almost_equal(2.3333333333333, 2.33333334, decimal=10)
		...
		<type 'exceptions.AssertionError'>:
		Items are not equal:
		 ACTUAL: 2.3333333333333002
		 DESIRED: 2.3333333399999998
		
		>>> npt.assert_almost_equal(np.array([1.0,2.3333333333333]),
		...                         np.array([1.0,2.33333334]), decimal=9)
		...
		<type 'exceptions.AssertionError'>:
		Arrays are not almost equal
		<BLANKLINE>
		(mismatch 50.0%)
		 x: array([ 1.        ,  2.33333333])
		 y: array([ 1.        ,  2.33333334])
	**/
	static public function assert_almost_equal(actual:Dynamic, desired:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two array_like objects are not equal.
		
		Given two array_like objects, check that the shape is equal and all
		elements of these objects are equal. An exception is raised at
		shape mismatch or conflicting values. In contrast to the standard usage
		in numpy, NaNs are compared like numbers, no assertion is raised if
		both objects have NaNs in the same positions.
		
		The usual caution for verifying equality with floating point numbers is
		advised.
		
		Parameters
		----------
		x : array_like
		    The actual object to check.
		y : array_like
		    The desired, expected object.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		    If actual and desired objects are not equal.
		
		See Also
		--------
		assert_allclose: Compare two array_like objects for equality with desired
		                 relative and/or absolute precision.
		assert_array_almost_equal_nulp, assert_array_max_ulp, assert_equal
		
		Examples
		--------
		The first assert does not raise an exception:
		
		>>> np.testing.assert_array_equal([1.0,2.33333,np.nan],
		...                               [np.exp(0),2.33333, np.nan])
		
		Assert fails with numerical inprecision with floats:
		
		>>> np.testing.assert_array_equal([1.0,np.pi,np.nan],
		...                               [1, np.sqrt(np.pi)**2, np.nan])
		...
		<type 'exceptions.ValueError'>:
		AssertionError:
		Arrays are not equal
		<BLANKLINE>
		(mismatch 50.0%)
		 x: array([ 1.        ,  3.14159265,         NaN])
		 y: array([ 1.        ,  3.14159265,         NaN])
		
		Use `assert_allclose` or one of the nulp (number of floating point values)
		functions for these cases instead:
		
		>>> np.testing.assert_allclose([1.0,np.pi,np.nan],
		...                            [1, np.sqrt(np.pi)**2, np.nan],
		...                            rtol=1e-10, atol=0)
	**/
	static public function assert_array_equal(x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two objects are not equal.
		
		Given two objects (scalars, lists, tuples, dictionaries or numpy arrays),
		check that all elements of these objects are equal. An exception is raised
		at the first conflicting values.
		
		Parameters
		----------
		actual : array_like
		    The object to check.
		desired : array_like
		    The expected object.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		    If actual and desired are not equal.
		
		Examples
		--------
		>>> np.testing.assert_equal([4,5], [4,6])
		...
		<type 'exceptions.AssertionError'>:
		Items are not equal:
		item=1
		 ACTUAL: 5
		 DESIRED: 6
	**/
	static public function assert_equal(actual:Dynamic, desired:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		call signature::
		
		  image_comparison(baseline_images=['my_figure'], extensions=None)
		
		Compare images generated by the test with those specified in
		*baseline_images*, which must correspond else an
		ImageComparisonFailure exception will be raised.
		
		Keyword arguments:
		
		  *baseline_images*: list
		    A list of strings specifying the names of the images generated
		    by calls to :meth:`matplotlib.figure.savefig`.
		
		  *extensions*: [ None | list ]
		
		    If *None*, default to all supported extensions.
		
		    Otherwise, a list of extensions to test. For example ['png','pdf'].
		
		  *tol*: (default 13)
		    The RMS threshold above which the test is considered failed.
		
		  *freetype_version*: str or tuple
		    The expected freetype version or range of versions for this
		    test to pass.
		
		  *remove_text*: bool
		    Remove the title and tick text from the figure before
		    comparison.  This does not remove other, more deliberate,
		    text, such as legends and annotations.
		
		  *savefig_kwarg*: dict
		    Optional arguments that are passed to the savefig method.
	**/
	static public function image_comparison(?baseline_images:Dynamic, ?extensions:Dynamic, ?tol:Dynamic, ?freetype_version:Dynamic, ?remove_text:Dynamic, ?savefig_kwarg:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function test_Polygon_close():Dynamic;
	static public function test_rotate_rect():Dynamic;
	static public function test_wedge_movement():Dynamic;
	static public var unicode_literals : Dynamic;
}