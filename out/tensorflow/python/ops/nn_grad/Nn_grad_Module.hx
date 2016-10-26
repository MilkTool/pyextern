/* This file is generated, do not edit! */
package tensorflow.python.ops.nn_grad;
@:pythonImport("tensorflow.python.ops.nn_grad") extern class Nn_grad_Module {
	static public function _AvgPool3DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _AvgPoolGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Return the gradients for the 5 inputs of BatchNormWithGlobalNormalization.
		
		We do not backprop anything for the mean and var intentionally as they are
		not being trained with backprop in the operation.
		
		Args:
		  op: The BatchNormOp for which we need to generate gradients.
		  grad: Tensor.  The gradients passed to the BatchNormOp.
		
		Returns:
		  dx: Backprop for input, which is (grad * (g * rsqrt(v + epsilon)))
		  dm: Backprop for mean, which is
		      sum_over_rest(grad * g) * (-1 / rsqrt(v + epsilon))
		  dv: Backprop for variance, which is
		      sum_over_rest(grad * g * (x - m)) * (-1/2) * (v + epsilon) ^ (-3/2)
		  db: Backprop for beta, which is grad reduced in all except the
		      last dimension.
		  dg: Backprop for gamma, which is (grad * ((x - m) * rsqrt(v + epsilon)))
	**/
	static public function _BatchNormWithGlobalNormalizationGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Return the gradients for the 2 inputs of bias_op.
		
		The first input of unused_bias_op is the tensor t, and its gradient is
		just the gradient the unused_bias_op received.
		
		The second input of unused_bias_op is the bias vector which has one fewer
		dimension than "received_grad" (the batch dimension.)  Its gradient is the
		received gradient Summed on the batch dimension, which is the first dimension.
		
		Args:
		  op: The BiasOp for which we need to generate gradients.
		  received_grad: Tensor.  The gradients passed to the BiasOp.
		
		Returns:
		  Two tensors, the first one for the "tensor" input of the BiasOp,
		  the second one for the "bias" input of the BiasOp.
	**/
	static public function _BiasAddGrad(op:Dynamic, received_grad:Dynamic):Dynamic;
	/**
		Return the gradients for the 2 inputs of bias_op.
		
		The first input of unused_bias_op is the tensor t, and its gradient is
		just the gradient the unused_bias_op received.
		
		The second input of unused_bias_op is the bias vector which has one fewer
		dimension than "received_grad" (the batch dimension.)  Its gradient is the
		received gradient Summed on the batch dimension, which is the first dimension.
		
		Args:
		  unused_bias_op: The BiasOp for which we need to generate gradients.
		  received_grad: Tensor.  The gradients passed to the BiasOp.
		
		Returns:
		  Two tensors, the first one for the "tensor" input of the BiasOp,
		  the second one for the "bias" input of the BiasOp.
	**/
	static public function _BiasAddGradV1(unused_bias_op:Dynamic, received_grad:Dynamic):Dynamic;
	/**
		Multiply after broadcasting vec to match dimensions of mat.
		
		Args:
		  vec: A 1-D tensor of dimension [D0]
		  mat: A 2-D tensor of dimension [D0, D1]
		
		Returns:
		  A tensor of dimension [D0, D1], the result of vec * mat
	**/
	static public function _BroadcastMul(vec:Dynamic, mat:Dynamic):Dynamic;
	static public function _Conv2DBackpropFilterGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The derivatives for deconvolution.
		
		Args:
		  op: the Deconvolution op.
		  grad: the tensor representing the gradient w.r.t. the output
		
		Returns:
		  the gradients w.r.t. the input and the filter
	**/
	static public function _Conv2DBackpropInputGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Conv2DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Conv3DBackpropFilterGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Conv3DBackpropInputGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Conv3DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _DepthwiseConv2dNativeGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Dilation2DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _EluGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Return the gradients for L2Loss.
		
		Args:
		  op: The L2LossOp for which we need to generate gradients.
		  grad: Tensor containing a single number.
		
		Returns:
		  The gradient, which is (x * grad).
	**/
	static public function _L2LossGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _LRNGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient for log_softmax.
		
		    log_softmax = input - log(sum(exp(input))
		    dlog_softmax/dinput = diag - softmax(input)
		
		Args:
		  op: The log softmax op.
		  grad: The tensor representing the gradient w.r.t. the output.
		
		Returns:
		  The gradients w.r.t. the input.
	**/
	static public function _LogSoftmaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPool3DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPoolGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Relu6Grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReluGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReluGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SoftmaxCrossEntropyWithLogitsGrad(op:Dynamic, grad_0:Dynamic, _:Dynamic):Dynamic;
	/**
		The derivative of the softmax nonlinearity.
		
		We assume that probs is of shape [batch_size * dim]
		The formula for dsoftmax / dx = (diag(softmax) - softmax * softmax').
		This matrix is diagonal minus a rank one matrix, so it is easy to implement
		as follows:
		
		  grad_x = grad_softmax * softmax - sum(grad_softmax * softmax) * softmax
		
		Args:
		   op: the Softmax op.
		   grad_softmax:  the tensor representing the gradient w.r.t. the
		     softmax output.
		
		Returns:
		   gradient w.r.t the input to the softmax
	**/
	static public function _SoftmaxGrad(op:Dynamic, grad_softmax:Dynamic):Dynamic;
	static public function _SoftplusGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SoftsignGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SparseSoftmaxCrossEntropyWithLogitsGrad(op:Dynamic, grad_0:Dynamic, _:Dynamic):Dynamic;
	/**
		Return the gradients for TopK.
		
		Args:
		  op: The TopKOp for which we need to generate gradients.
		  grad: Tensor. The gradients passed to the TopKOp.
		
		Returns:
		  A list of two tensors, the first being the gradient w.r.t to the input and
		  TopK, and the second being the gradient w.r.t. to the indices (all zero).
	**/
	static public function _TopKGrad(op:Dynamic, grad:Dynamic, _:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}