�
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
~
dense_2305/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*"
shared_namedense_2305/kernel
w
%dense_2305/kernel/Read/ReadVariableOpReadVariableOpdense_2305/kernel*
_output_shapes

:QQ*
dtype0
v
dense_2305/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q* 
shared_namedense_2305/bias
o
#dense_2305/bias/Read/ReadVariableOpReadVariableOpdense_2305/bias*
_output_shapes
:Q*
dtype0
~
dense_2306/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*"
shared_namedense_2306/kernel
w
%dense_2306/kernel/Read/ReadVariableOpReadVariableOpdense_2306/kernel*
_output_shapes

:QQ*
dtype0
v
dense_2306/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q* 
shared_namedense_2306/bias
o
#dense_2306/bias/Read/ReadVariableOpReadVariableOpdense_2306/bias*
_output_shapes
:Q*
dtype0
~
dense_2307/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Q*"
shared_namedense_2307/kernel
w
%dense_2307/kernel/Read/ReadVariableOpReadVariableOpdense_2307/kernel*
_output_shapes

:Q*
dtype0
v
dense_2307/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_2307/bias
o
#dense_2307/bias/Read/ReadVariableOpReadVariableOpdense_2307/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
�
Adam/dense_2305/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*)
shared_nameAdam/dense_2305/kernel/m
�
,Adam/dense_2305/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2305/kernel/m*
_output_shapes

:QQ*
dtype0
�
Adam/dense_2305/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*'
shared_nameAdam/dense_2305/bias/m
}
*Adam/dense_2305/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2305/bias/m*
_output_shapes
:Q*
dtype0
�
Adam/dense_2306/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*)
shared_nameAdam/dense_2306/kernel/m
�
,Adam/dense_2306/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2306/kernel/m*
_output_shapes

:QQ*
dtype0
�
Adam/dense_2306/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*'
shared_nameAdam/dense_2306/bias/m
}
*Adam/dense_2306/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2306/bias/m*
_output_shapes
:Q*
dtype0
�
Adam/dense_2307/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Q*)
shared_nameAdam/dense_2307/kernel/m
�
,Adam/dense_2307/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2307/kernel/m*
_output_shapes

:Q*
dtype0
�
Adam/dense_2307/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2307/bias/m
}
*Adam/dense_2307/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2307/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_2305/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*)
shared_nameAdam/dense_2305/kernel/v
�
,Adam/dense_2305/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2305/kernel/v*
_output_shapes

:QQ*
dtype0
�
Adam/dense_2305/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*'
shared_nameAdam/dense_2305/bias/v
}
*Adam/dense_2305/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2305/bias/v*
_output_shapes
:Q*
dtype0
�
Adam/dense_2306/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*)
shared_nameAdam/dense_2306/kernel/v
�
,Adam/dense_2306/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2306/kernel/v*
_output_shapes

:QQ*
dtype0
�
Adam/dense_2306/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*'
shared_nameAdam/dense_2306/bias/v
}
*Adam/dense_2306/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2306/bias/v*
_output_shapes
:Q*
dtype0
�
Adam/dense_2307/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Q*)
shared_nameAdam/dense_2307/kernel/v
�
,Adam/dense_2307/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2307/kernel/v*
_output_shapes

:Q*
dtype0
�
Adam/dense_2307/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2307/bias/v
}
*Adam/dense_2307/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2307/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�*
value�*B�* B�*
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*
�
%iter

&beta_1

'beta_2
	(decay
)learning_ratemDmEmFmGmHmIvJvKvLvMvNvO*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
�
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

