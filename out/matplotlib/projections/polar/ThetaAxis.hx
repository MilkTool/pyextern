/* This file is generated, do not edit! */
package matplotlib.projections.polar;
@:pythonImport("matplotlib.projections.polar", "ThetaAxis") extern class ThetaAxis {
	static public var OFFSETTEXTPAD : Dynamic;
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
		Init the axis with the parent Axes instance
	**/
	@:native("__init__")
	public function ___init__(axes:Dynamic, ?pickradius:Dynamic):Dynamic;
	/**
		Init the axis with the parent Axes instance
	**/
	public function new(axes:Dynamic, ?pickradius:Dynamic):Void;
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
	static public var __name__ : Dynamic;
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
		Copy the props from src tick to dest tick
	**/
	public function _copy_tick_props(src:Dynamic, dest:Dynamic):Dynamic;
	public function _get_label():Dynamic;
	public function _get_offset_text():Dynamic;
	/**
		Returns the amount, in data coordinates, that a single pixel
		corresponds to in the locality given by "where", which is also given
		in data coordinates, and is an x coordinate. "perturb" is the amount
		to perturb the pixel.  Usually +0.5 or -0.5.
		
		Implementing this routine for an axis is optional; if present, it will
		ensure that no ticks are lost due to round-off at the extreme ends of
		an axis.
	**/
	public function _get_pixel_distance_along_axis(where:Dynamic, perturb:Dynamic):Dynamic;
	/**
		return the default tick instance
	**/
	public function _get_tick(major:Dynamic):Dynamic;
	/**
		Given the list of ticks, return two lists of bboxes. One for
		tick lable1's and another for tick label2's.
	**/
	public function _get_tick_bboxes(ticks:Dynamic, renderer:Dynamic):Dynamic;
	/**
		Get the bounding boxes for this `.axis` and its siblings
		as set by `.Figure.align_xlabels` or  `.Figure.align_ylablels`.
		
		By default it just gets bboxes for self.
	**/
	public function _get_tick_boxes_siblings(renderer:Dynamic):Dynamic;
	static public var _prop_order : Dynamic;
	public function _set_artist_props(a:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _set_scale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _translate_tick_kw(kw:Dynamic, ?to_init_kw:Dynamic):Dynamic;
	/**
		check the axis converter for the stored units to see if the
		axis info needs to be updated
	**/
	public function _update_axisinfo():Dynamic;
	/**
		Update the label position based on the bounding box enclosing
		all the ticklabels and axis spine
	**/
	public function _update_label_position(renderer:Dynamic):Dynamic;
	/**
		Update the offset_text position based on the sequence of bounding
		boxes of all the ticklabels
	**/
	public function _update_offset_text_position(bboxes:Dynamic, bboxes2:Dynamic):Dynamic;
	/**
		Update ticks (position and labels) using the current data
		interval of the axes. Returns a list of ticks that will be
		drawn.
	**/
	public function _update_ticks(renderer:Dynamic):Dynamic;
	public function _wrap_locator_formatter():Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	static public var aname : Dynamic;
	/**
		The :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Sets up x-axis ticks and labels that treat the x data as dates.
		*tz* is a :class:`tzinfo` instance or a timezone string.
		This timezone is used to create date labels.
	**/
	public function axis_date(?tz:Dynamic):Dynamic;
	static public var axis_name : Dynamic;
	/**
		clear the current axis
	**/
	public function cla():Dynamic;
	/**
		Test whether the mouse event occurred in the x axis.
		        
	**/
	public function contains(mouseevent:Dynamic):Dynamic;
	public function convert_units(x:Dynamic):Dynamic;
	/**
		For artists in an axes, if the xaxis has units support,
		convert *x* using xaxis unit type
	**/
	public function convert_xunits(x:Dynamic):Dynamic;
	/**
		For artists in an axes, if the yaxis has units support,
		convert *y* using yaxis unit type
	**/
	public function convert_yunits(y:Dynamic):Dynamic;
	/**
		Draw the axis lines, grid lines, tick lines and labels
	**/
	public function draw(renderer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find artist objects.
		
		Recursively find all :class:`~matplotlib.artist.Artist` instances
		contained in self.
		
		*match* can be
		
		  - None: return all objects contained in artist.
		
		  - function with signature ``boolean = match(artist)``
		    used to filter matches
		
		  - class instance: e.g., Line2D.  Only return artists of class type.
		
		If *include_self* is True (default), include self in the list to be
		checked for a match.
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return *cursor data* string formatted.
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
		Return the artist's animated state
	**/
	public function get_animated():Dynamic;
	/**
		Return a list of the child :class:`Artist`s this
		:class:`Artist` contains.
	**/
	public function get_children():Dynamic;
	/**
		Return artist clipbox
	**/
	public function get_clip_box():Dynamic;
	/**
		Return whether artist uses clipping
	**/
	public function get_clip_on():Dynamic;
	/**
		Return artist clip path
	**/
	public function get_clip_path():Dynamic;
	/**
		Return the _contains test used by the artist, or *None* for default.
	**/
	public function get_contains():Dynamic;
	/**
		Get the cursor data for a given event.
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	/**
		return the Interval instance for this axis data limits
	**/
	public function get_data_interval():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Returns the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return the grid lines as a list of Line2D instance
	**/
	public function get_gridlines():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Return the axis label as a Text instance
	**/
	public function get_label():Dynamic;
	/**
		Return the label position (top or bottom)
	**/
	public function get_label_position():Dynamic;
	/**
		Get the text of the label
	**/
	public function get_label_text():Dynamic;
	/**
		Get the formatter of the major ticker
	**/
	public function get_major_formatter():Dynamic;
	/**
		Get the locator of the major ticker
	**/
	public function get_major_locator():Dynamic;
	/**
		get the tick instances; grow as necessary
	**/
	public function get_major_ticks(?numticks:Dynamic):Dynamic;
	/**
		Return a list of Text instances for the major ticklabels
	**/
	public function get_majorticklabels():Dynamic;
	/**
		Return the major tick lines as a list of Line2D instances
	**/
	public function get_majorticklines():Dynamic;
	/**
		Get the major tick locations in data coordinates as a numpy array
	**/
	public function get_majorticklocs():Dynamic;
	/**
		Get the formatter of the minor ticker
	**/
	public function get_minor_formatter():Dynamic;
	/**
		Get the locator of the minor ticker
	**/
	public function get_minor_locator():Dynamic;
	/**
		get the minor tick instances; grow as necessary
	**/
	public function get_minor_ticks(?numticks:Dynamic):Dynamic;
	/**
		Return a list of Text instances for the minor ticklabels
	**/
	public function get_minorticklabels():Dynamic;
	/**
		Return the minor tick lines as a list of Line2D instances
	**/
	public function get_minorticklines():Dynamic;
	/**
		Get the minor tick locations in data coordinates as a numpy array
	**/
	public function get_minorticklocs():Dynamic;
	public function get_minpos():Dynamic;
	/**
		Return the axis offsetText as a Text instance
	**/
	public function get_offset_text():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picker object used by this artist.
	**/
	public function get_picker():Dynamic;
	/**
		Return the depth of the axis used by the picker
	**/
	public function get_pickradius():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	public function get_scale():Dynamic;
	/**
		Returns the sketch parameters for the artist.
		
		Returns
		-------
		sketch_params : tuple or `None`
		
		    A 3-tuple with the following elements:
		
		      * `scale`: The amplitude of the wiggle perpendicular to the
		        source line.
		
		      * `length`: The length of the wiggle along the line.
		
		      * `randomness`: The scale factor by which the length is
		        shrunken or expanded.
		
		    May return `None` if no sketch parameters were set.
	**/
	public function get_sketch_params():Dynamic;
	/**
		get whether the axis has smart bounds
	**/
	public function get_smart_bounds():Dynamic;
	/**
		Returns the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
	**/
	public function get_snap():Dynamic;
	/**
		Returns the amount of space one should reserve for text
		above and below the axes.  Returns a tuple (above, below)
	**/
	public function get_text_heights(renderer:Dynamic):Dynamic;
	public function get_tick_padding():Dynamic;
	/**
		Return the estimated number of ticks that can fit on the axis.
	**/
	public function get_tick_space():Dynamic;
	/**
		Get the extents of the tick labels on either side
		of the axes.
	**/
	public function get_ticklabel_extents(renderer:Dynamic):Dynamic;
	/**
		Get the tick labels as a list of :class:`~matplotlib.text.Text`
		instances.
		
		Parameters
		----------
		minor : bool
		   If True return the minor ticklabels,
		   else return the major ticklabels
		
		which : None, ('minor', 'major', 'both')
		   Overrides `minor`.
		
		   Selects which ticklabels to return
		
		Returns
		-------
		ret : list
		   List of :class:`~matplotlib.text.Text` instances.
	**/
	public function get_ticklabels(?minor:Dynamic, ?which:Dynamic):Array<Dynamic>;
	/**
		Return the tick lines as a list of Line2D instances
	**/
	public function get_ticklines(?minor:Dynamic):Dynamic;
	/**
		Get the tick locations in data coordinates as a numpy array
	**/
	public function get_ticklocs(?minor:Dynamic):Dynamic;
	/**
		Get the tick directions as a numpy array
		
		Parameters
		----------
		minor : boolean
		    True to return the minor tick directions,
		    False to return the major tick directions,
		    Default is False
		
		Returns
		-------
		numpy array of tick directions
	**/
	public function get_ticks_direction(?minor:Dynamic):Dynamic;
	/**
		Return the ticks position (top, bottom, default or unknown)
	**/
	public function get_ticks_position():Dynamic;
	/**
		Return a bounding box that encloses the axis. It only accounts
		tick labels, axis label, and offsetText.
	**/
	public function get_tightbbox(renderer:Dynamic):Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.Transform`
		instance used by this artist.
	**/
	public function get_transform():Dynamic;
	/**
		Return the clip path with the non-affine part of its
		transformation applied, and the remaining affine part of its
		transformation.
	**/
	public function get_transformed_clip_path_and_affine():Dynamic;
	/**
		return the units for axis
	**/
	public function get_units():Dynamic;
	/**
		Returns the url.
	**/
	public function get_url():Dynamic;
	/**
		return the Interval instance for this axis view limits
	**/
	public function get_view_interval():Dynamic;
	/**
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		Get the axes bounding box in display space.
		Subclasses should override for inclusion in the bounding box
		"tight" calculation. Default is to return an empty bounding
		box at 0, 0.
		
		Be careful when using this function, the results will not update
		if the artist window extent of the artist changes.  The extent
		can change due to any changes in the transform stack, such as
		changing the axes limits, the figure size, or the canvas used
		(as is done when saving a figure).  This can lead to unexpected
		behavior where interactive figures will look fine on the screen,
		but will save incorrectly.
	**/
	public function get_window_extent(renderer:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Configure the grid lines.
		
		Parameters
		----------
		b : bool or None
		    Whether to show the grid lines. If any *kwargs* are supplied,
		    it is assumed you want the grid on and *b* will be set to True.
		
		    If *b* is *None* and there are no *kwargs*, this toggles the
		    visibility of the lines.
		
		which : {'major', 'minor', 'both'}
		    The grid lines to apply the changes on.
		
		**kwargs : `.Line2D` properties
		    Define the line properties of the grid, e.g.::
		
		        grid(color='r', linestyle='-', linewidth=2)
	**/
	public function grid(?b:Dynamic, ?which:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		.. deprecated:: 2.2
		    The hitlist function was deprecated in Matplotlib 2.2 and will be removed in 3.1.
		
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		.. deprecated:: 2.2
		    artist.figure is not None
		
		Returns whether the artist is assigned to a `.Figure`.
	**/
	public function is_figure_set():Dynamic;
	/**
		Returns *True* if :class:`Artist` has a transform explicitly
		set.
	**/
	public function is_transform_set():Dynamic;
	/**
		Iterate through all of the major and minor ticks.
	**/
	public function iter_ticks():Dynamic;
	public function limit_range_for_scale(vmin:Dynamic, vmax:Dynamic):Dynamic;
	static public var majorTicks : Dynamic;
	static public var minorTicks : Dynamic;
	public var mouseover : Dynamic;
	/**
		Pan *numsteps* (can be positive or negative)
	**/
	public function pan(numsteps:Dynamic):Dynamic;
	/**
		Fire an event when property changed, calling all of the
		registered callbacks.
	**/
	public function pchanged():Dynamic;
	/**
		Process pick event
		
		each child artist will fire a pick event if *mouseevent* is over
		the artist and the artist has picker set
	**/
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Return *True* if :class:`Artist` is pickable.
	**/
	public function pickable():Dynamic;
	/**
		return a dictionary mapping property name -> value for all Artist props
	**/
	public function properties():Dynamic;
	/**
		Remove the artist from the figure if possible.  The effect
		will not be visible until the figure is redrawn, e.g., with
		:meth:`matplotlib.axes.Axes.draw_idle`.  Call
		:meth:`matplotlib.axes.Axes.relim` to update the axes limits
		if desired.
		
		Note: :meth:`~matplotlib.axes.Axes.relim` will not see
		collections even if the collection was added to axes with
		*autolim* = True.
		
		Note: there is no support for removing the artist's legend entry.
	**/
	public function remove():Dynamic;
	/**
		Remove a callback based on its *id*.
		
		.. seealso::
		
		    :meth:`add_callback`
		       For adding callbacks
	**/
	public function remove_callback(oid:Dynamic):Dynamic;
	/**
		Re-initialize the major and minor Tick lists.
		
		Each list starts with a single fresh Tick.
	**/
	public function reset_ticks():Dynamic;
	/**
		A property batch setter. Pass *kwargs* to set properties.
		        
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
		Set whether artist uses clipping.
		
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
	public function set_clip_path(clippath:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Replace the contains test used by this artist. The new picker
		should be a callable function which determines whether the
		artist is hit by the mouse event::
		
		    hit, props = picker(artist, mouseevent)
		
		If the mouse event is over the artist, return *hit* = *True*
		and *props* is a dictionary of properties you want returned
		with the contains test.
		
		Parameters
		----------
		picker : callable
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		set the axis data limits
	**/
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic, ?ignore:Dynamic):Dynamic;
	/**
		set the default limits for the axis interval if they are not mutated
	**/
	public function set_default_intervals():Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
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
		Set the label to *s* for auto legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the coordinates of the label.  By default, the x
		coordinate of the y label is determined by the tick label
		bounding boxes, but this can lead to poor alignment of
		multiple ylabels if there are multiple axes.  Ditto for the y
		coordinate of the x label.
		
		You can also specify the coordinate system of the label with
		the transform.  If None, the default coordinate system will be
		the axes coordinate system (0,0) is (left,bottom), (0.5, 0.5)
		is middle, etc
	**/
	public function set_label_coords(x:Dynamic, y:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set the label position (top or bottom)
		
		Parameters
		----------
		position : {'top', 'bottom'}
	**/
	public function set_label_position(position:Dynamic):Dynamic;
	/**
		Set the text value of the axis label.
		
		ACCEPTS: A string value for the label
	**/
	public function set_label_text(label:Dynamic, ?fontdict:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the formatter of the major ticker.
		
		Parameters
		----------
		formatter : ~matplotlib.ticker.Formatter
	**/
	public function set_major_formatter(formatter:Dynamic):Dynamic;
	/**
		Set the locator of the major ticker.
		
		Parameters
		----------
		locator : ~matplotlib.ticker.Locator
	**/
	public function set_major_locator(locator:Dynamic):Dynamic;
	/**
		Set the formatter of the minor ticker.
		
		Parameters
		----------
		formatter : ~matplotlib.ticker.Formatter
	**/
	public function set_minor_formatter(formatter:Dynamic):Dynamic;
	/**
		Set the locator of the minor ticker.
		
		Parameters
		----------
		locator : ~matplotlib.ticker.Locator
	**/
	public function set_minor_locator(locator:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		Set the epsilon for picking used by this artist
		
		*picker* can be one of the following:
		
		  * *None*: picking is disabled for this artist (default)
		
		  * A boolean: if *True* then picking will be enabled and the
		    artist will fire a pick event if the mouse event is over
		    the artist
		
		  * A float: if picker is a number it is interpreted as an
		    epsilon tolerance in points and the artist will fire
		    off an event if it's data is within epsilon of the mouse
		    event.  For some artists like lines and patch collections,
		    the artist may provide additional data to the pick event
		    that is generated, e.g., the indices of the data within
		    epsilon of the pick event
		
		  * A function: if picker is callable, it is a user supplied
		    function which determines whether the artist is hit by the
		    mouse event::
		
		      hit, props = picker(artist, mouseevent)
		
		    to determine the hit test.  if the mouse event is over the
		    artist, return *hit=True* and props is a dictionary of
		    properties you want added to the PickEvent attributes.
		
		Parameters
		----------
		picker : None or bool or float or callable
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	/**
		Set the depth of the axis used by the picker.
		
		Parameters
		----------
		pickradius :  float
	**/
	public function set_pickradius(pickradius:Dynamic):Dynamic;
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
		set the axis to have smart bounds
	**/
	public function set_smart_bounds(value:Dynamic):Dynamic;
	/**
		Sets the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
		
		Parameters
		----------
		snap : bool or None
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set appearance parameters for ticks, ticklabels, and gridlines.
		
		For documentation of keyword arguments, see
		:meth:`matplotlib.axes.Axes.tick_params`.
	**/
	public function set_tick_params(?which:Dynamic, ?reset:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the text values of the tick labels. Return a list of Text
		instances.  Use *kwarg* *minor=True* to select minor ticks.
		All other kwargs are used to update the text object properties.
		As for get_ticklabels, label1 (left or bottom) is
		affected for a given tick only if its label1On attribute
		is True, and similarly for label2.  The list of returned
		label text objects consists of all such label1 objects followed
		by all such label2 objects.
		
		The input *ticklabels* is assumed to match the set of
		tick locations, regardless of the state of label1On and
		label2On.
		
		ACCEPTS: sequence of strings or Text objects
	**/
	public function set_ticklabels(ticklabels:Dynamic, ?args:python.VarArgs<Dynamic>, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the locations of the tick marks from sequence ticks
		
		ACCEPTS: sequence of floats
	**/
	public function set_ticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set the ticks position (top, bottom, both, default or none)
		both sets the ticks to appear on both positions, but does not
		change the tick labels.  'default' resets the tick positions to
		the default: ticks on both positions, labels at bottom.  'none'
		can be used if you don't want any ticks. 'none' and 'both'
		affect only the ticks, not the labels.
		
		Parameters
		----------
		position : {'top', 'bottom', 'both', 'default', 'none'}
	**/
	public function set_ticks_position(position:Dynamic):Dynamic;
	/**
		Set the artist transform.
		
		Parameters
		----------
		t : `.Transform`
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		set the units for axis
		
		ACCEPTS: a units tag
	**/
	public function set_units(u:Dynamic):Dynamic;
	/**
		Sets the url for the artist.
		
		Parameters
		----------
		url : str
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		If *ignore* is *False*, the order of vmin, vmax
		does not matter; the original axis orientation will
		be preserved. In addition, the view limits can be
		expanded, but will not be reduced.  This method is
		for mpl internal use; for normal use, see
		:meth:`~matplotlib.axes.Axes.set_xlim`.
	**/
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic, ?ignore:Dynamic):Dynamic;
	/**
		Set the artist's visibility.
		
		Parameters
		----------
		b : bool
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		If the artist is 'stale' and needs to be re-drawn for the output to
		match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		`x` and `y` sticky edge lists.
		
		When performing autoscaling, if a data limit coincides with a value in
		the corresponding sticky_edges list, then no margin will be added--the
		view limit "sticks" to the edge. A typical usecase is histograms,
		where one usually expects no margin on the bottom edge (0) of the
		histogram.
		
		This attribute cannot be assigned to; however, the `x` and `y` lists
		can be modified in place as needed.
		
		Examples
		--------
		
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Move ticks and ticklabels (if present) to the bottom of the axes.
	**/
	public function tick_bottom():Dynamic;
	/**
		Move ticks and ticklabels (if present) to the top of the axes.
	**/
	public function tick_top():Dynamic;
	/**
		.. deprecated:: 2.2.0
		    The unit_data function was deprecated in Matplotlib 2.2.0 and will be removed two minor releases later.
		
		\ 
	**/
	public var unit_data : Dynamic;
	/**
		Update this artist's properties from the dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		introspect *data* for units converter and update the
		axis.converter instance if necessary. Return *True*
		if *data* is registered for unit conversion.
	**/
	public function update_units(data:Dynamic):Dynamic;
	/**
		Zoom in/out on axis; if *direction* is >0 zoom in, else zoom out
	**/
	public function zoom(direction:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}