/* This file is generated, do not edit! */
package tensorflow.contrib.ffmpeg.ops.gen_encode_audio_op_py;
@:pythonImport("tensorflow.contrib.ffmpeg.ops.gen_encode_audio_op_py") extern class Gen_encode_audio_op_py_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Processes a `Tensor` containing sampled audio with the number of channels
		
		and length of the audio specified by the dimensions of the `Tensor`. The
		audio is converted into a string that, when saved to disk, will be equivalent
		to the audio in the specified audio format.
		
		The input audio has one row of the tensor for each channel in the audio file.
		Each channel contains audio samples starting at the beginning of the audio and
		having `1/samples_per_second` time between them. The output file will contain
		all of the audio channels contained in the tensor.
		
		Args:
		  sampled_audio: A `Tensor` of type `float32`.
		    A rank 2 tensor containing all tracks of the audio. Dimension 0
		    is time and dimension 1 is the channel.
		  file_format: A `string`.
		    A string describing the audio file format. This must be "wav".
		  samples_per_second: An `int`.
		    The number of samples per second that the audio should have.
		  bits_per_second: An optional `int`. Defaults to `192000`.
		    The approximate bitrate of the encoded audio file. This is
		    ignored by the "wav" file format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. The binary audio file contents.
	**/
	static public function encode_audio(sampled_audio:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, ?bits_per_second:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function encode_audio
	**/
	static public function encode_audio_eager_fallback(sampled_audio:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, ?bits_per_second:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Processes a `Tensor` containing sampled audio with the number of channels
		
		and length of the audio specified by the dimensions of the `Tensor`. The
		audio is converted into a string that, when saved to disk, will be equivalent
		to the audio in the specified audio format.
		
		The input audio has one row of the tensor for each channel in the audio file.
		Each channel contains audio samples starting at the beginning of the audio and
		having `1/samples_per_second` time between them. The output file will contain
		all of the audio channels contained in the tensor.
		
		Args:
		  sampled_audio: A `Tensor` of type `float32`.
		    A rank-2 float tensor containing all tracks of the audio.
		    Dimension 0 is time and dimension 1 is the channel.
		  file_format: A `Tensor` of type `string`.
		    A string or rank-0 string tensor describing the audio file
		    format. This value must be `"wav"`.
		  samples_per_second: A `Tensor` of type `int32`.
		    The number of samples per second that the audio should
		    have, as an int or rank-0 `int32` tensor. This value must be
		    positive.
		  bits_per_second: A `Tensor` of type `int32`.
		    The approximate bitrate of the encoded audio file, as
		    an int or rank-0 `int32` tensor. This is ignored by the "wav" file
		    format.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  The binary audio file contents, as a rank-0 string tensor.
	**/
	static public function encode_audio_v2(sampled_audio:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, bits_per_second:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function encode_audio_v2
	**/
	static public function encode_audio_v2_eager_fallback(sampled_audio:Dynamic, file_format:Dynamic, samples_per_second:Dynamic, bits_per_second:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}