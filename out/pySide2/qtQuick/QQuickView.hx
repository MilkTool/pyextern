/* This file is generated, do not edit! */
package pySide2.qtQuick;
@:pythonImport("PySide2.QtQuick", "QQuickView") extern class QQuickView {
	static public var AfterRenderingStage : Dynamic;
	static public var AfterSwapStage : Dynamic;
	static public var AfterSynchronizingStage : Dynamic;
	public function AncestorMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AutomaticVisibility : Dynamic;
	static public var BeforeRenderingStage : Dynamic;
	static public var BeforeSynchronizingStage : Dynamic;
	static public var ContextNotAvailable : Dynamic;
	public function CreateTextureOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function CreateTextureOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Error : Dynamic;
	static public var ExcludeTransients : Dynamic;
	static public var FullScreen : Dynamic;
	static public var Hidden : Dynamic;
	static public var IncludeTransients : Dynamic;
	static public var Loading : Dynamic;
	static public var Maximized : Dynamic;
	static public var Minimized : Dynamic;
	static public var NoStage : Dynamic;
	static public var Null : Dynamic;
	static public var Offscreen : Dynamic;
	static public var OpenGLSurface : Dynamic;
	static public var RasterGLSurface : Dynamic;
	static public var RasterSurface : Dynamic;
	static public var Ready : Dynamic;
	public function RenderStage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ResizeMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function SceneGraphError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SizeRootObjectToView : Dynamic;
	static public var SizeViewToRootObject : Dynamic;
	public function Status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function SurfaceClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function SurfaceType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TextureCanUseAtlas : Dynamic;
	static public var TextureHasAlphaChannel : Dynamic;
	static public var TextureHasMipmaps : Dynamic;
	static public var TextureIsOpaque : Dynamic;
	static public var TextureOwnsGLTexture : Dynamic;
	public function Visibility(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Window : Dynamic;
	static public var Windowed : Dynamic;
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
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function accessibleRoot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activeChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activeFocusItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activeFocusItemChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function afterAnimating(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function afterRendering(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function afterSynchronizing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function alert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beforeRendering(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function beforeSynchronizing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearBeforeRendering(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function closing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function color(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function colorChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentOrientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentOrientationChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createTextureFromId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createTextureFromImage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function effectiveDevicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function engine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function exposeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusObjectChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function framePosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameSwapped(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function hasDefaultAlphaBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hideEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function icon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function incubationController(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initialSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAncestorOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isExposed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isPersistentOpenGLContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isPersistentSceneGraph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSceneGraphInitialized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isTopLevel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var m_type : Dynamic;
	public function mapFromGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumHeightChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumWidthChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumHeightChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumWidthChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function modality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function modalityChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseGrabberItem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function opacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function opacityChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function openglContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function openglContextCreated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function position(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function raise(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function releaseResources(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function renderTarget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function renderTargetId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function renderTargetSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reportContentOrientationChange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function requestActivate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function requestUpdate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function requestedFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resetOpenGLState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resizeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resizeMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rootContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rootObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneGraphAboutToStop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneGraphError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneGraphInitialized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sceneGraphInvalidated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scheduleRenderJob(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function screen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function screenChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sendEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBaseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setClearBeforeRendering(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setContent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setDefaultAlphaBuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFramePosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setKeyboardGrabEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMouseGrabEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPersistentOpenGLContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPersistentSceneGraph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRenderTarget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setResizeMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSource(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSurfaceType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTransientParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVisibility(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function show(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showNormal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function source(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function status(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function statusChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportsOpenGL(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function surfaceClass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function surfaceHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function surfaceType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tabletEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function title(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function touchEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transientParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visibility(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visibilityChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visibleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widthChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function winId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowStateChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowTitleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function xChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function yChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
}