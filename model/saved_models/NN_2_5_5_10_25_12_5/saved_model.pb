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
dense_2038/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:??*"
shared_namedense_2038/kernel
w
%dense_2038/kernel/Read/ReadVariableOpReadVariableOpdense_2038/kernel*
_output_shapes

:??*
dtype0
v
dense_2038/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namedense_2038/bias
o
#dense_2038/bias/Read/ReadVariableOpReadVariableOpdense_2038/bias*
_output_shapes
:?*
dtype0
~
dense_2039/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:??*"
shared_namedense_2039/kernel
w
%dense_2039/kernel/Read/ReadVariableOpReadVariableOpdense_2039/kernel*
_output_shapes

:??*
dtype0
v
dense_2039/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namedense_2039/bias
o
#dense_2039/bias/Read/ReadVariableOpReadVariableOpdense_2039/bias*
_output_shapes
:?*
dtype0
~
dense_2040/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:?*"
shared_namedense_2040/kernel
w
%dense_2040/kernel/Read/ReadVariableOpReadVariableOpdense_2040/kernel*
_output_shapes

:?*
dtype0
v
dense_2040/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_2040/bias
o
#dense_2040/bias/Read/ReadVariableOpReadVariableOpdense_2040/bias*
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
Adam/dense_2038/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:??*)
shared_nameAdam/dense_2038/kernel/m
�
,Adam/dense_2038/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2038/kernel/m*
_output_shapes

:??*
dtype0
�
Adam/dense_2038/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dense_2038/bias/m
}
*Adam/dense_2038/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2038/bias/m*
_output_shapes
:?*
dtype0
�
Adam/dense_2039/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:??*)
shared_nameAdam/dense_2039/kernel/m
�
,Adam/dense_2039/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2039/kernel/m*
_output_shapes

:??*
dtype0
�
Adam/dense_2039/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dense_2039/bias/m
}
*Adam/dense_2039/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2039/bias/m*
_output_shapes
:?*
dtype0
�
Adam/dense_2040/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:?*)
shared_nameAdam/dense_2040/kernel/m
�
,Adam/dense_2040/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2040/kernel/m*
_output_shapes

:?*
dtype0
�
Adam/dense_2040/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2040/bias/m
}
*Adam/dense_2040/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2040/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_2038/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:??*)
shared_nameAdam/dense_2038/kernel/v
�
,Adam/dense_2038/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2038/kernel/v*
_output_shapes

:??*
dtype0
�
Adam/dense_2038/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dense_2038/bias/v
}
*Adam/dense_2038/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2038/bias/v*
_output_shapes
:?*
dtype0
�
Adam/dense_2039/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:??*)
shared_nameAdam/dense_2039/kernel/v
�
,Adam/dense_2039/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2039/kernel/v*
_output_shapes

:??*
dtype0
�
Adam/dense_2039/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dense_2039/bias/v
}
*Adam/dense_2039/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2039/bias/v*
_output_shapes
:?*
dtype0
�
Adam/dense_2040/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:?*)
shared_nameAdam/dense_2040/kernel/v
�
,Adam/dense_2040/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2040/kernel/v*
_output_shapes

:?*
dtype0
�
Adam/dense_2040/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2040/bias/v
}
*Adam/dense_2040/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2040/bias/v*
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
VARIABLE_VALUEdense_2038/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2038/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2039/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2039/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2040/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2040/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_2038/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2038/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2039/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2039/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2040/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2040/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2038/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2038/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2039/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2039/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_2040/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_2040/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_dense_2038_inputPlaceholder*'
_output_shapes
:���������?*
dtype0*
shape:���������?
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_2038_inputdense_2038/kerneldense_2038/biasdense_2039/kerneldense_2039/biasdense_2040/kerneldense_2040/bias*
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
GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_8163166
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_2038/kernel/Read/ReadVariableOp#dense_2038/bias/Read/ReadVariableOp%dense_2039/kernel/Read/ReadVariableOp#dense_2039/bias/Read/ReadVariableOp%dense_2040/kernel/Read/ReadVariableOp#dense_2040/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_2038/kernel/m/Read/ReadVariableOp*Adam/dense_2038/bias/m/Read/ReadVariableOp,Adam/dense_2039/kernel/m/Read/ReadVariableOp*Adam/dense_2039/bias/m/Read/ReadVariableOp,Adam/dense_2040/kernel/m/Read/ReadVariableOp*Adam/dense_2040/bias/m/Read/ReadVariableOp,Adam/dense_2038/kernel/v/Read/ReadVariableOp*Adam/dense_2038/bias/v/Read/ReadVariableOp,Adam/dense_2039/kernel/v/Read/ReadVariableOp*Adam/dense_2039/bias/v/Read/ReadVariableOp,Adam/dense_2040/kernel/v/Read/ReadVariableOp*Adam/dense_2040/bias/v/Read/ReadVariableOpConst*&
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_8163323
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2038/kerneldense_2038/biasdense_2039/kerneldense_2039/biasdense_2040/kerneldense_2040/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_2038/kernel/mAdam/dense_2038/bias/mAdam/dense_2039/kernel/mAdam/dense_2039/bias/mAdam/dense_2040/kernel/mAdam/dense_2040/bias/mAdam/dense_2038/kernel/vAdam/dense_2038/bias/vAdam/dense_2039/kernel/vAdam/dense_2039/bias/vAdam/dense_2040/kernel/vAdam/dense_2040/bias/v*%
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_8163408��
�

�
G__inference_dense_2038_layer_call_and_return_conditional_losses_8163186

inputs0
matmul_readvariableop_resource:??-
biasadd_readvariableop_resource:?
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:??*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:?*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������?a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������?w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�f
�
#__inference__traced_restore_8163408
file_prefix4
"assignvariableop_dense_2038_kernel:??0
"assignvariableop_1_dense_2038_bias:?6
$assignvariableop_2_dense_2039_kernel:??0
"assignvariableop_3_dense_2039_bias:?6
$assignvariableop_4_dense_2040_kernel:?0
"assignvariableop_5_dense_2040_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: >
,assignvariableop_13_adam_dense_2038_kernel_m:??8
*assignvariableop_14_adam_dense_2038_bias_m:?>
,assignvariableop_15_adam_dense_2039_kernel_m:??8
*assignvariableop_16_adam_dense_2039_bias_m:?>
,assignvariableop_17_adam_dense_2040_kernel_m:?8
*assignvariableop_18_adam_dense_2040_bias_m:>
,assignvariableop_19_adam_dense_2038_kernel_v:??8
*assignvariableop_20_adam_dense_2038_bias_v:?>
,assignvariableop_21_adam_dense_2039_kernel_v:??8
*assignvariableop_22_adam_dense_2039_bias_v:?>
,assignvariableop_23_adam_dense_2040_kernel_v:?8
*assignvariableop_24_adam_dense_2040_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_2038_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_2038_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_2039_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_2039_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_2040_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_2040_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_2038_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_2038_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_2039_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_2039_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_2040_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_2040_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_2038_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_2038_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_2039_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_2039_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_2040_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_2040_bias_vIdentity_24:output:0"/device:CPU:0*
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
�

�
G__inference_dense_2039_layer_call_and_return_conditional_losses_8162878

inputs0
matmul_readvariableop_resource:??-
biasadd_readvariableop_resource:?
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:??*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:?*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������?a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������?w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
0__inference_sequential_815_layer_call_fn_8163080

inputs
unknown:??
	unknown_0:?
	unknown_1:??
	unknown_2:?
	unknown_3:?
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
GPU 2J 8� *T
fORM
K__inference_sequential_815_layer_call_and_return_conditional_losses_8162901o
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
:���������?: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
0__inference_sequential_815_layer_call_fn_8163097

inputs
unknown:??
	unknown_0:?
	unknown_1:??
	unknown_2:?
	unknown_3:?
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
GPU 2J 8� *T
fORM
K__inference_sequential_815_layer_call_and_return_conditional_losses_8162985o
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
:���������?: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�%
�
"__inference__wrapped_model_8162842
dense_2038_inputJ
8sequential_815_dense_2038_matmul_readvariableop_resource:??G
9sequential_815_dense_2038_biasadd_readvariableop_resource:?J
8sequential_815_dense_2039_matmul_readvariableop_resource:??G
9sequential_815_dense_2039_biasadd_readvariableop_resource:?J
8sequential_815_dense_2040_matmul_readvariableop_resource:?G
9sequential_815_dense_2040_biasadd_readvariableop_resource:
identity��0sequential_815/dense_2038/BiasAdd/ReadVariableOp�/sequential_815/dense_2038/MatMul/ReadVariableOp�0sequential_815/dense_2039/BiasAdd/ReadVariableOp�/sequential_815/dense_2039/MatMul/ReadVariableOp�0sequential_815/dense_2040/BiasAdd/ReadVariableOp�/sequential_815/dense_2040/MatMul/ReadVariableOpy
sequential_815/dense_2038/CastCastdense_2038_input*

