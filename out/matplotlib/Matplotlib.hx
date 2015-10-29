/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib") extern class Matplotlib {
	static public var URL_REGEX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var __version__numpy__ : Dynamic;
	static public var _all_deprecated : Dynamic;
	/**
		If the config directory can not be created, create a temporary
		directory.
		
		Returns None if a writable temporary directory could not be created.
	**/
	static public function _create_tmp_config_dir():Dynamic;
	static public var _deprecated_ignore_map : Dynamic;
	static public var _deprecated_map : Dynamic;
	static public var _error_details_fmt : Dynamic;
	/**
		Return the location of the cache directory.
		
		The procedure used to find the directory is the same as for
		_get_config_dir, except using `$XDG_CACHE_HOME`/`~/.cache` instead.
	**/
	static public function _get_cachedir():Dynamic;
	static public function _get_config_or_cache_dir(xdg_base:Dynamic):Dynamic;
	/**
		Return the string representing the configuration directory.
		
		The directory is chosen as follows:
		
		1. If the MPLCONFIGDIR environment variable is supplied, choose that.
		
		2a. On Linux, if `$HOME/.matplotlib` exists, choose that, but warn that
		    that is the old location.  Barring that, follow the XDG specification
		    and look first in `$XDG_CONFIG_HOME`, if defined, or `$HOME/.config`.
		
		2b. On other platforms, choose `$HOME/.matplotlib`.
		
		3. If the chosen directory exists and is writable, use that as the
		   configuration directory.
		4. If possible, create a temporary directory, and use it as the
		   configuration directory.
		5. A writable directory could not be found or created; return None.
	**/
	static public function _get_configdir():Dynamic;
	/**
		get the path to matplotlib data
	**/
	static public function _get_data_path():Dynamic;
	static public function _get_data_path_cached():Dynamic;
	/**
		Find user's home directory if possible.
		Otherwise, returns None.
		
		:see:  http://mail.python.org/pipermail/python-list/2005-February/325395.html
	**/
	static public function _get_home():Dynamic;
	/**
		Returns the XDG cache directory, according to the `XDG
		base directory spec
		<http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html>`_.
	**/
	static public function _get_xdg_cache_dir():Dynamic;
	/**
		Returns the XDG configuration directory, according to the `XDG
		base directory spec
		<http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html>`_.
	**/
	static public function _get_xdg_config_dir():Dynamic;
	static public var _havedate : Dynamic;
	/**
		p is a string pointing to a putative writable dir -- return True p
		is such a string, else False
	**/
	static public function _is_writable_dir(p:Dynamic):Dynamic;
	static public var _obsolete_set : Dynamic;
	static public function _open_file_or_url(fname:Dynamic):Dynamic;
	static public var _python24 : Dynamic;
	/**
		Return :class:`matplotlib.RcParams` from the contents of the given file.
		
		Unlike `rc_params_from_file`, the configuration class only contains the
		parameters specified in the file (i.e. default values are not filled in).
	**/
	static public function _rc_params_in_file(fname:Dynamic, ?fail_on_error:Dynamic):Dynamic;
	static public var _rcparam_warn_str : Dynamic;
	static public function _url_lines(f:Dynamic):Dynamic;
	static public var _use_error_msg : Dynamic;
	static public var absolute_import : Dynamic;
	static public var bad_pyparsing : Dynamic;
	static public function checkdep_dvipng():Dynamic;
	static public function checkdep_ghostscript():Dynamic;
	static public function checkdep_inkscape():Dynamic;
	static public function checkdep_pdftops():Dynamic;
	static public function checkdep_ps_distiller(s:Dynamic):Dynamic;
	static public function checkdep_tex():Dynamic;
	static public function checkdep_usetex(s:Dynamic):Dynamic;
	static public function checkdep_xmllint():Dynamic;
	/**
		return True if a is greater than or equal to b
	**/
	static public function compare_versions(a:Dynamic, b:Dynamic):Dynamic;
	static public var defaultParams : Dynamic;
	static public var default_test_modules : Dynamic;
	static public var division : Dynamic;
	static public function f(?name:Dynamic):Dynamic;
	/**
		Return the name of the current backend.
	**/
	static public function get_backend():Dynamic;
	/**
		Return the location of the cache directory.
		
		The procedure used to find the directory is the same as for
		_get_config_dir, except using `$XDG_CACHE_HOME`/`~/.cache` instead.
	**/
	static public function get_cachedir(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the string representing the configuration directory.
		
		The directory is chosen as follows:
		
		1. If the MPLCONFIGDIR environment variable is supplied, choose that.
		
		2a. On Linux, if `$HOME/.matplotlib` exists, choose that, but warn that
		    that is the old location.  Barring that, follow the XDG specification
		    and look first in `$XDG_CONFIG_HOME`, if defined, or `$HOME/.config`.
		
		2b. On other platforms, choose `$HOME/.matplotlib`.
		
		3. If the chosen directory exists and is writable, use that as the
		   configuration directory.
		4. If possible, create a temporary directory, and use it as the
		   configuration directory.
		5. A writable directory could not be found or created; return None.
	**/
	static public function get_configdir(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function get_data_path(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		get_example_data is deprecated -- use matplotlib.cbook.get_sample_data instead
	**/
	static public function get_example_data(fname:Dynamic):Dynamic;
	/**
		Find user's home directory if possible.
		Otherwise, returns None.
		
		:see:  http://mail.python.org/pipermail/python-list/2005-February/325395.html
	**/
	static public function get_home(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function get_py2exe_datafiles():Dynamic;
	/**
		Set interactive mode to boolean b.
		
		If b is True, then draw after every plotting command, e.g., after xlabel
	**/
	static public function interactive(b:Dynamic):Dynamic;
	/**
		Return true if plot mode is interactive
	**/
	static public function is_interactive():Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		Return True if string is an http, ftp, or file URL path.
	**/
	static public function is_url(filename:Dynamic):Dynamic;
	static public var major : Dynamic;
	/**
		Get the location of the config file.
		
		The file location is determined in the following order
		
		- `$PWD/matplotlibrc`
		
		- environment variable `MATPLOTLIBRC`
		
		- `$MPLCONFIGDIR/matplotlib`
		
		- On Linux,
		
		      - `$HOME/.matplotlib/matplotlibrc`, if it exists
		
		      - or `$XDG_CONFIG_HOME/matplotlib/matplotlibrc` (if
		        $XDG_CONFIG_HOME is defined)
		
		      - or `$HOME/.config/matplotlib/matplotlibrc` (if
		        $XDG_CONFIG_HOME is not defined)
		
		- On other platforms,
		
		     - `$HOME/.matplotlib/matplotlibrc` if `$HOME` is defined.
		
		- Lastly, it looks in `$MATPLOTLIBDATA/matplotlibrc` for a
		  system-defined copy.
	**/
	static public function matplotlib_fname():Dynamic;
	static public var minor1 : Dynamic;
	static public var minor2 : Dynamic;
	static public var print_function : Dynamic;
	/**
		Set the current rc params.  Group is the grouping for the rc, e.g.,
		for ``lines.linewidth`` the group is ``lines``, for
		``axes.facecolor``, the group is ``axes``, and so on.  Group may
		also be a list or tuple of group names, e.g., (*xtick*, *ytick*).
		*kwargs* is a dictionary attribute name/value pairs, e.g.,::
		
		  rc('lines', linewidth=2, color='r')
		
		sets the current rc params and is equivalent to::
		
		  rcParams['lines.linewidth'] = 2
		  rcParams['lines.color'] = 'r'
		
		The following aliases are available to save typing for interactive
		users:
		
		=====   =================
		Alias   Property
		=====   =================
		'lw'    'linewidth'
		'ls'    'linestyle'
		'c'     'color'
		'fc'    'facecolor'
		'ec'    'edgecolor'
		'mew'   'markeredgewidth'
		'aa'    'antialiased'
		=====   =================
		
		Thus you could abbreviate the above rc command as::
		
		      rc('lines', lw=2, c='r')
		
		
		Note you can use python's kwargs dictionary facility to store
		dictionaries of default parameters.  e.g., you can customize the
		font rc as follows::
		
		  font = {'family' : 'monospace',
		          'weight' : 'bold',
		          'size'   : 'larger'}
		
		  rc('font', **font)  # pass in the font dict as kwargs
		
		This enables you to easily switch between several configurations.
		Use :func:`~matplotlib.pyplot.rcdefaults` to restore the default
		rc params after changes.
	**/
	static public function rc(group:Dynamic, kwargs:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public var rcParamsDefault : Dynamic;
	static public var rcParamsOrig : Dynamic;
	/**
		Update rc params from file.
	**/
	static public function rc_file(fname:Dynamic):Dynamic;
	/**
		Restore the default rc params from the original matplotlib rc that
		was loaded
	**/
	static public function rc_file_defaults():Dynamic;
	/**
		Return a :class:`matplotlib.RcParams` instance from the
		default matplotlib rc file.
	**/
	static public function rc_params(?fail_on_error:Dynamic):Dynamic;
	/**
		Return :class:`matplotlib.RcParams` from the contents of the given file.
		
		Parameters
		----------
		fname : str
		    Name of file parsed for matplotlib settings.
		fail_on_error : bool
		    If True, raise an error when the parser fails to convert a parameter.
		use_default_template : bool
		    If True, initialize with default parameters before updating with those
		    in the given file. If False, the configuration class only contains the
		    parameters specified in the file. (Useful for updating dicts.)
	**/
	static public function rc_params_from_file(fname:Dynamic, ?fail_on_error:Dynamic, ?use_default_template:Dynamic):Dynamic;
	/**
		Restore the default rc params.  These are not the params loaded by
		the rc file, but mpl's internal params.  See rc_file_defaults for
		reloading the default params from the rc file
	**/
	static public function rcdefaults():Dynamic;
	/**
		**DEPRECATED**
		
		Reload the module and return it.
		
		The module must have been successfully imported before.
	**/
	static public function reload(module:Dynamic):Dynamic;
	static public var s : Dynamic;
	/**
		run the matplotlib test suite
	**/
	static public function test(?verbosity:Dynamic):Dynamic;
	/**
		Return true if focus maintenance under TkAgg on win32 is on.
		This currently works only for python.exe and IPython.exe.
		Both IDLE and Pythonwin.exe fail badly when tk_window_focus is on.
	**/
	static public function tk_window_focus():Dynamic;
	static public var tmp : Dynamic;
	static public var unicode_literals : Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Set the matplotlib backend to one of the known backends.
		
		The argument is case-insensitive. *warn* specifies whether a
		warning should be issued if a backend has already been set up.
		*force* is an **experimental** flag that tells matplotlib to
		attempt to initialize a new backend by reloading the backend
		module.
		
		.. note::
		
		    This function must be called *before* importing pyplot for
		    the first time; or, if you are not using pyplot, it must be called
		    before importing matplotlib.backends.  If warn is True, a warning
		    is issued if you try and call this after pylab or pyplot have been
		    loaded.  In certain black magic use cases, e.g.
		    :func:`pyplot.switch_backend`, we are doing the reloading necessary to
		    make the backend switch work (in some cases, e.g., pure image
		    backends) so one can set warn=False to suppress the warnings.
		
		To find out which backend is currently set, see
		:func:`matplotlib.get_backend`.
	**/
	static public function use(arg:Dynamic, ?warn:Dynamic, ?force:Dynamic):Dynamic;
	static public function validate_backend(s:Dynamic):Dynamic;
	static public var verbose : Dynamic;
}