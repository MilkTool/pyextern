/* This file is generated, do not edit! */
package pandas.core.computation.api;
@:pythonImport("pandas.core.computation.api") extern class Api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Evaluate a Python expression as a string using various backends.
		
		The following arithmetic operations are supported: ``+``, ``-``, ``*``,
		``/``, ``**``, ``%``, ``//`` (python engine only) along with the following
		boolean operations: ``|`` (or), ``&`` (and), and ``~`` (not).
		Additionally, the ``'pandas'`` parser allows the use of :keyword:`and`,
		:keyword:`or`, and :keyword:`not` with the same semantics as the
		corresponding bitwise operators.  :class:`~pandas.Series` and
		:class:`~pandas.DataFrame` objects are supported and behave as they would
		with plain ol' Python evaluation.
		
		Parameters
		----------
		expr : str or unicode
		    The expression to evaluate. This string cannot contain any Python
		    `statements
		    <https://docs.python.org/3/reference/simple_stmts.html#simple-statements>`__,
		    only Python `expressions
		    <https://docs.python.org/3/reference/simple_stmts.html#expression-statements>`__.
		parser : string, default 'pandas', {'pandas', 'python'}
		    The parser to use to construct the syntax tree from the expression. The
		    default of ``'pandas'`` parses code slightly different than standard
		    Python. Alternatively, you can parse an expression using the
		    ``'python'`` parser to retain strict Python semantics.  See the
		    :ref:`enhancing performance <enhancingperf.eval>` documentation for
		    more details.
		engine : string or None, default 'numexpr', {'python', 'numexpr'}
		
		    The engine used to evaluate the expression. Supported engines are
		
		    - None         : tries to use ``numexpr``, falls back to ``python``
		    - ``'numexpr'``: This default engine evaluates pandas objects using
		                     numexpr for large speed ups in complex expressions
		                     with large frames.
		    - ``'python'``: Performs operations as if you had ``eval``'d in top
		                    level python. This engine is generally not that useful.
		
		    More backends may be available in the future.
		
		truediv : bool, optional
		    Whether to use true division, like in Python >= 3
		local_dict : dict or None, optional
		    A dictionary of local variables, taken from locals() by default.
		global_dict : dict or None, optional
		    A dictionary of global variables, taken from globals() by default.
		resolvers : list of dict-like or None, optional
		    A list of objects implementing the ``__getitem__`` special method that
		    you can use to inject an additional collection of namespaces to use for
		    variable lookup. For example, this is used in the
		    :meth:`~pandas.DataFrame.query` method to inject the
		    ``DataFrame.index`` and ``DataFrame.columns``
		    variables that refer to their respective :class:`~pandas.DataFrame`
		    instance attributes.
		level : int, optional
		    The number of prior stack frames to traverse and add to the current
		    scope. Most users will **not** need to change this parameter.
		target : object, optional, default None
		    This is the target object for assignment. It is used when there is
		    variable assignment in the expression. If so, then `target` must
		    support item assignment with string keys, and if a copy is being
		    returned, it must also support `.copy()`.
		inplace : bool, default False
		    If `target` is provided, and the expression mutates `target`, whether
		    to modify `target` inplace. Otherwise, return a copy of `target` with
		    the mutation.
		
		Returns
		-------
		ndarray, numeric scalar, DataFrame, Series
		
		Raises
		------
		ValueError
		    There are many instances where such an error can be raised:
		
		    - `target=None`, but the expression is multiline.
		    - The expression is multiline, but not all them have item assignment.
		      An example of such an arrangement is this:
		
		      a = b + 1
		      a + 2
		
		      Here, there are expressions on different lines, making it multiline,
		      but the last line has no variable assigned to the output of `a + 2`.
		    - `inplace=True`, but the expression is missing item assignment.
		    - Item assignment is provided, but the `target` does not support
		      string item assignment.
		    - Item assignment is provided and `inplace=False`, but the `target`
		      does not support the `.copy()` method
		
		See Also
		--------
		pandas.DataFrame.query
		pandas.DataFrame.eval
		
		Notes
		-----
		The ``dtype`` of any objects involved in an arithmetic ``%`` operation are
		recursively cast to ``float64``.
		
		See the :ref:`enhancing performance <enhancingperf.eval>` documentation for
		more details.
	**/
	static public function eval(expr:Dynamic, ?parser:Dynamic, ?engine:Dynamic, ?truediv:Dynamic, ?local_dict:Dynamic, ?global_dict:Dynamic, ?resolvers:Dynamic, ?level:Dynamic, ?target:Dynamic, ?inplace:Dynamic):Dynamic;
}