DstT0*

SrcT0*'
_output_shapes
:���������?�
/sequential_815/dense_2038/MatMul/ReadVariableOpReadVariableOp8sequential_815_dense_2038_matmul_readvariableop_resource*
_output_shapes

:??*
dtype0�
 sequential_815/dense_2038/MatMulMatMul"sequential_815/dense_2038/Cast:y:07sequential_815/dense_2038/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?�
0sequential_815/dense_2038/BiasAdd/ReadVariableOpReadVariableOp9sequential_815_dense_2038_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
!sequential_815/dense_2038/BiasAddBiasAdd*sequential_815/dense_2038/MatMul:product:08sequential_815/dense_2038/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?�
sequential_815/dense_2038/ReluRelu*sequential_815/dense_2038/BiasAdd:output:0*
T0*'
_output_shapes
:���������?�
/sequential_815/dense_2039/MatMul/ReadVariableOpReadVariableOp8sequential_815_dense_2039_matmul_readvariableop_resource*
_output_shapes

:??*
dtype0�
 sequential_815/dense_2039/MatMulMatMul,sequential_815/dense_2038/Relu:activations:07sequential_815/dense_2039/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?�
0sequential_815/dense_2039/BiasAdd/ReadVariableOpReadVariableOp9sequential_815_dense_2039_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
!sequential_815/dense_2039/BiasAddBiasAdd*sequential_815/dense_2039/MatMul:product:08sequential_815/dense_2039/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?�
sequential_815/dense_2039/ReluRelu*sequential_815/dense_2039/BiasAdd:output:0*
T0*'
_output_shapes
:���������?�
/sequential_815/dense_2040/MatMul/ReadVariableOpReadVariableOp8sequential_815_dense_2040_matmul_readvariableop_resource*
_output_shapes

:?*
dtype0�
 sequential_815/dense_2040/MatMulMatMul,sequential_815/dense_2039/Relu:activations:07sequential_815/dense_2040/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0sequential_815/dense_2040/BiasAdd/ReadVariableOpReadVariableOp9sequential_815_dense_2040_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!sequential_815/dense_2040/BiasAddBiasAdd*sequential_815/dense_2040/MatMul:product:08sequential_815/dense_2040/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������y
IdentityIdentity*sequential_815/dense_2040/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^sequential_815/dense_2038/BiasAdd/ReadVariableOp0^sequential_815/dense_2038/MatMul/ReadVariableOp1^sequential_815/dense_2039/BiasAdd/ReadVariableOp0^sequential_815/dense_2039/MatMul/ReadVariableOp1^sequential_815/dense_2040/BiasAdd/ReadVariableOp0^sequential_815/dense_2040/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : : : : : 2d
0sequential_815/dense_2038/BiasAdd/ReadVariableOp0sequential_815/dense_2038/BiasAdd/ReadVariableOp2b
/sequential_815/dense_2038/MatMul/ReadVariableOp/sequential_815/dense_2038/MatMul/ReadVariableOp2d
0sequential_815/dense_2039/BiasAdd/ReadVariableOp0sequential_815/dense_2039/BiasAdd/ReadVariableOp2b
/sequential_815/dense_2039/MatMul/ReadVariableOp/sequential_815/dense_2039/MatMul/ReadVariableOp2d
0sequential_815/dense_2040/BiasAdd/ReadVariableOp0sequential_815/dense_2040/BiasAdd/ReadVariableOp2b
/sequential_815/dense_2040/MatMul/ReadVariableOp/sequential_815/dense_2040/MatMul/ReadVariableOp:Y U
'
_output_shapes
:���������?
*
_user_specified_namedense_2038_input
�	
�
0__inference_sequential_815_layer_call_fn_8162916
dense_2038_input
unknown:??
	unknown_0:?
	unknown_1:??
	unknown_2:?
	unknown_3:?
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_2038_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU 2J 8� *T
fORM
K__inference_sequential_815_layer_call_and_return_conditional_losses_8162901o
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
:���������?: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������?
*
_user_specified_namedense_2038_input
�

�
G__inference_dense_2039_layer_call_and_return_conditional_losses_8163206