/serving_default* 
a[
VARIABLE_VALUEdense_2305/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2305/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_2306/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2306/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_2307/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2307/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

?0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	@total
	Acount
B	variables
C	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1*

B	variables*
�~
VARIABLE_VALUEAdam/dense_2305/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2305/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2306/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2306/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2307/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2307/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2305/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2305/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2306/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2306/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2307/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2307/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_dense_2305_inputPlaceholder*'
_output_shapes
:���������Q*
dtype0*
shape:���������Q
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_2305_inputdense_2305/kerneldense_2305/biasdense_2306/kerneldense_2306/biasdense_2307/kerneldense_2307/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_11283090
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_2305/kernel/Read/ReadVariableOp#dense_2305/bias/Read/ReadVariableOp%dense_2306/kernel/Read/ReadVariableOp#dense_2306/bias/Read/ReadVariableOp%dense_2307/kernel/Read/ReadVariableOp#dense_2307/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_2305/kernel/m/Read/ReadVariableOp*Adam/dense_2305/bias/m/Read/ReadVariableOp,Adam/dense_2306/kernel/m/Read/ReadVariableOp*Adam/dense_2306/bias/m/Read/ReadVariableOp,Adam/dense_2307/kernel/m/Read/ReadVariableOp*Adam/dense_2307/bias/m/Read/ReadVariableOp,Adam/dense_2305/kernel/v/Read/ReadVariableOp*Adam/dense_2305/bias/v/Read/ReadVariableOp,Adam/dense_2306/kernel/v/Read/ReadVariableOp*Adam/dense_2306/bias/v/Read/ReadVariableOp,Adam/dense_2307/kernel/v/Read/ReadVariableOp*Adam/dense_2307/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_save_11283247
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2305/kerneldense_2305/biasdense_2306/kerneldense_2306/biasdense_2307/kerneldense_2307/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_2305/kernel/mAdam/dense_2305/bias/mAdam/dense_2306/kernel/mAdam/dense_2306/bias/mAdam/dense_2307/kernel/mAdam/dense_2307/bias/mAdam/dense_2305/kernel/vAdam/dense_2305/bias/vAdam/dense_2306/kernel/vAdam/dense_2306/bias/vAdam/dense_2307/kernel/vAdam/dense_2307/bias/v*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference__traced_restore_11283332��
�	
�
1__inference_sequential_904_layer_call_fn_11282840
dense_2305_input
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_2305_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282825o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������Q
*
_user_specified_namedense_2305_input
�
�
L__inference_sequential_904_layer_call_and_return_conditional_losses_11283071

inputs;
)dense_2305_matmul_readvariableop_resource:QQ8
*dense_2305_biasadd_readvariableop_resource:Q;
)dense_2306_matmul_readvariableop_resource:QQ8
*dense_2306_biasadd_readvariableop_resource:Q;
)dense_2307_matmul_readvariableop_resource:Q8
*dense_2307_biasadd_readvariableop_resource:
identity��!dense_2305/BiasAdd/ReadVariableOp� dense_2305/MatMul/ReadVariableOp�!dense_2306/BiasAdd/ReadVariableOp� dense_2306/MatMul/ReadVariableOp�!dense_2307/BiasAdd/ReadVariableOp� dense_2307/MatMul/ReadVariableOp`
dense_2305/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������Q�
 dense_2305/MatMul/ReadVariableOpReadVariableOp)dense_2305_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0�
dense_2305/MatMulMatMuldense_2305/Cast:y:0(dense_2305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q�
!dense_2305/BiasAdd/ReadVariableOpReadVariableOp*dense_2305_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0�
dense_2305/BiasAddBiasAdddense_2305/MatMul:product:0)dense_2305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Qf
dense_2305/ReluReludense_2305/BiasAdd:output:0*
T0*'
_output_shapes
:���������Q�
 dense_2306/MatMul/ReadVariableOpReadVariableOp)dense_2306_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0�
dense_2306/MatMulMatMuldense_2305/Relu:activations:0(dense_2306/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q�
!dense_2306/BiasAdd/ReadVariableOpReadVariableOp*dense_2306_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0�
dense_2306/BiasAddBiasAdddense_2306/MatMul:product:0)dense_2306/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Qf
dense_2306/ReluReludense_2306/BiasAdd:output:0*
T0*'
_output_shapes
:���������Q�
 dense_2307/MatMul/ReadVariableOpReadVariableOp)dense_2307_matmul_readvariableop_resource*
_output_shapes

:Q*
dtype0�
dense_2307/MatMulMatMuldense_2306/Relu:activations:0(dense_2307/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_2307/BiasAdd/ReadVariableOpReadVariableOp*dense_2307_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2307/BiasAddBiasAdddense_2307/MatMul:product:0)dense_2307/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_2307/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_2305/BiasAdd/ReadVariableOp!^dense_2305/MatMul/ReadVariableOp"^dense_2306/BiasAdd/ReadVariableOp!^dense_2306/MatMul/ReadVariableOp"^dense_2307/BiasAdd/ReadVariableOp!^dense_2307/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 2F
!dense_2305/BiasAdd/ReadVariableOp!dense_2305/BiasAdd/ReadVariableOp2D
 dense_2305/MatMul/ReadVariableOp dense_2305/MatMul/ReadVariableOp2F
!dense_2306/BiasAdd/ReadVariableOp!dense_2306/BiasAdd/ReadVariableOp2D
 dense_2306/MatMul/ReadVariableOp dense_2306/MatMul/ReadVariableOp2F
!dense_2307/BiasAdd/ReadVariableOp!dense_2307/BiasAdd/ReadVariableOp2D
 dense_2307/MatMul/ReadVariableOp dense_2307/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�
�
1__inference_sequential_904_layer_call_fn_11283004

inputs
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282825o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�

�
H__inference_dense_2305_layer_call_and_return_conditional_losses_11282785

inputs0
matmul_readvariableop_resource:QQ-
biasadd_readvariableop_resource:Q
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Qr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������QP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Qa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Qw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�
�
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282825

inputs%
dense_2305_11282786:QQ!
dense_2305_11282788:Q%
dense_2306_11282803:QQ!
dense_2306_11282805:Q%
dense_2307_11282819:Q!
dense_2307_11282821:
identity��"dense_2305/StatefulPartitionedCall�"dense_2306/StatefulPartitionedCall�"dense_2307/StatefulPartitionedCall`
dense_2305/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������Q�
"dense_2305/StatefulPartitionedCallStatefulPartitionedCalldense_2305/Cast:y:0dense_2305_11282786dense_2305_11282788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2305_layer_call_and_return_conditional_losses_11282785�
"dense_2306/StatefulPartitionedCallStatefulPartitionedCall+dense_2305/StatefulPartitionedCall:output:0dense_2306_11282803dense_2306_11282805*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2306_layer_call_and_return_conditional_losses_11282802�
"dense_2307/StatefulPartitionedCallStatefulPartitionedCall+dense_2306/StatefulPartitionedCall:output:0dense_2307_11282819dense_2307_11282821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2307_layer_call_and_return_conditional_losses_11282818z
IdentityIdentity+dense_2307/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_2305/StatefulPartitionedCall#^dense_2306/StatefulPartitionedCall#^dense_2307/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 2H
"dense_2305/StatefulPartitionedCall"dense_2305/StatefulPartitionedCall2H
"dense_2306/StatefulPartitionedCall"dense_2306/StatefulPartitionedCall2H
"dense_2307/StatefulPartitionedCall"dense_2307/StatefulPartitionedCall:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�
�
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282909

