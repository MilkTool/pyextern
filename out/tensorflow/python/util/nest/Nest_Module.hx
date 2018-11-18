/* This file is generated, do not edit! */
package tensorflow.python.util.nest;
@:pythonImport("tensorflow.python.util.nest") extern class Nest_Module {
	static public var _DOT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the list of values from an attrs instance.
	**/
	static public function _get_attrs_values(obj:Dynamic):Dynamic;
	/**
		Returns True iff `instance` is an instance of an `attr.s` decorated class.
		
		Args:
		  instance: An instance of a Python object.
		
		Returns:
		  True if `instance` is an instance of an `attr.s` decorated class.
	**/
	static public function _is_attrs(o:Dynamic):Dynamic;
	/**
		Returns True iff `instance` is a `collections.Mapping`.
		
		Args:
		  instance: An instance of a Python object.
		
		Returns:
		  True if `instance` is a `collections.Mapping`.
	**/
	static public function _is_mapping(o:Dynamic):Dynamic;
	/**
		Returns True iff `instance` is a `namedtuple`.
		
		Args:
		  instance: An instance of a Python object.
		  strict: If True, `instance` is considered to be a `namedtuple` only if
		      it is a "plain" namedtuple. For instance, a class inheriting
		      from a `namedtuple` will be considered to be a `namedtuple`
		      iff `strict=False`.
		
		Returns:
		  True if `instance` is a `namedtuple`.
	**/
	static public function _is_namedtuple(instance:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Helper function for pack_sequence_as.
		
		Args:
		  structure: Substructure (list / tuple / dict) to mimic.
		  flat: Flattened values to output substructure for.
		  index: Index at which to start reading from flat.
		
		Returns:
		  The tuple (new_index, child), where:
		    * new_index - the updated index into `flat` having processed `structure`.
		    * packed - the subset of `flat` corresponding to `structure`,
		               having started at `index`, and packed into the same nested
		               format.
		
		Raises:
		  ValueError: if `structure` contains more elements than `flat`
		    (assuming indexing starts from `index`).
	**/
	static public function _packed_nest_with_indices(structure:Dynamic, flat:Dynamic, index:Dynamic):Dynamic;
	/**
		Returns True if the two namedtuples have the same name and fields.
	**/
	static public function _same_namedtuples(o1:Dynamic, o2:Dynamic):Dynamic;
	/**
		Converts the sequence `args` to the same type as `instance`.
		
		Args:
		  instance: an instance of `tuple`, `list`, `namedtuple`, `dict`, or
		      `collections.OrderedDict`.
		  args: elements to be converted to the `instance` type.
		
		Returns:
		  `args` with the type of `instance`.
	**/
	static public function _sequence_like(instance:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns a sorted list of the dict keys, with error if keys not sortable.
	**/
	static public function _sorted(dict_:Dynamic):Dynamic;
	/**
		Yields elements `input_tree` partially flattened up to `shallow_tree`.
	**/
	static public function _yield_flat_up_to(shallow_tree:Dynamic, input_tree:Dynamic):Dynamic;
	/**
		Yields the next value from the given iterable.
	**/
	static public function _yield_value(iterable:Dynamic):Dynamic;
	/**
		Asserts that two structures are nested in the same way.
		
		Note that namedtuples with identical name and fields are always considered
		to have the same shallow structure (even with `check_types=True`).
		For intance, this code will print `True`:
		
		```python
		def nt(a, b):
		  return collections.namedtuple('foo', 'a b')(a, b)
		print(assert_same_structure(nt(0, 1), nt(2, 3)))
		```
		
		Args:
		  nest1: an arbitrarily nested structure.
		  nest2: an arbitrarily nested structure.
		  check_types: if `True` (default) types of sequences are checked as well,
		      including the keys of dictionaries. If set to `False`, for example a
		      list and a tuple of objects will look the same if they have the same
		      size. Note that namedtuples with identical name and fields are always
		      considered to have the same shallow structure. Two types will also be
		      considered the same if they are both list subtypes (which allows "list"
		      and "_ListWrapper" from checkpointable dependency tracking to compare
		      equal).
		
		Raises:
		  ValueError: If the two structures do not have the same number of elements or
		    if the two structures are not nested in the same way.
		  TypeError: If the two structures differ in the type of sequence in any of
		    their substructures. Only possible if `check_types` is `True`.
	**/
	static public function assert_same_structure(nest1:Dynamic, nest2:Dynamic, ?check_types:Dynamic):Dynamic;
	/**
		Asserts that `shallow_tree` is a shallow structure of `input_tree`.
		
		That is, this function tests if the `input_tree` structure can be created from
		the `shallow_tree` structure by replacing its leaf nodes with deeper
		tree structures.
		
		Examples:
		
		The following code will raise an exception:
		```python
		  shallow_tree = ["a", "b"]
		  input_tree = ["c", ["d", "e"], "f"]
		  assert_shallow_structure(shallow_tree, input_tree)
		```
		
		The following code will not raise an exception:
		```python
		  shallow_tree = ["a", "b"]
		  input_tree = ["c", ["d", "e"]]
		  assert_shallow_structure(shallow_tree, input_tree)
		```
		
		Args:
		  shallow_tree: an arbitrarily nested structure.
		  input_tree: an arbitrarily nested structure.
		  check_types: if `True` (default) the sequence types of `shallow_tree` and
		    `input_tree` have to be the same. Note that even with check_types==True,
		    this function will consider two different namedtuple classes with the same
		    name and _fields attribute to be the same class.
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`. Only raised if `check_types` is `True`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
	**/
	static public function assert_shallow_structure(shallow_tree:Dynamic, input_tree:Dynamic, ?check_types:Dynamic):Dynamic;
	/**
		Returns a flat list from a given nested structure.
		
		If `nest` is not a sequence, tuple, or dict, then returns a single-element
		list: `[nest]`.
		
		In the case of dict instances, the sequence consists of the values, sorted by
		key to ensure deterministic behavior. This is true also for `OrderedDict`
		instances: their sequence order is ignored, the sorting order of keys is
		used instead. The same convention is followed in `pack_sequence_as`. This
		correctly repacks dicts and `OrderedDict`s after they have been flattened,
		and also allows flattening an `OrderedDict` and then repacking it back using
		a corresponding plain dict, or vice-versa.
		Dictionaries with non-sortable keys cannot be flattened.
		
		Users must not modify any collections used in `nest` while this function is
		running.
		
		Args:
		  nest: an arbitrarily nested structure or a scalar object. Note, numpy
		      arrays are considered scalars.
		
		Returns:
		  A Python list, the flattened version of the input.
		
		Raises:
		  TypeError: The nest is or contains a dict with non-sortable keys.
	**/
	static public function flatten(nested:Dynamic):Dynamic;
	/**
		Returns a dictionary with flattened keys and values.
		
		This function flattens the keys and values of a dictionary, which can be
		arbitrarily nested structures, and returns the flattened version of such
		structures:
		
		```python
		example_dictionary = {(4, 5, (6, 8)): ("a", "b", ("c", "d"))}
		result = {4: "a", 5: "b", 6: "c", 8: "d"}
		flatten_dict_items(example_dictionary) == result
		```
		
		The input dictionary must satisfy two properties:
		
		1. Its keys and values should have the same exact nested structure.
		2. The set of all flattened keys of the dictionary must not contain repeated
		   keys.
		
		Args:
		  dictionary: the dictionary to zip
		
		Returns:
		  The zipped dictionary.
		
		Raises:
		  TypeError: If the input is not a dictionary.
		  ValueError: If any key and value have not the same structure, or if keys are
		    not unique.
	**/
	static public function flatten_dict_items(dictionary:Dynamic):Dynamic;
	/**
		Flattens `input_tree` up to `shallow_tree`.
		
		Any further depth in structure in `input_tree` is retained as elements in the
		partially flatten output.
		
		If `shallow_tree` and `input_tree` are not sequences, this returns a
		single-element list: `[input_tree]`.
		
		Use Case:
		
		Sometimes we may wish to partially flatten a nested sequence, retaining some
		of the nested structure. We achieve this by specifying a shallow structure,
		`shallow_tree`, we wish to flatten up to.
		
		The input, `input_tree`, can be thought of as having the same structure as
		`shallow_tree`, but with leaf nodes that are themselves tree structures.
		
		Examples:
		
		```python
		input_tree = [[[2, 2], [3, 3]], [[4, 9], [5, 5]]]
		shallow_tree = [[True, True], [False, True]]
		
		flattened_input_tree = flatten_up_to(shallow_tree, input_tree)
		flattened_shallow_tree = flatten_up_to(shallow_tree, shallow_tree)
		
		# Output is:
		# [[2, 2], [3, 3], [4, 9], [5, 5]]
		# [True, True, False, True]
		```
		
		```python
		input_tree = [[('a', 1), [('b', 2), [('c', 3), [('d', 4)]]]]]
		shallow_tree = [['level_1', ['level_2', ['level_3', ['level_4']]]]]
		
		input_tree_flattened_as_shallow_tree = flatten_up_to(shallow_tree, input_tree)
		input_tree_flattened = flatten(input_tree)
		
		# Output is:
		# [('a', 1), ('b', 2), ('c', 3), ('d', 4)]
		# ['a', 1, 'b', 2, 'c', 3, 'd', 4]
		```
		
		Non-Sequence Edge Cases:
		
		```python
		flatten_up_to(0, 0)  # Output: [0]
		flatten_up_to(0, [0, 1, 2])  # Output: [[0, 1, 2]]
		flatten_up_to([0, 1, 2], 0)  # Output: TypeError
		flatten_up_to([0, 1, 2], [0, 1, 2])  # Output: [0, 1, 2]
		```
		
		Args:
		  shallow_tree: a possibly pruned structure of input_tree.
		  input_tree: an arbitrarily nested structure or a scalar object.
		    Note, numpy arrays are considered scalars.
		
		Returns:
		  A Python list, the partially flattened version of `input_tree` according to
		  the structure of `shallow_tree`.
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
	**/
	static public function flatten_up_to(shallow_tree:Dynamic, input_tree:Dynamic):Dynamic;
	/**
		Returns a list of (string path, data element) tuples.
		
		The order of tuples produced matches that of `nest.flatten`. This allows you
		to flatten a nested structure while keeping information about where in the
		structure each data element was located. See `nest.yield_flat_paths`
		for more information.
		
		Args:
		  structure: the nested structure to flatten.
		  separator: string to separate levels of hierarchy in the results, defaults
		    to '/'.
		
		Returns:
		  A list of (string, data element) tuples.
	**/
	static public function flatten_with_joined_string_paths(structure:Dynamic, ?separator:Dynamic):Dynamic;
	/**
		Generates a shallow structure from a `traverse_fn` and `structure`.
		
		`traverse_fn` must accept any possible subtree of `structure` and return
		a depth=1 structure containing `True` or `False` values, describing which
		of the top-level subtrees may be traversed.  It may also
		return scalar `True` or `False` "traversal is OK / not OK for all subtrees."
		
		Examples are available in the unit tests (nest_test.py).
		
		Args:
		  traverse_fn: Function taking a substructure and returning either a scalar
		    `bool` (whether to traverse that substructure or not) or a depth=1
		    shallow structure of the same type, describing which parts of the
		    substructure to traverse.
		  structure: The structure to traverse.
		
		Returns:
		  A shallow structure containing python bools, which can be passed to
		  `map_structure_up_to` and `flatten_up_to`.
		
		Raises:
		  TypeError: if `traverse_fn` returns a sequence for a non-sequence input,
		    or a structure with depth higher than 1 for a sequence input,
		    or if any leaf values in the returned structure or scalar are not type
		    `bool`.
	**/
	static public function get_traverse_shallow_structure(traverse_fn:Dynamic, structure:Dynamic):Dynamic;
	/**
		Returns a true if its input is a collections.Sequence (except strings).
		
		Args:
		  seq: an input sequence.
		
		Returns:
		  True if the sequence is a not a string and is a collections.Sequence or a
		  dict.
	**/
	static public function is_sequence(o:Dynamic):Dynamic;
	/**
		Applies `func` to each entry in `structure` and returns a new structure.
		
		Applies `func(x[0], x[1], ...)` where x[i] is an entry in
		`structure[i]`.  All structures in `structure` must have the same arity,
		and the return value will contain the results in the same structure.
		
		Args:
		  func: A callable that accepts as many arguments as there are structures.
		  *structure: scalar, or tuple or list of constructed scalars and/or other
		    tuples/lists, or scalars.  Note: numpy arrays are considered as scalars.
		  **check_types_dict: only valid keyword argument is `check_types`. If set to
		    `True` (default) the types of iterables within the structures have to be
		    same (e.g. `map_structure(func, [1], (1,))` raises a `TypeError`
		    exception). To allow this set this argument to `False`.
		    Note that namedtuples with identical name and fields are always
		    considered to have the same shallow structure.
		
		Returns:
		  A new structure with the same arity as `structure`, whose values correspond
		  to `func(x[0], x[1], ...)` where `x[i]` is a value in the corresponding
		  location in `structure[i]`. If there are different sequence types and
		  `check_types` is `False` the sequence types of the first structure will be
		  used.
		
		Raises:
		  TypeError: If `func` is not callable or if the structures do not match
		    each other by depth tree.
		  ValueError: If no structure is provided or if the structures do not match
		    each other by type.
		  ValueError: If wrong keyword arguments are provided.
	**/
	static public function map_structure(func:Dynamic, ?structure:python.VarArgs<Dynamic>, ?check_types_dict:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a function or op to a number of partially flattened inputs.
		
		The `inputs` are flattened up to `shallow_tree` before being mapped.
		
		Use Case:
		
		Sometimes we wish to apply a function to a partially flattened
		sequence (for example when the function itself takes sequence inputs). We
		achieve this by specifying a shallow structure, `shallow_tree` we wish to
		flatten up to.
		
		The `inputs`, can be thought of as having the same structure as
		`shallow_tree`, but with leaf nodes that are themselves tree structures.
		
		This function therefore will return something with the same base structure as
		`shallow_tree`.
		
		Examples:
		
		```python
		ab_tuple = collections.namedtuple("ab_tuple", "a, b")
		op_tuple = collections.namedtuple("op_tuple", "add, mul")
		inp_val = ab_tuple(a=2, b=3)
		inp_ops = ab_tuple(a=op_tuple(add=1, mul=2), b=op_tuple(add=2, mul=3))
		out = map_structure_up_to(inp_val, lambda val, ops: (val + ops.add) * ops.mul,
		                          inp_val, inp_ops)
		
		# Output is: ab_tuple(a=6, b=15)
		```
		
		```python
		data_list = [[2, 4, 6, 8], [[1, 3, 5, 7, 9], [3, 5, 7]]]
		name_list = ['evens', ['odds', 'primes']]
		out = map_structure_up_to(
		    name_list,
		    lambda name, sec: "first_{}_{}".format(len(sec), name),
		    name_list, data_list)
		
		# Output is: ['first_4_evens', ['first_5_odds', 'first_3_primes']]
		```
		
		Args:
		  shallow_tree: a shallow tree, common to all the inputs.
		  func: callable which will be applied to each input individually.
		  *inputs: arbitrarily nested combination of objects that are compatible with
		      shallow_tree. The function `func` is applied to corresponding
		      partially flattened elements of each input, so the function must support
		      arity of `len(inputs)`.
		
		Raises:
		  TypeError: If `shallow_tree` is a sequence but `input_tree` is not.
		  TypeError: If the sequence types of `shallow_tree` are different from
		    `input_tree`.
		  ValueError: If the sequence lengths of `shallow_tree` are different from
		    `input_tree`.
		
		Returns:
		  result of repeatedly applying `func`, with same structure as
		  `shallow_tree`.
	**/
	static public function map_structure_up_to(shallow_tree:Dynamic, func:Dynamic, ?inputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Applies `func` to each entry in `structure` and returns a new structure.
		
		Applies `func(path, x[0], x[1], ..., **kwargs)` where x[i] is an entry in
		`structure[i]` and `path` is the common path to x[i] in the structures.  All
		structures in `structure` must have the same arity, and the return value will
		contain the results in the same structure. Special kwarg `check_types`
		determines whether the types of iterables within the structure must be the
		same-- see **kwargs definition below.
		
		Args:
		  func: A callable with the signature func(path, *values, **kwargs) that is
		    evaluated on the leaves of the structure.
		  *structure: A variable number of compatible structures to process.
		  **kwargs: Optional kwargs to be passed through to func. Special kwarg
		    `check_types` is not passed to func, but instead determines whether the
		    types of iterables within the structures have to be same (e.g.,
		    `map_structure(func, [1], (1,))` raises a `TypeError` exception). By
		    default, the types must match. To allow iteration over structures of
		    different types (but common arity), set this kwarg to `False`.
		
		Returns:
		  A structure of the same form as the input structures whose leaves are the
		  result of evaluating func on corresponding leaves of the input structures.
		
		Raises:
		  TypeError: If `func` is not callable or if the structures do not match
		    each other by depth tree.
		  TypeError: If `check_types` is not `False` and the two structures differ in
		    the type of sequence in any of their substructures.
		  ValueError: If no structures are provided.
	**/
	static public function map_structure_with_paths(func:Dynamic, ?structure:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a given flattened sequence packed into a given structure.
		
		If `structure` is a scalar, `flat_sequence` must be a single-element list;
		in this case the return value is `flat_sequence[0]`.
		
		If `structure` is or contains a dict instance, the keys will be sorted to
		pack the flat sequence in deterministic order. This is true also for
		`OrderedDict` instances: their sequence order is ignored, the sorting order of
		keys is used instead. The same convention is followed in `flatten`.
		This correctly repacks dicts and `OrderedDict`s after they have been
		flattened, and also allows flattening an `OrderedDict` and then repacking it
		back using a corresponding plain dict, or vice-versa.
		Dictionaries with non-sortable keys cannot be flattened.
		
		Args:
		  structure: Nested structure, whose structure is given by nested lists,
		      tuples, and dicts. Note: numpy arrays and strings are considered
		      scalars.
		  flat_sequence: flat sequence to pack.
		
		Returns:
		  packed: `flat_sequence` converted to have the same recursive structure as
		    `structure`.
		
		Raises:
		  ValueError: If `flat_sequence` and `structure` have different
		    element counts.
		  TypeError: `structure` is or contains a dict with non-sortable keys.
	**/
	static public function pack_sequence_as(structure:Dynamic, flat_sequence:Dynamic):Dynamic;
	/**
		Yields paths for some nested structure.
		
		Paths are lists of objects which can be str-converted, which may include
		integers or other types which are used as indices in a dict.
		
		The flat list will be in the corresponding order as if you called
		`snt.nest.flatten` on the structure. This is handy for naming Tensors such
		the TF scope structure matches the tuple structure.
		
		E.g. if we have a tuple `value = Foo(a=3, b=Bar(c=23, d=42))`
		
		```shell
		>>> nest.flatten(value)
		[3, 23, 42]
		>>> list(nest.yield_flat_paths(value))
		[('a',), ('b', 'c'), ('b', 'd')]
		```
		
		```shell
		>>> list(nest.yield_flat_paths({'a': [3]}))
		[('a', 0)]
		>>> list(nest.yield_flat_paths({'a': 3}))
		[('a',)]
		```
		
		Args:
		  nest: the value to produce a flattened paths list for.
		
		Yields:
		  Tuples containing index or key values which form the path to a specific
		    leaf value in the nested structure.
	**/
	static public function yield_flat_paths(nest:Dynamic):Dynamic;
}