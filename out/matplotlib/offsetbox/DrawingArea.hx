/* This file is generated, do not edit! */
package matplotlib.offsetbox;
@:pythonImport("matplotlib.offsetbox", "DrawingArea") extern class DrawingArea {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		*width*, *height* : width and height of the container box.
		*xdescent*, *ydescent* : descent of the box in x- and y-direction.
		*clip* : Whether to clip the children
	**/
	@:native("__init__")
	public function ___init__(width:Dynamic, height:Dynamic, ?xdescent:Dynamic, ?ydescent:Dynamic, ?clip:Dynamic):Dynamic;
	/**
		*width*, *height* : width and height of the container box.
		*xdescent*, *ydescent* : descent of the box in x- and y-direction.
		*clip* : Whether to clip the children
	**/
	public function new(width:Dynamic, height:Dynamic, ?xdescent:Dynamic, ?ydescent:Dynamic, ?clip:Dynamic):Void;
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
	static public var _prop_order : Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Add any :class:`~matplotlib.artist.Artist` to the container box
	**/
	public function add_artist(a:Dynamic):Dynamic;
	/**
		Add a callback function that will be called whenever one of the
		`.Artist`'s properties changes.
		
		Parameters
		----------
		func : callable
		    The callback function. It must have the signature::
		
		        def func(artist: Artist) -> Any
		
		    where *artist* is the calling `.Artist`. Return values may exist
		    but are ignored.
		
		Returns
		-------
		oid : int
		    The observer id associated with the callback. This id can be
		    used for removing the callback with `.remove_callback` later.
		
		See Also
		--------
		remove_callback
	**/
	public function add_callback(func:Dynamic):Int;
	public var aname : Dynamic;
	/**
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		If the children of this DrawingArea should be clipped
		by DrawingArea bounding box.
	**/
	public var clip_children : Dynamic;
	/**
		Test whether the artist contains the mouse event.
		
		Parameters
		----------
		mouseevent : `matplotlib.backend_bases.MouseEvent`
		
		Returns
		-------
		contains : bool
		    Whether any values are within the radius.
		details : dict
		    An artist-specific dictionary of details of the event context,
		    such as which points are contained in the pick radius. See the
		    individual Artist subclasses for details.
		
		See Also
		--------
		set_contains, get_contains
	**/
	public function contains(mouseevent:Dynamic):Bool;
	/**
		Convert *x* using the unit type of the xaxis.
		
		If the artist is not in contained in an Axes or if the xaxis does not
		have units, *x* itself is returned.
	**/
	public function convert_xunits(x:Dynamic):Dynamic;
	/**
		Convert *y* using the unit type of the yaxis.
		
		If the artist is not in contained in an Axes or if the yaxis does not
		have units, *y* itself is returned.
	**/
	public function convert_yunits(y:Dynamic):Dynamic;
	/**
		Draw the children
	**/
	public function draw(renderer:Dynamic):Dynamic;
	/**
		Find artist objects.
		
		Recursively find all `.Artist` instances contained in the artist.
		
		Parameters
		----------
		match
		    A filter criterion for the matches. This can be
		
		    - *None*: Return all objects contained in artist.
		    - A function with signature ``def match(artist: Artist) -> bool``.
		      The result will only contain artists for which the function
		      returns *True*.
		    - A class instance: e.g., `.Line2D`. The result will only contain
		      artists of this class or its subclasses (``isinstance`` check).
		
		include_self : bool
		    Include *self* in the list to be checked for a match.
		
		Returns
		-------
		artists : list of `.Artist`
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return a string representation of *data*.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		The default implementation converts ints and floats and arrays of ints
		and floats into a comma-separated string enclosed in square brackets.
		
		See Also
		--------
		get_cursor_data
	**/
	public function format_cursor_data(data:Dynamic):Dynamic;
	/**
		Return filter function to be used for agg filter.
	**/
	public function get_agg_filter():Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends
	**/
	public function get_alpha():Dynamic;
	/**
		Return the animated state.
	**/
	public function get_animated():Dynamic;
	/**
		Return a list of artists it contains.
	**/
	public function get_children():Dynamic;
	/**
		Return the clipbox.
	**/
	public function get_clip_box():Dynamic;
	/**
		Return whether the artist uses clipping.
	**/
	public function get_clip_on():Dynamic;
	/**
		Return the clip path.
	**/
	public function get_clip_path():Dynamic;
	/**
		Return the custom contains function of the artist if set, or *None*.
		
		See Also
		--------
		set_contains
	**/
	public function get_contains():Dynamic;
	/**
		Return the cursor data for a given event.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		Cursor data can be used by Artists to provide additional context
		information for a given event. The default implementation just returns
		*None*.
		
		Subclasses can override the method and return arbitrary data. However,
		when doing so, they must ensure that `.format_cursor_data` can convert
		the data to a string representation.
		
		The only current use case is displaying the z-value of an `.AxesImage`
		in the status bar of a plot window, while moving the mouse.
		
		Parameters
		----------
		event : `matplotlib.backend_bases.MouseEvent`
		
		See Also
		--------
		format_cursor_data
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	/**
		Return with, height, xdescent, ydescent of box
	**/
	public function get_extent(renderer:Dynamic):Dynamic;
	public function get_extent_offsets(renderer:Dynamic):Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Return the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		return offset of the container.
	**/
	public function get_offset():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picking behavior of the artist.
		
		The possible values are described in `.set_picker`.
		
		See Also
		--------
		set_picker, pickable, pick
	**/
	public function get_picker():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Returns the sketch parameters for the artist.
		
		Returns
		-------
		sketch_params : tuple or None
		
		    A 3-tuple with the following elements:
		
		    - *scale*: The amplitude of the wiggle perpendicular to the
		      source line.
		    - *length*: The length of the wiggle along the line.
		    - *randomness*: The scale factor by which the length is
		      shrunken or expanded.
		
		    Returns *None* if no sketch parameters were set.
	**/
	public function get_sketch_params():Dynamic;
	/**
		Returns the snap setting.
		
		See `.set_snap` for details.
	**/
	public function get_snap():Dynamic;
	/**
		Like `Artist.get_window_extent`, but includes any clipping.
		
		Parameters
		----------
		renderer : `.RendererBase` instance
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		Returns
		-------
		bbox : `.BBox`
		    The enclosing bounding box (in figure pixel co-ordinates).
	**/
	public function get_tightbbox(renderer:Dynamic):Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.Transform` applied
		to the children
	**/
	public function get_transform():Dynamic;
	/**
		Return the clip path with the non-affine part of its
		transformation applied, and the remaining affine part of its
		transformation.
	**/
	public function get_transformed_clip_path_and_affine():Dynamic;
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	/**
		Return the visibility.
	**/
	public function get_visible():Dynamic;
	/**
		Return a list of visible artists it contains.
	**/
	public function get_visible_children():Dynamic;
	/**
		get the bounding box in display space.
	**/
	public function get_window_extent(renderer:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	public var mouseover : Dynamic;
	/**
		Call all of the registered callbacks.
		
		This function is triggered internally when a property is changed.
		
		See Also
		--------
		add_callback
		remove_callback
	**/
	public function pchanged():Dynamic;
	/**
		Process a pick event.
		
		Each child artist will fire a pick event if *mouseevent* is over
		the artist and the artist has picker set.
		
		See Also
		--------
		set_picker, get_picker, pickable
	**/
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Return whether the artist is pickable.
		
		See Also
		--------
		set_picker, get_picker, pick
	**/
	public function pickable():Dynamic;
	/**
		Return a dictionary of all the properties of the artist.
	**/
	public function properties():Dynamic;
	/**
		Remove the artist from the figure if possible.
		
		The effect will not be visible until the figure is redrawn, e.g.,
		with `.FigureCanvasBase.draw_idle`.  Call `~.axes.Axes.relim` to
		update the axes limits if desired.
		
		Note: `~.axes.Axes.relim` will not see collections even if the
		collection was added to the axes with *autolim* = True.
		
		Note: there is no support for removing the artist's legend entry.
	**/
	public function remove():Dynamic;
	/**
		Remove a callback based on its observer id.
		
		See Also
		--------
		add_callback
	**/
	public function remove_callback(oid:Dynamic):Dynamic;
	/**
		A property batch setter.  Pass *kwargs* to set properties.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the agg filter.
		
		Parameters
		----------
		filter_func : callable
		    A filter function, which takes a (m, n, 3) float array and a dpi
		    value, and returns a (m, n, 3) array.
		
		    .. ACCEPTS: a filter function, which takes a (m, n, 3) float array
		        and a dpi value, and returns a (m, n, 3) array
	**/
	public function set_agg_filter(filter_func:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : float
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		Parameters
		----------
		b : bool
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set the artist's clip `.Bbox`.
		
		Parameters
		----------
		clipbox : `.Bbox`
	**/
	public function set_clip_box(clipbox:Dynamic):Dynamic;
	/**
		Set whether the artist uses clipping.
		
		When False artists will be visible out side of the axes which
		can lead to unexpected results.
		
		Parameters
		----------
		b : bool
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path, which may be:
		
		- a :class:`~matplotlib.patches.Patch` (or subclass) instance; or
		- a :class:`~matplotlib.path.Path` instance, in which case a
		  :class:`~matplotlib.transforms.Transform` instance, which will be
		  applied to the path before using it for clipping, must be provided;
		  or
		- ``None``, to remove a previously set clipping path.
		
		For efficiency, if the path happens to be an axis-aligned rectangle,
		this method will set the clipping box to the corresponding rectangle
		and set the clipping path to ``None``.
		
		ACCEPTS: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Define a custom contains test for the artist.
		
		The provided callable replaces the default `.contains` method
		of the artist.
		
		Parameters
		----------
		picker : callable
		    A custom picker function to evaluate if an event is within the
		    artist. The function must have the signature::
		
		        def contains(artist: Artist, event: MouseEvent) -> bool, dict
		
		    that returns:
		
		    - a bool indicating if the event is within the artist
		    - a dict of additional information. The dict should at least
		      return the same information as the default ``contains()``
		      implementation of the respective artist, but may provide
		      additional information.
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		Set the figure
		
		accepts a class:`~matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Set the height
		
		accepts float
	**/
	public function set_height(height:Dynamic):Dynamic;
	/**
		Set if artist is to be included in layout calculations,
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
		
		Parameters
		----------
		in_layout : bool
	**/
	public function set_in_layout(in_layout:Dynamic):Dynamic;
	/**
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the offset of the container.
		
		Parameters
		----------
		xy : (float, float)
		    The (x,y) coordinates of the offset in display units.
	**/
	public function set_offset(xy:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		Define the picking behavior of the artist.
		
		Parameters
		----------
		picker : None or bool or float or callable
		    This can be one of the following:
		
		    - *None*: Picking is disabled for this artist (default).
		
		    - A boolean: If *True* then picking will be enabled and the
		      artist will fire a pick event if the mouse event is over
		      the artist.
		
		    - A float: If picker is a number it is interpreted as an
		      epsilon tolerance in points and the artist will fire
		      off an event if it's data is within epsilon of the mouse
		      event.  For some artists like lines and patch collections,
		      the artist may provide additional data to the pick event
		      that is generated, e.g., the indices of the data within
		      epsilon of the pick event
		
		    - A function: If picker is callable, it is a user supplied
		      function which determines whether the artist is hit by the
		      mouse event::
		
		        hit, props = picker(artist, mouseevent)
		
		      to determine the hit test.  if the mouse event is over the
		      artist, return *hit=True* and props is a dictionary of
		      properties you want added to the PickEvent attributes.
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Sets the sketch parameters.
		
		Parameters
		----------
		
		scale : float, optional
		    The amplitude of the wiggle perpendicular to the source
		    line, in pixels.  If scale is `None`, or not provided, no
		    sketch filter will be provided.
		
		length : float, optional
		     The length of the wiggle along the line, in pixels
		     (default 128.0)
		
		randomness : float, optional
		    The scale factor by which the length is shrunken or
		    expanded (default 16.0)
		
		    .. ACCEPTS: (scale: float, length: float, randomness: float)
	**/
	public function set_sketch_params(?scale:Dynamic, ?length:Dynamic, ?randomness:Dynamic):Dynamic;
	/**
		Set the snapping behavior.
		
		Snapping aligns positions with the pixel grid, which results in
		clearer images. For example, if a black line of 1px width was
		defined at a position in between two pixels, the resulting image
		would contain the interpolated value of that line in the pixel grid,
		which would be a grey value on both adjacent pixel positions. In
		contrast, snapping will move the line to the nearest integer pixel
		value, so that the resulting image will really contain a 1px wide
		black line.
		
		Snapping is currently only supported by the Agg and MacOSX backends.
		
		Parameters
		----------
		snap : bool or None
		    Possible values:
		
		    - *True*: Snap vertices to the nearest pixel center.
		    - *False*: Do not modify vertex positions.
		    - *None*: (auto) If the path contains only rectilinear line
		      segments, round to the nearest pixel center.
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		set_transform is ignored.
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Set the url for the artist.
		
		Parameters
		----------
		url : str
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		Set the artist's visibility.
		
		Parameters
		----------
		b : bool
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the width
		
		accepts float
	**/
	public function set_width(width:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		Whether the artist is 'stale' and needs to be re-drawn for the output
		to match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		``x`` and ``y`` sticky edge lists for autoscaling.
		
		When performing autoscaling, if a data limit coincides with a value in
		the corresponding sticky_edges list, then no margin will be added--the
		view limit "sticks" to the edge. A typical use case is histograms,
		where one usually expects no margin on the bottom edge (0) of the
		histogram.
		
		This attribute cannot be assigned to; however, the ``x`` and ``y``
		lists can be modified in place as needed.
		
		Examples
		--------
		
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Update this artist's properties from the dictionary *props*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}