/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QTemporaryFile") extern class QTemporaryFile {
	static public var AbortError : Dynamic;
	static public var Append : Dynamic;
	static public var AutoCloseHandle : Dynamic;
	static public var CopyError : Dynamic;
	static public var DontCloseHandle : Dynamic;
	static public var ExeGroup : Dynamic;
	static public var ExeOther : Dynamic;
	static public var ExeOwner : Dynamic;
	static public var ExeUser : Dynamic;
	static public var FatalError : Dynamic;
	public function FileError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function FileHandleFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function FileHandleFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MapPrivateOption : Dynamic;
	public function MemoryMapFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NoError : Dynamic;
	static public var NoOptions : Dynamic;
	static public var NotOpen : Dynamic;
	static public var OpenError : Dynamic;
	public function OpenMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function OpenModeFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Permission(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Permissions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PermissionsError : Dynamic;
	static public var PositionError : Dynamic;
	static public var ReadError : Dynamic;
	static public var ReadGroup : Dynamic;
	static public var ReadOnly : Dynamic;
	static public var ReadOther : Dynamic;
	static public var ReadOwner : Dynamic;
	static public var ReadUser : Dynamic;
	static public var ReadWrite : Dynamic;
	static public var RemoveError : Dynamic;
	static public var RenameError : Dynamic;
	static public var ResizeError : Dynamic;
	static public var ResourceError : Dynamic;
	static public var Text : Dynamic;
	static public var TimeOutError : Dynamic;
	static public var Truncate : Dynamic;
	static public var Unbuffered : Dynamic;
	static public var UnspecifiedError : Dynamic;
	static public var WriteError : Dynamic;
	static public var WriteGroup : Dynamic;
	static public var WriteOnly : Dynamic;
	static public var WriteOther : Dynamic;
	static public var WriteOwner : Dynamic;
	static public var WriteUser : Dynamic;
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
	public function aboutToClose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function atEnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function autoRemove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function blockSignals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bytesAvailable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bytesToWrite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bytesWritten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canReadLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function childEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function children(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function connectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function createLocalFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function createNativeFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function customEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function decodeName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function deleteLater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function destroyed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function disconnect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function disconnectNotify(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectInfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dumpObjectTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dynamicPropertyNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function encodeName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function error(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function errorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function event(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function exists(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fileTemplate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function findChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function getChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function handle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inherits(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function installEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isOpen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isReadable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSequential(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSignalConnected(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isTextModeEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWidgetType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWindowType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWritable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function killTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function link(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function metaObject(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moveToThread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function objectNameChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function openMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function peek(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function permissions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function property(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function putChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readAll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readChannelFinished(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readLine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readLineData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function readLink(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readyRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function receivers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function registerUserData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeEventFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function rename(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function seek(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sender(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function senderSignalIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAutoRemove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setErrorString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFileTemplate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setObjectName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setOpenMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setPermissions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setProperty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTextModeEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function signalsBlocked(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startTimer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var staticMetaObject : Dynamic;
	static public function symLinkTarget(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function thread(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function timerEvent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ungetChar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unmap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsetError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function waitForBytesWritten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function waitForReadyRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function write(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writeData(args:haxe.extern.Rest<Dynamic>):Dynamic;
}