inputs%
dense_2305_11282893:QQ!
dense_2305_11282895:Q%
dense_2306_11282898:QQ!
dense_2306_11282900:Q%
dense_2307_11282903:Q!
dense_2307_11282905:
identity��"dense_2305/StatefulPartitionedCall�"dense_2306/StatefulPartitionedCall�"dense_2307/StatefulPartitionedCall`
dense_2305/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������Q�
"dense_2305/StatefulPartitionedCallStatefulPartitionedCalldense_2305/Cast:y:0dense_2305_11282893dense_2305_11282895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2305_layer_call_and_return_conditional_losses_11282785�
"dense_2306/StatefulPartitionedCallStatefulPartitionedCall+dense_2305/StatefulPartitionedCall:output:0dense_2306_11282898dense_2306_11282900*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2306_layer_call_and_return_conditional_losses_11282802�
"dense_2307/StatefulPartitionedCallStatefulPartitionedCall+dense_2306/StatefulPartitionedCall:output:0dense_2307_11282903dense_2307_11282905*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2307_layer_call_and_return_conditional_losses_11282818z
IdentityIdentity+dense_2307/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_2305/StatefulPartitionedCall#^dense_2306/StatefulPartitionedCall#^dense_2307/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 2H
"dense_2305/StatefulPartitionedCall"dense_2305/StatefulPartitionedCall2H
"dense_2306/StatefulPartitionedCall"dense_2306/StatefulPartitionedCall2H
"dense_2307/StatefulPartitionedCall"dense_2307/StatefulPartitionedCall:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�	
�
H__inference_dense_2307_layer_call_and_return_conditional_losses_11283149

inputs0
matmul_readvariableop_resource:Q-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�
�
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282961
dense_2305_input%
dense_2305_11282945:QQ!
dense_2305_11282947:Q%
dense_2306_11282950:QQ!
dense_2306_11282952:Q%
dense_2307_11282955:Q!
dense_2307_11282957:
identity��"dense_2305/StatefulPartitionedCall�"dense_2306/StatefulPartitionedCall�"dense_2307/StatefulPartitionedCallj
dense_2305/CastCastdense_2305_input*

