/* This file is generated, do not edit! */
package pandas._libs.join;
@:pythonImport("pandas._libs.join") extern class Join_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _get_result_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function asof_join_backward(left_values:Dynamic, right_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_backward_on_X_by_Y(left_values:Dynamic, right_values:Dynamic, left_by_values:Dynamic, right_by_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_forward(left_values:Dynamic, right_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_forward_on_X_by_Y(left_values:Dynamic, right_values:Dynamic, left_by_values:Dynamic, right_by_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_nearest(left_values:Dynamic, right_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function asof_join_nearest_on_X_by_Y(left_values:Dynamic, right_values:Dynamic, left_by_values:Dynamic, right_by_values:Dynamic, ?allow_exact_matches:Dynamic, ?tolerance:Dynamic):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ffill_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function full_outer_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		compute a 1-d indexer that is an ordering of the passed index,
		ordered by the groups. This is a reverse of the label
		factorization process.
		
		Parameters
		----------
		index: int64 ndarray
		    mappings from group -> position
		ngroups: int64
		    number of groups
		
		return a tuple of (1-d indexer ordered by groups, group counts)
	**/
	static public function groupsort_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function inner_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_float32(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_float64(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_int32(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_int64(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_object(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function inner_join_indexer_uint64(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_float32(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_float64(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_int32(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_int64(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_object(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Two-pass algorithm for monotonic indexes. Handles many-to-one merges
	**/
	static public function left_join_indexer_uint64(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_join_indexer_unique(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_join_indexer_unique_float32(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_join_indexer_unique_float64(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_join_indexer_unique_int32(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_join_indexer_unique_int64(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_join_indexer_unique_object(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_join_indexer_unique_uint64(left:Dynamic, right:Dynamic):Dynamic;
	static public function left_outer_join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function outer_join_indexer(left:Dynamic, right:Dynamic):Dynamic;
	static public function outer_join_indexer_float32(left:Dynamic, right:Dynamic):Dynamic;
	static public function outer_join_indexer_float64(left:Dynamic, right:Dynamic):Dynamic;
	static public function outer_join_indexer_int32(left:Dynamic, right:Dynamic):Dynamic;
	static public function outer_join_indexer_int64(left:Dynamic, right:Dynamic):Dynamic;
	static public function outer_join_indexer_object(left:Dynamic, right:Dynamic):Dynamic;
	static public function outer_join_indexer_uint64(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		This dispatches to ``take`` defined on ExtensionArrays. It does not
		currently dispatch to ``SparseArray.take`` for sparse ``arr``.
		
		Parameters
		----------
		arr : array-like
		    Input array.
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indices are filed with fill_value
		axis : int, default 0
		    Axis to take from
		out : ndarray or None, default None
		    Optional output array, must be appropriate type to hold input and
		    fill_value together, if indexer has any -1 value entries; call
		    _maybe_promote to determine this type for any fill_value
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		mask_info : tuple of (ndarray, boolean)
		    If provided, value should correspond to:
		        (indexer != -1, (indexer != -1).any())
		    If not provided, it will be computed internally if necessary
		allow_fill : boolean, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		
		Returns
		-------
		subarray : array-like
		    May be the same type as the input, or cast to an ndarray.
	**/
	static public function take_nd(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?mask_info:Dynamic, ?allow_fill:Dynamic):Dynamic;
}