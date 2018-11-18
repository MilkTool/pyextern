/* This file is generated, do not edit! */
package pandas.core.reshape.api;
@:pythonImport("pandas.core.reshape.api") extern class Api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concatenate pandas objects along a particular axis with optional set logic
		along the other axes.
		
		Can also add a layer of hierarchical indexing on the concatenation axis,
		which may be useful if the labels are the same (or overlapping) on
		the passed axis number.
		
		Parameters
		----------
		objs : a sequence or mapping of Series, DataFrame, or Panel objects
		    If a dict is passed, the sorted keys will be used as the `keys`
		    argument, unless it is passed, in which case the values will be
		    selected (see below). Any None objects will be dropped silently unless
		    they are all None in which case a ValueError will be raised
		axis : {0/'index', 1/'columns'}, default 0
		    The axis to concatenate along
		join : {'inner', 'outer'}, default 'outer'
		    How to handle indexes on other axis(es)
		join_axes : list of Index objects
		    Specific indexes to use for the other n - 1 axes instead of performing
		    inner/outer set logic
		ignore_index : boolean, default False
		    If True, do not use the index values along the concatenation axis. The
		    resulting axis will be labeled 0, ..., n - 1. This is useful if you are
		    concatenating objects where the concatenation axis does not have
		    meaningful indexing information. Note the index values on the other
		    axes are still respected in the join.
		keys : sequence, default None
		    If multiple levels passed, should contain tuples. Construct
		    hierarchical index using the passed keys as the outermost level
		levels : list of sequences, default None
		    Specific levels (unique values) to use for constructing a
		    MultiIndex. Otherwise they will be inferred from the keys
		names : list, default None
		    Names for the levels in the resulting hierarchical index
		verify_integrity : boolean, default False
		    Check whether the new concatenated axis contains duplicates. This can
		    be very expensive relative to the actual data concatenation
		sort : boolean, default None
		    Sort non-concatenation axis if it is not already aligned when `join`
		    is 'outer'. The current default of sorting is deprecated and will
		    change to not-sorting in a future version of pandas.
		
		    Explicitly pass ``sort=True`` to silence the warning and sort.
		    Explicitly pass ``sort=False`` to silence the warning and not sort.
		
		    This has no effect when ``join='inner'``, which already preserves
		    the order of the non-concatenation axis.
		
		    .. versionadded:: 0.23.0
		
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		
		Returns
		-------
		concatenated : object, type of objs
		    When concatenating all ``Series`` along the index (axis=0), a
		    ``Series`` is returned. When ``objs`` contains at least one
		    ``DataFrame``, a ``DataFrame`` is returned. When concatenating along
		    the columns (axis=1), a ``DataFrame`` is returned.
		
		Notes
		-----
		The keys, levels, and names arguments are all optional.
		
		A walkthrough of how this method fits in with other tools for combining
		pandas objects can be found `here
		<http://pandas.pydata.org/pandas-docs/stable/merging.html>`__.
		
		See Also
		--------
		Series.append
		DataFrame.append
		DataFrame.join
		DataFrame.merge
		
		Examples
		--------
		Combine two ``Series``.
		
		>>> s1 = pd.Series(['a', 'b'])
		>>> s2 = pd.Series(['c', 'd'])
		>>> pd.concat([s1, s2])
		0    a
		1    b
		0    c
		1    d
		dtype: object
		
		Clear the existing index and reset it in the result
		by setting the ``ignore_index`` option to ``True``.
		
		>>> pd.concat([s1, s2], ignore_index=True)
		0    a
		1    b
		2    c
		3    d
		dtype: object
		
		Add a hierarchical index at the outermost level of
		the data with the ``keys`` option.
		
		>>> pd.concat([s1, s2], keys=['s1', 's2',])
		s1  0    a
		    1    b
		s2  0    c
		    1    d
		dtype: object
		
		Label the index keys you create with the ``names`` option.
		
		>>> pd.concat([s1, s2], keys=['s1', 's2'],
		...           names=['Series name', 'Row ID'])
		Series name  Row ID
		s1           0         a
		             1         b
		s2           0         c
		             1         d
		dtype: object
		
		Combine two ``DataFrame`` objects with identical columns.
		
		>>> df1 = pd.DataFrame([['a', 1], ['b', 2]],
		...                    columns=['letter', 'number'])
		>>> df1
		  letter  number
		0      a       1
		1      b       2
		>>> df2 = pd.DataFrame([['c', 3], ['d', 4]],
		...                    columns=['letter', 'number'])
		>>> df2
		  letter  number
		0      c       3
		1      d       4
		>>> pd.concat([df1, df2])
		  letter  number
		0      a       1
		1      b       2
		0      c       3
		1      d       4
		
		Combine ``DataFrame`` objects with overlapping columns
		and return everything. Columns outside the intersection will
		be filled with ``NaN`` values.
		
		>>> df3 = pd.DataFrame([['c', 3, 'cat'], ['d', 4, 'dog']],
		...                    columns=['letter', 'number', 'animal'])
		>>> df3
		  letter  number animal
		0      c       3    cat
		1      d       4    dog
		>>> pd.concat([df1, df3])
		  animal letter  number
		0    NaN      a       1
		1    NaN      b       2
		0    cat      c       3
		1    dog      d       4
		
		Combine ``DataFrame`` objects with overlapping columns
		and return only those that are shared by passing ``inner`` to
		the ``join`` keyword argument.
		
		>>> pd.concat([df1, df3], join="inner")
		  letter  number
		0      a       1
		1      b       2
		0      c       3
		1      d       4
		
		Combine ``DataFrame`` objects horizontally along the x axis by
		passing in ``axis=1``.
		
		>>> df4 = pd.DataFrame([['bird', 'polly'], ['monkey', 'george']],
		...                    columns=['animal', 'name'])
		>>> pd.concat([df1, df4], axis=1)
		  letter  number  animal    name
		0      a       1    bird   polly
		1      b       2  monkey  george
		
		Prevent the result from including duplicate index values with the
		``verify_integrity`` option.
		
		>>> df5 = pd.DataFrame([1], index=['a'])
		>>> df5
		   0
		a  1
		>>> df6 = pd.DataFrame([2], index=['a'])
		>>> df6
		   0
		a  2
		>>> pd.concat([df5, df6], verify_integrity=True)
		Traceback (most recent call last):
		    ...
		ValueError: Indexes have overlapping values: ['a']
	**/
	static public function concat(objs:Dynamic, ?axis:Dynamic, ?join:Dynamic, ?join_axes:Dynamic, ?ignore_index:Dynamic, ?keys:Dynamic, ?levels:Dynamic, ?names:Dynamic, ?verify_integrity:Dynamic, ?sort:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Compute a simple cross-tabulation of two (or more) factors. By default
		computes a frequency table of the factors unless an array of values and an
		aggregation function are passed
		
		Parameters
		----------
		index : array-like, Series, or list of arrays/Series
		    Values to group by in the rows
		columns : array-like, Series, or list of arrays/Series
		    Values to group by in the columns
		values : array-like, optional
		    Array of values to aggregate according to the factors.
		    Requires `aggfunc` be specified.
		aggfunc : function, optional
		    If specified, requires `values` be specified as well
		rownames : sequence, default None
		    If passed, must match number of row arrays passed
		colnames : sequence, default None
		    If passed, must match number of column arrays passed
		margins : boolean, default False
		    Add row/column margins (subtotals)
		margins_name : string, default 'All'
		    Name of the row / column that will contain the totals
		    when margins is True.
		
		    .. versionadded:: 0.21.0
		
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		normalize : boolean, {'all', 'index', 'columns'}, or {0,1}, default False
		    Normalize by dividing all values by the sum of values.
		
		    - If passed 'all' or `True`, will normalize over all values.
		    - If passed 'index' will normalize over each row.
		    - If passed 'columns' will normalize over each column.
		    - If margins is `True`, will also normalize margin values.
		
		    .. versionadded:: 0.18.1
		
		
		Notes
		-----
		Any Series passed will have their name attributes used unless row or column
		names for the cross-tabulation are specified.
		
		Any input passed containing Categorical data will have **all** of its
		categories included in the cross-tabulation, even if the actual data does
		not contain any instances of a particular category.
		
		In the event that there aren't overlapping indexes an empty DataFrame will
		be returned.
		
		Examples
		--------
		>>> a = np.array(["foo", "foo", "foo", "foo", "bar", "bar",
		...               "bar", "bar", "foo", "foo", "foo"], dtype=object)
		>>> b = np.array(["one", "one", "one", "two", "one", "one",
		...               "one", "two", "two", "two", "one"], dtype=object)
		>>> c = np.array(["dull", "dull", "shiny", "dull", "dull", "shiny",
		...               "shiny", "dull", "shiny", "shiny", "shiny"],
		...               dtype=object)
		
		>>> pd.crosstab(a, [b, c], rownames=['a'], colnames=['b', 'c'])
		... # doctest: +NORMALIZE_WHITESPACE
		b   one        two
		c   dull shiny dull shiny
		a
		bar    1     2    1     0
		foo    2     2    1     2
		
		>>> foo = pd.Categorical(['a', 'b'], categories=['a', 'b', 'c'])
		>>> bar = pd.Categorical(['d', 'e'], categories=['d', 'e', 'f'])
		>>> crosstab(foo, bar)  # 'c' and 'f' are not represented in the data,
		...                     # but they still will be counted in the output
		... # doctest: +SKIP
		col_0  d  e  f
		row_0
		a      1  0  0
		b      0  1  0
		c      0  0  0
		
		Returns
		-------
		crosstab : DataFrame
	**/
	static public function crosstab(index:Dynamic, columns:Dynamic, ?values:Dynamic, ?rownames:Dynamic, ?colnames:Dynamic, ?aggfunc:Dynamic, ?margins:Dynamic, ?margins_name:Dynamic, ?dropna:Dynamic, ?normalize:Dynamic):pandas.DataFrame;
	/**
		Bin values into discrete intervals.
		
		Use `cut` when you need to segment and sort data values into bins. This
		function is also useful for going from a continuous variable to a
		categorical variable. For example, `cut` could convert ages to groups of
		age ranges. Supports binning into an equal number of bins, or a
		pre-specified array of bins.
		
		Parameters
		----------
		x : array-like
		    The input array to be binned. Must be 1-dimensional.
		bins : int, sequence of scalars, or pandas.IntervalIndex
		    The criteria to bin by.
		
		    * int : Defines the number of equal-width bins in the range of `x`. The
		      range of `x` is extended by .1% on each side to include the minimum
		      and maximum values of `x`.
		    * sequence of scalars : Defines the bin edges allowing for non-uniform
		      width. No extension of the range of `x` is done.
		    * IntervalIndex : Defines the exact bins to be used.
		
		right : bool, default True
		    Indicates whether `bins` includes the rightmost edge or not. If
		    ``right == True`` (the default), then the `bins` ``[1, 2, 3, 4]``
		    indicate (1,2], (2,3], (3,4]. This argument is ignored when
		    `bins` is an IntervalIndex.
		labels : array or bool, optional
		    Specifies the labels for the returned bins. Must be the same length as
		    the resulting bins. If False, returns only integer indicators of the
		    bins. This affects the type of the output container (see below).
		    This argument is ignored when `bins` is an IntervalIndex.
		retbins : bool, default False
		    Whether to return the bins or not. Useful when bins is provided
		    as a scalar.
		precision : int, default 3
		    The precision at which to store and display the bins labels.
		include_lowest : bool, default False
		    Whether the first interval should be left-inclusive or not.
		duplicates : {default 'raise', 'drop'}, optional
		    If bin edges are not unique, raise ValueError or drop non-uniques.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		out : pandas.Categorical, Series, or ndarray
		    An array-like object representing the respective bin for each value
		    of `x`. The type depends on the value of `labels`.
		
		    * True (default) : returns a Series for Series `x` or a
		      pandas.Categorical for all other inputs. The values stored within
		      are Interval dtype.
		
		    * sequence of scalars : returns a Series for Series `x` or a
		      pandas.Categorical for all other inputs. The values stored within
		      are whatever the type in the sequence is.
		
		    * False : returns an ndarray of integers.
		
		bins : numpy.ndarray or IntervalIndex.
		    The computed or specified bins. Only returned when `retbins=True`.
		    For scalar or sequence `bins`, this is an ndarray with the computed
		    bins. If set `duplicates=drop`, `bins` will drop non-unique bin. For
		    an IntervalIndex `bins`, this is equal to `bins`.
		
		See Also
		--------
		qcut : Discretize variable into equal-sized buckets based on rank
		    or based on sample quantiles.
		pandas.Categorical : Array type for storing data that come from a
		    fixed set of values.
		Series : One-dimensional array with axis labels (including time series).
		pandas.IntervalIndex : Immutable Index implementing an ordered,
		    sliceable set.
		
		Notes
		-----
		Any NA values will be NA in the result. Out of bounds values will be NA in
		the resulting Series or pandas.Categorical object.
		
		Examples
		--------
		Discretize into three equal-sized bins.
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3)
		... # doctest: +ELLIPSIS
		[(0.994, 3.0], (5.0, 7.0], (3.0, 5.0], (3.0, 5.0], (5.0, 7.0], ...
		Categories (3, interval[float64]): [(0.994, 3.0] < (3.0, 5.0] ...
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3, retbins=True)
		... # doctest: +ELLIPSIS
		([(0.994, 3.0], (5.0, 7.0], (3.0, 5.0], (3.0, 5.0], (5.0, 7.0], ...
		Categories (3, interval[float64]): [(0.994, 3.0] < (3.0, 5.0] ...
		array([0.994, 3.   , 5.   , 7.   ]))
		
		Discovers the same bins, but assign them specific labels. Notice that
		the returned Categorical's categories are `labels` and is ordered.
		
		>>> pd.cut(np.array([1, 7, 5, 4, 6, 3]),
		...        3, labels=["bad", "medium", "good"])
		[bad, good, medium, medium, good, bad]
		Categories (3, object): [bad < medium < good]
		
		``labels=False`` implies you just want the bins back.
		
		>>> pd.cut([0, 1, 1, 2], bins=4, labels=False)
		array([0, 1, 1, 3])
		
		Passing a Series as an input returns a Series with categorical dtype:
		
		>>> s = pd.Series(np.array([2, 4, 6, 8, 10]),
		...               index=['a', 'b', 'c', 'd', 'e'])
		>>> pd.cut(s, 3)
		... # doctest: +ELLIPSIS
		a    (1.992, 4.667]
		b    (1.992, 4.667]
		c    (4.667, 7.333]
		d     (7.333, 10.0]
		e     (7.333, 10.0]
		dtype: category
		Categories (3, interval[float64]): [(1.992, 4.667] < (4.667, ...
		
		Passing a Series as an input returns a Series with mapping value.
		It is used to map numerically to intervals based on bins.
		
		>>> s = pd.Series(np.array([2, 4, 6, 8, 10]),
		...               index=['a', 'b', 'c', 'd', 'e'])
		>>> pd.cut(s, [0, 2, 4, 6, 8, 10], labels=False, retbins=True, right=False)
		... # doctest: +ELLIPSIS
		(a    0.0
		 b    1.0
		 c    2.0
		 d    3.0
		 e    4.0
		 dtype: float64, array([0, 2, 4, 6, 8]))
		
		Use `drop` optional when bins is not unique
		
		>>> pd.cut(s, [0, 2, 4, 6, 10, 10], labels=False, retbins=True,
		...    right=False, duplicates='drop')
		... # doctest: +ELLIPSIS
		(a    0.0
		 b    1.0
		 c    2.0
		 d    3.0
		 e    3.0
		 dtype: float64, array([0, 2, 4, 6, 8]))
		
		Passing an IntervalIndex for `bins` results in those categories exactly.
		Notice that values not covered by the IntervalIndex are set to NaN. 0
		is to the left of the first bin (which is closed on the right), and 1.5
		falls between two bins.
		
		>>> bins = pd.IntervalIndex.from_tuples([(0, 1), (2, 3), (4, 5)])
		>>> pd.cut([0, 0.5, 1.5, 2.5, 4.5], bins)
		[NaN, (0, 1], NaN, (2, 3], (4, 5]]
		Categories (3, interval[int64]): [(0, 1] < (2, 3] < (4, 5]]
	**/
	static public function cut(x:Dynamic, bins:Dynamic, ?right:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic, ?include_lowest:Dynamic, ?duplicates:Dynamic):Dynamic;
	/**
		Convert categorical variable into dummy/indicator variables
		
		Parameters
		----------
		data : array-like, Series, or DataFrame
		prefix : string, list of strings, or dict of strings, default None
		    String to append DataFrame column names.
		    Pass a list with length equal to the number of columns
		    when calling get_dummies on a DataFrame. Alternatively, `prefix`
		    can be a dictionary mapping column names to prefixes.
		prefix_sep : string, default '_'
		    If appending prefix, separator/delimiter to use. Or pass a
		    list or dictionary as with `prefix.`
		dummy_na : bool, default False
		    Add a column to indicate NaNs, if False NaNs are ignored.
		columns : list-like, default None
		    Column names in the DataFrame to be encoded.
		    If `columns` is None then all the columns with
		    `object` or `category` dtype will be converted.
		sparse : bool, default False
		    Whether the dummy columns should be sparse or not.  Returns
		    SparseDataFrame if `data` is a Series or if all columns are included.
		    Otherwise returns a DataFrame with some SparseBlocks.
		drop_first : bool, default False
		    Whether to get k-1 dummies out of k categorical levels by removing the
		    first level.
		
		    .. versionadded:: 0.18.0
		
		dtype : dtype, default np.uint8
		    Data type for new columns. Only a single dtype is allowed.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		dummies : DataFrame or SparseDataFrame
		
		Examples
		--------
		>>> import pandas as pd
		>>> s = pd.Series(list('abca'))
		
		>>> pd.get_dummies(s)
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		
		>>> s1 = ['a', 'b', np.nan]
		
		>>> pd.get_dummies(s1)
		   a  b
		0  1  0
		1  0  1
		2  0  0
		
		>>> pd.get_dummies(s1, dummy_na=True)
		   a  b  NaN
		0  1  0    0
		1  0  1    0
		2  0  0    1
		
		>>> df = pd.DataFrame({'A': ['a', 'b', 'a'], 'B': ['b', 'a', 'c'],
		...                    'C': [1, 2, 3]})
		
		>>> pd.get_dummies(df, prefix=['col1', 'col2'])
		   C  col1_a  col1_b  col2_a  col2_b  col2_c
		0  1       1       0       0       1       0
		1  2       0       1       1       0       0
		2  3       1       0       0       0       1
		
		>>> pd.get_dummies(pd.Series(list('abcaa')))
		   a  b  c
		0  1  0  0
		1  0  1  0
		2  0  0  1
		3  1  0  0
		4  1  0  0
		
		>>> pd.get_dummies(pd.Series(list('abcaa')), drop_first=True)
		   b  c
		0  0  0
		1  1  0
		2  0  1
		3  0  0
		4  0  0
		
		>>> pd.get_dummies(pd.Series(list('abc')), dtype=float)
		     a    b    c
		0  1.0  0.0  0.0
		1  0.0  1.0  0.0
		2  0.0  0.0  1.0
		
		See Also
		--------
		Series.str.get_dummies
	**/
	static public function get_dummies(data:Dynamic, ?prefix:Dynamic, ?prefix_sep:Dynamic, ?dummy_na:Dynamic, ?columns:Dynamic, ?sparse:Dynamic, ?drop_first:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Reshape long-format data to wide. Generalized inverse of DataFrame.pivot
		
		Parameters
		----------
		data : DataFrame
		groups : dict
		    {new_name : list_of_columns}
		dropna : boolean, default True
		
		Examples
		--------
		>>> import pandas as pd
		>>> data = pd.DataFrame({'hr1': [514, 573], 'hr2': [545, 526],
		...                      'team': ['Red Sox', 'Yankees'],
		...                      'year1': [2007, 2007], 'year2': [2008, 2008]})
		>>> data
		   hr1  hr2     team  year1  year2
		0  514  545  Red Sox   2007   2008
		1  573  526  Yankees   2007   2008
		
		>>> pd.lreshape(data, {'year': ['year1', 'year2'], 'hr': ['hr1', 'hr2']})
		      team  year   hr
		0  Red Sox  2007  514
		1  Yankees  2007  573
		2  Red Sox  2008  545
		3  Yankees  2008  526
		
		Returns
		-------
		reshaped : DataFrame
	**/
	static public function lreshape(data:Dynamic, groups:Dynamic, ?dropna:Dynamic, ?label:Dynamic):pandas.DataFrame;
	/**
		"Unpivots" a DataFrame from wide format to long format, optionally
		leaving identifier variables set.
		
		This function is useful to massage a DataFrame into a format where one
		or more columns are identifier variables (`id_vars`), while all other
		columns, considered measured variables (`value_vars`), are "unpivoted" to
		the row axis, leaving just two non-identifier columns, 'variable' and
		'value'.
		
		
		Parameters
		----------
		frame : DataFrame
		id_vars : tuple, list, or ndarray, optional
		    Column(s) to use as identifier variables.
		value_vars : tuple, list, or ndarray, optional
		    Column(s) to unpivot. If not specified, uses all columns that
		    are not set as `id_vars`.
		var_name : scalar
		    Name to use for the 'variable' column. If None it uses
		    ``frame.columns.name`` or 'variable'.
		value_name : scalar, default 'value'
		    Name to use for the 'value' column.
		col_level : int or string, optional
		    If columns are a MultiIndex then use this level to melt.
		
		See also
		--------
		DataFrame.melt
		pivot_table
		DataFrame.pivot
		
		Examples
		--------
		>>> import pandas as pd
		>>> df = pd.DataFrame({'A': {0: 'a', 1: 'b', 2: 'c'},
		...                    'B': {0: 1, 1: 3, 2: 5},
		...                    'C': {0: 2, 1: 4, 2: 6}})
		>>> df
		   A  B  C
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B', 'C'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		3  a        C      2
		4  b        C      4
		5  c        C      6
		
		The names of 'variable' and 'value' columns can be customized:
		
		>>> pd.melt(df, id_vars=['A'], value_vars=['B'],
		...         var_name='myVarname', value_name='myValname')
		   A myVarname  myValname
		0  a         B          1
		1  b         B          3
		2  c         B          5
		
		If you have multi-index columns:
		
		>>> df.columns = [list('ABC'), list('DEF')]
		>>> df
		   A  B  C
		   D  E  F
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> pd.melt(df, col_level=0, id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> pd.melt(df, id_vars=[('A', 'D')], value_vars=[('B', 'E')])
		  (A, D) variable_0 variable_1  value
		0      a          B          E      1
		1      b          B          E      3
		2      c          B          E      5
	**/
	static public function melt(frame:Dynamic, ?id_vars:Dynamic, ?value_vars:Dynamic, ?var_name:Dynamic, ?value_name:Dynamic, ?col_level:Dynamic):Dynamic;
	/**
		Merge DataFrame objects by performing a database-style join operation by
		columns or indexes.
		
		If joining columns on columns, the DataFrame indexes *will be
		ignored*. Otherwise if joining indexes on indexes or indexes on a column or
		columns, the index will be passed on.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		how : {'left', 'right', 'outer', 'inner'}, default 'inner'
		    * left: use only keys from left frame, similar to a SQL left outer join;
		      preserve key order
		    * right: use only keys from right frame, similar to a SQL right outer join;
		      preserve key order
		    * outer: use union of keys from both frames, similar to a SQL full outer
		      join; sort keys lexicographically
		    * inner: use intersection of keys from both frames, similar to a SQL inner
		      join; preserve the order of the left keys
		on : label or list
		    Column or index level names to join on. These must be found in both
		    DataFrames. If `on` is None and not merging on indexes then this defaults
		    to the intersection of the columns in both DataFrames.
		left_on : label or list, or array-like
		    Column or index level names to join on in the left DataFrame. Can also
		    be an array or list of arrays of the length of the left DataFrame.
		    These arrays are treated as if they are columns.
		right_on : label or list, or array-like
		    Column or index level names to join on in the right DataFrame. Can also
		    be an array or list of arrays of the length of the right DataFrame.
		    These arrays are treated as if they are columns.
		left_index : boolean, default False
		    Use the index from the left DataFrame as the join key(s). If it is a
		    MultiIndex, the number of keys in the other DataFrame (either the index
		    or a number of columns) must match the number of levels
		right_index : boolean, default False
		    Use the index from the right DataFrame as the join key. Same caveats as
		    left_index
		sort : boolean, default False
		    Sort the join keys lexicographically in the result DataFrame. If False,
		    the order of the join keys depends on the join type (how keyword)
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		indicator : boolean or string, default False
		    If True, adds a column to output DataFrame called "_merge" with
		    information on the source of each row.
		    If string, column with information on source of each row will be added to
		    output DataFrame, and column will be named value of string.
		    Information column is Categorical-type and takes on a value of "left_only"
		    for observations whose merge key only appears in 'left' DataFrame,
		    "right_only" for observations whose merge key only appears in 'right'
		    DataFrame, and "both" if the observation's merge key is found in both.
		
		validate : string, default None
		    If specified, checks if merge is of specified type.
		
		    * "one_to_one" or "1:1": check if merge keys are unique in both
		      left and right datasets.
		    * "one_to_many" or "1:m": check if merge keys are unique in left
		      dataset.
		    * "many_to_one" or "m:1": check if merge keys are unique in right
		      dataset.
		    * "many_to_many" or "m:m": allowed, but does not result in checks.
		
		    .. versionadded:: 0.21.0
		
		Notes
		-----
		Support for specifying index levels as the `on`, `left_on`, and
		`right_on` parameters was added in version 0.23.0
		
		Examples
		--------
		
		>>> A              >>> B
		    lkey value         rkey value
		0   foo  1         0   foo  5
		1   bar  2         1   bar  6
		2   baz  3         2   qux  7
		3   foo  4         3   bar  8
		
		>>> A.merge(B, left_on='lkey', right_on='rkey', how='outer')
		   lkey  value_x  rkey  value_y
		0  foo   1        foo   5
		1  foo   4        foo   5
		2  bar   2        bar   6
		3  bar   2        bar   8
		4  baz   3        NaN   NaN
		5  NaN   NaN      qux   7
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge_ordered
		merge_asof
		DataFrame.join
	**/
	static public function merge(left:Dynamic, right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic, ?validate:Dynamic):pandas.DataFrame;
	/**
		Perform an asof merge. This is similar to a left-join except that we
		match on nearest key rather than equal keys.
		
		Both DataFrames must be sorted by the key.
		
		For each row in the left DataFrame:
		
		  - A "backward" search selects the last row in the right DataFrame whose
		    'on' key is less than or equal to the left's key.
		
		  - A "forward" search selects the first row in the right DataFrame whose
		    'on' key is greater than or equal to the left's key.
		
		  - A "nearest" search selects the row in the right DataFrame whose 'on'
		    key is closest in absolute distance to the left's key.
		
		The default is "backward" and is compatible in versions below 0.20.0.
		The direction parameter was added in version 0.20.0 and introduces
		"forward" and "nearest".
		
		Optionally match on equivalent keys with 'by' before searching with 'on'.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label
		    Field name to join on. Must be found in both DataFrames.
		    The data MUST be ordered. Furthermore this must be a numeric column,
		    such as datetimelike, integer, or float. On or left_on/right_on
		    must be given.
		left_on : label
		    Field name to join on in left DataFrame.
		right_on : label
		    Field name to join on in right DataFrame.
		left_index : boolean
		    Use the index of the left DataFrame as the join key.
		
		    .. versionadded:: 0.19.2
		
		right_index : boolean
		    Use the index of the right DataFrame as the join key.
		
		    .. versionadded:: 0.19.2
		
		by : column name or list of column names
		    Match on these columns before performing merge operation.
		left_by : column name
		    Field names to match on in the left DataFrame.
		
		    .. versionadded:: 0.19.2
		
		right_by : column name
		    Field names to match on in the right DataFrame.
		
		    .. versionadded:: 0.19.2
		
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively.
		tolerance : integer or Timedelta, optional, default None
		    Select asof tolerance within this range; must be compatible
		    with the merge index.
		allow_exact_matches : boolean, default True
		
		    - If True, allow matching with the same 'on' value
		      (i.e. less-than-or-equal-to / greater-than-or-equal-to)
		    - If False, don't match the same 'on' value
		      (i.e., stricly less-than / strictly greater-than)
		
		direction : 'backward' (default), 'forward', or 'nearest'
		    Whether to search for prior, subsequent, or closest matches.
		
		    .. versionadded:: 0.20.0
		
		
		Returns
		-------
		merged : DataFrame
		
		Examples
		--------
		>>> left = pd.DataFrame({'a': [1, 5, 10], 'left_val': ['a', 'b', 'c']})
		>>> left
		    a left_val
		0   1        a
		1   5        b
		2  10        c
		
		>>> right = pd.DataFrame({'a': [1, 2, 3, 6, 7],
		...                       'right_val': [1, 2, 3, 6, 7]})
		>>> right
		   a  right_val
		0  1          1
		1  2          2
		2  3          3
		3  6          6
		4  7          7
		
		>>> pd.merge_asof(left, right, on='a')
		    a left_val  right_val
		0   1        a          1
		1   5        b          3
		2  10        c          7
		
		>>> pd.merge_asof(left, right, on='a', allow_exact_matches=False)
		    a left_val  right_val
		0   1        a        NaN
		1   5        b        3.0
		2  10        c        7.0
		
		>>> pd.merge_asof(left, right, on='a', direction='forward')
		    a left_val  right_val
		0   1        a        1.0
		1   5        b        6.0
		2  10        c        NaN
		
		>>> pd.merge_asof(left, right, on='a', direction='nearest')
		    a left_val  right_val
		0   1        a          1
		1   5        b          6
		2  10        c          7
		
		We can use indexed DataFrames as well.
		
		>>> left = pd.DataFrame({'left_val': ['a', 'b', 'c']}, index=[1, 5, 10])
		>>> left
		   left_val
		1         a
		5         b
		10        c
		
		>>> right = pd.DataFrame({'right_val': [1, 2, 3, 6, 7]},
		...                      index=[1, 2, 3, 6, 7])
		>>> right
		   right_val
		1          1
		2          2
		3          3
		6          6
		7          7
		
		>>> pd.merge_asof(left, right, left_index=True, right_index=True)
		   left_val  right_val
		1         a          1
		5         b          3
		10        c          7
		
		Here is a real-world times-series example
		
		>>> quotes
		                     time ticker     bid     ask
		0 2016-05-25 13:30:00.023   GOOG  720.50  720.93
		1 2016-05-25 13:30:00.023   MSFT   51.95   51.96
		2 2016-05-25 13:30:00.030   MSFT   51.97   51.98
		3 2016-05-25 13:30:00.041   MSFT   51.99   52.00
		4 2016-05-25 13:30:00.048   GOOG  720.50  720.93
		5 2016-05-25 13:30:00.049   AAPL   97.99   98.01
		6 2016-05-25 13:30:00.072   GOOG  720.50  720.88
		7 2016-05-25 13:30:00.075   MSFT   52.01   52.03
		
		>>> trades
		                     time ticker   price  quantity
		0 2016-05-25 13:30:00.023   MSFT   51.95        75
		1 2016-05-25 13:30:00.038   MSFT   51.95       155
		2 2016-05-25 13:30:00.048   GOOG  720.77       100
		3 2016-05-25 13:30:00.048   GOOG  720.92       100
		4 2016-05-25 13:30:00.048   AAPL   98.00       100
		
		By default we are taking the asof of the quotes
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker')
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 2ms between the quote time and the trade time
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker',
		...                       tolerance=pd.Timedelta('2ms'))
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
		1 2016-05-25 13:30:00.038   MSFT   51.95       155     NaN     NaN
		2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
		3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		We only asof within 10ms between the quote time and the trade time
		and we exclude exact matches on time. However *prior* data will
		propagate forward
		
		>>> pd.merge_asof(trades, quotes,
		...                       on='time',
		...                       by='ticker',
		...                       tolerance=pd.Timedelta('10ms'),
		...                       allow_exact_matches=False)
		                     time ticker   price  quantity     bid     ask
		0 2016-05-25 13:30:00.023   MSFT   51.95        75     NaN     NaN
		1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
		2 2016-05-25 13:30:00.048   GOOG  720.77       100     NaN     NaN
		3 2016-05-25 13:30:00.048   GOOG  720.92       100     NaN     NaN
		4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
		
		See also
		--------
		merge
		merge_ordered
	**/
	static public function merge_asof(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?by:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?suffixes:Dynamic, ?tolerance:Dynamic, ?allow_exact_matches:Dynamic, ?direction:Dynamic):pandas.DataFrame;
	/**
		Perform merge with optional filling/interpolation designed for ordered
		data like time series data. Optionally perform group-wise merge (see
		examples)
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		on : label or list
		    Field names to join on. Must be found in both DataFrames.
		left_on : label or list, or array-like
		    Field names to join on in left DataFrame. Can be a vector or list of
		    vectors of the length of the DataFrame to use a particular vector as
		    the join key instead of columns
		right_on : label or list, or array-like
		    Field names to join on in right DataFrame or vector/list of vectors per
		    left_on docs
		left_by : column name or list of column names
		    Group left DataFrame by group columns and merge piece by piece with
		    right DataFrame
		right_by : column name or list of column names
		    Group right DataFrame by group columns and merge piece by piece with
		    left DataFrame
		fill_method : {'ffill', None}, default None
		    Interpolation method for data
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		how : {'left', 'right', 'outer', 'inner'}, default 'outer'
		    * left: use only keys from left frame (SQL: left outer join)
		    * right: use only keys from right frame (SQL: right outer join)
		    * outer: use union of keys from both frames (SQL: full outer join)
		    * inner: use intersection of keys from both frames (SQL: inner join)
		
		    .. versionadded:: 0.19.0
		
		Examples
		--------
		>>> A                      >>> B
		      key  lvalue group        key  rvalue
		0   a       1     a        0     b       1
		1   c       2     a        1     c       2
		2   e       3     a        2     d       3
		3   a       1     b
		4   c       2     b
		5   e       3     b
		
		>>> merge_ordered(A, B, fill_method='ffill', left_by='group')
		  group key  lvalue  rvalue
		0     a   a       1     NaN
		1     a   b       1     1.0
		2     a   c       2     2.0
		3     a   d       2     3.0
		4     a   e       3     3.0
		5     b   a       1     NaN
		6     b   b       1     1.0
		7     b   c       2     2.0
		8     b   d       2     3.0
		9     b   e       3     3.0
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge
		merge_asof
	**/
	static public function merge_ordered(left:Dynamic, right:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_by:Dynamic, ?right_by:Dynamic, ?fill_method:Dynamic, ?suffixes:Dynamic, ?how:Dynamic):pandas.DataFrame;
	/**
		Produce 'pivot' table based on 3 columns of this DataFrame.
		Uses unique values from index / columns and fills with values.
		
		Parameters
		----------
		index : ndarray
		    Labels to use to make new frame's index
		columns : ndarray
		    Labels to use to make new frame's columns
		values : ndarray
		    Values to use for populating new frame's values
		
		Notes
		-----
		Obviously, all 3 of the input arguments must have the same length
		
		Returns
		-------
		DataFrame
		
		See also
		--------
		DataFrame.pivot_table : generalization of pivot that can handle
		    duplicate values for one index/column pair
	**/
	static public function pivot(index:Dynamic, columns:Dynamic, values:Dynamic):Dynamic;
	/**
		Create a spreadsheet-style pivot table as a DataFrame. The levels in
		the pivot table will be stored in MultiIndex objects (hierarchical
		indexes) on the index and columns of the result DataFrame
		
		Parameters
		----------
		data : DataFrame
		values : column to aggregate, optional
		index : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The
		    list can contain any of the other types (except list).
		    Keys to group by on the pivot table index.  If an array is passed,
		    it is being used as the same manner as column values.
		columns : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The
		    list can contain any of the other types (except list).
		    Keys to group by on the pivot table column.  If an array is passed,
		    it is being used as the same manner as column values.
		aggfunc : function, list of functions, dict, default numpy.mean
		    If list of functions passed, the resulting pivot table will have
		    hierarchical columns whose top level are the function names
		    (inferred from the function objects themselves)
		    If dict is passed, the key is column to aggregate and value
		    is function or list of functions
		fill_value : scalar, default None
		    Value to replace missing values with
		margins : boolean, default False
		    Add all row / columns (e.g. for subtotal / grand totals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		margins_name : string, default 'All'
		    Name of the row / column that will contain the totals
		    when margins is True.
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": ["foo", "foo", "foo", "foo", "foo",
		...                          "bar", "bar", "bar", "bar"],
		...                    "B": ["one", "one", "one", "two", "two",
		...                          "one", "one", "two", "two"],
		...                    "C": ["small", "large", "large", "small",
		...                          "small", "large", "small", "small",
		...                          "large"],
		...                    "D": [1, 2, 2, 3, 3, 4, 5, 6, 7]})
		>>> df
		     A    B      C  D
		0  foo  one  small  1
		1  foo  one  large  2
		2  foo  one  large  2
		3  foo  two  small  3
		4  foo  two  small  3
		5  bar  one  large  4
		6  bar  one  small  5
		7  bar  two  small  6
		8  bar  two  large  7
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum)
		>>> table
		C        large  small
		A   B
		bar one    4.0    5.0
		    two    7.0    6.0
		foo one    4.0    1.0
		    two    NaN    6.0
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum)
		>>> table
		C        large  small
		A   B
		bar one    4.0    5.0
		    two    7.0    6.0
		foo one    4.0    1.0
		    two    NaN    6.0
		
		>>> table = pivot_table(df, values=['D', 'E'], index=['A', 'C'],
		...                     aggfunc={'D': np.mean,
		...                              'E': [min, max, np.mean]})
		>>> table
		                  D   E
		               mean max median min
		A   C
		bar large  5.500000  16   14.5  13
		    small  5.500000  15   14.5  14
		foo large  2.000000  10    9.5   9
		    small  2.333333  12   11.0   8
		
		Returns
		-------
		table : DataFrame
		
		See also
		--------
		DataFrame.pivot : pivot without aggregation that can handle
		    non-numeric data
	**/
	static public function pivot_table(data:Dynamic, ?values:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?aggfunc:Dynamic, ?fill_value:Dynamic, ?margins:Dynamic, ?dropna:Dynamic, ?margins_name:Dynamic):pandas.DataFrame;
	/**
		Quantile-based discretization function. Discretize variable into
		equal-sized buckets based on rank or based on sample quantiles. For example
		1000 values for 10 quantiles would produce a Categorical object indicating
		quantile membership for each data point.
		
		Parameters
		----------
		x : 1d ndarray or Series
		q : integer or array of quantiles
		    Number of quantiles. 10 for deciles, 4 for quartiles, etc. Alternately
		    array of quantiles, e.g. [0, .25, .5, .75, 1.] for quartiles
		labels : array or boolean, default None
		    Used as labels for the resulting bins. Must be of the same length as
		    the resulting bins. If False, return only integer indicators of the
		    bins.
		retbins : bool, optional
		    Whether to return the (bins, labels) or not. Can be useful if bins
		    is given as a scalar.
		precision : int, optional
		    The precision at which to store and display the bins labels
		duplicates : {default 'raise', 'drop'}, optional
		    If bin edges are not unique, raise ValueError or drop non-uniques.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		out : Categorical or Series or array of integers if labels is False
		    The return type (Categorical or Series) depends on the input: a Series
		    of type category if input is a Series else Categorical. Bins are
		    represented as categories when categorical data is returned.
		bins : ndarray of floats
		    Returned only if `retbins` is True.
		
		Notes
		-----
		Out of bounds values will be NA in the resulting Categorical object
		
		Examples
		--------
		>>> pd.qcut(range(5), 4)
		... # doctest: +ELLIPSIS
		[(-0.001, 1.0], (-0.001, 1.0], (1.0, 2.0], (2.0, 3.0], (3.0, 4.0]]
		Categories (4, interval[float64]): [(-0.001, 1.0] < (1.0, 2.0] ...
		
		>>> pd.qcut(range(5), 3, labels=["good", "medium", "bad"])
		... # doctest: +SKIP
		[good, good, medium, bad, bad]
		Categories (3, object): [good < medium < bad]
		
		>>> pd.qcut(range(5), 4, labels=False)
		array([0, 0, 1, 2, 3])
	**/
	static public function qcut(x:Dynamic, q:Dynamic, ?labels:Dynamic, ?retbins:Dynamic, ?precision:Dynamic, ?duplicates:Dynamic):Dynamic;
	/**
		Wide panel to long format. Less flexible but more user-friendly than melt.
		
		With stubnames ['A', 'B'], this function expects to find one or more
		group of columns with format Asuffix1, Asuffix2,..., Bsuffix1, Bsuffix2,...
		You specify what you want to call this suffix in the resulting long format
		with `j` (for example `j='year'`)
		
		Each row of these wide variables are assumed to be uniquely identified by
		`i` (can be a single column name or a list of column names)
		
		All remaining variables in the data frame are left intact.
		
		Parameters
		----------
		df : DataFrame
		    The wide-format DataFrame
		stubnames : str or list-like
		    The stub name(s). The wide format variables are assumed to
		    start with the stub names.
		i : str or list-like
		    Column(s) to use as id variable(s)
		j : str
		    The name of the subobservation variable. What you wish to name your
		    suffix in the long format.
		sep : str, default ""
		    A character indicating the separation of the variable names
		    in the wide format, to be stripped from the names in the long format.
		    For example, if your column names are A-suffix1, A-suffix2, you
		    can strip the hyphen by specifying `sep='-'`
		
		    .. versionadded:: 0.20.0
		
		suffix : str, default '\\d+'
		    A regular expression capturing the wanted suffixes. '\\d+' captures
		    numeric suffixes. Suffixes with no numbers could be specified with the
		    negated character class '\\D+'. You can also further disambiguate
		    suffixes, for example, if your wide variables are of the form
		    Aone, Btwo,.., and you have an unrelated column Arating, you can
		    ignore the last one by specifying `suffix='(!?one|two)'`
		
		    .. versionadded:: 0.20.0
		
		    .. versionchanged:: 0.23.0
		        When all suffixes are numeric, they are cast to int64/float64.
		
		Returns
		-------
		DataFrame
		    A DataFrame that contains each stub name as a variable, with new index
		    (i, j)
		
		Examples
		--------
		>>> import pandas as pd
		>>> import numpy as np
		>>> np.random.seed(123)
		>>> df = pd.DataFrame({"A1970" : {0 : "a", 1 : "b", 2 : "c"},
		...                    "A1980" : {0 : "d", 1 : "e", 2 : "f"},
		...                    "B1970" : {0 : 2.5, 1 : 1.2, 2 : .7},
		...                    "B1980" : {0 : 3.2, 1 : 1.3, 2 : .1},
		...                    "X"     : dict(zip(range(3), np.random.randn(3)))
		...                   })
		>>> df["id"] = df.index
		>>> df
		  A1970 A1980  B1970  B1980         X  id
		0     a     d    2.5    3.2 -1.085631   0
		1     b     e    1.2    1.3  0.997345   1
		2     c     f    0.7    0.1  0.282978   2
		>>> pd.wide_to_long(df, ["A", "B"], i="id", j="year")
		... # doctest: +NORMALIZE_WHITESPACE
		                X  A    B
		id year
		0  1970 -1.085631  a  2.5
		1  1970  0.997345  b  1.2
		2  1970  0.282978  c  0.7
		0  1980 -1.085631  d  3.2
		1  1980  0.997345  e  1.3
		2  1980  0.282978  f  0.1
		
		With multuple id columns
		
		>>> df = pd.DataFrame({
		...     'famid': [1, 1, 1, 2, 2, 2, 3, 3, 3],
		...     'birth': [1, 2, 3, 1, 2, 3, 1, 2, 3],
		...     'ht1': [2.8, 2.9, 2.2, 2, 1.8, 1.9, 2.2, 2.3, 2.1],
		...     'ht2': [3.4, 3.8, 2.9, 3.2, 2.8, 2.4, 3.3, 3.4, 2.9]
		... })
		>>> df
		   birth  famid  ht1  ht2
		0      1      1  2.8  3.4
		1      2      1  2.9  3.8
		2      3      1  2.2  2.9
		3      1      2  2.0  3.2
		4      2      2  1.8  2.8
		5      3      2  1.9  2.4
		6      1      3  2.2  3.3
		7      2      3  2.3  3.4
		8      3      3  2.1  2.9
		>>> l = pd.wide_to_long(df, stubnames='ht', i=['famid', 'birth'], j='age')
		>>> l
		... # doctest: +NORMALIZE_WHITESPACE
		                  ht
		famid birth age
		1     1     1    2.8
		            2    3.4
		      2     1    2.9
		            2    3.8
		      3     1    2.2
		            2    2.9
		2     1     1    2.0
		            2    3.2
		      2     1    1.8
		            2    2.8
		      3     1    1.9
		            2    2.4
		3     1     1    2.2
		            2    3.3
		      2     1    2.3
		            2    3.4
		      3     1    2.1
		            2    2.9
		
		Going from long back to wide just takes some creative use of `unstack`
		
		>>> w = l.unstack()
		>>> w.columns = w.columns.map('{0[0]}{0[1]}'.format)
		>>> w.reset_index()
		   famid  birth  ht1  ht2
		0      1      1  2.8  3.4
		1      1      2  2.9  3.8
		2      1      3  2.2  2.9
		3      2      1  2.0  3.2
		4      2      2  1.8  2.8
		5      2      3  1.9  2.4
		6      3      1  2.2  3.3
		7      3      2  2.3  3.4
		8      3      3  2.1  2.9
		
		Less wieldy column names are also handled
		
		>>> np.random.seed(0)
		>>> df = pd.DataFrame({'A(quarterly)-2010': np.random.rand(3),
		...                    'A(quarterly)-2011': np.random.rand(3),
		...                    'B(quarterly)-2010': np.random.rand(3),
		...                    'B(quarterly)-2011': np.random.rand(3),
		...                    'X' : np.random.randint(3, size=3)})
		>>> df['id'] = df.index
		>>> df # doctest: +NORMALIZE_WHITESPACE, +ELLIPSIS
		   A(quarterly)-2010  A(quarterly)-2011  B(quarterly)-2010  ...
		0           0.548814           0.544883           0.437587  ...
		1           0.715189           0.423655           0.891773  ...
		2           0.602763           0.645894           0.963663  ...
		   X  id
		0  0   0
		1  1   1
		2  1   2
		
		>>> pd.wide_to_long(df, ['A(quarterly)', 'B(quarterly)'], i='id',
		...                 j='year', sep='-')
		... # doctest: +NORMALIZE_WHITESPACE
		         X  A(quarterly)  B(quarterly)
		id year
		0  2010  0      0.548814     0.437587
		1  2010  1      0.715189     0.891773
		2  2010  1      0.602763     0.963663
		0  2011  0      0.544883     0.383442
		1  2011  1      0.423655     0.791725
		2  2011  1      0.645894     0.528895
		
		If we have many columns, we could also use a regex to find our
		stubnames and pass that list on to wide_to_long
		
		>>> stubnames = sorted(
		...     set([match[0] for match in df.columns.str.findall(
		...         r'[A-B]\(.*\)').values if match != [] ])
		... )
		>>> list(stubnames)
		['A(quarterly)', 'B(quarterly)']
		
		All of the above examples have integers as suffixes. It is possible to
		have non-integers as suffixes.
		
		>>> df = pd.DataFrame({
		...     'famid': [1, 1, 1, 2, 2, 2, 3, 3, 3],
		...     'birth': [1, 2, 3, 1, 2, 3, 1, 2, 3],
		...     'ht_one': [2.8, 2.9, 2.2, 2, 1.8, 1.9, 2.2, 2.3, 2.1],
		...     'ht_two': [3.4, 3.8, 2.9, 3.2, 2.8, 2.4, 3.3, 3.4, 2.9]
		... })
		>>> df
		   birth  famid  ht_one  ht_two
		0      1      1     2.8     3.4
		1      2      1     2.9     3.8
		2      3      1     2.2     2.9
		3      1      2     2.0     3.2
		4      2      2     1.8     2.8
		5      3      2     1.9     2.4
		6      1      3     2.2     3.3
		7      2      3     2.3     3.4
		8      3      3     2.1     2.9
		
		>>> l = pd.wide_to_long(df, stubnames='ht', i=['famid', 'birth'], j='age',
		                        sep='_', suffix='\w')
		>>> l
		... # doctest: +NORMALIZE_WHITESPACE
		                  ht
		famid birth age
		1     1     one  2.8
		            two  3.4
		      2     one  2.9
		            two  3.8
		      3     one  2.2
		            two  2.9
		2     1     one  2.0
		            two  3.2
		      2     one  1.8
		            two  2.8
		      3     one  1.9
		            two  2.4
		3     1     one  2.2
		            two  3.3
		      2     one  2.3
		            two  3.4
		      3     one  2.1
		            two  2.9
		
		Notes
		-----
		All extra variables are left untouched. This simply uses
		`pandas.melt` under the hood, but is hard-coded to "do the right thing"
		in a typical case.
	**/
	static public function wide_to_long(df:Dynamic, stubnames:Dynamic, i:Dynamic, j:Dynamic, ?sep:Dynamic, ?suffix:Dynamic):Dynamic;
}