DstT0*

SrcT0*'
_output_shapes
:���������Q�
"dense_2305/StatefulPartitionedCallStatefulPartitionedCalldense_2305/Cast:y:0dense_2305_11282945dense_2305_11282947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2305_layer_call_and_return_conditional_losses_11282785�
"dense_2306/StatefulPartitionedCallStatefulPartitionedCall+dense_2305/StatefulPartitionedCall:output:0dense_2306_11282950dense_2306_11282952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2306_layer_call_and_return_conditional_losses_11282802�
"dense_2307/StatefulPartitionedCallStatefulPartitionedCall+dense_2306/StatefulPartitionedCall:output:0dense_2307_11282955dense_2307_11282957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2307_layer_call_and_return_conditional_losses_11282818z
IdentityIdentity+dense_2307/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_2305/StatefulPartitionedCall#^dense_2306/StatefulPartitionedCall#^dense_2307/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 2H
"dense_2305/StatefulPartitionedCall"dense_2305/StatefulPartitionedCall2H
"dense_2306/StatefulPartitionedCall"dense_2306/StatefulPartitionedCall2H
"dense_2307/StatefulPartitionedCall"dense_2307/StatefulPartitionedCall:Y U
'
_output_shapes
:���������Q
*
_user_specified_namedense_2305_input
�	
�
1__inference_sequential_904_layer_call_fn_11282941
dense_2305_input
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_2305_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282909o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������Q
*
_user_specified_namedense_2305_input
�

�
H__inference_dense_2306_layer_call_and_return_conditional_losses_11282802

inputs0
matmul_readvariableop_resource:QQ-
biasadd_readvariableop_resource:Q
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Qr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������QP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Qa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Qw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�
�
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282981
dense_2305_input%
dense_2305_11282965:QQ!
dense_2305_11282967:Q%
dense_2306_11282970:QQ!
dense_2306_11282972:Q%
dense_2307_11282975:Q!
dense_2307_11282977:
identity��"dense_2305/StatefulPartitionedCall�"dense_2306/StatefulPartitionedCall�"dense_2307/StatefulPartitionedCallj
dense_2305/CastCastdense_2305_input*

DstT0*

SrcT0*'
_output_shapes
:���������Q�
"dense_2305/StatefulPartitionedCallStatefulPartitionedCalldense_2305/Cast:y:0dense_2305_11282965dense_2305_11282967*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2305_layer_call_and_return_conditional_losses_11282785�
"dense_2306/StatefulPartitionedCallStatefulPartitionedCall+dense_2305/StatefulPartitionedCall:output:0dense_2306_11282970dense_2306_11282972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2306_layer_call_and_return_conditional_losses_11282802�
"dense_2307/StatefulPartitionedCallStatefulPartitionedCall+dense_2306/StatefulPartitionedCall:output:0dense_2307_11282975dense_2307_11282977*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2307_layer_call_and_return_conditional_losses_11282818z
IdentityIdentity+dense_2307/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_2305/StatefulPartitionedCall#^dense_2306/StatefulPartitionedCall#^dense_2307/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 2H
"dense_2305/StatefulPartitionedCall"dense_2305/StatefulPartitionedCall2H
"dense_2306/StatefulPartitionedCall"dense_2306/StatefulPartitionedCall2H
"dense_2307/StatefulPartitionedCall"dense_2307/StatefulPartitionedCall:Y U
'
_output_shapes
:���������Q
*
_user_specified_namedense_2305_input
�
�
-__inference_dense_2306_layer_call_fn_11283119

