/* This file is generated, do not edit! */
package pandas.tests.test_groupby;
@:pythonImport("pandas.tests.test_groupby", "TestGroupBy") extern class TestGroupBy {
	static public var AGG_FUNCTIONS : Dynamic;
	static public var AGG_FUNCTIONS_WITH_SKIPNA : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(args:Dynamic, kwds:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
		Create an instance of the class that will use the named test
		method when executed. Raises a ValueError if the instance does
		not have a method with the specified name.
	**/
	@:native("__init__")
	public function ___init__(?methodName:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	public function _addExpectedFailure(result:Dynamic, exc_info:Dynamic):Dynamic;
	public function _addSkip(result:Dynamic, test_case:Dynamic, reason:Dynamic):Dynamic;
	public function _addUnexpectedSuccess(result:Dynamic):Dynamic;
	/**
		The default assertEqual implementation, not type specific.
	**/
	public function _baseAssertEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	static public var _classSetupFailed : Dynamic;
	public function _deprecate():Dynamic;
	static public var _diffThreshold : Dynamic;
	public function _feedErrorsToResult(result:Dynamic, errors:Dynamic):Dynamic;
	/**
		Honour the longMessage attribute when generating failure messages.
		If longMessage is False this means:
		* Use only an explicit message if it is provided
		* Otherwise use the standard message for the assert
		
		If longMessage is True:
		* Use the standard message
		* If an explicit message is provided, plus ' : ' and the explicit message
	**/
	public function _formatMessage(msg:Dynamic, standardMsg:Dynamic):Dynamic;
	/**
		Get a detailed comparison function for the types of the two args.
		
		Returns: A callable accepting (first, second, msg=None) that will
		raise a failure exception if first != second with a useful human
		readable error message for those types.
	**/
	public function _getAssertEqualityFunc(first:Dynamic, second:Dynamic):Dynamic;
	static public var _multiprocess_can_split_ : Dynamic;
	public function _truncateMessage(message:Dynamic, diff:Dynamic):Dynamic;
	/**
		Add a function, with arguments, to be called when the test is
		completed. Functions added are called on a LIFO basis and are
		called after tearDown on test failure or success.
		
		Cleanup items are called even if setUp fails (unlike tearDown).
	**/
	public function addCleanup(_function:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Add a type specific assertEqual style function to compare a type.
		
		This method is for use by TestCase subclasses that need to register
		their own type equality functions to provide nicer error messages.
		
		Args:
		    typeobj: The data type to call this function on when both values
		            are of the same type in assertEqual().
		    function: The callable taking two arguments and an optional
		            msg= argument that raises self.failureException with a
		            useful error message when the two arguments are not equal.
	**/
	public function addTypeEqualityFunc(typeobj:Dynamic, _function:Dynamic):Dynamic;
	/**
		Fail if the two objects are unequal as determined by their
		difference rounded to the given number of decimal places
		(default 7) and comparing to zero, or by comparing that the
		between the two objects is more than the given delta.
		
		Note that decimal places (from zero) are usually not the same
		as significant digits (measured from the most signficant digit).
		
		If the two objects compare equal then they will automatically
		compare almost equal.
	**/
	public function assertAlmostEqual(first:Dynamic, second:Dynamic, ?places:Dynamic, ?msg:Dynamic, ?delta:Dynamic):Dynamic;
	public function assertAlmostEquals(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		An unordered sequence comparison asserting that the same elements,
		regardless of order.  If the same element occurs more than once,
		it verifies that the elements occur the same number of times.
		
		    self.assertEqual(Counter(list(first)),
		                     Counter(list(second)))
		
		 Example:
		    - [0, 1, 1] and [1, 0, 1] compare equal.
		    - [0, 0, 1] and [0, 1] compare unequal.
	**/
	public function assertCountEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks whether dictionary is a superset of subset.
	**/
	public function assertDictContainsSubset(subset:Dynamic, dictionary:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertDictEqual(d1:Dynamic, d2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	public function assertEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertEquals(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Check that the expression is false.
	**/
	public function assertFalse(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a > b), but with a nicer default message.
	**/
	public function assertGreater(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a >= b), but with a nicer default message.
	**/
	public function assertGreaterEqual(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is in 'second'
	**/
	static public function assertIn(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is 'second'
	**/
	static public function assertIs(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Test that obj is an instance of cls
		(which can be a class or a tuple of classes,
		as supported by isinstance()).
	**/
	static public function assertIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'expr' is None
	**/
	static public function assertIsNone(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'first' is not 'second'
	**/
	static public function assertIsNot(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'expr' is not None
	**/
	static public function assertIsNotNone(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a < b), but with a nicer default message.
	**/
	public function assertLess(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Just like self.assertTrue(a <= b), but with a nicer default message.
	**/
	public function assertLessEqual(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		A list-specific equality assertion.
		
		Args:
		    list1: The first list to compare.
		    list2: The second list to compare.
		    msg: Optional message to use on failure instead of a list of
		            differences.
	**/
	public function assertListEqual(list1:Dynamic, list2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail unless a log message of level *level* or higher is emitted
		on *logger_name* or its children.  If omitted, *level* defaults to
		INFO and *logger* defaults to the root logger.
		
		This method must be used as a context manager, and will yield
		a recording object with two attributes: `output` and `records`.
		At the end of the context manager, the `output` attribute will
		be a list of the matching formatted log messages and the
		`records` attribute will be a list of the corresponding LogRecord
		objects.
		
		Example::
		
		    with self.assertLogs('foo', level='INFO') as cm:
		        logging.getLogger('foo').info('first message')
		        logging.getLogger('foo.bar').error('second message')
		    self.assertEqual(cm.output, ['INFO:foo:first message',
		                                 'ERROR:foo.bar:second message'])
	**/
	public function assertLogs(?logger:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Assert that two multi-line strings are equal.
	**/
	public function assertMultiLineEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail if the two objects are equal as determined by their
		difference rounded to the given number of decimal places
		(default 7) and comparing to zero, or by comparing that the
		between the two objects is less than the given delta.
		
		Note that decimal places (from zero) are usually not the same
		as significant digits (measured from the most signficant digit).
		
		Objects that are equal automatically fail.
	**/
	public function assertNotAlmostEqual(first:Dynamic, second:Dynamic, ?places:Dynamic, ?msg:Dynamic, ?delta:Dynamic):Dynamic;
	public function assertNotAlmostEquals(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fail if the two objects are equal as determined by the '!='
		operator.
	**/
	public function assertNotEqual(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertNotEquals(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Checks that 'first' is not in 'second'
	**/
	static public function assertNotIn(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Test that obj is not an instance of cls
		(which can be a class or a tuple of classes,
		as supported by isinstance()).
	**/
	static public function assertNotIsInstance(obj:Dynamic, cls:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail the test if the text matches the regular expression.
	**/
	public function assertNotRegex(text:Dynamic, unexpected_regex:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		assertRaises that is usable as context manager or in a with statement
		
		Exceptions that don't match the given Exception type fall through::
		
		>>> with assertRaises(ValueError):
		...     raise TypeError("banana")
		...
		Traceback (most recent call last):
		    ...
		TypeError: banana
		
		If it raises the given Exception type, the test passes
		>>> with assertRaises(KeyError):
		...     dct = dict()
		...     dct["apple"]
		
		If the expected error doesn't occur, it raises an error.
		>>> with assertRaises(KeyError):
		...     dct = {'apple':True}
		...     dct["apple"]
		Traceback (most recent call last):
		    ...
		AssertionError: KeyError not raised.
		
		In addition to using it as a contextmanager, you can also use it as a
		function, just like the normal assertRaises
		
		>>> assertRaises(TypeError, ",".join, [1, 3, 5]);
	**/
	static public function assertRaises(_exception:Dynamic, ?_callable:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Asserts that the message in a raised exception matches a regex.
		
		Args:
		    expected_exception: Exception class expected to be raised.
		    expected_regex: Regex (re pattern object or string) expected
		            to be found in error message.
		    args: Function to be called and extra positional args.
		    kwargs: Extra kwargs.
		    msg: Optional message used in case of failure. Can only be used
		            when assertRaisesRegex is used as a context manager.
	**/
	public function assertRaisesRegex(expected_exception:Dynamic, expected_regex:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Port of assertRaisesRegexp from unittest in Python 2.7 - used in with statement.
		
		Explanation from standard library:
		    Like assertRaises() but also tests that regexp matches on the string
		    representation of the raised exception. regexp may be a regular expression
		    object or a string containing a regular expression suitable for use by
		    re.search().
		
		You can pass either a regular expression or a compiled regular expression object.
		>>> assertRaisesRegexp(ValueError, 'invalid literal for.*XYZ',
		...                                int, 'XYZ');
		>>> import re
		>>> assertRaisesRegexp(ValueError, re.compile('literal'), int, 'XYZ');
		
		If an exception of a different type is raised, it bubbles up.
		
		>>> assertRaisesRegexp(TypeError, 'literal', int, 'XYZ');
		Traceback (most recent call last):
		    ...
		ValueError: invalid literal for int() with base 10: 'XYZ'
		>>> dct = dict()
		>>> assertRaisesRegexp(KeyError, 'pear', dct.__getitem__, 'apple');
		Traceback (most recent call last):
		    ...
		AssertionError: "pear" does not match "'apple'"
		
		You can also use this in a with statement.
		>>> with assertRaisesRegexp(TypeError, 'unsupported operand type\(s\)'):
		...     1 + {}
		>>> with assertRaisesRegexp(TypeError, 'banana'):
		...     'apple'[0] = 'b'
		Traceback (most recent call last):
		    ...
		AssertionError: "banana" does not match "'str' object does not support item assignment"
	**/
	static public function assertRaisesRegexp(_exception:Dynamic, _regexp:Dynamic, ?_callable:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fail the test unless the text matches the regular expression.
	**/
	public function assertRegex(text:Dynamic, expected_regex:Dynamic, ?msg:Dynamic):Dynamic;
	public function assertRegexpMatches(kwargs:Dynamic):Dynamic;
	/**
		An equality assertion for ordered sequences (like lists and tuples).
		
		For the purposes of this function, a valid ordered sequence type is one
		which can be indexed, has a length, and has an equality operator.
		
		Args:
		    seq1: The first sequence to compare.
		    seq2: The second sequence to compare.
		    seq_type: The expected datatype of the sequences, or None if no
		            datatype should be enforced.
		    msg: Optional message to use on failure instead of a list of
		            differences.
	**/
	public function assertSequenceEqual(seq1:Dynamic, seq2:Dynamic, ?msg:Dynamic, ?seq_type:Dynamic):Dynamic;
	/**
		A set-specific equality assertion.
		
		Args:
		    set1: The first set to compare.
		    set2: The second set to compare.
		    msg: Optional message to use on failure instead of a list of
		            differences.
		
		assertSetEqual uses ducktyping to support different types of sets, and
		is optimized for sets specifically (parameters must support a
		difference method).
	**/
	public function assertSetEqual(set1:Dynamic, set2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Check that the expression is true.
	**/
	public function assertTrue(expr:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		A tuple-specific equality assertion.
		
		Args:
		    tuple1: The first tuple to compare.
		    tuple2: The second tuple to compare.
		    msg: Optional message to use on failure instead of a list of
		            differences.
	**/
	public function assertTupleEqual(tuple1:Dynamic, tuple2:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail unless a warning of class warnClass is triggered
		by the callable when invoked with specified positional and
		keyword arguments.  If a different type of warning is
		triggered, it will not be handled: depending on the other
		warning filtering rules in effect, it might be silenced, printed
		out, or raised as an exception.
		
		If called with the callable and arguments omitted, will return a
		context object used like this::
		
		     with self.assertWarns(SomeWarning):
		         do_something()
		
		An optional keyword argument 'msg' can be provided when assertWarns
		is used as a context object.
		
		The context manager keeps a reference to the first matching
		warning as the 'warning' attribute; similarly, the 'filename'
		and 'lineno' attributes give you information about the line
		of Python code from which the warning was triggered.
		This allows you to inspect the warning after the assertion::
		
		    with self.assertWarns(SomeWarning) as cm:
		        do_something()
		    the_warning = cm.warning
		    self.assertEqual(the_warning.some_attribute, 147)
	**/
	public function assertWarns(expected_warning:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Asserts that the message in a triggered warning matches a regexp.
		Basic functioning is similar to assertWarns() with the addition
		that only warnings whose messages also match the regular expression
		are considered successful matches.
		
		Args:
		    expected_warning: Warning class expected to be triggered.
		    expected_regex: Regex (re pattern object or string) expected
		            to be found in error message.
		    args: Function to be called and extra positional args.
		    kwargs: Extra kwargs.
		    msg: Optional message used in case of failure. Can only be used
		            when assertWarnsRegex is used as a context manager.
	**/
	public function assertWarnsRegex(expected_warning:Dynamic, expected_regex:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function assert_(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		checks attributes are equal. Both objects must have attribute.
		
		Parameters
		----------
		attr : str
		    Attribute name being compared.
		left : object
		right : object
		obj : str, default 'Attributes'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_attr_equal(attr:Dynamic, left:Dynamic, right:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_categorical_equal(res:Dynamic, exp:Dynamic):Dynamic;
	static public function assert_contains_all(iterable:Dynamic, dic:Dynamic):Dynamic;
	/**
		iter1, iter2: iterables that produce elements comparable with assert_almost_equal
		
		Checks that the elements are equal, but not the same object. (Does not
		check that items in sequences are also not the same object)
	**/
	static public function assert_copy(iter1:Dynamic, iter2:Dynamic, eql_kwargs:Dynamic):Dynamic;
	/**
		asserts that a equals b, like nose's assert_equal, but allows custom message to start.
		Passes a and b to format string as well. So you can use '{0}' and '{1}' to display a and b.
		
		Examples
		--------
		>>> assert_equal(2, 2, "apples")
		>>> assert_equal(5.2, 1.2, "{0} was really a dead parrot")
		Traceback (most recent call last):
		    ...
		AssertionError: 5.2 was really a dead parrot: 5.2 != 1.2
	**/
	static public function assert_equal(a:Dynamic, b:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Check that left and right DataFrame are equal.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		check_dtype : bool, default True
		    Whether to check the DataFrame dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_column_type : bool, default False
		    Whether to check the columns class, dtype and inferred_type are identical.
		check_frame_type : bool, default False
		    Whether to check the DataFrame class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_names : bool, default True
		    Whether to check the Index names attribute.
		by_blocks : bool, default False
		    Specify how to compare internal data. If False, compare by columns.
		    If True, compare by blocks.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'DataFrame'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_frame_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_column_type:Dynamic, ?check_frame_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?by_blocks:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Check that left and right Index are equal.
		
		Parameters
		----------
		left : Index
		right : Index
		exact : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_names : bool, default True
		    Whether to check the names attribute.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default True
		    Whether to compare number exactly.
		obj : str, default 'Index'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_index_equal(left:Dynamic, right:Dynamic, ?exact:Dynamic, ?check_names:Dynamic, ?check_less_precise:Dynamic, ?check_exact:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_isinstance(obj:Dynamic, class_type_or_tuple:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Checks that 'np_array' is equivalent to 'assert_equal'.
		
		This is similar to ``numpy.testing.assert_array_equal``, but can
		check equality including ``np.nan``. Two numpy arrays are regarded as
		equivalent if the arrays have equal non-NaN elements,
		and `np.nan` in corresponding locations.
	**/
	static public function assert_numpy_array_equal(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic, ?err_msg:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_panelnd_equal(left:Dynamic, right:Dynamic, ?check_panel_type:Dynamic, ?check_less_precise:Dynamic, ?assert_func:Dynamic, ?check_names:Dynamic):Dynamic;
	/**
		Context manager for running code that expects to raise (or not raise)
		warnings.  Checks that code raises the expected warning and only the
		expected warning. Pass ``False`` or ``None`` to check that it does *not*
		raise a warning. Defaults to ``exception.Warning``, baseclass of all
		Warnings. (basically a wrapper around ``warnings.catch_warnings``).
		
		>>> import warnings
		>>> with assert_produces_warning():
		...     warnings.warn(UserWarning())
		...
		>>> with assert_produces_warning(False):
		...     warnings.warn(RuntimeWarning())
		...
		Traceback (most recent call last):
		    ...
		AssertionError: Caused unexpected warning(s): ['RuntimeWarning'].
		>>> with assert_produces_warning(UserWarning):
		...     warnings.warn(RuntimeWarning())
		Traceback (most recent call last):
		    ...
		AssertionError: Did not see expected warning of class 'UserWarning'.
		
		..warn:: This is *not* thread-safe.
	**/
	static public function assert_produces_warning(?expected_warning:Dynamic, ?filter_level:Dynamic, ?clear:Dynamic, ?check_stacklevel:Dynamic):Dynamic;
	/**
		Check that left and right Series are equal.
		
		Parameters
		----------
		left : Series
		right : Series
		check_dtype : bool, default True
		    Whether to check the Series dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_series_type : bool, default False
		    Whether to check the Series class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_names : bool, default True
		    Whether to check the Series and Index names attribute.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'Series'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_series_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_series_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	public function countTestCases():Dynamic;
	/**
		Run the test without collecting errors in a TestResult
	**/
	public function debug():Dynamic;
	public function defaultTestResult():Dynamic;
	/**
		Execute all cleanup functions. Normally called for you after
		tearDown.
	**/
	public function doCleanups():Dynamic;
	/**
		Fail immediately, with the given message.
	**/
	public function fail(?msg:Dynamic):Dynamic;
	public function failIf(kwargs:Dynamic):Dynamic;
	public function failIfAlmostEqual(kwargs:Dynamic):Dynamic;
	public function failIfEqual(kwargs:Dynamic):Dynamic;
	public function failUnless(kwargs:Dynamic):Dynamic;
	public function failUnlessAlmostEqual(kwargs:Dynamic):Dynamic;
	public function failUnlessEqual(kwargs:Dynamic):Dynamic;
	public function failUnlessRaises(kwargs:Dynamic):Dynamic;
	/**
		Assertion failed.
	**/
	static public function failureException(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function id():Dynamic;
	static public var longMessage : Dynamic;
	static public var maxDiff : Dynamic;
	public function reset_display_options():Dynamic;
	public function round_trip_pickle(obj:Dynamic, ?path:Dynamic):Dynamic;
	public function run(?result:Dynamic):Dynamic;
	/**
		Hook method for setting up the test fixture before exercising it.
	**/
	public function setUp():Dynamic;
	/**
		Hook method for setting up class fixture before running tests in the class.
	**/
	static public function setUpClass():Dynamic;
	/**
		Returns a one-line description of the test, or None if no
		description has been provided.
		
		The default implementation of this method returns the first line of
		the specified test method's docstring.
	**/
	public function shortDescription():Dynamic;
	/**
		Skip this test.
	**/
	public function skipTest(reason:Dynamic):Dynamic;
	/**
		Return a context manager that will return the enclosed block
		of code in a subtest identified by the optional message and
		keyword parameters.  A failure in the subtest marks the test
		case as failed but resumes execution at the end of the enclosed
		block, allowing further test code to be executed.
	**/
	public function subTest(?msg:Dynamic, params:Dynamic):Dynamic;
	/**
		Hook method for deconstructing the test fixture after testing it.
	**/
	public function tearDown():Dynamic;
	/**
		Hook method for deconstructing the class fixture after running all tests in the class.
	**/
	static public function tearDownClass():Dynamic;
	public function test__cython_agg_general():Dynamic;
	public function test_agg_api():Dynamic;
	public function test_agg_apply_corner():Dynamic;
	public function test_agg_callables():Dynamic;
	public function test_agg_consistency():Dynamic;
	public function test_agg_datetimes_mixed():Dynamic;
	public function test_agg_grouping_is_list_tuple():Dynamic;
	public function test_agg_item_by_item_raise_typeerror():Dynamic;
	public function test_agg_multiple_functions_maintain_order():Dynamic;
	public function test_agg_multiple_functions_too_many_lambdas():Dynamic;
	public function test_agg_must_agg():Dynamic;
	public function test_agg_period_index():Dynamic;
	public function test_agg_python_multiindex():Dynamic;
	public function test_agg_regression1():Dynamic;
	public function test_agg_ser_multi_key():Dynamic;
	public function test_aggregate_item_by_item():Dynamic;
	public function test_aggregate_str_func():Dynamic;
	public function test_apply_categorical_data():Dynamic;
	public function test_apply_chunk_view():Dynamic;
	public function test_apply_concat_preserve_names():Dynamic;
	public function test_apply_corner():Dynamic;
	public function test_apply_corner_cases():Dynamic;
	public function test_apply_describe_bug():Dynamic;
	public function test_apply_frame_concat_series():Dynamic;
	public function test_apply_frame_to_series():Dynamic;
	public function test_apply_issues():Dynamic;
	public function test_apply_multiindex_fail():Dynamic;
	public function test_apply_multikey_corner():Dynamic;
	public function test_apply_no_name_column_conflict():Dynamic;
	public function test_apply_series_to_frame():Dynamic;
	public function test_apply_series_yield_constant():Dynamic;
	public function test_apply_transform():Dynamic;
	public function test_apply_typecast_fail():Dynamic;
	public function test_apply_use_categorical_name():Dynamic;
	public function test_apply_with_mixed_dtype():Dynamic;
	public function test_apply_without_copy():Dynamic;
	public function test_as_index_series_return_frame():Dynamic;
	public function test_attr_wrapper():Dynamic;
	public function test_basic():Dynamic;
	public function test_basic_regression():Dynamic;
	public function test_builtins_apply():Dynamic;
	public function test_column_select_via_attr():Dynamic;
	public function test_convert_objects_leave_decimal_alone():Dynamic;
	public function test_count():Dynamic;
	public function test_count_cross_type():Dynamic;
	public function test_count_object():Dynamic;
	public function test_count_uses_size_on_exception():Dynamic;
	public function test_cumcount():Dynamic;
	public function test_cumcount_dupe_index():Dynamic;
	public function test_cumcount_empty():Dynamic;
	public function test_cumcount_groupby_not_col():Dynamic;
	public function test_cumcount_mi():Dynamic;
	public function test_cython_agg_boolean():Dynamic;
	public function test_cython_agg_frame_columns():Dynamic;
	public function test_cython_agg_nothing_to_agg():Dynamic;
	public function test_cython_agg_nothing_to_agg_with_dates():Dynamic;
	public function test_cython_api2():Dynamic;
	public function test_cython_fail_agg():Dynamic;
	public function test_cython_grouper_series_bug_noncontig():Dynamic;
	public function test_cython_median():Dynamic;
	public function test_cythonized_aggers():Dynamic;
	public function test_datetime_count():Dynamic;
	public function test_dictify():Dynamic;
	public function test_dispatch_transform():Dynamic;
	public function test_dont_clobber_name_column():Dynamic;
	public function test_empty_groups():Dynamic;
	public function test_empty_groups_corner():Dynamic;
	public function test_fast_apply():Dynamic;
	public function test_fill_constistency():Dynamic;
	public function test_filter_against_workaround():Dynamic;
	public function test_filter_and_transform_with_multiple_non_unique_int_index():Dynamic;
	public function test_filter_and_transform_with_non_unique_float_index():Dynamic;
	public function test_filter_and_transform_with_non_unique_int_index():Dynamic;
	public function test_filter_and_transform_with_non_unique_string_index():Dynamic;
	public function test_filter_and_transform_with_non_unique_timestamp_index():Dynamic;
	public function test_filter_bad_shapes():Dynamic;
	public function test_filter_condition_raises():Dynamic;
	public function test_filter_enforces_scalarness():Dynamic;
	public function test_filter_has_access_to_grouped_cols():Dynamic;
	public function test_filter_maintains_ordering():Dynamic;
	public function test_filter_mixed_df():Dynamic;
	public function test_filter_multi_column_df():Dynamic;
	public function test_filter_multiple_timestamp():Dynamic;
	public function test_filter_nan_is_false():Dynamic;
	public function test_filter_non_bool_raises():Dynamic;
	public function test_filter_out_all_groups():Dynamic;
	public function test_filter_out_no_groups():Dynamic;
	public function test_filter_series():Dynamic;
	public function test_filter_single_column_df():Dynamic;
	public function test_filter_using_len():Dynamic;
	public function test_filter_with_axis_in_groupby():Dynamic;
	public function test_first_last_max_min_on_time_data():Dynamic;
	public function test_first_last_nth():Dynamic;
	public function test_first_last_nth_dtypes():Dynamic;
	public function test_frame_describe_multikey():Dynamic;
	public function test_frame_groupby():Dynamic;
	public function test_frame_groupby_columns():Dynamic;
	public function test_frame_multi_key_function_list():Dynamic;
	public function test_frame_set_name_single():Dynamic;
	public function test_gb_apply_list_of_unequal_len_arrays():Dynamic;
	public function test_get_group():Dynamic;
	public function test_get_group_grouped_by_tuple():Dynamic;
	public function test_getitem_list_of_columns():Dynamic;
	public function test_groupby_2d_malformed():Dynamic;
	public function test_groupby_aggregation_mixed_dtype():Dynamic;
	public function test_groupby_apply_all_none():Dynamic;
	public function test_groupby_args():Dynamic;
	public function test_groupby_as_index_agg():Dynamic;
	public function test_groupby_as_index_apply():Dynamic;
	public function test_groupby_as_index_corner():Dynamic;
	public function test_groupby_as_index_cython():Dynamic;
	public function test_groupby_as_index_series_scalar():Dynamic;
	public function test_groupby_blacklist():Dynamic;
	public function test_groupby_bounds_check():Dynamic;
	public function test_groupby_categorical():Dynamic;
	public function test_groupby_categorical_index():Dynamic;
	public function test_groupby_categorical_no_compress():Dynamic;
	public function test_groupby_categorical_two_columns():Dynamic;
	public function test_groupby_categorical_unequal_len():Dynamic;
	public function test_groupby_datetime64_32_bit():Dynamic;
	public function test_groupby_datetime_categorical():Dynamic;
	public function test_groupby_dict_mapping():Dynamic;
	public function test_groupby_dtype_inference_empty():Dynamic;
	public function test_groupby_duplicated_column_errormsg():Dynamic;
	public function test_groupby_first_datetime64():Dynamic;
	public function test_groupby_grouper():Dynamic;
	public function test_groupby_grouper_f_sanity_checked():Dynamic;
	public function test_groupby_groups_datetimeindex():Dynamic;
	public function test_groupby_groups_datetimeindex_tz():Dynamic;
	public function test_groupby_head_tail():Dynamic;
	public function test_groupby_keys_same_size_as_index():Dynamic;
	public function test_groupby_level():Dynamic;
	public function test_groupby_level_0_nonmulti():Dynamic;
	public function test_groupby_level_apply():Dynamic;
	public function test_groupby_level_index_names():Dynamic;
	public function test_groupby_level_mapper():Dynamic;
	public function test_groupby_level_with_nas():Dynamic;
	public function test_groupby_levels_and_columns():Dynamic;
	public function test_groupby_list_infer_array_like():Dynamic;
	public function test_groupby_max_datetime64():Dynamic;
	public function test_groupby_multi_corner():Dynamic;
	public function test_groupby_multi_timezone():Dynamic;
	public function test_groupby_multiindex_missing_pair():Dynamic;
	public function test_groupby_multiple_columns():Dynamic;
	public function test_groupby_multiple_key():Dynamic;
	public function test_groupby_name_propagation():Dynamic;
	public function test_groupby_nat_exclude():Dynamic;
	public function test_groupby_non_arithmetic_agg_intlike_precision():Dynamic;
	public function test_groupby_non_arithmetic_agg_types():Dynamic;
	public function test_groupby_nonobject_dtype():Dynamic;
	public function test_groupby_nonstring_columns():Dynamic;
	public function test_groupby_preserves_sort():Dynamic;
	public function test_groupby_reindex_inside_function():Dynamic;
	public function test_groupby_return_type():Dynamic;
	public function test_groupby_selection_with_methods():Dynamic;
	public function test_groupby_series_indexed_differently():Dynamic;
	public function test_groupby_series_with_name():Dynamic;
	public function test_groupby_sort_categorical():Dynamic;
	public function test_groupby_sort_categorical_datetimelike():Dynamic;
	public function test_groupby_sort_multi():Dynamic;
	public function test_groupby_sort_multiindex_series():Dynamic;
	public function test_groupby_timedelta_cython_count():Dynamic;
	public function test_groupby_transform_with_int():Dynamic;
	public function test_groupby_whitelist():Dynamic;
	public function test_groupby_whitelist_deprecations():Dynamic;
	public function test_groupby_with_empty():Dynamic;
	public function test_groupby_with_hier_columns():Dynamic;
	public function test_groupby_with_timegrouper():Dynamic;
	public function test_groupby_with_timegrouper_methods():Dynamic;
	public function test_groupby_wrong_multi_labels():Dynamic;
	public function test_grouper_creation_bug():Dynamic;
	public function test_grouper_getting_correct_binner():Dynamic;
	public function test_grouper_index_types():Dynamic;
	public function test_grouper_iter():Dynamic;
	public function test_grouper_multilevel_freq():Dynamic;
	public function test_grouping_error_on_multidim_input():Dynamic;
	public function test_grouping_is_iterable():Dynamic;
	public function test_grouping_labels():Dynamic;
	public function test_grouping_ndarray():Dynamic;
	public function test_groups():Dynamic;
	public function test_handle_dict_return_value():Dynamic;
	public function test_index_label_overlaps_location():Dynamic;
	public function test_indices_concatenation_order():Dynamic;
	public function test_int32_overflow():Dynamic;
	public function test_int64_overflow():Dynamic;
	public function test_intercept_builtin_sum():Dynamic;
	public function test_len():Dynamic;
	public function test_level_preserve_order():Dynamic;
	public function test_lexsort_indexer():Dynamic;
	public function test_lower_int_prec_count():Dynamic;
	public function test_max_min_non_numeric():Dynamic;
	public function test_max_nan_bug():Dynamic;
	public function test_more_flexible_frame_multi_function():Dynamic;
	public function test_mulitindex_passthru():Dynamic;
	public function test_multi_func():Dynamic;
	public function test_multi_function_flexible_mix():Dynamic;
	public function test_multi_iter():Dynamic;
	public function test_multi_iter_frame():Dynamic;
	public function test_multi_iter_panel():Dynamic;
	public function test_multi_key_multiple_functions():Dynamic;
	public function test_multifunc_select_col_integer_cols():Dynamic;
	public function test_multifunc_sum_bug():Dynamic;
	public function test_multiindex_columns_empty_level():Dynamic;
	public function test_multiple_functions_tuples_and_non_tuples():Dynamic;
	public function test_mutate_groups():Dynamic;
	public function test_nargsort():Dynamic;
	public function test_nlargest():Dynamic;
	public function test_no_dummy_key_names():Dynamic;
	public function test_no_mutate_but_looks_like():Dynamic;
	public function test_no_nonsense_name():Dynamic;
	public function test_non_cython_api():Dynamic;
	public function test_nonsense_func():Dynamic;
	public function test_nsmallest():Dynamic;
	public function test_nth():Dynamic;
	public function test_nth_multi_index():Dynamic;
	public function test_nth_multi_index_as_expected():Dynamic;
	public function test_numpy_groupby():Dynamic;
	public function test_nunique_with_object():Dynamic;
	public function test_omit_nuisance():Dynamic;
	public function test_omit_nuisance_python_multiple():Dynamic;
	public function test_ops_general():Dynamic;
	public function test_panel_groupby():Dynamic;
	public function test_pass_args_kwargs():Dynamic;
	public function test_rank_apply():Dynamic;
	public function test_regression_whitelist_methods():Dynamic;
	public function test_select_bad_cols():Dynamic;
	public function test_series_agg_multi_pure_python():Dynamic;
	public function test_series_agg_multikey():Dynamic;
	public function test_series_describe_multikey():Dynamic;
	public function test_series_describe_single():Dynamic;
	public function test_series_groupby_nunique():Dynamic;
	public function test_series_groupby_value_counts():Dynamic;
	public function test_series_grouper_noncontig_index():Dynamic;
	public function test_series_index_name():Dynamic;
	public function test_seriesgroupby_name_attr():Dynamic;
	public function test_set_group_name():Dynamic;
	public function test_size():Dynamic;
	public function test_skip_group_keys():Dynamic;
	public function test_sparse_friendly():Dynamic;
	public function test_tab_completion():Dynamic;
	public function test_timegrouper_get_group():Dynamic;
	public function test_timegrouper_with_reg_groups():Dynamic;
	public function test_transform():Dynamic;
	public function test_transform_broadcast():Dynamic;
	public function test_transform_bug():Dynamic;
	public function test_transform_doesnt_clobber_ints():Dynamic;
	public function test_transform_dtype():Dynamic;
	public function test_transform_exclude_nuisance():Dynamic;
	public function test_transform_fast():Dynamic;
	public function test_transform_function_aliases():Dynamic;
	public function test_transform_length():Dynamic;
	public function test_transform_mixed_type():Dynamic;
	public function test_transform_multiple():Dynamic;
	public function test_transform_select_columns():Dynamic;
	public function test_with_na():Dynamic;
	public function test_wrap_agg_out():Dynamic;
	public function test_wrap_aggregated_output_multindex():Dynamic;
}