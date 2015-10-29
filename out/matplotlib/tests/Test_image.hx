/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_image") extern class Test_image {
	static public var HAS_PIL : Dynamic;
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
		Raises an AssertionError if two objects are not equal up to desired
		precision.
		
		.. note:: It is recommended to use one of `assert_allclose`,
		          `assert_array_almost_equal_nulp` or `assert_array_max_ulp`
		          instead of this function for more consistent floating point
		          comparisons.
		
		The test verifies identical shapes and verifies values with
		``abs(desired-actual) < 0.5 * 10**(-decimal)``.
		
		Given two array_like objects, check that the shape is equal and all
		elements of these objects are almost equal. An exception is raised at
		shape mismatch or conflicting values. In contrast to the standard usage
		in numpy, NaNs are compared like numbers, no assertion is raised if
		both objects have NaNs in the same positions.
		
		Parameters
		----------
		x : array_like
		    The actual object to check.
		y : array_like
		    The desired, expected object.
		decimal : int, optional
		    Desired precision, default is 6.
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
		the first assert does not raise an exception
		
		>>> np.testing.assert_array_almost_equal([1.0,2.333,np.nan],
		                                         [1.0,2.333,np.nan])
		
		>>> np.testing.assert_array_almost_equal([1.0,2.33333,np.nan],
		...                                      [1.0,2.33339,np.nan], decimal=5)
		...
		<type 'exceptions.AssertionError'>:
		AssertionError:
		Arrays are not almost equal
		<BLANKLINE>
		(mismatch 50.0%)
		 x: array([ 1.     ,  2.33333,      NaN])
		 y: array([ 1.     ,  2.33339,      NaN])
		
		>>> np.testing.assert_array_almost_equal([1.0,2.33333,np.nan],
		...                                      [1.0,2.33333, 5], decimal=5)
		<type 'exceptions.ValueError'>:
		ValueError:
		Arrays are not almost equal
		 x: array([ 1.     ,  2.33333,      NaN])
		 y: array([ 1.     ,  2.33333,  5.     ])
	**/
	static public function assert_array_almost_equal(x:Dynamic, y:Dynamic, ?decimal:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
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
		Fail unless an exception of class expected_exception is raised
		by the callable when invoked with specified positional and
		keyword arguments. If a different type of exception is
		raised, it will not be caught, and the test case will be
		deemed to have suffered an error, exactly as for an
		unexpected exception.
		
		If called with the callable and arguments omitted, will return a
		context object used like this::
		
		     with self.assertRaises(SomeException):
		         do_something()
		
		An optional keyword argument 'msg' can be provided when assertRaises
		is used as a context object.
		
		The context manager keeps a reference to the exception as
		the 'exception' attribute. This allows you to inspect the
		exception after the assertion::
		
		    with self.assertRaises(SomeException) as cm:
		        do_something()
		    the_exception = cm.exception
		    self.assertEqual(the_exception.error_code, 3)
	**/
	static public function assert_raises(expected_exception:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function cleanup(func:Dynamic):Dynamic;
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
	/**
		Read an image from a file into an array.
		
		*fname* may be a string path or a Python file-like object.  If
		using a file object, it must be opened in binary mode.
		
		If *format* is provided, will try to read file of that type,
		otherwise the format is deduced from the filename.  If nothing can
		be deduced, PNG is tried.
		
		Return value is a :class:`numpy.array`.  For grayscale images, the
		return array is MxN.  For RGB images, the return value is MxNx3.
		For RGBA images the return value is MxNx4.
		
		matplotlib can only read PNGs natively, but if `PIL
		<http://www.pythonware.com/products/pil/>`_ is installed, it will
		use it to load the image and return an array (if possible) which
		can be used with :func:`~matplotlib.pyplot.imshow`.
	**/
	static public function imread(fname:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Assume a will fail if *fail_condition* is True. *fail_condition*
		may also be False or the string 'indeterminate'.
		
		*msg* is the error message displayed for the test.
		
		If *known_exception_class* is not None, the failure is only known
		if the exception is an instance of this class. (Default = None)
	**/
	static public function knownfailureif(fail_condition:Dynamic, ?msg:Dynamic, ?known_exception_class:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public function test_image_edges():Dynamic;
	static public function test_image_python_io():Dynamic;
	static public function test_imread_pil_uint16(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_imsave():Dynamic;
	static public function test_imsave_color_alpha():Dynamic;
	static public var unicode_literals : Dynamic;
}