inputs
unknown:QQ
	unknown_0:Q
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2306_layer_call_and_return_conditional_losses_11282802o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������Q`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�

�
H__inference_dense_2305_layer_call_and_return_conditional_losses_11283110

inputs0
matmul_readvariableop_resource:QQ-
biasadd_readvariableop_resource:Q
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Qr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������QP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Qa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Qw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_11283090
dense_2305_input
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_2305_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_11282766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������Q
*
_user_specified_namedense_2305_input
�
�
1__inference_sequential_904_layer_call_fn_11283021

inputs
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282909o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�
�
-__inference_dense_2307_layer_call_fn_11283139

inputs
unknown:Q
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2307_layer_call_and_return_conditional_losses_11282818o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�9
�

!__inference__traced_save_11283247
file_prefix0
,savev2_dense_2305_kernel_read_readvariableop.
*savev2_dense_2305_bias_read_readvariableop0
,savev2_dense_2306_kernel_read_readvariableop.
*savev2_dense_2306_bias_read_readvariableop0
,savev2_dense_2307_kernel_read_readvariableop.
*savev2_dense_2307_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_2305_kernel_m_read_readvariableop5
1savev2_adam_dense_2305_bias_m_read_readvariableop7
3savev2_adam_dense_2306_kernel_m_read_readvariableop5
1savev2_adam_dense_2306_bias_m_read_readvariableop7
3savev2_adam_dense_2307_kernel_m_read_readvariableop5
1savev2_adam_dense_2307_bias_m_read_readvariableop7
3savev2_adam_dense_2305_kernel_v_read_readvariableop5
1savev2_adam_dense_2305_bias_v_read_readvariableop7
3savev2_adam_dense_2306_kernel_v_read_readvariableop5
1savev2_adam_dense_2306_bias_v_read_readvariableop7
3savev2_adam_dense_2307_kernel_v_read_readvariableop5
1savev2_adam_dense_2307_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_2305_kernel_read_readvariableop*savev2_dense_2305_bias_read_readvariableop,savev2_dense_2306_kernel_read_readvariableop*savev2_dense_2306_bias_read_readvariableop,savev2_dense_2307_kernel_read_readvariableop*savev2_dense_2307_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_2305_kernel_m_read_readvariableop1savev2_adam_dense_2305_bias_m_read_readvariableop3savev2_adam_dense_2306_kernel_m_read_readvariableop1savev2_adam_dense_2306_bias_m_read_readvariableop3savev2_adam_dense_2307_kernel_m_read_readvariableop1savev2_adam_dense_2307_bias_m_read_readvariableop3savev2_adam_dense_2305_kernel_v_read_readvariableop1savev2_adam_dense_2305_bias_v_read_readvariableop3savev2_adam_dense_2306_kernel_v_read_readvariableop1savev2_adam_dense_2306_bias_v_read_readvariableop3savev2_adam_dense_2307_kernel_v_read_readvariableop1savev2_adam_dense_2307_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :QQ:Q:QQ:Q:Q:: : : : : : : :QQ:Q:QQ:Q:Q::QQ:Q:QQ:Q:Q:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:QQ: 

_output_shapes
:Q:$ 

_output_shapes

:QQ: 

_output_shapes
:Q:$ 

_output_shapes

:Q: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:QQ: 

_output_shapes
:Q:$ 

_output_shapes

:QQ: 

_output_shapes
:Q:$ 

_output_shapes

:Q: 

_output_shapes
::$ 

_output_shapes

:QQ: 

_output_shapes
:Q:$ 

_output_shapes

:QQ: 

_output_shapes
:Q:$ 

_output_shapes

:Q: 

_output_shapes
::

_output_shapes
: 
�
�
-__inference_dense_2305_layer_call_fn_11283099

inputs
unknown:QQ
	unknown_0:Q
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_2305_layer_call_and_return_conditional_losses_11282785o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������Q`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�f
�
$__inference__traced_restore_11283332
file_prefix4
"assignvariableop_dense_2305_kernel:QQ0
"assignvariableop_1_dense_2305_bias:Q6
$assignvariableop_2_dense_2306_kernel:QQ0
"assignvariableop_3_dense_2306_bias:Q6
$assignvariableop_4_dense_2307_kernel:Q0
"assignvariableop_5_dense_2307_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: >
,assignvariableop_13_adam_dense_2305_kernel_m:QQ8
*assignvariableop_14_adam_dense_2305_bias_m:Q>
,assignvariableop_15_adam_dense_2306_kernel_m:QQ8
*assignvariableop_16_adam_dense_2306_bias_m:Q>
,assignvariableop_17_adam_dense_2307_kernel_m:Q8
*assignvariableop_18_adam_dense_2307_bias_m:>
,assignvariableop_19_adam_dense_2305_kernel_v:QQ8
*assignvariableop_20_adam_dense_2305_bias_v:Q>
,assignvariableop_21_adam_dense_2306_kernel_v:QQ8
*assignvariableop_22_adam_dense_2306_bias_v:Q>
,assignvariableop_23_adam_dense_2307_kernel_v:Q8
*assignvariableop_24_adam_dense_2307_bias_v:
identity_26��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_dense_2305_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_2305_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_2306_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_2306_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_2307_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_2307_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_2305_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_2305_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_2306_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_2306_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_2307_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_2307_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_2305_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_2305_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_2306_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_2306_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_2307_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_2307_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�%
�
#__inference__wrapped_model_11282766
dense_2305_inputJ
8sequential_904_dense_2305_matmul_readvariableop_resource:QQG
9sequential_904_dense_2305_biasadd_readvariableop_resource:QJ
8sequential_904_dense_2306_matmul_readvariableop_resource:QQG
9sequential_904_dense_2306_biasadd_readvariableop_resource:QJ
8sequential_904_dense_2307_matmul_readvariableop_resource:QG
9sequential_904_dense_2307_biasadd_readvariableop_resource:
identity��0sequential_904/dense_2305/BiasAdd/ReadVariableOp�/sequential_904/dense_2305/MatMul/ReadVariableOp�0sequential_904/dense_2306/BiasAdd/ReadVariableOp�/sequential_904/dense_2306/MatMul/ReadVariableOp�0sequential_904/dense_2307/BiasAdd/ReadVariableOp�/sequential_904/dense_2307/MatMul/ReadVariableOpy
sequential_904/dense_2305/CastCastdense_2305_input*