inputs0
matmul_readvariableop_resource:??-
biasadd_readvariableop_resource:?
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:??*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:?*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������?a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������?w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_8163166
dense_2038_input
unknown:??
	unknown_0:?
	unknown_1:??
	unknown_2:?
	unknown_3:?
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_2038_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU 2J 8� *+
f&R$
"__inference__wrapped_model_8162842o
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
:���������?: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������?
*
_user_specified_namedense_2038_input
�	
�
G__inference_dense_2040_layer_call_and_return_conditional_losses_8162894

inputs0
matmul_readvariableop_resource:?-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:?*
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
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�	
�
0__inference_sequential_815_layer_call_fn_8163017
dense_2038_input
unknown:??
	unknown_0:?
	unknown_1:??
	unknown_2:?
	unknown_3:?
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_2038_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU 2J 8� *T
fORM
K__inference_sequential_815_layer_call_and_return_conditional_losses_8162985o
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
:���������?: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������?
*
_user_specified_namedense_2038_input
�	
�
G__inference_dense_2040_layer_call_and_return_conditional_losses_8163225

inputs0
matmul_readvariableop_resource:?-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:?*
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
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163122

inputs;
)dense_2038_matmul_readvariableop_resource:??8
*dense_2038_biasadd_readvariableop_resource:?;
)dense_2039_matmul_readvariableop_resource:??8
*dense_2039_biasadd_readvariableop_resource:?;
)dense_2040_matmul_readvariableop_resource:?8
*dense_2040_biasadd_readvariableop_resource:
identity��!dense_2038/BiasAdd/ReadVariableOp� dense_2038/MatMul/ReadVariableOp�!dense_2039/BiasAdd/ReadVariableOp� dense_2039/MatMul/ReadVariableOp�!dense_2040/BiasAdd/ReadVariableOp� dense_2040/MatMul/ReadVariableOp`
dense_2038/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������?�
 dense_2038/MatMul/ReadVariableOpReadVariableOp)dense_2038_matmul_readvariableop_resource*
_output_shapes

:??*
dtype0�
dense_2038/MatMulMatMuldense_2038/Cast:y:0(dense_2038/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?�
!dense_2038/BiasAdd/ReadVariableOpReadVariableOp*dense_2038_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
dense_2038/BiasAddBiasAdddense_2038/MatMul:product:0)dense_2038/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?f
dense_2038/ReluReludense_2038/BiasAdd:output:0*
T0*'
_output_shapes
:���������?�
 dense_2039/MatMul/ReadVariableOpReadVariableOp)dense_2039_matmul_readvariableop_resource*
_output_shapes

:??*
dtype0�
dense_2039/MatMulMatMuldense_2038/Relu:activations:0(dense_2039/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?�
!dense_2039/BiasAdd/ReadVariableOpReadVariableOp*dense_2039_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
dense_2039/BiasAddBiasAdddense_2039/MatMul:product:0)dense_2039/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?f
dense_2039/ReluReludense_2039/BiasAdd:output:0*
T0*'
_output_shapes
:���������?�
 dense_2040/MatMul/ReadVariableOpReadVariableOp)dense_2040_matmul_readvariableop_resource*
_output_shapes

:?*
dtype0�
dense_2040/MatMulMatMuldense_2039/Relu:activations:0(dense_2040/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_2040/BiasAdd/ReadVariableOpReadVariableOp*dense_2040_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2040/BiasAddBiasAdddense_2040/MatMul:product:0)dense_2040/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_2040/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_2038/BiasAdd/ReadVariableOp!^dense_2038/MatMul/ReadVariableOp"^dense_2039/BiasAdd/ReadVariableOp!^dense_2039/MatMul/ReadVariableOp"^dense_2040/BiasAdd/ReadVariableOp!^dense_2040/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : : : : : 2F
!dense_2038/BiasAdd/ReadVariableOp!dense_2038/BiasAdd/ReadVariableOp2D
 dense_2038/MatMul/ReadVariableOp dense_2038/MatMul/ReadVariableOp2F
!dense_2039/BiasAdd/ReadVariableOp!dense_2039/BiasAdd/ReadVariableOp2D
 dense_2039/MatMul/ReadVariableOp dense_2039/MatMul/ReadVariableOp2F
!dense_2040/BiasAdd/ReadVariableOp!dense_2040/BiasAdd/ReadVariableOp2D
 dense_2040/MatMul/ReadVariableOp dense_2040/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
K__inference_sequential_815_layer_call_and_return_conditional_losses_8162985

inputs$
dense_2038_8162969:?? 
dense_2038_8162971:?$
dense_2039_8162974:?? 
dense_2039_8162976:?$
dense_2040_8162979:? 
dense_2040_8162981:
identity��"dense_2038/StatefulPartitionedCall�"dense_2039/StatefulPartitionedCall�"dense_2040/StatefulPartitionedCall`
dense_2038/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������?�
"dense_2038/StatefulPartitionedCallStatefulPartitionedCalldense_2038/Cast:y:0dense_2038_8162969dense_2038_8162971*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2038_layer_call_and_return_conditional_losses_8162861�
"dense_2039/StatefulPartitionedCallStatefulPartitionedCall+dense_2038/StatefulPartitionedCall:output:0dense_2039_8162974dense_2039_8162976*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2039_layer_call_and_return_conditional_losses_8162878�
"dense_2040/StatefulPartitionedCallStatefulPartitionedCall+dense_2039/StatefulPartitionedCall:output:0dense_2040_8162979dense_2040_8162981*
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
GPU 2J 8� *P
fKRI
G__inference_dense_2040_layer_call_and_return_conditional_losses_8162894z
IdentityIdentity+dense_2040/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_2038/StatefulPartitionedCall#^dense_2039/StatefulPartitionedCall#^dense_2040/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : : : : : 2H
"dense_2038/StatefulPartitionedCall"dense_2038/StatefulPartitionedCall2H
"dense_2039/StatefulPartitionedCall"dense_2039/StatefulPartitionedCall2H
"dense_2040/StatefulPartitionedCall"dense_2040/StatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�

