/* This file is generated, do not edit! */
package seaborn.distributions;
@:pythonImport("seaborn.distributions") extern class Distributions_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Plot a joint KDE estimate as a bivariate contour plot.
	**/
	static public function _bivariate_kdeplot(x:Dynamic, y:Dynamic, filled:Dynamic, fill_lowest:Dynamic, kernel:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic, axlabel:Dynamic, cbar:Dynamic, cbar_ax:Dynamic, cbar_kws:Dynamic, ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate number of hist bins using Freedman-Diaconis rule.
	**/
	static public function _freedman_diaconis_bins(a:Dynamic):Dynamic;
	static public var _has_statsmodels : Dynamic;
	/**
		Establish support for a kernel density estimate.
	**/
	static public function _kde_support(data:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic):Dynamic;
	/**
		Compute a bivariate kde using scipy.
	**/
	static public function _scipy_bivariate_kde(x:Dynamic, y:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic):Dynamic;
	/**
		Compute a univariate kernel density estimate using scipy.
	**/
	static public function _scipy_univariate_kde(data:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic):Dynamic;
	/**
		Compute a bivariate kde using statsmodels.
	**/
	static public function _statsmodels_bivariate_kde(x:Dynamic, y:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic):Dynamic;
	/**
		Compute a univariate kernel density estimate using statsmodels.
	**/
	static public function _statsmodels_univariate_kde(data:Dynamic, kernel:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic, ?cumulative:Dynamic):Dynamic;
	/**
		Plot a univariate kernel density estimate on one of the axes.
	**/
	static public function _univariate_kdeplot(data:Dynamic, shade:Dynamic, vertical:Dynamic, kernel:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic, legend:Dynamic, ax:Dynamic, ?cumulative:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a palette that blends between a list of colors.
		
		Parameters
		----------
		colors : sequence of colors in various formats interpreted by ``input``
		    hex code, html color name, or tuple in ``input`` space.
		n_colors : int, optional
		    Number of colors in the palette.
		as_cmap : bool, optional
		    If True, return as a matplotlib colormap instead of list.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
	**/
	static public function blend_palette(colors:Dynamic, ?n_colors:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Return a list of colors defining a color palette.
		
		Available seaborn palette names:
		    deep, muted, bright, pastel, dark, colorblind
		
		Other options:
		    name of matplotlib cmap, 'ch:<cubehelix arguments>', 'hls', 'husl',
		    or a list of colors in any format matplotlib accepts
		
		Calling this function with ``palette=None`` will return the current
		matplotlib color cycle.
		
		Matplotlib palettes can be specified as reversed palettes by appending
		"_r" to the name or as "dark" palettes by appending "_d" to the name.
		(These options are mutually exclusive, but the resulting list of colors
		can also be reversed).
		
		This function can also be used in a ``with`` statement to temporarily
		set the color cycle for a plot or set of plots.
		
		See the :ref:`tutorial <palette_tutorial>` for more information.
		
		Parameters
		----------
		palette: None, string, or sequence, optional
		    Name of palette or None to return current palette. If a sequence, input
		    colors are used but possibly cycled and desaturated.
		n_colors : int, optional
		    Number of colors in the palette. If ``None``, the default will depend
		    on how ``palette`` is specified. Named palettes default to 6 colors,
		    but grabbing the current palette or passing in a list of colors will
		    not change the number of colors unless this is specified. Asking for
		    more colors than exist in the palette will cause it to cycle.
		desat : float, optional
		    Proportion to desaturate each color by.
		
		Returns
		-------
		palette : list of RGB tuples.
		    Color palette. Behaves like a list, but can be used as a context
		    manager and possesses an ``as_hex`` method to convert to hex color
		    codes.
		
		See Also
		--------
		set_palette : Set the default color cycle for all plots.
		set_color_codes : Reassign color codes like ``"b"``, ``"g"``, etc. to
		                  colors from one of the seaborn palettes.
		
		Examples
		--------
		
		Calling with no arguments returns all colors from the current default
		color cycle:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.color_palette())
		
		Show one of the other "seaborn palettes", which have the same basic order
		of hues as the default matplotlib color cycle but more attractive colors.
		Calling with the name of a palette will return 6 colors by default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("muted"))
		
		Use discrete values from one of the built-in matplotlib colormaps:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("RdBu", n_colors=7))
		
		Make a customized cubehelix color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("ch:2.5,-.2,dark=.3"))
		
		Use a categorical matplotlib palette and add some desaturation:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("Set1", n_colors=8, desat=.5))
		
		Make a "dark" matplotlib sequential palette variant. (This can be good
		when coloring multiple lines or points that correspond to an ordered
		variable, where you don't want the lightest lines to be invisible):
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("Blues_d"))
		
		Use as a context manager:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np, matplotlib.pyplot as plt
		    >>> with sns.color_palette("husl", 8):
		    ...    _ = plt.plot(np.c_[np.zeros(8), np.arange(8)].T)
	**/
	static public function color_palette(?palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic):Dynamic;
	/**
		Make a sequential palette that blends from dark to ``color``.
		
		This kind of palette is good for data that range between relatively
		uninteresting low values and interesting high values.
		
		The ``color`` parameter can be specified in a number of ways, including
		all options for defining a color in matplotlib and several additional
		color spaces that are handled by seaborn. You can also use the database
		of named colors from the XKCD color survey.
		
		If you are using the IPython notebook, you can also choose this palette
		interactively with the :func:`choose_dark_palette` function.
		
		Parameters
		----------
		color : base color for high values
		    hex, rgb-tuple, or html color name
		n_colors : int, optional
		    number of colors in the palette
		reverse : bool, optional
		    if True, reverse the direction of the blend
		as_cmap : bool, optional
		    if True, return as a matplotlib colormap instead of list
		input : {'rgb', 'hls', 'husl', xkcd'}
		    Color space to interpret the input color. The first three options
		    apply to tuple inputs and the latter applies to string inputs.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
		
		See Also
		--------
		light_palette : Create a sequential palette with bright low values.
		diverging_palette : Create a diverging palette with two colors.
		
		Examples
		--------
		
		Generate a palette from an HTML color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.dark_palette("purple"))
		
		Generate a palette that decreases in lightness:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.dark_palette("seagreen", reverse=True))
		
		Generate a palette from an HUSL-space seed:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.dark_palette((260, 75, 60), input="husl"))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.dark_palette("#2ecc71", as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function dark_palette(color:Dynamic, ?n_colors:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Flexibly plot a univariate distribution of observations.
		
		This function combines the matplotlib ``hist`` function (with automatic
		calculation of a good default bin size) with the seaborn :func:`kdeplot`
		and :func:`rugplot` functions. It can also fit ``scipy.stats``
		distributions and plot the estimated PDF over the data.
		
		Parameters
		----------
		
		a : Series, 1d-array, or list.
		    Observed data. If this is a Series object with a ``name`` attribute,
		    the name will be used to label the data axis.
		bins : argument for matplotlib hist(), or None, optional
		    Specification of hist bins, or None to use Freedman-Diaconis rule.
		hist : bool, optional
		    Whether to plot a (normed) histogram.
		kde : bool, optional
		    Whether to plot a gaussian kernel density estimate.
		rug : bool, optional
		    Whether to draw a rugplot on the support axis.
		fit : random variable object, optional
		    An object with `fit` method, returning a tuple that can be passed to a
		    `pdf` method a positional arguments following an grid of values to
		    evaluate the pdf on.
		{hist, kde, rug, fit}_kws : dictionaries, optional
		    Keyword arguments for underlying plotting functions.
		color : matplotlib color, optional
		    Color to plot everything but the fitted curve in.
		vertical : bool, optional
		    If True, observed values are on y-axis.
		norm_hist : bool, optional
		    If True, the histogram height shows a density rather than a count.
		    This is implied if a KDE or fitted density is plotted.
		axlabel : string, False, or None, optional
		    Name for the support axis label. If None, will try to get it
		    from a.namel if False, do not set a label.
		label : string, optional
		    Legend label for the relevent component of the plot
		ax : matplotlib axis, optional
		    if provided, plot on this axis
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot for further tweaking.
		
		See Also
		--------
		kdeplot : Show a univariate or bivariate distribution with a kernel
		          density estimate.
		rugplot : Draw small vertical lines to show each observation in a
		          distribution.
		
		Examples
		--------
		
		Show a default plot with a kernel density estimate and histogram with bin
		size determined automatically with a reference rule:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns, numpy as np
		    >>> sns.set(); np.random.seed(0)
		    >>> x = np.random.randn(100)
		    >>> ax = sns.distplot(x)
		
		Use Pandas objects to get an informative axis label:
		
		.. plot::
		    :context: close-figs
		
		    >>> import pandas as pd
		    >>> x = pd.Series(x, name="x variable")
		    >>> ax = sns.distplot(x)
		
		Plot the distribution with a kernel density estimate and rug plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.distplot(x, rug=True, hist=False)
		
		Plot the distribution with a histogram and maximum likelihood gaussian
		distribution fit:
		
		.. plot::
		    :context: close-figs
		
		    >>> from scipy.stats import norm
		    >>> ax = sns.distplot(x, fit=norm, kde=False)
		
		Plot the distribution on the vertical axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.distplot(x, vertical=True)
		
		Change the color of all the plot elements:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.set_color_codes()
		    >>> ax = sns.distplot(x, color="y")
		
		Pass specific parameters to the underlying plot functions:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.distplot(x, rug=True, rug_kws={"color": "g"},
		    ...                   kde_kws={"color": "k", "lw": 3, "label": "KDE"},
		    ...                   hist_kws={"histtype": "step", "linewidth": 3,
		    ...                             "alpha": 1, "color": "g"})
	**/
	static public function distplot(a:Dynamic, ?bins:Dynamic, ?hist:Dynamic, ?kde:Dynamic, ?rug:Dynamic, ?fit:Dynamic, ?hist_kws:Dynamic, ?kde_kws:Dynamic, ?rug_kws:Dynamic, ?fit_kws:Dynamic, ?color:Dynamic, ?vertical:Dynamic, ?norm_hist:Dynamic, ?axlabel:Dynamic, ?label:Dynamic, ?ax:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Calculate the IQR for an array of numbers.
	**/
	static public function iqr(a:Dynamic):Dynamic;
	/**
		Fit and plot a univariate or bivariate kernel density estimate.
		
		Parameters
		----------
		data : 1d array-like
		    Input data.
		data2: 1d array-like, optional
		    Second input data. If present, a bivariate KDE will be estimated.
		shade : bool, optional
		    If True, shade in the area under the KDE curve (or draw with filled
		    contours when data is bivariate).
		vertical : bool, optional
		    If True, density is on x-axis.
		kernel : {'gau' | 'cos' | 'biw' | 'epa' | 'tri' | 'triw' }, optional
		    Code for shape of kernel to fit with. Bivariate KDE can only use
		    gaussian kernel.
		bw : {'scott' | 'silverman' | scalar | pair of scalars }, optional
		    Name of reference method to determine kernel size, scalar factor,
		    or scalar for each dimension of the bivariate plot. Note that the
		    underlying computational libraries have different interperetations
		    for this parameter: ``statsmodels`` uses it directly, but ``scipy``
		    treats it as a scaling factor for the standard deviation of the
		    data.
		gridsize : int, optional
		    Number of discrete points in the evaluation grid.
		cut : scalar, optional
		    Draw the estimate to cut * bw from the extreme data points.
		clip : pair of scalars, or pair of pair of scalars, optional
		    Lower and upper bounds for datapoints used to fit KDE. Can provide
		    a pair of (low, high) bounds for bivariate plots.
		legend : bool, optional
		    If True, add a legend or label the axes when possible.
		cumulative : bool, optional
		    If True, draw the cumulative distribution estimated by the kde.
		shade_lowest : bool, optional
		    If True, shade the lowest contour of a bivariate KDE plot. Not
		    relevant when drawing a univariate plot or when ``shade=False``.
		    Setting this to ``False`` can be useful when you want multiple
		    densities on the same Axes.
		cbar : bool, optional
		    If True and drawing a bivariate KDE plot, add a colorbar.
		cbar_ax : matplotlib axes, optional
		    Existing axes to draw the colorbar onto, otherwise space is taken
		    from the main axes.
		cbar_kws : dict, optional
		    Keyword arguments for ``fig.colorbar()``.
		ax : matplotlib axes, optional
		    Axes to plot on, otherwise uses current axes.
		kwargs : key, value pairings
		    Other keyword arguments are passed to ``plt.plot()`` or
		    ``plt.contour{f}`` depending on whether a univariate or bivariate
		    plot is being drawn.
		
		Returns
		-------
		ax : matplotlib Axes
		    Axes with plot.
		
		See Also
		--------
		distplot: Flexibly plot a univariate distribution of observations.
		jointplot: Plot a joint dataset with bivariate and marginal distributions.
		
		Examples
		--------
		
		Plot a basic univariate density:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np; np.random.seed(10)
		    >>> import seaborn as sns; sns.set(color_codes=True)
		    >>> mean, cov = [0, 2], [(1, .5), (.5, 1)]
		    >>> x, y = np.random.multivariate_normal(mean, cov, size=50).T
		    >>> ax = sns.kdeplot(x)
		
		Shade under the density curve and use a different color:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, shade=True, color="r")
		
		Plot a bivariate density:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, y)
		
		Use filled contours:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, y, shade=True)
		
		Use more contour levels and a different color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, y, n_levels=30, cmap="Purples_d")
		
		Use a narrower bandwith:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, bw=.15)
		
		Plot the density on the vertical axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(y, vertical=True)
		
		Limit the density curve within the range of the data:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, cut=0)
		
		Add a colorbar for the contours:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, y, cbar=True)
		
		Plot two shaded bivariate densities:
		
		.. plot::
		    :context: close-figs
		
		    >>> iris = sns.load_dataset("iris")
		    >>> setosa = iris.loc[iris.species == "setosa"]
		    >>> virginica = iris.loc[iris.species == "virginica"]
		    >>> ax = sns.kdeplot(setosa.sepal_width, setosa.sepal_length,
		    ...                  cmap="Reds", shade=True, shade_lowest=False)
		    >>> ax = sns.kdeplot(virginica.sepal_width, virginica.sepal_length,
		    ...                  cmap="Blues", shade=True, shade_lowest=False)
	**/
	static public function kdeplot(data:Dynamic, ?data2:Dynamic, ?shade:Dynamic, ?vertical:Dynamic, ?kernel:Dynamic, ?bw:Dynamic, ?gridsize:Dynamic, ?cut:Dynamic, ?clip:Dynamic, ?legend:Dynamic, ?cumulative:Dynamic, ?shade_lowest:Dynamic, ?cbar:Dynamic, ?cbar_ax:Dynamic, ?cbar_kws:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a sequential palette that blends from light to ``color``.
		
		This kind of palette is good for data that range between relatively
		uninteresting low values and interesting high values.
		
		The ``color`` parameter can be specified in a number of ways, including
		all options for defining a color in matplotlib and several additional
		color spaces that are handled by seaborn. You can also use the database
		of named colors from the XKCD color survey.
		
		If you are using the IPython notebook, you can also choose this palette
		interactively with the :func:`choose_light_palette` function.
		
		Parameters
		----------
		color : base color for high values
		    hex code, html color name, or tuple in ``input`` space.
		n_colors : int, optional
		    number of colors in the palette
		reverse : bool, optional
		    if True, reverse the direction of the blend
		as_cmap : bool, optional
		    if True, return as a matplotlib colormap instead of list
		input : {'rgb', 'hls', 'husl', xkcd'}
		    Color space to interpret the input color. The first three options
		    apply to tuple inputs and the latter applies to string inputs.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark low values.
		diverging_palette : Create a diverging palette with two colors.
		
		Examples
		--------
		
		Generate a palette from an HTML color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.light_palette("purple"))
		
		Generate a palette that increases in lightness:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.light_palette("seagreen", reverse=True))
		
		Generate a palette from an HUSL-space seed:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.light_palette((260, 75, 60), input="husl"))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.light_palette("#2ecc71", as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function light_palette(color:Dynamic, ?n_colors:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Plot datapoints in an array as sticks on an axis.
		
		Parameters
		----------
		a : vector
		    1D array of observations.
		height : scalar, optional
		    Height of ticks as proportion of the axis.
		axis : {'x' | 'y'}, optional
		    Axis to draw rugplot on.
		ax : matplotlib axes, optional
		    Axes to draw plot into; otherwise grabs current axes.
		kwargs : key, value pairings
		    Other keyword arguments are passed to ``LineCollection``.
		
		Returns
		-------
		ax : matplotlib axes
		    The Axes object with the plot on it.
	**/
	static public function rugplot(a:Dynamic, ?height:Dynamic, ?axis:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var string_types : Dynamic;
}