DstT0*

SrcT0*'
_output_shapes
:���������Q�
/sequential_904/dense_2305/MatMul/ReadVariableOpReadVariableOp8sequential_904_dense_2305_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0�
 sequential_904/dense_2305/MatMulMatMul"sequential_904/dense_2305/Cast:y:07sequential_904/dense_2305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q�
0sequential_904/dense_2305/BiasAdd/ReadVariableOpReadVariableOp9sequential_904_dense_2305_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0�
!sequential_904/dense_2305/BiasAddBiasAdd*sequential_904/dense_2305/MatMul:product:08sequential_904/dense_2305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q�
sequential_904/dense_2305/ReluRelu*sequential_904/dense_2305/BiasAdd:output:0*
T0*'
_output_shapes
:���������Q�
/sequential_904/dense_2306/MatMul/ReadVariableOpReadVariableOp8sequential_904_dense_2306_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0�
 sequential_904/dense_2306/MatMulMatMul,sequential_904/dense_2305/Relu:activations:07sequential_904/dense_2306/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q�
0sequential_904/dense_2306/BiasAdd/ReadVariableOpReadVariableOp9sequential_904_dense_2306_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0�
!sequential_904/dense_2306/BiasAddBiasAdd*sequential_904/dense_2306/MatMul:product:08sequential_904/dense_2306/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q�
sequential_904/dense_2306/ReluRelu*sequential_904/dense_2306/BiasAdd:output:0*
T0*'
_output_shapes
:���������Q�
/sequential_904/dense_2307/MatMul/ReadVariableOpReadVariableOp8sequential_904_dense_2307_matmul_readvariableop_resource*
_output_shapes

:Q*
dtype0�
 sequential_904/dense_2307/MatMulMatMul,sequential_904/dense_2306/Relu:activations:07sequential_904/dense_2307/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0sequential_904/dense_2307/BiasAdd/ReadVariableOpReadVariableOp9sequential_904_dense_2307_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!sequential_904/dense_2307/BiasAddBiasAdd*sequential_904/dense_2307/MatMul:product:08sequential_904/dense_2307/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������y
IdentityIdentity*sequential_904/dense_2307/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^sequential_904/dense_2305/BiasAdd/ReadVariableOp0^sequential_904/dense_2305/MatMul/ReadVariableOp1^sequential_904/dense_2306/BiasAdd/ReadVariableOp0^sequential_904/dense_2306/MatMul/ReadVariableOp1^sequential_904/dense_2307/BiasAdd/ReadVariableOp0^sequential_904/dense_2307/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 2d
0sequential_904/dense_2305/BiasAdd/ReadVariableOp0sequential_904/dense_2305/BiasAdd/ReadVariableOp2b
/sequential_904/dense_2305/MatMul/ReadVariableOp/sequential_904/dense_2305/MatMul/ReadVariableOp2d
0sequential_904/dense_2306/BiasAdd/ReadVariableOp0sequential_904/dense_2306/BiasAdd/ReadVariableOp2b
/sequential_904/dense_2306/MatMul/ReadVariableOp/sequential_904/dense_2306/MatMul/ReadVariableOp2d
0sequential_904/dense_2307/BiasAdd/ReadVariableOp0sequential_904/dense_2307/BiasAdd/ReadVariableOp2b
/sequential_904/dense_2307/MatMul/ReadVariableOp/sequential_904/dense_2307/MatMul/ReadVariableOp:Y U
'
_output_shapes
:���������Q
*
_user_specified_namedense_2305_input
�	
�
H__inference_dense_2307_layer_call_and_return_conditional_losses_11282818