�
G__inference_dense_2038_layer_call_and_return_conditional_losses_8162861

inputs0
matmul_readvariableop_resource:??-
biasadd_readvariableop_resource:?
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:??*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:?*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������?a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������?w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163147

inputs;
)dense_2038_matmul_readvariableop_resource:??8
*dense_2038_biasadd_readvariableop_resource:?;
)dense_2039_matmul_readvariableop_resource:??8
*dense_2039_biasadd_readvariableop_resource:?;
)dense_2040_matmul_readvariableop_resource:?8
*dense_2040_biasadd_readvariableop_resource:
identity��!dense_2038/BiasAdd/ReadVariableOp� dense_2038/MatMul/ReadVariableOp�!dense_2039/BiasAdd/ReadVariableOp� dense_2039/MatMul/ReadVariableOp�!dense_2040/BiasAdd/ReadVariableOp� dense_2040/MatMul/ReadVariableOp`
dense_2038/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������?�
 dense_2038/MatMul/ReadVariableOpReadVariableOp)dense_2038_matmul_readvariableop_resource*
_output_shapes

:??*
dtype0�
dense_2038/MatMulMatMuldense_2038/Cast:y:0(dense_2038/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?�
!dense_2038/BiasAdd/ReadVariableOpReadVariableOp*dense_2038_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
dense_2038/BiasAddBiasAdddense_2038/MatMul:product:0)dense_2038/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?f
dense_2038/ReluReludense_2038/BiasAdd:output:0*
T0*'
_output_shapes
:���������?�
 dense_2039/MatMul/ReadVariableOpReadVariableOp)dense_2039_matmul_readvariableop_resource*
_output_shapes

:??*
dtype0�
dense_2039/MatMulMatMuldense_2038/Relu:activations:0(dense_2039/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?�
!dense_2039/BiasAdd/ReadVariableOpReadVariableOp*dense_2039_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
dense_2039/BiasAddBiasAdddense_2039/MatMul:product:0)dense_2039/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?f
dense_2039/ReluReludense_2039/BiasAdd:output:0*
T0*'
_output_shapes
:���������?�
 dense_2040/MatMul/ReadVariableOpReadVariableOp)dense_2040_matmul_readvariableop_resource*
_output_shapes

:?*
dtype0�
dense_2040/MatMulMatMuldense_2039/Relu:activations:0(dense_2040/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_2040/BiasAdd/ReadVariableOpReadVariableOp*dense_2040_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2040/BiasAddBiasAdddense_2040/MatMul:product:0)dense_2040/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_2040/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_2038/BiasAdd/ReadVariableOp!^dense_2038/MatMul/ReadVariableOp"^dense_2039/BiasAdd/ReadVariableOp!^dense_2039/MatMul/ReadVariableOp"^dense_2040/BiasAdd/ReadVariableOp!^dense_2040/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : : : : : 2F
!dense_2038/BiasAdd/ReadVariableOp!dense_2038/BiasAdd/ReadVariableOp2D
 dense_2038/MatMul/ReadVariableOp dense_2038/MatMul/ReadVariableOp2F
!dense_2039/BiasAdd/ReadVariableOp!dense_2039/BiasAdd/ReadVariableOp2D
 dense_2039/MatMul/ReadVariableOp dense_2039/MatMul/ReadVariableOp2F
!dense_2040/BiasAdd/ReadVariableOp!dense_2040/BiasAdd/ReadVariableOp2D
 dense_2040/MatMul/ReadVariableOp dense_2040/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163057
dense_2038_input$
dense_2038_8163041:?? 
dense_2038_8163043:?$
dense_2039_8163046:?? 
dense_2039_8163048:?$
dense_2040_8163051:? 
dense_2040_8163053:
identity��"dense_2038/StatefulPartitionedCall�"dense_2039/StatefulPartitionedCall�"dense_2040/StatefulPartitionedCallj
dense_2038/CastCastdense_2038_input*

DstT0*

SrcT0*'
_output_shapes
:���������?�
"dense_2038/StatefulPartitionedCallStatefulPartitionedCalldense_2038/Cast:y:0dense_2038_8163041dense_2038_8163043*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2038_layer_call_and_return_conditional_losses_8162861�
"dense_2039/StatefulPartitionedCallStatefulPartitionedCall+dense_2038/StatefulPartitionedCall:output:0dense_2039_8163046dense_2039_8163048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2039_layer_call_and_return_conditional_losses_8162878�
"dense_2040/StatefulPartitionedCallStatefulPartitionedCall+dense_2039/StatefulPartitionedCall:output:0dense_2040_8163051dense_2040_8163053*
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
GPU 2J 8� *P
fKRI
G__inference_dense_2040_layer_call_and_return_conditional_losses_8162894z
IdentityIdentity+dense_2040/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_2038/StatefulPartitionedCall#^dense_2039/StatefulPartitionedCall#^dense_2040/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : : : : : 2H
"dense_2038/StatefulPartitionedCall"dense_2038/StatefulPartitionedCall2H
"dense_2039/StatefulPartitionedCall"dense_2039/StatefulPartitionedCall2H
"dense_2040/StatefulPartitionedCall"dense_2040/StatefulPartitionedCall:Y U
'
_output_shapes
:���������?
*
_user_specified_namedense_2038_input
�9
�

 __inference__traced_save_8163323
file_prefix0
,savev2_dense_2038_kernel_read_readvariableop.
*savev2_dense_2038_bias_read_readvariableop0
,savev2_dense_2039_kernel_read_readvariableop.
*savev2_dense_2039_bias_read_readvariableop0
,savev2_dense_2040_kernel_read_readvariableop.
*savev2_dense_2040_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_2038_kernel_m_read_readvariableop5
1savev2_adam_dense_2038_bias_m_read_readvariableop7
3savev2_adam_dense_2039_kernel_m_read_readvariableop5
1savev2_adam_dense_2039_bias_m_read_readvariableop7
3savev2_adam_dense_2040_kernel_m_read_readvariableop5
1savev2_adam_dense_2040_bias_m_read_readvariableop7
3savev2_adam_dense_2038_kernel_v_read_readvariableop5
1savev2_adam_dense_2038_bias_v_read_readvariableop7
3savev2_adam_dense_2039_kernel_v_read_readvariableop5
1savev2_adam_dense_2039_bias_v_read_readvariableop7
3savev2_adam_dense_2040_kernel_v_read_readvariableop5
1savev2_adam_dense_2040_bias_v_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_2038_kernel_read_readvariableop*savev2_dense_2038_bias_read_readvariableop,savev2_dense_2039_kernel_read_readvariableop*savev2_dense_2039_bias_read_readvariableop,savev2_dense_2040_kernel_read_readvariableop*savev2_dense_2040_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_2038_kernel_m_read_readvariableop1savev2_adam_dense_2038_bias_m_read_readvariableop3savev2_adam_dense_2039_kernel_m_read_readvariableop1savev2_adam_dense_2039_bias_m_read_readvariableop3savev2_adam_dense_2040_kernel_m_read_readvariableop1savev2_adam_dense_2040_bias_m_read_readvariableop3savev2_adam_dense_2038_kernel_v_read_readvariableop1savev2_adam_dense_2038_bias_v_read_readvariableop3savev2_adam_dense_2039_kernel_v_read_readvariableop1savev2_adam_dense_2039_bias_v_read_readvariableop3savev2_adam_dense_2040_kernel_v_read_readvariableop1savev2_adam_dense_2040_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�: :??:?:??:?:?:: : : : : : : :??:?:??:?:?::??:?:??:?:?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:??: 

_output_shapes
:?:$ 

_output_shapes

:??: 

_output_shapes
:?:$ 

_output_shapes

:?: 
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

:??: 

_output_shapes
:?:$ 

_output_shapes

:??: 

_output_shapes
:?:$ 

_output_shapes

:?: 

_output_shapes
::$ 

_output_shapes

:??: 

_output_shapes
:?:$ 

_output_shapes

:??: 

_output_shapes
:?:$ 

_output_shapes

:?: 

_output_shapes
::

_output_shapes
: 
�
�
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163037
dense_2038_input$
dense_2038_8163021:?? 
dense_2038_8163023:?$
dense_2039_8163026:?? 
dense_2039_8163028:?$
dense_2040_8163031:? 
dense_2040_8163033:
identity��"dense_2038/StatefulPartitionedCall�"dense_2039/StatefulPartitionedCall�"dense_2040/StatefulPartitionedCallj
dense_2038/CastCastdense_2038_input*

DstT0*

SrcT0*'
_output_shapes
:���������?�
"dense_2038/StatefulPartitionedCallStatefulPartitionedCalldense_2038/Cast:y:0dense_2038_8163021dense_2038_8163023*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2038_layer_call_and_return_conditional_losses_8162861�
"dense_2039/StatefulPartitionedCallStatefulPartitionedCall+dense_2038/StatefulPartitionedCall:output:0dense_2039_8163026dense_2039_8163028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2039_layer_call_and_return_conditional_losses_8162878�
"dense_2040/StatefulPartitionedCallStatefulPartitionedCall+dense_2039/StatefulPartitionedCall:output:0dense_2040_8163031dense_2040_8163033*
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
GPU 2J 8� *P
fKRI
G__inference_dense_2040_layer_call_and_return_conditional_losses_8162894z
IdentityIdentity+dense_2040/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_2038/StatefulPartitionedCall#^dense_2039/StatefulPartitionedCall#^dense_2040/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : : : : : 2H
"dense_2038/StatefulPartitionedCall"dense_2038/StatefulPartitionedCall2H
"dense_2039/StatefulPartitionedCall"dense_2039/StatefulPartitionedCall2H
"dense_2040/StatefulPartitionedCall"dense_2040/StatefulPartitionedCall:Y U
'
_output_shapes
:���������?
*
_user_specified_namedense_2038_input
�
�
K__inference_sequential_815_layer_call_and_return_conditional_losses_8162901

inputs$
dense_2038_8162862:?? 
dense_2038_8162864:?$
dense_2039_8162879:?? 
dense_2039_8162881:?$
dense_2040_8162895:? 
dense_2040_8162897:
identity��"dense_2038/StatefulPartitionedCall�"dense_2039/StatefulPartitionedCall�"dense_2040/StatefulPartitionedCall`
dense_2038/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������?�
"dense_2038/StatefulPartitionedCallStatefulPartitionedCalldense_2038/Cast:y:0dense_2038_8162862dense_2038_8162864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2038_layer_call_and_return_conditional_losses_8162861�
"dense_2039/StatefulPartitionedCallStatefulPartitionedCall+dense_2038/StatefulPartitionedCall:output:0dense_2039_8162879dense_2039_8162881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2039_layer_call_and_return_conditional_losses_8162878�
"dense_2040/StatefulPartitionedCallStatefulPartitionedCall+dense_2039/StatefulPartitionedCall:output:0dense_2040_8162895dense_2040_8162897*
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
GPU 2J 8� *P
fKRI
G__inference_dense_2040_layer_call_and_return_conditional_losses_8162894z
IdentityIdentity+dense_2040/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_2038/StatefulPartitionedCall#^dense_2039/StatefulPartitionedCall#^dense_2040/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : : : : : 2H
"dense_2038/StatefulPartitionedCall"dense_2038/StatefulPartitionedCall2H
"dense_2039/StatefulPartitionedCall"dense_2039/StatefulPartitionedCall2H
"dense_2040/StatefulPartitionedCall"dense_2040/StatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
,__inference_dense_2040_layer_call_fn_8163215

