/* This file is generated, do not edit! */
package pandas.core.config_init;
@:pythonImport("pandas.core.config_init") extern class Config_init_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _xls_options : Dynamic;
	static public var _xlsm_options : Dynamic;
	static public var _xlsx_options : Dynamic;
	static public var chained_assignment : Dynamic;
	static public var colheader_justify_doc : Dynamic;
	/**
		Try to find the most capable encoding supported by the console.
		slightly modified from the way IPython handles the same issue.
	**/
	static public function detect_console_encoding():Dynamic;
	static public var float_format_doc : Dynamic;
	static public function is_bool(x:Dynamic):Dynamic;
	/**
		Parameters
		----------
		`obj` - the object to be checked
		
		Returns
		-------
		validator - returns True if object is callable
		    raises ValueError otherwise.
	**/
	static public function is_callable(obj:Dynamic):Dynamic;
	/**
		Parameters
		----------
		`_type` - the type to be checked against
		
		Returns
		-------
		validator - a function of a single argument x , which raises
		            ValueError if x is not an instance of `_type`
	**/
	static public function is_instance_factory(_type:Dynamic):Dynamic;
	static public function is_int(x:Dynamic):Dynamic;
	static public function is_one_of_factory(legal_values:Dynamic):Dynamic;
	/**
		Detect if Python is running in a terminal.
		
		Returns True if Python is running in a terminal or False if not.
	**/
	static public function is_terminal():Dynamic;
	static public function is_text(x:Dynamic):Dynamic;
	static public var max_cols : Dynamic;
	static public var max_colwidth_doc : Dynamic;
	static public var parquet_engine_doc : Dynamic;
	static public var pc_ambiguous_as_wide_doc : Dynamic;
	static public var pc_chop_threshold_doc : Dynamic;
	static public var pc_colspace_doc : Dynamic;
	static public var pc_date_dayfirst_doc : Dynamic;
	static public var pc_date_yearfirst_doc : Dynamic;
	static public var pc_east_asian_width_doc : Dynamic;
	static public var pc_encoding_doc : Dynamic;
	static public var pc_expand_repr_doc : Dynamic;
	static public var pc_html_border_deprecation_warning : Dynamic;
	static public var pc_html_border_doc : Dynamic;
	static public var pc_html_use_mathjax_doc : Dynamic;
	static public var pc_large_repr_doc : Dynamic;
	static public var pc_latex_escape : Dynamic;
	static public var pc_latex_longtable : Dynamic;
	static public var pc_latex_multicolumn : Dynamic;
	static public var pc_latex_multicolumn_format : Dynamic;
	static public var pc_latex_multirow : Dynamic;
	static public var pc_latex_repr_doc : Dynamic;
	static public var pc_max_categories_doc : Dynamic;
	static public var pc_max_cols_doc : Dynamic;
	static public var pc_max_info_cols_doc : Dynamic;
	static public var pc_max_info_rows_doc : Dynamic;
	static public var pc_max_rows_doc : Dynamic;
	static public var pc_max_seq_items : Dynamic;
	static public var pc_memory_usage_doc : Dynamic;
	static public var pc_multi_sparse_doc : Dynamic;
	static public var pc_nb_repr_h_doc : Dynamic;
	static public var pc_pprint_nest_depth : Dynamic;
	static public var pc_precision_doc : Dynamic;
	static public var pc_show_dimensions_doc : Dynamic;
	static public var pc_table_schema_doc : Dynamic;
	static public var pc_width_doc : Dynamic;
	static public function register_converter_cb(key:Dynamic):Dynamic;
	static public var register_converter_doc : Dynamic;
	static public var style_backup : Dynamic;
	static public function table_schema_cb(key:Dynamic):Dynamic;
	static public var tc_sim_interactive_doc : Dynamic;
	static public function use_bottleneck_cb(key:Dynamic):Dynamic;
	static public var use_bottleneck_doc : Dynamic;
	static public function use_inf_as_na_cb(key:Dynamic):Dynamic;
	static public var use_inf_as_na_doc : Dynamic;
	static public var use_inf_as_null_doc : Dynamic;
	static public function use_numexpr_cb(key:Dynamic):Dynamic;
	static public var use_numexpr_doc : Dynamic;
	static public var writer_engine_doc : Dynamic;
}