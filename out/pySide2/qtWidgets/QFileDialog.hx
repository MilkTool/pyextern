/* This file is generated, do not edit! */
package pySide2.qtWidgets;
@:pythonImport("PySide2.QtWidgets", "QFileDialog") extern class QFileDialog {
	static public var Accept : Dynamic;
	public function AcceptMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var AcceptOpen : Dynamic;
	static public var AcceptSave : Dynamic;
	static public var Accepted : Dynamic;
	static public var AnyFile : Dynamic;
	static public var Detail : Dynamic;
	public function DialogCode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function DialogLabel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Directory : Dynamic;
	static public var DirectoryOnly : Dynamic;
	static public var DontConfirmOverwrite : Dynamic;
	static public var DontResolveSymlinks : Dynamic;
	static public var DontUseCustomDirectoryIcons : Dynamic;
	static public var DontUseNativeDialog : Dynamic;
	static public var DontUseSheet : Dynamic;
	static public var DrawChildren : Dynamic;
	static public var DrawWindowBackground : Dynamic;
	static public var ExistingFile : Dynamic;
	static public var ExistingFiles : Dynamic;
	public function FileMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var FileName : Dynamic;
	static public var FileType : Dynamic;
	static public var HideNameFilterDetails : Dynamic;
	static public var IgnoreMask : Dynamic;
	static public var List : Dynamic;
	static public var LookIn : Dynamic;
	public function Option(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Options(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function PaintDeviceMetric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PdmDepth : Dynamic;
	static public var PdmDevicePixelRatio : Dynamic;
	static public var PdmDevicePixelRatioScaled : Dynamic;
	static public var PdmDpiX : Dynamic;
	static public var PdmDpiY : Dynamic;
	static public var PdmHeight : Dynamic;
	static public var PdmHeightMM : Dynamic;
	static public var PdmNumColors : Dynamic;
	static public var PdmPhysicalDpiX : Dynamic;
	static public var PdmPhysicalDpiY : Dynamic;
	static public var PdmWidth : Dynamic;
	static public var PdmWidthMM : Dynamic;
	static public var ReadOnly : Dynamic;
	static public var Reject : Dynamic;
	static public var Rejected : Dynamic;
	public function RenderFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function RenderFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ShowDirsOnly : Dynamic;
	public function ViewMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function accept(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function acceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function acceptMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function accepted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function accessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function accessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function actionEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function actions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function activateWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function adjustPosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function adjustSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function autoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function backgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function backingStore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function changeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childrenRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childrenRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function closeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function colorCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function confirmOverwrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contentsRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contextMenuEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function createWindowContainer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function currentUrlChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customContextMenuRequested(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function defaultSuffix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function depth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatio(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatioF(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function devicePixelRatioFScale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function directory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function directoryEntered(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function directoryUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function directoryUrlEntered(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function done(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragEnterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragLeaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dragMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dropEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function effectiveWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ensurePolished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function enterEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function exec_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fileMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fileSelected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filesSelected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filterSelected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function finished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusInEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusNextChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusNextPrevChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusOutEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusPreviousChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function focusWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fontInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fontMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function foregroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frameSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function getExistingDirectory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function getExistingDirectoryUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function getOpenFileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function getOpenFileNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function getOpenFileUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function getOpenFileUrls(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function getSaveFileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function getSaveFileUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function grabShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function graphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function graphicsProxyWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasHeightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function height(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightForWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function heightMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hideEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function history(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function iconProvider(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function initPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inputMethodQuery(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertActions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function internalWinId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isActiveWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAncestorOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabledTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabledToTLW(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isLeftToRight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNameFilterDetailsVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isReadOnly(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRightToLeft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSizeGripEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isTopLevel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isVisibleTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function itemDelegate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyPressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function keyboardGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function labelText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function layout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function layoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function leaveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function locale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapFromParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToGlobal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapToParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mimeTypeFilters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function minimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseDoubleClickEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mouseGrabber(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseMoveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mousePressEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mouseReleaseEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function move(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nameFilters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nativeParentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function normalGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function options(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function orientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function overrideWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function overrideWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function paintEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var painters : Dynamic;
	public function paintingActive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function palette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parentWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function physicalDpiX(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function physicalDpiY(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function previousInFocusChain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function proxyModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function raise_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function redirected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rejected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function releaseKeyboard(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function releaseMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function releaseShortcut(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeAction(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function render(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function repaint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resizeEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resolveSymlinks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function restoreGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function restoreState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function result(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function saveGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function saveState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scroll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectMimeTypeFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectNameFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectedFiles(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectedNameFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function selectedUrls(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptDrops(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAcceptMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAccessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAccessibleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAutoFillBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBackgroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBaseSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setConfirmOverwrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setContentsMargins(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setContextMenuPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDefaultSuffix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDirectory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDirectoryUrl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDisabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFileMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFixedHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFixedSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFixedWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocusPolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFocusProxy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setForegroundRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGraphicsEffect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setHistory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setIconProvider(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setInputMethodHints(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setItemDelegate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLabelText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLayout(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMaximumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMimeTypeFilters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMinimumWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setModal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setMouseTracking(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNameFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNameFilterDetailsVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNameFilters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOrientation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPalette(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProxyModel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setReadOnly(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setResolveSymlinks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setResult(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setShortcutAutoRepeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setShortcutEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSidebarUrls(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizeGripEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStatusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStyle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStyleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSupportedSchemes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setTabOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setToolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setToolTipDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUpdatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setViewMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setVisible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWhatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWindowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sharedPainter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function show(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showFullScreen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showMaximized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showMinimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function showNormal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sidebarUrls(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeIncrement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizePolicy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stackUnder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	public function statusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function styleSheet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedSchemes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tabletEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function testOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toolTipDuration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function topLevelWidget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function underMouse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ungrabGesture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetCursor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetLayoutDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetLocale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updateGeometry(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updateMicroFocus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function updatesEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function urlSelected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function urlsSelected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function viewMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function visibleRegion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function whatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function wheelEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function width(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function widthMM(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function winId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function window(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowHandle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowIconChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowIconText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowIconTextChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowModality(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowOpacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowRole(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowTitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowTitleChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function windowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function x(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function y(args:haxe.extern.Rest<Dynamic>):Dynamic;
}