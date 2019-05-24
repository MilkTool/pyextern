/* This file is generated, do not edit! */
package matplotlib.path;
@:pythonImport("matplotlib.path", "Path") extern class Path {
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
		Create a new path with the given vertices and codes.
		
		Parameters
		----------
		vertices : array_like
		    The ``(n, 2)`` float array, masked array or sequence of pairs
		    representing the vertices of the path.
		
		    If *vertices* contains masked values, they will be converted
		    to NaNs which are then handled correctly by the Agg
		    PathIterator and other consumers of path data, such as
		    :meth:`iter_segments`.
		codes : {None, array_like}, optional
		    n-length array integers representing the codes of the path.
		    If not None, codes must be the same length as vertices.
		    If None, *vertices* will be treated as a series of line segments.
		_interpolation_steps : int, optional
		    Used as a hint to certain projections, such as Polar, that this
		    path should be linearly interpolated immediately before drawing.
		    This attribute is primarily an implementation detail and is not
		    intended for public use.
		closed : bool, optional
		    If *codes* is None and closed is True, vertices will be treated as
		    line segments of a closed polygon.
		readonly : bool, optional
		    Makes the path behave in an immutable way and sets the vertices
		    and codes as read-only arrays.
	**/
	@:native("__init__")
	public function ___init__(vertices:Dynamic, ?codes:Dynamic, ?_interpolation_steps:Dynamic, ?closed:Dynamic, ?readonly:Dynamic):Dynamic;
	/**
		Create a new path with the given vertices and codes.
		
		Parameters
		----------
		vertices : array_like
		    The ``(n, 2)`` float array, masked array or sequence of pairs
		    representing the vertices of the path.
		
		    If *vertices* contains masked values, they will be converted
		    to NaNs which are then handled correctly by the Agg
		    PathIterator and other consumers of path data, such as
		    :meth:`iter_segments`.
		codes : {None, array_like}, optional
		    n-length array integers representing the codes of the path.
		    If not None, codes must be the same length as vertices.
		    If None, *vertices* will be treated as a series of line segments.
		_interpolation_steps : int, optional
		    Used as a hint to certain projections, such as Polar, that this
		    path should be linearly interpolated immediately before drawing.
		    This attribute is primarily an implementation detail and is not
		    intended for public use.
		closed : bool, optional
		    If *codes* is None and closed is True, vertices will be treated as
		    line segments of a closed polygon.
		readonly : bool, optional
		    Makes the path behave in an immutable way and sets the vertices
		    and codes as read-only arrays.
	**/
	public function new(vertices:Dynamic, ?codes:Dynamic, ?_interpolation_steps:Dynamic, ?closed:Dynamic, ?readonly:Dynamic):Void;
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
		The list of codes in the `Path` as a 1-D numpy array.  Each
		code is one of `STOP`, `MOVETO`, `LINETO`, `CURVE3`, `CURVE4`
		or `CLOSEPOLY`.  For codes that correspond to more than one
		vertex (`CURVE3` and `CURVE4`), that code will be repeated so
		that the length of `self.vertices` and `self.codes` is always
		the same.
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
		`True` if the vertices array should be simplified.
	**/
	public var should_simplify : Dynamic;
	/**
		The fraction of a pixel difference below which vertices will
		be simplified out.
	**/
	public var simplify_threshold : Dynamic;
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
		The list of vertices in the `Path` as an Nx2 numpy array.
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