inputs0
matmul_readvariableop_resource:Q-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�

�
H__inference_dense_2306_layer_call_and_return_conditional_losses_11283130

inputs0
matmul_readvariableop_resource:QQ-
biasadd_readvariableop_resource:Q
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Qr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������QP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Qa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Qw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs
�
�
L__inference_sequential_904_layer_call_and_return_conditional_losses_11283046

inputs;
)dense_2305_matmul_readvariableop_resource:QQ8
*dense_2305_biasadd_readvariableop_resource:Q;
)dense_2306_matmul_readvariableop_resource:QQ8
*dense_2306_biasadd_readvariableop_resource:Q;
)dense_2307_matmul_readvariableop_resource:Q8
*dense_2307_biasadd_readvariableop_resource:
identity��!dense_2305/BiasAdd/ReadVariableOp� dense_2305/MatMul/ReadVariableOp�!dense_2306/BiasAdd/ReadVariableOp� dense_2306/MatMul/ReadVariableOp�!dense_2307/BiasAdd/ReadVariableOp� dense_2307/MatMul/ReadVariableOp`
dense_2305/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������Q�
 dense_2305/MatMul/ReadVariableOpReadVariableOp)dense_2305_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0�
dense_2305/MatMulMatMuldense_2305/Cast:y:0(dense_2305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q�
!dense_2305/BiasAdd/ReadVariableOpReadVariableOp*dense_2305_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0�
dense_2305/BiasAddBiasAdddense_2305/MatMul:product:0)dense_2305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Qf
dense_2305/ReluReludense_2305/BiasAdd:output:0*
T0*'
_output_shapes
:���������Q�
 dense_2306/MatMul/ReadVariableOpReadVariableOp)dense_2306_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0�
dense_2306/MatMulMatMuldense_2305/Relu:activations:0(dense_2306/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Q�
!dense_2306/BiasAdd/ReadVariableOpReadVariableOp*dense_2306_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0�
dense_2306/BiasAddBiasAdddense_2306/MatMul:product:0)dense_2306/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Qf
dense_2306/ReluReludense_2306/BiasAdd:output:0*
T0*'
_output_shapes
:���������Q�
 dense_2307/MatMul/ReadVariableOpReadVariableOp)dense_2307_matmul_readvariableop_resource*
_output_shapes

:Q*
dtype0�
dense_2307/MatMulMatMuldense_2306/Relu:activations:0(dense_2307/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_2307/BiasAdd/ReadVariableOpReadVariableOp*dense_2307_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2307/BiasAddBiasAdddense_2307/MatMul:product:0)dense_2307/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_2307/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_2305/BiasAdd/ReadVariableOp!^dense_2305/MatMul/ReadVariableOp"^dense_2306/BiasAdd/ReadVariableOp!^dense_2306/MatMul/ReadVariableOp"^dense_2307/BiasAdd/ReadVariableOp!^dense_2307/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Q: : : : : : 2F
!dense_2305/BiasAdd/ReadVariableOp!dense_2305/BiasAdd/ReadVariableOp2D
 dense_2305/MatMul/ReadVariableOp dense_2305/MatMul/ReadVariableOp2F
!dense_2306/BiasAdd/ReadVariableOp!dense_2306/BiasAdd/ReadVariableOp2D
 dense_2306/MatMul/ReadVariableOp dense_2306/MatMul/ReadVariableOp2F
!dense_2307/BiasAdd/ReadVariableOp!dense_2307/BiasAdd/ReadVariableOp2D
 dense_2307/MatMul/ReadVariableOp dense_2307/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������Q
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
dense_2305_input9
"serving_default_dense_2305_input:0���������Q>

dense_23070
StatefulPartitionedCall:0���������tensorflow/serving/predict:�N
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
�
%iter

&beta_1

'beta_2
	(decay
)learning_ratemDmEmFmGmHmIvJvKvLvMvNvO"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�2�
1__inference_sequential_904_layer_call_fn_11282840
1__inference_sequential_904_layer_call_fn_11283004
1__inference_sequential_904_layer_call_fn_11283021
1__inference_sequential_904_layer_call_fn_11282941�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
L__inference_sequential_904_layer_call_and_return_conditional_losses_11283046
L__inference_sequential_904_layer_call_and_return_conditional_losses_11283071
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282961
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282981�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference__wrapped_model_11282766dense_2305_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
/serving_default"
signature_map
#:!QQ2dense_2305/kernel
:Q2dense_2305/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_2305_layer_call_fn_11283099�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_dense_2305_layer_call_and_return_conditional_losses_11283110�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
#:!QQ2dense_2306/kernel
:Q2dense_2306/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_2306_layer_call_fn_11283119�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_dense_2306_layer_call_and_return_conditional_losses_11283130�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
#:!Q2dense_2307/kernel
:2dense_2307/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_2307_layer_call_fn_11283139�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_dense_2307_layer_call_and_return_conditional_losses_11283149�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_signature_wrapper_11283090dense_2305_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	@total
	Acount
B	variables
C	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
@0
A1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
(:&QQ2Adam/dense_2305/kernel/m
": Q2Adam/dense_2305/bias/m
(:&QQ2Adam/dense_2306/kernel/m
": Q2Adam/dense_2306/bias/m
(:&Q2Adam/dense_2307/kernel/m
": 2Adam/dense_2307/bias/m
(:&QQ2Adam/dense_2305/kernel/v
": Q2Adam/dense_2305/bias/v
(:&QQ2Adam/dense_2306/kernel/v
": Q2Adam/dense_2306/bias/v
(:&Q2Adam/dense_2307/kernel/v
": 2Adam/dense_2307/bias/v�
#__inference__wrapped_model_11282766|9�6
/�,
*�'
dense_2305_input���������Q
� "7�4
2

dense_2307$�!

dense_2307����������
H__inference_dense_2305_layer_call_and_return_conditional_losses_11283110\/�,
%�"
 �
inputs���������Q
� "%�"
�
0���������Q
� �
-__inference_dense_2305_layer_call_fn_11283099O/�,
%�"
 �
inputs���������Q
� "����������Q�
H__inference_dense_2306_layer_call_and_return_conditional_losses_11283130\/�,
%�"
 �
inputs���������Q
� "%�"
�
0���������Q
� �
-__inference_dense_2306_layer_call_fn_11283119O/�,
%�"
 �
inputs���������Q
� "����������Q�
H__inference_dense_2307_layer_call_and_return_conditional_losses_11283149\/�,
%�"
 �
inputs���������Q
� "%�"
�
0���������
� �
-__inference_dense_2307_layer_call_fn_11283139O/�,
%�"
 �
inputs���������Q
� "�����������
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282961rA�>
7�4
*�'
dense_2305_input���������Q
p 

 
� "%�"
�
0���������
� �
L__inference_sequential_904_layer_call_and_return_conditional_losses_11282981rA�>
7�4
*�'
dense_2305_input���������Q
p

 
� "%�"
�
0���������
� �
L__inference_sequential_904_layer_call_and_return_conditional_losses_11283046h7�4
-�*
 �
inputs���������Q
p 

 
� "%�"
�
0���������
� �
L__inference_sequential_904_layer_call_and_return_conditional_losses_11283071h7�4
-�*
 �
inputs���������Q
p

 
� "%�"
�
0���������
� �
1__inference_sequential_904_layer_call_fn_11282840eA�>
7�4
*�'
dense_2305_input���������Q
p 

 
� "�����������
1__inference_sequential_904_layer_call_fn_11282941eA�>
7�4
*�'
dense_2305_input���������Q
p

 
� "�����������
1__inference_sequential_904_layer_call_fn_11283004[7�4
-�*
 �
inputs���������Q
p 

 
� "�����������
1__inference_sequential_904_layer_call_fn_11283021[7�4
-�*
 �
inputs���������Q
p

 
� "�����������
&__inference_signature_wrapper_11283090�M�J
� 
C�@
>
dense_2305_input*�'
dense_2305_input���������Q"7�4
2

dense_2307$�!

dense_2307���������