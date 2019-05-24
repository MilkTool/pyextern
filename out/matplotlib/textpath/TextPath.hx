/* This file is generated, do not edit! */
package matplotlib.textpath;
@:pythonImport("matplotlib.textpath", "TextPath") extern class TextPath {
	static public var CLOSEPOLY : Dynamic;
	static public var CURVE3 : Dynamic;
	static public var CURVE4 : Dynamic;
	static public var LINETO : Dynamic;
	static public var MOVETO : Dynamic;
	static public var NUM_VERTICES_FOR_CODE : Dynamic;
	static public var STOP : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a shallow copy of the `Path`, which will share the
		vertices and codes with the source `Path`.
	**/
	public function __copy__():Dynamic;
	/**
		Returns a deepcopy of the `Path`.  The `Path` will not be
		readonly, even if the source `Path` is.
	**/
	public function __deepcopy__(?memo:Dynamic):Dynamic;
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
	public function __eq__(value:Dynamic):Dynamic;
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
		Create a path from the text. Note that it simply is a path,
		not an artist. You need to use the `~.PathPatch` (or other artists)
		to draw this path onto the canvas.
		
		Parameters
		----------
		
		xy : tuple or array of two float values
		    Position of the text. For no offset, use ``xy=(0, 0)``.
		
		s : str
		    The text to convert to a path.
		
		size : float, optional
		    Font size in points. Defaults to the size specified via the font
		    properties *prop*.
		
		prop : `matplotlib.font_manager.FontProperties`, optional
		    Font property. If not provided, will use a default
		    ``FontProperties`` with parameters from the
		    :ref:`rcParams <matplotlib-rcparams>`.
		
		_interpolation_steps : integer, optional
		    (Currently ignored)
		
		usetex : bool, optional
		    Whether to use tex rendering. Defaults to ``False``.
		
		Examples
		--------
		
		The following creates a path from the string "ABC" with Helvetica
		font face; and another path from the latex fraction 1/2::
		
		    from matplotlib.textpath import TextPath
		    from matplotlib.font_manager import FontProperties
		
		    fp = FontProperties(family="Helvetica", style="italic")
		    path1 = TextPath((12,12), "ABC", size=12, prop=fp)
		    path2 = TextPath((0,0), r"$\frac{1}{2}$", size=12, usetex=True)
		
		Also see :doc:`/gallery/text_labels_and_annotations/demo_text_path`.
	**/
	@:native("__init__")
	public function ___init__(xy:Dynamic, s:Dynamic, ?size:Dynamic, ?prop:Dynamic, ?_interpolation_steps:Dynamic, ?usetex:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a path from the text. Note that it simply is a path,
		not an artist. You need to use the `~.PathPatch` (or other artists)
		to draw this path onto the canvas.
		
		Parameters
		----------
		
		xy : tuple or array of two float values
		    Position of the text. For no offset, use ``xy=(0, 0)``.
		
		s : str
		    The text to convert to a path.
		
		size : float, optional
		    Font size in points. Defaults to the size specified via the font
		    properties *prop*.
		
		prop : `matplotlib.font_manager.FontProperties`, optional
		    Font property. If not provided, will use a default
		    ``FontProperties`` with parameters from the
		    :ref:`rcParams <matplotlib-rcparams>`.
		
		_interpolation_steps : integer, optional
		    (Currently ignored)
		
		usetex : bool, optional
		    Whether to use tex rendering. Defaults to ``False``.
		
		Examples
		--------
		
		The following creates a path from the string "ABC" with Helvetica
		font face; and another path from the latex fraction 1/2::
		
		    from matplotlib.textpath import TextPath
		    from matplotlib.font_manager import FontProperties
		
		    fp = FontProperties(family="Helvetica", style="italic")
		    path1 = TextPath((12,12), "ABC", size=12, prop=fp)
		    path2 = TextPath((0,0), r"$\frac{1}{2}$", size=12, usetex=True)
		
		Also see :doc:`/gallery/text_labels_and_annotations/demo_text_path`.
	**/
	public function new(xy:Dynamic, s:Dynamic, ?size:Dynamic, ?prop:Dynamic, ?_interpolation_steps:Dynamic, ?usetex:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Creates a Path instance without the expense of calling the constructor.
		
		Parameters
		----------
		verts : numpy array
		codes : numpy array
		internals_from : Path or None
		    If not None, another `Path` from which the attributes
		    ``should_simplify``, ``simplify_threshold``, and
		    ``interpolation_steps`` will be copied.  Note that ``readonly`` is
		    never copied, and always set to ``False`` by this constructor.
	**/
	static public function _fast_from_codes_and_verts(verts:Dynamic, codes:Dynamic, ?internals_from:Dynamic):Dynamic;
	/**
		Update the path if necessary.
		
		The path for the text is initially create with the font size of
		`~.FONT_SCALE`, and this path is rescaled to other size when necessary.
	**/
	public function _revalidate_path():Dynamic;
	static public var _unit_circle : Dynamic;
	static public var _unit_circle_righthalf : Dynamic;
	static public var _unit_rectangle : Dynamic;
	static public var _unit_regular_polygons : Dynamic;
	static public var _unit_regular_stars : Dynamic;
	public function _update_values():Dynamic;
	/**
		Return the unit circle arc from angles *theta1* to *theta2* (in
		degrees).
		
		*theta2* is unwrapped to produce the shortest arc within 360 degrees.
		That is, if *theta2* > *theta1* + 360, the arc will be from *theta1* to
		*theta2* - 360 and not a full circle plus some extra overlap.
		
		If *n* is provided, it is the number of spline segments to make.
		If *n* is not provided, the number of spline segments is
		determined based on the delta between *theta1* and *theta2*.
		
		   Masionobe, L.  2003.  `Drawing an elliptical arc using
		   polylines, quadratic or cubic Bezier curves
		   <http://www.spaceroots.org/documents/ellipse/index.html>`_.
	**/
	static public function arc(theta1:Dynamic, theta2:Dynamic, ?n:Dynamic, ?is_wedge:Dynamic):Dynamic;
	/**
		Return a `Path` representing a circle of a given radius and center.
		
		Parameters
		----------
		center : pair of floats
		    The center of the circle. Default ``(0, 0)``.
		radius : float
		    The radius of the circle. Default is 1.
		readonly : bool
		    Whether the created path should have the "readonly" argument
		    set when creating the Path instance.
		
		Notes
		-----
		The circle is approximated using 8 cubic Bezier curves, as described in
		
		  Lancaster, Don.  `Approximating a Circle or an Ellipse Using Four
		  Bezier Cubic Splines <http://www.tinaja.com/glib/ellipse4.pdf>`_.
	**/
	static public function circle(?center:Dynamic, ?radius:Dynamic, ?readonly:Dynamic):Dynamic;
	/**
		Return a new Path with vertices and codes cleaned according to the
		parameters.
		
		See Also
		--------
		Path.iter_segments : for details of the keyword arguments.
	**/
	public function cleaned(?transform:Dynamic, ?remove_nans:Dynamic, ?clip:Dynamic, ?quantize:Dynamic, ?simplify:Dynamic, ?curves:Dynamic, ?stroke_width:Dynamic, ?snap:Dynamic, ?sketch:Dynamic):Dynamic;
	/**
		Clip the path to the given bounding box.
		
		The path must be made up of one or more closed polygons.  This
		algorithm will not behave correctly for unclosed paths.
		
		If *inside* is `True`, clip to the inside of the box, otherwise
		to the outside of the box.
	**/
	public function clip_to_bbox(bbox:Dynamic, ?inside:Dynamic):Dynamic;
	/**
		Unsigned integer type, compatible with C ``unsigned char``.
		Character code: ``'B'``.
		Canonical name: ``np.ubyte``.
		Alias *on this platform*: ``np.uint8``: 8-bit unsigned integer (0 to 255).
	**/
	public function code_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the codes
	**/
	public var codes : Dynamic;
	/**
		Returns whether this (closed) path completely contains the given path.
		
		If *transform* is not ``None``, the path will be transformed before
		performing the test.
	**/
	public function contains_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Returns whether the (closed) path contains the given point.
		
		If *transform* is not ``None``, the path will be transformed before
		performing the test.
		
		*radius* allows the path to be made slightly larger or smaller.
	**/
	public function contains_point(point:Dynamic, ?transform:Dynamic, ?radius:Dynamic):Dynamic;
	/**
		Returns a bool array which is ``True`` if the (closed) path contains
		the corresponding point.
		
		If *transform* is not ``None``, the path will be transformed before
		performing the test.
		
		*radius* allows the path to be made slightly larger or smaller.
	**/
	public function contains_points(points:Dynamic, ?transform:Dynamic, ?radius:Dynamic):Dynamic;
	/**
		Returns a shallow copy of the `Path`, which will share the
		vertices and codes with the source `Path`.
	**/
	public function copy():Dynamic;
	/**
		Returns a deepcopy of the `Path`.  The `Path` will not be
		readonly, even if the source `Path` is.
	**/
	public function deepcopy(?memo:Dynamic):Dynamic;
	/**
		Returns the extents (*xmin*, *ymin*, *xmax*, *ymax*) of the
		path.
		
		Unlike computing the extents on the *vertices* alone, this
		algorithm will take into account the curves and deal with
		control points appropriately.
	**/
	public function get_extents(?transform:Dynamic):Dynamic;
	/**
		Get the text size.
	**/
	public function get_size():Dynamic;
	public var has_nonfinite : Dynamic;
	/**
		Given a hatch specifier, *hatchpattern*, generates a Path that
		can be used in a repeated hatching pattern.  *density* is the
		number of lines per unit square.
	**/
	static public function hatch(hatchpattern:Dynamic, ?density:Dynamic):Dynamic;
	/**
		Returns a new path resampled to length N x steps.  Does not
		currently handle interpolating curves.
	**/
	public function interpolated(steps:Dynamic):Dynamic;
	/**
		Returns *True* if this path intersects a given
		:class:`~matplotlib.transforms.Bbox`.
		
		*filled*, when True, treats the path as if it was filled.
		That is, if the path completely encloses the bounding box,
		:meth:`intersects_bbox` will return True.
		
		The bounding box is always considered filled.
	**/
	public function intersects_bbox(bbox:Dynamic, ?filled:Dynamic):Dynamic;
	/**
		Returns *True* if this path intersects another given path.
		
		*filled*, when True, treats the paths as if they were filled.
		That is, if one path completely encloses the other,
		:meth:`intersects_path` will return True.
	**/
	public function intersects_path(other:Dynamic, ?filled:Dynamic):Dynamic;
	/**
		[*Deprecated*] Returns True if the given string *s* contains any mathtext.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	public function is_math_text(s:Dynamic):Dynamic;
	/**
		Iterates over all of the curve segments in the path.  Each iteration
		returns a 2-tuple ``(vertices, code)``, where ``vertices`` is a
		sequence of 1-3 coordinate pairs, and ``code`` is a `Path` code.
		
		Additionally, this method can provide a number of standard cleanups and
		conversions to the path.
		
		Parameters
		----------
		transform : None or :class:`~matplotlib.transforms.Transform`
		    If not None, the given affine transformation will be applied to the
		    path.
		remove_nans : bool, optional
		    Whether to remove all NaNs from the path and skip over them using
		    MOVETO commands.
		clip : None or (float, float, float, float), optional
		    If not None, must be a four-tuple (x1, y1, x2, y2)
		    defining a rectangle in which to clip the path.
		snap : None or bool, optional
		    If True, snap all nodes to pixels; if False, don't snap them.
		    If None, perform snapping if the path contains only segments
		    parallel to the x or y axes, and no more than 1024 of them.
		stroke_width : float, optional
		    The width of the stroke being drawn (used for path snapping).
		simplify : None or bool, optional
		    Whether to simplify the path by removing vertices
		    that do not affect its appearance.  If None, use the
		    :attr:`should_simplify` attribute.  See also :rc:`path.simplify`
		    and :rc:`path.simplify_threshold`.
		curves : bool, optional
		    If True, curve segments will be returned as curve segments.
		    If False, all curves will be converted to line segments.
		sketch : None or sequence, optional
		    If not None, must be a 3-tuple of the form
		    (scale, length, randomness), representing the sketch parameters.
	**/
	public function iter_segments(?transform:Dynamic, ?remove_nans:Dynamic, ?clip:Dynamic, ?snap:Dynamic, ?stroke_width:Dynamic, ?simplify:Dynamic, ?curves:Dynamic, ?sketch:Dynamic):Dynamic;
	/**
		Make a compound path from a list of Path objects.
	**/
	static public function make_compound_path(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Make a compound path object to draw a number
		of polygons with equal numbers of sides XY is a (numpolys x
		numsides x 2) numpy array of vertices.  Return object is a
		:class:`Path`
		
		.. plot:: gallery/misc/histogram_path.py
	**/
	static public function make_compound_path_from_polys(XY:Dynamic):Dynamic;
	/**
		`True` if the `Path` is read-only.
	**/
	public var readonly : Dynamic;
	/**
		Set the text size.
	**/
	public function set_size(size:Dynamic):Dynamic;
	/**
		`True` if the vertices array should be simplified.
	**/
	public var should_simplify : Dynamic;
	/**
		The fraction of a pixel difference below which vertices will
		be simplified out.
	**/
	public var simplify_threshold : Dynamic;
	/**
		[*Deprecated*] Convert string *s* to a (vertices, codes) pair using font property
		*prop*.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	public function text_get_vertices_codes(prop:Dynamic, s:Dynamic, usetex:Dynamic):Dynamic;
	/**
		Convert this path to a list of polygons or polylines.  Each
		polygon/polyline is an Nx2 array of vertices.  In other words,
		each polygon has no ``MOVETO`` instructions or curves.  This
		is useful for displaying in backends that do not support
		compound paths or Bezier curves.
		
		If *width* and *height* are both non-zero then the lines will
		be simplified so that vertices outside of (0, 0), (width,
		height) will be clipped.
		
		If *closed_only* is `True` (default), only closed polygons,
		with the last point being the same as the first point, will be
		returned.  Any unclosed polylines in the path will be
		explicitly closed.  If *closed_only* is `False`, any unclosed
		polygons in the path will be returned as unclosed polygons,
		and the closed polygons will be returned explicitly closed by
		setting the last point to the same as the first point.
	**/
	public function to_polygons(?transform:Dynamic, ?width:Dynamic, ?height:Dynamic, ?closed_only:Dynamic):Dynamic;
	/**
		Return a transformed copy of the path.
		
		See Also
		--------
		matplotlib.transforms.TransformedPath
		    A specialized path class that will cache the transformed result and
		    automatically update when the transform changes.
	**/
	public function transformed(transform:Dynamic):Dynamic;
	/**
		Return the readonly :class:`Path` of the unit circle.
		
		For most cases, :func:`Path.circle` will be what you want.
	**/
	static public function unit_circle():Dynamic;
	/**
		Return a `Path` of the right half of a unit circle.
		
		See `Path.circle` for the reference on the approximation used.
	**/
	static public function unit_circle_righthalf():Dynamic;
	/**
		Return a `Path` instance of the unit rectangle from (0, 0) to (1, 1).
	**/
	static public function unit_rectangle():Dynamic;
	/**
		Return a :class:`Path` for a unit regular asterisk with the given
		numVertices and radius of 1.0, centered at (0, 0).
	**/
	static public function unit_regular_asterisk(numVertices:Dynamic):Dynamic;
	/**
		Return a :class:`Path` instance for a unit regular polygon with the
		given *numVertices* and radius of 1.0, centered at (0, 0).
	**/
	static public function unit_regular_polygon(numVertices:Dynamic):Dynamic;
	/**
		Return a :class:`Path` for a unit regular star with the given
		numVertices and radius of 1.0, centered at (0, 0).
	**/
	static public function unit_regular_star(numVertices:Dynamic, ?innerCircle:Dynamic):Dynamic;
	/**
		Return the cached path after updating it if necessary.
	**/
	public var vertices : Dynamic;
	/**
		Return the unit circle wedge from angles *theta1* to *theta2* (in
		degrees).
		
		*theta2* is unwrapped to produce the shortest wedge within 360 degrees.
		That is, if *theta2* > *theta1* + 360, the wedge will be from *theta1*
		to *theta2* - 360 and not a full circle plus some extra overlap.
		
		If *n* is provided, it is the number of spline segments to make.
		If *n* is not provided, the number of spline segments is
		determined based on the delta between *theta1* and *theta2*.
		
		See `Path.arc` for the reference on the approximation used.
	**/
	static public function wedge(theta1:Dynamic, theta2:Dynamic, ?n:Dynamic):Dynamic;
}