/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_backend_svg") extern class Test_backend_svg {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var print_function : Dynamic;
	static public function test_text_urls():Dynamic;
	static public function test_visibility():Dynamic;
	static public var unicode_literals : Dynamic;
}