inputs
unknown:?
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
GPU 2J 8� *P
fKRI
G__inference_dense_2040_layer_call_and_return_conditional_losses_8162894o
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
:���������?: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
,__inference_dense_2038_layer_call_fn_8163175

inputs
unknown:??
	unknown_0:?
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2038_layer_call_and_return_conditional_losses_8162861o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
,__inference_dense_2039_layer_call_fn_8163195

inputs
unknown:??
	unknown_0:?
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_2039_layer_call_and_return_conditional_losses_8162878o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
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
dense_2038_input9
"serving_default_dense_2038_input:0���������?>

dense_20400
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
0__inference_sequential_815_layer_call_fn_8162916
0__inference_sequential_815_layer_call_fn_8163080
0__inference_sequential_815_layer_call_fn_8163097
0__inference_sequential_815_layer_call_fn_8163017�
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
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163122
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163147
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163037
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163057�
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
"__inference__wrapped_model_8162842dense_2038_input"�
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
#:!??2dense_2038/kernel
:?2dense_2038/bias
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
,__inference_dense_2038_layer_call_fn_8163175�
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
G__inference_dense_2038_layer_call_and_return_conditional_losses_8163186�
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
#:!??2dense_2039/kernel
:?2dense_2039/bias
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
,__inference_dense_2039_layer_call_fn_8163195�
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
G__inference_dense_2039_layer_call_and_return_conditional_losses_8163206�
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
#:!?2dense_2040/kernel
:2dense_2040/bias
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
,__inference_dense_2040_layer_call_fn_8163215�
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
G__inference_dense_2040_layer_call_and_return_conditional_losses_8163225�
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
%__inference_signature_wrapper_8163166dense_2038_input"�
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
(:&??2Adam/dense_2038/kernel/m
": ?2Adam/dense_2038/bias/m
(:&??2Adam/dense_2039/kernel/m
": ?2Adam/dense_2039/bias/m
(:&?2Adam/dense_2040/kernel/m
": 2Adam/dense_2040/bias/m
(:&??2Adam/dense_2038/kernel/v
": ?2Adam/dense_2038/bias/v
(:&??2Adam/dense_2039/kernel/v
": ?2Adam/dense_2039/bias/v
(:&?2Adam/dense_2040/kernel/v
": 2Adam/dense_2040/bias/v�
"__inference__wrapped_model_8162842|9�6
/�,
*�'
dense_2038_input���������?
� "7�4
2

dense_2040$�!

dense_2040����������
G__inference_dense_2038_layer_call_and_return_conditional_losses_8163186\/�,
%�"
 �
inputs���������?
� "%�"
�
0���������?
� 
,__inference_dense_2038_layer_call_fn_8163175O/�,
%�"
 �
inputs���������?
� "����������?�
G__inference_dense_2039_layer_call_and_return_conditional_losses_8163206\/�,
%�"
 �
inputs���������?
� "%�"
�
0���������?
� 
,__inference_dense_2039_layer_call_fn_8163195O/�,
%�"
 �
inputs���������?
� "����������?�
G__inference_dense_2040_layer_call_and_return_conditional_losses_8163225\/�,
%�"
 �
inputs���������?
� "%�"
�
0���������
� 
,__inference_dense_2040_layer_call_fn_8163215O/�,
%�"
 �
inputs���������?
� "�����������
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163037rA�>
7�4
*�'
dense_2038_input���������?
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163057rA�>
7�4
*�'
dense_2038_input���������?
p

 
� "%�"
�
0���������
� �
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163122h7�4
-�*
 �
inputs���������?
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_815_layer_call_and_return_conditional_losses_8163147h7�4
-�*
 �
inputs���������?
p

 
� "%�"
�
0���������
� �
0__inference_sequential_815_layer_call_fn_8162916eA�>
7�4
*�'
dense_2038_input���������?
p 

 
� "�����������
0__inference_sequential_815_layer_call_fn_8163017eA�>
7�4
*�'
dense_2038_input���������?
p

 
� "�����������
0__inference_sequential_815_layer_call_fn_8163080[7�4
-�*
 �
inputs���������?
p 

 
� "�����������
0__inference_sequential_815_layer_call_fn_8163097[7�4
-�*
 �
inputs���������?
p

 
� "�����������
%__inference_signature_wrapper_8163166�M�J
� 
C�@
>
dense_2038_input*�'
dense_2038_input���������?"7�4
2

dense_2040$�!

dense_2040���������