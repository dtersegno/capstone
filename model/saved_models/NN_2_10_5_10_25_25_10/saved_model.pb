Ма
АЫ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
delete_old_dirsbool(ѕ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68╬└
~
dense_3013/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*"
shared_namedense_3013/kernel
w
%dense_3013/kernel/Read/ReadVariableOpReadVariableOpdense_3013/kernel*
_output_shapes

:QQ*
dtype0
v
dense_3013/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q* 
shared_namedense_3013/bias
o
#dense_3013/bias/Read/ReadVariableOpReadVariableOpdense_3013/bias*
_output_shapes
:Q*
dtype0
~
dense_3014/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*"
shared_namedense_3014/kernel
w
%dense_3014/kernel/Read/ReadVariableOpReadVariableOpdense_3014/kernel*
_output_shapes

:QQ*
dtype0
v
dense_3014/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q* 
shared_namedense_3014/bias
o
#dense_3014/bias/Read/ReadVariableOpReadVariableOpdense_3014/bias*
_output_shapes
:Q*
dtype0
~
dense_3015/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Q*"
shared_namedense_3015/kernel
w
%dense_3015/kernel/Read/ReadVariableOpReadVariableOpdense_3015/kernel*
_output_shapes

:Q*
dtype0
v
dense_3015/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_3015/bias
o
#dense_3015/bias/Read/ReadVariableOpReadVariableOpdense_3015/bias*
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
ї
Adam/dense_3013/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*)
shared_nameAdam/dense_3013/kernel/m
Ё
,Adam/dense_3013/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3013/kernel/m*
_output_shapes

:QQ*
dtype0
ё
Adam/dense_3013/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*'
shared_nameAdam/dense_3013/bias/m
}
*Adam/dense_3013/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3013/bias/m*
_output_shapes
:Q*
dtype0
ї
Adam/dense_3014/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*)
shared_nameAdam/dense_3014/kernel/m
Ё
,Adam/dense_3014/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3014/kernel/m*
_output_shapes

:QQ*
dtype0
ё
Adam/dense_3014/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*'
shared_nameAdam/dense_3014/bias/m
}
*Adam/dense_3014/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3014/bias/m*
_output_shapes
:Q*
dtype0
ї
Adam/dense_3015/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Q*)
shared_nameAdam/dense_3015/kernel/m
Ё
,Adam/dense_3015/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3015/kernel/m*
_output_shapes

:Q*
dtype0
ё
Adam/dense_3015/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_3015/bias/m
}
*Adam/dense_3015/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3015/bias/m*
_output_shapes
:*
dtype0
ї
Adam/dense_3013/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*)
shared_nameAdam/dense_3013/kernel/v
Ё
,Adam/dense_3013/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3013/kernel/v*
_output_shapes

:QQ*
dtype0
ё
Adam/dense_3013/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*'
shared_nameAdam/dense_3013/bias/v
}
*Adam/dense_3013/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3013/bias/v*
_output_shapes
:Q*
dtype0
ї
Adam/dense_3014/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:QQ*)
shared_nameAdam/dense_3014/kernel/v
Ё
,Adam/dense_3014/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3014/kernel/v*
_output_shapes

:QQ*
dtype0
ё
Adam/dense_3014/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*'
shared_nameAdam/dense_3014/bias/v
}
*Adam/dense_3014/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3014/bias/v*
_output_shapes
:Q*
dtype0
ї
Adam/dense_3015/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Q*)
shared_nameAdam/dense_3015/kernel/v
Ё
,Adam/dense_3015/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3015/kernel/v*
_output_shapes

:Q*
dtype0
ё
Adam/dense_3015/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_3015/bias/v
}
*Adam/dense_3015/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3015/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
і+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┼*
value╗*BИ* B▒*
┴
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
д

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
д

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
д

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*
░
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
░
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
VARIABLE_VALUEdense_3013/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3013/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Њ
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
VARIABLE_VALUEdense_3014/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3014/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Њ
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
VARIABLE_VALUEdense_3015/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3015/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Њ
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
ё~
VARIABLE_VALUEAdam/dense_3013/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_3013/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_3014/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_3014/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_3015/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_3015/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_3013/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_3013/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_3014/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_3014/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_3015/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_3015/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
 serving_default_dense_3013_inputPlaceholder*'
_output_shapes
:         Q*
dtype0*
shape:         Q
х
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_3013_inputdense_3013/kerneldense_3013/biasdense_3014/kerneldense_3014/biasdense_3015/kerneldense_3015/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ */
f*R(
&__inference_signature_wrapper_35736578
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ћ

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_3013/kernel/Read/ReadVariableOp#dense_3013/bias/Read/ReadVariableOp%dense_3014/kernel/Read/ReadVariableOp#dense_3014/bias/Read/ReadVariableOp%dense_3015/kernel/Read/ReadVariableOp#dense_3015/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_3013/kernel/m/Read/ReadVariableOp*Adam/dense_3013/bias/m/Read/ReadVariableOp,Adam/dense_3014/kernel/m/Read/ReadVariableOp*Adam/dense_3014/bias/m/Read/ReadVariableOp,Adam/dense_3015/kernel/m/Read/ReadVariableOp*Adam/dense_3015/bias/m/Read/ReadVariableOp,Adam/dense_3013/kernel/v/Read/ReadVariableOp*Adam/dense_3013/bias/v/Read/ReadVariableOp,Adam/dense_3014/kernel/v/Read/ReadVariableOp*Adam/dense_3014/bias/v/Read/ReadVariableOp,Adam/dense_3015/kernel/v/Read/ReadVariableOp*Adam/dense_3015/bias/v/Read/ReadVariableOpConst*&
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
GPU 2J 8ѓ **
f%R#
!__inference__traced_save_35736735
ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3013/kerneldense_3013/biasdense_3014/kerneldense_3014/biasdense_3015/kerneldense_3015/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_3013/kernel/mAdam/dense_3013/bias/mAdam/dense_3014/kernel/mAdam/dense_3014/bias/mAdam/dense_3015/kernel/mAdam/dense_3015/bias/mAdam/dense_3013/kernel/vAdam/dense_3013/bias/vAdam/dense_3014/kernel/vAdam/dense_3014/bias/vAdam/dense_3015/kernel/vAdam/dense_3015/bias/v*%
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
GPU 2J 8ѓ *-
f(R&
$__inference__traced_restore_35736820э¤
╩%
к
#__inference__wrapped_model_35736254
dense_3013_inputK
9sequential_1140_dense_3013_matmul_readvariableop_resource:QQH
:sequential_1140_dense_3013_biasadd_readvariableop_resource:QK
9sequential_1140_dense_3014_matmul_readvariableop_resource:QQH
:sequential_1140_dense_3014_biasadd_readvariableop_resource:QK
9sequential_1140_dense_3015_matmul_readvariableop_resource:QH
:sequential_1140_dense_3015_biasadd_readvariableop_resource:
identityѕб1sequential_1140/dense_3013/BiasAdd/ReadVariableOpб0sequential_1140/dense_3013/MatMul/ReadVariableOpб1sequential_1140/dense_3014/BiasAdd/ReadVariableOpб0sequential_1140/dense_3014/MatMul/ReadVariableOpб1sequential_1140/dense_3015/BiasAdd/ReadVariableOpб0sequential_1140/dense_3015/MatMul/ReadVariableOpz
sequential_1140/dense_3013/CastCastdense_3013_input*

DstT0*

SrcT0*'
_output_shapes
:         Qф
0sequential_1140/dense_3013/MatMul/ReadVariableOpReadVariableOp9sequential_1140_dense_3013_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0╝
!sequential_1140/dense_3013/MatMulMatMul#sequential_1140/dense_3013/Cast:y:08sequential_1140/dense_3013/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qе
1sequential_1140/dense_3013/BiasAdd/ReadVariableOpReadVariableOp:sequential_1140_dense_3013_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0К
"sequential_1140/dense_3013/BiasAddBiasAdd+sequential_1140/dense_3013/MatMul:product:09sequential_1140/dense_3013/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qє
sequential_1140/dense_3013/ReluRelu+sequential_1140/dense_3013/BiasAdd:output:0*
T0*'
_output_shapes
:         Qф
0sequential_1140/dense_3014/MatMul/ReadVariableOpReadVariableOp9sequential_1140_dense_3014_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0к
!sequential_1140/dense_3014/MatMulMatMul-sequential_1140/dense_3013/Relu:activations:08sequential_1140/dense_3014/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qе
1sequential_1140/dense_3014/BiasAdd/ReadVariableOpReadVariableOp:sequential_1140_dense_3014_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0К
"sequential_1140/dense_3014/BiasAddBiasAdd+sequential_1140/dense_3014/MatMul:product:09sequential_1140/dense_3014/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qє
sequential_1140/dense_3014/ReluRelu+sequential_1140/dense_3014/BiasAdd:output:0*
T0*'
_output_shapes
:         Qф
0sequential_1140/dense_3015/MatMul/ReadVariableOpReadVariableOp9sequential_1140_dense_3015_matmul_readvariableop_resource*
_output_shapes

:Q*
dtype0к
!sequential_1140/dense_3015/MatMulMatMul-sequential_1140/dense_3014/Relu:activations:08sequential_1140/dense_3015/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         е
1sequential_1140/dense_3015/BiasAdd/ReadVariableOpReadVariableOp:sequential_1140_dense_3015_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0К
"sequential_1140/dense_3015/BiasAddBiasAdd+sequential_1140/dense_3015/MatMul:product:09sequential_1140/dense_3015/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         z
IdentityIdentity+sequential_1140/dense_3015/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp2^sequential_1140/dense_3013/BiasAdd/ReadVariableOp1^sequential_1140/dense_3013/MatMul/ReadVariableOp2^sequential_1140/dense_3014/BiasAdd/ReadVariableOp1^sequential_1140/dense_3014/MatMul/ReadVariableOp2^sequential_1140/dense_3015/BiasAdd/ReadVariableOp1^sequential_1140/dense_3015/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 2f
1sequential_1140/dense_3013/BiasAdd/ReadVariableOp1sequential_1140/dense_3013/BiasAdd/ReadVariableOp2d
0sequential_1140/dense_3013/MatMul/ReadVariableOp0sequential_1140/dense_3013/MatMul/ReadVariableOp2f
1sequential_1140/dense_3014/BiasAdd/ReadVariableOp1sequential_1140/dense_3014/BiasAdd/ReadVariableOp2d
0sequential_1140/dense_3014/MatMul/ReadVariableOp0sequential_1140/dense_3014/MatMul/ReadVariableOp2f
1sequential_1140/dense_3015/BiasAdd/ReadVariableOp1sequential_1140/dense_3015/BiasAdd/ReadVariableOp2d
0sequential_1140/dense_3015/MatMul/ReadVariableOp0sequential_1140/dense_3015/MatMul/ReadVariableOp:Y U
'
_output_shapes
:         Q
*
_user_specified_namedense_3013_input
Ъ

щ
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736273

inputs0
matmul_readvariableop_resource:QQ-
biasadd_readvariableop_resource:Q
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         QP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         Qa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Qw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
п
╣
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736397

inputs%
dense_3013_35736381:QQ!
dense_3013_35736383:Q%
dense_3014_35736386:QQ!
dense_3014_35736388:Q%
dense_3015_35736391:Q!
dense_3015_35736393:
identityѕб"dense_3013/StatefulPartitionedCallб"dense_3014/StatefulPartitionedCallб"dense_3015/StatefulPartitionedCall`
dense_3013/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         QІ
"dense_3013/StatefulPartitionedCallStatefulPartitionedCalldense_3013/Cast:y:0dense_3013_35736381dense_3013_35736383*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736273Б
"dense_3014/StatefulPartitionedCallStatefulPartitionedCall+dense_3013/StatefulPartitionedCall:output:0dense_3014_35736386dense_3014_35736388*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736290Б
"dense_3015/StatefulPartitionedCallStatefulPartitionedCall+dense_3014/StatefulPartitionedCall:output:0dense_3015_35736391dense_3015_35736393*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736306z
IdentityIdentity+dense_3015/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_3013/StatefulPartitionedCall#^dense_3014/StatefulPartitionedCall#^dense_3015/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 2H
"dense_3013/StatefulPartitionedCall"dense_3013/StatefulPartitionedCall2H
"dense_3014/StatefulPartitionedCall"dense_3014/StatefulPartitionedCall2H
"dense_3015/StatefulPartitionedCall"dense_3015/StatefulPartitionedCall:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
Ш
├
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736469
dense_3013_input%
dense_3013_35736453:QQ!
dense_3013_35736455:Q%
dense_3014_35736458:QQ!
dense_3014_35736460:Q%
dense_3015_35736463:Q!
dense_3015_35736465:
identityѕб"dense_3013/StatefulPartitionedCallб"dense_3014/StatefulPartitionedCallб"dense_3015/StatefulPartitionedCallj
dense_3013/CastCastdense_3013_input*

DstT0*

SrcT0*'
_output_shapes
:         QІ
"dense_3013/StatefulPartitionedCallStatefulPartitionedCalldense_3013/Cast:y:0dense_3013_35736453dense_3013_35736455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736273Б
"dense_3014/StatefulPartitionedCallStatefulPartitionedCall+dense_3013/StatefulPartitionedCall:output:0dense_3014_35736458dense_3014_35736460*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736290Б
"dense_3015/StatefulPartitionedCallStatefulPartitionedCall+dense_3014/StatefulPartitionedCall:output:0dense_3015_35736463dense_3015_35736465*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736306z
IdentityIdentity+dense_3015/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_3013/StatefulPartitionedCall#^dense_3014/StatefulPartitionedCall#^dense_3015/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 2H
"dense_3013/StatefulPartitionedCall"dense_3013/StatefulPartitionedCall2H
"dense_3014/StatefulPartitionedCall"dense_3014/StatefulPartitionedCall2H
"dense_3015/StatefulPartitionedCall"dense_3015/StatefulPartitionedCall:Y U
'
_output_shapes
:         Q
*
_user_specified_namedense_3013_input
Ш
├
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736449
dense_3013_input%
dense_3013_35736433:QQ!
dense_3013_35736435:Q%
dense_3014_35736438:QQ!
dense_3014_35736440:Q%
dense_3015_35736443:Q!
dense_3015_35736445:
identityѕб"dense_3013/StatefulPartitionedCallб"dense_3014/StatefulPartitionedCallб"dense_3015/StatefulPartitionedCallj
dense_3013/CastCastdense_3013_input*

DstT0*

SrcT0*'
_output_shapes
:         QІ
"dense_3013/StatefulPartitionedCallStatefulPartitionedCalldense_3013/Cast:y:0dense_3013_35736433dense_3013_35736435*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736273Б
"dense_3014/StatefulPartitionedCallStatefulPartitionedCall+dense_3013/StatefulPartitionedCall:output:0dense_3014_35736438dense_3014_35736440*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736290Б
"dense_3015/StatefulPartitionedCallStatefulPartitionedCall+dense_3014/StatefulPartitionedCall:output:0dense_3015_35736443dense_3015_35736445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736306z
IdentityIdentity+dense_3015/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_3013/StatefulPartitionedCall#^dense_3014/StatefulPartitionedCall#^dense_3015/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 2H
"dense_3013/StatefulPartitionedCall"dense_3013/StatefulPartitionedCall2H
"dense_3014/StatefulPartitionedCall"dense_3014/StatefulPartitionedCall2H
"dense_3015/StatefulPartitionedCall"dense_3015/StatefulPartitionedCall:Y U
'
_output_shapes
:         Q
*
_user_specified_namedense_3013_input
Ъ

щ
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736618

inputs0
matmul_readvariableop_resource:QQ-
biasadd_readvariableop_resource:Q
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         QP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         Qa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Qw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
џ	
Ћ
2__inference_sequential_1140_layer_call_fn_35736429
dense_3013_input
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identityѕбStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCalldense_3013_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         Q
*
_user_specified_namedense_3013_input
С
Ѕ
&__inference_signature_wrapper_35736578
dense_3013_input
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCalldense_3013_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference__wrapped_model_35736254o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         Q
*
_user_specified_namedense_3013_input
џ	
Ћ
2__inference_sequential_1140_layer_call_fn_35736328
dense_3013_input
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identityѕбStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCalldense_3013_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736313o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         Q
*
_user_specified_namedense_3013_input
┤
д
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736559

inputs;
)dense_3013_matmul_readvariableop_resource:QQ8
*dense_3013_biasadd_readvariableop_resource:Q;
)dense_3014_matmul_readvariableop_resource:QQ8
*dense_3014_biasadd_readvariableop_resource:Q;
)dense_3015_matmul_readvariableop_resource:Q8
*dense_3015_biasadd_readvariableop_resource:
identityѕб!dense_3013/BiasAdd/ReadVariableOpб dense_3013/MatMul/ReadVariableOpб!dense_3014/BiasAdd/ReadVariableOpб dense_3014/MatMul/ReadVariableOpб!dense_3015/BiasAdd/ReadVariableOpб dense_3015/MatMul/ReadVariableOp`
dense_3013/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         Qі
 dense_3013/MatMul/ReadVariableOpReadVariableOp)dense_3013_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0ї
dense_3013/MatMulMatMuldense_3013/Cast:y:0(dense_3013/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qѕ
!dense_3013/BiasAdd/ReadVariableOpReadVariableOp*dense_3013_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0Ќ
dense_3013/BiasAddBiasAdddense_3013/MatMul:product:0)dense_3013/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qf
dense_3013/ReluReludense_3013/BiasAdd:output:0*
T0*'
_output_shapes
:         Qі
 dense_3014/MatMul/ReadVariableOpReadVariableOp)dense_3014_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0ќ
dense_3014/MatMulMatMuldense_3013/Relu:activations:0(dense_3014/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qѕ
!dense_3014/BiasAdd/ReadVariableOpReadVariableOp*dense_3014_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0Ќ
dense_3014/BiasAddBiasAdddense_3014/MatMul:product:0)dense_3014/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qf
dense_3014/ReluReludense_3014/BiasAdd:output:0*
T0*'
_output_shapes
:         Qі
 dense_3015/MatMul/ReadVariableOpReadVariableOp)dense_3015_matmul_readvariableop_resource*
_output_shapes

:Q*
dtype0ќ
dense_3015/MatMulMatMuldense_3014/Relu:activations:0(dense_3015/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѕ
!dense_3015/BiasAdd/ReadVariableOpReadVariableOp*dense_3015_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
dense_3015/BiasAddBiasAdddense_3015/MatMul:product:0)dense_3015/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
IdentityIdentitydense_3015/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Џ
NoOpNoOp"^dense_3013/BiasAdd/ReadVariableOp!^dense_3013/MatMul/ReadVariableOp"^dense_3014/BiasAdd/ReadVariableOp!^dense_3014/MatMul/ReadVariableOp"^dense_3015/BiasAdd/ReadVariableOp!^dense_3015/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 2F
!dense_3013/BiasAdd/ReadVariableOp!dense_3013/BiasAdd/ReadVariableOp2D
 dense_3013/MatMul/ReadVariableOp dense_3013/MatMul/ReadVariableOp2F
!dense_3014/BiasAdd/ReadVariableOp!dense_3014/BiasAdd/ReadVariableOp2D
 dense_3014/MatMul/ReadVariableOp dense_3014/MatMul/ReadVariableOp2F
!dense_3015/BiasAdd/ReadVariableOp!dense_3015/BiasAdd/ReadVariableOp2D
 dense_3015/MatMul/ReadVariableOp dense_3015/MatMul/ReadVariableOp:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
╦	
щ
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736637

inputs0
matmul_readvariableop_resource:Q-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
іf
ъ
$__inference__traced_restore_35736820
file_prefix4
"assignvariableop_dense_3013_kernel:QQ0
"assignvariableop_1_dense_3013_bias:Q6
$assignvariableop_2_dense_3014_kernel:QQ0
"assignvariableop_3_dense_3014_bias:Q6
$assignvariableop_4_dense_3015_kernel:Q0
"assignvariableop_5_dense_3015_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: >
,assignvariableop_13_adam_dense_3013_kernel_m:QQ8
*assignvariableop_14_adam_dense_3013_bias_m:Q>
,assignvariableop_15_adam_dense_3014_kernel_m:QQ8
*assignvariableop_16_adam_dense_3014_bias_m:Q>
,assignvariableop_17_adam_dense_3015_kernel_m:Q8
*assignvariableop_18_adam_dense_3015_bias_m:>
,assignvariableop_19_adam_dense_3013_kernel_v:QQ8
*assignvariableop_20_adam_dense_3013_bias_v:Q>
,assignvariableop_21_adam_dense_3014_kernel_v:QQ8
*assignvariableop_22_adam_dense_3014_bias_v:Q>
,assignvariableop_23_adam_dense_3015_kernel_v:Q8
*assignvariableop_24_adam_dense_3015_bias_v:
identity_26ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ї
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*▓
valueеBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHц
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B а
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOpAssignVariableOp"assignvariableop_dense_3013_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_3013_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_3014_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_3014_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_3015_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_3015_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_3013_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_3013_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_3014_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_3014_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_3015_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_3015_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_3013_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_3013_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_3014_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_3014_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_3015_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_3015_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ш
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: Р
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
Ъ

щ
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736598

inputs0
matmul_readvariableop_resource:QQ-
biasadd_readvariableop_resource:Q
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         QP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         Qa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Qw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
┤
д
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736534

inputs;
)dense_3013_matmul_readvariableop_resource:QQ8
*dense_3013_biasadd_readvariableop_resource:Q;
)dense_3014_matmul_readvariableop_resource:QQ8
*dense_3014_biasadd_readvariableop_resource:Q;
)dense_3015_matmul_readvariableop_resource:Q8
*dense_3015_biasadd_readvariableop_resource:
identityѕб!dense_3013/BiasAdd/ReadVariableOpб dense_3013/MatMul/ReadVariableOpб!dense_3014/BiasAdd/ReadVariableOpб dense_3014/MatMul/ReadVariableOpб!dense_3015/BiasAdd/ReadVariableOpб dense_3015/MatMul/ReadVariableOp`
dense_3013/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         Qі
 dense_3013/MatMul/ReadVariableOpReadVariableOp)dense_3013_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0ї
dense_3013/MatMulMatMuldense_3013/Cast:y:0(dense_3013/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qѕ
!dense_3013/BiasAdd/ReadVariableOpReadVariableOp*dense_3013_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0Ќ
dense_3013/BiasAddBiasAdddense_3013/MatMul:product:0)dense_3013/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qf
dense_3013/ReluReludense_3013/BiasAdd:output:0*
T0*'
_output_shapes
:         Qі
 dense_3014/MatMul/ReadVariableOpReadVariableOp)dense_3014_matmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0ќ
dense_3014/MatMulMatMuldense_3013/Relu:activations:0(dense_3014/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qѕ
!dense_3014/BiasAdd/ReadVariableOpReadVariableOp*dense_3014_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0Ќ
dense_3014/BiasAddBiasAdddense_3014/MatMul:product:0)dense_3014/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qf
dense_3014/ReluReludense_3014/BiasAdd:output:0*
T0*'
_output_shapes
:         Qі
 dense_3015/MatMul/ReadVariableOpReadVariableOp)dense_3015_matmul_readvariableop_resource*
_output_shapes

:Q*
dtype0ќ
dense_3015/MatMulMatMuldense_3014/Relu:activations:0(dense_3015/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѕ
!dense_3015/BiasAdd/ReadVariableOpReadVariableOp*dense_3015_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
dense_3015/BiasAddBiasAdddense_3015/MatMul:product:0)dense_3015/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
IdentityIdentitydense_3015/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Џ
NoOpNoOp"^dense_3013/BiasAdd/ReadVariableOp!^dense_3013/MatMul/ReadVariableOp"^dense_3014/BiasAdd/ReadVariableOp!^dense_3014/MatMul/ReadVariableOp"^dense_3015/BiasAdd/ReadVariableOp!^dense_3015/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 2F
!dense_3013/BiasAdd/ReadVariableOp!dense_3013/BiasAdd/ReadVariableOp2D
 dense_3013/MatMul/ReadVariableOp dense_3013/MatMul/ReadVariableOp2F
!dense_3014/BiasAdd/ReadVariableOp!dense_3014/BiasAdd/ReadVariableOp2D
 dense_3014/MatMul/ReadVariableOp dense_3014/MatMul/ReadVariableOp2F
!dense_3015/BiasAdd/ReadVariableOp!dense_3015/BiasAdd/ReadVariableOp2D
 dense_3015/MatMul/ReadVariableOp dense_3015/MatMul/ReadVariableOp:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
╩
џ
-__inference_dense_3013_layer_call_fn_35736587

inputs
unknown:QQ
	unknown_0:Q
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736273o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Q`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
п
╣
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736313

inputs%
dense_3013_35736274:QQ!
dense_3013_35736276:Q%
dense_3014_35736291:QQ!
dense_3014_35736293:Q%
dense_3015_35736307:Q!
dense_3015_35736309:
identityѕб"dense_3013/StatefulPartitionedCallб"dense_3014/StatefulPartitionedCallб"dense_3015/StatefulPartitionedCall`
dense_3013/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         QІ
"dense_3013/StatefulPartitionedCallStatefulPartitionedCalldense_3013/Cast:y:0dense_3013_35736274dense_3013_35736276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736273Б
"dense_3014/StatefulPartitionedCallStatefulPartitionedCall+dense_3013/StatefulPartitionedCall:output:0dense_3014_35736291dense_3014_35736293*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736290Б
"dense_3015/StatefulPartitionedCallStatefulPartitionedCall+dense_3014/StatefulPartitionedCall:output:0dense_3015_35736307dense_3015_35736309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736306z
IdentityIdentity+dense_3015/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_3013/StatefulPartitionedCall#^dense_3014/StatefulPartitionedCall#^dense_3015/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 2H
"dense_3013/StatefulPartitionedCall"dense_3013/StatefulPartitionedCall2H
"dense_3014/StatefulPartitionedCall"dense_3014/StatefulPartitionedCall2H
"dense_3015/StatefulPartitionedCall"dense_3015/StatefulPartitionedCall:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
╩
џ
-__inference_dense_3015_layer_call_fn_35736627

inputs
unknown:Q
	unknown_0:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736306o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
╩
џ
-__inference_dense_3014_layer_call_fn_35736607

inputs
unknown:QQ
	unknown_0:Q
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         Q*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736290o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Q`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
Ъ

щ
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736290

inputs0
matmul_readvariableop_resource:QQ-
biasadd_readvariableop_resource:Q
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:QQ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Qr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         QP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         Qa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Qw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
Ч
І
2__inference_sequential_1140_layer_call_fn_35736492

inputs
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identityѕбStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736313o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
╦	
щ
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736306

inputs0
matmul_readvariableop_resource:Q-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
Ч
І
2__inference_sequential_1140_layer_call_fn_35736509

inputs
unknown:QQ
	unknown_0:Q
	unknown_1:QQ
	unknown_2:Q
	unknown_3:Q
	unknown_4:
identityѕбStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         Q: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         Q
 
_user_specified_nameinputs
┌9
Я

!__inference__traced_save_35736735
file_prefix0
,savev2_dense_3013_kernel_read_readvariableop.
*savev2_dense_3013_bias_read_readvariableop0
,savev2_dense_3014_kernel_read_readvariableop.
*savev2_dense_3014_bias_read_readvariableop0
,savev2_dense_3015_kernel_read_readvariableop.
*savev2_dense_3015_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_3013_kernel_m_read_readvariableop5
1savev2_adam_dense_3013_bias_m_read_readvariableop7
3savev2_adam_dense_3014_kernel_m_read_readvariableop5
1savev2_adam_dense_3014_bias_m_read_readvariableop7
3savev2_adam_dense_3015_kernel_m_read_readvariableop5
1savev2_adam_dense_3015_bias_m_read_readvariableop7
3savev2_adam_dense_3013_kernel_v_read_readvariableop5
1savev2_adam_dense_3013_bias_v_read_readvariableop7
3savev2_adam_dense_3014_kernel_v_read_readvariableop5
1savev2_adam_dense_3014_bias_v_read_readvariableop7
3savev2_adam_dense_3015_kernel_v_read_readvariableop5
1savev2_adam_dense_3015_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ѕ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*▓
valueеBЦB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHА
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B О

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_3013_kernel_read_readvariableop*savev2_dense_3013_bias_read_readvariableop,savev2_dense_3014_kernel_read_readvariableop*savev2_dense_3014_bias_read_readvariableop,savev2_dense_3015_kernel_read_readvariableop*savev2_dense_3015_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_3013_kernel_m_read_readvariableop1savev2_adam_dense_3013_bias_m_read_readvariableop3savev2_adam_dense_3014_kernel_m_read_readvariableop1savev2_adam_dense_3014_bias_m_read_readvariableop3savev2_adam_dense_3015_kernel_m_read_readvariableop1savev2_adam_dense_3015_bias_m_read_readvariableop3savev2_adam_dense_3013_kernel_v_read_readvariableop1savev2_adam_dense_3013_bias_v_read_readvariableop3savev2_adam_dense_3014_kernel_v_read_readvariableop1savev2_adam_dense_3014_bias_v_read_readvariableop3savev2_adam_dense_3015_kernel_v_read_readvariableop1savev2_adam_dense_3015_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*и
_input_shapesЦ
б: :QQ:Q:QQ:Q:Q:: : : : : : : :QQ:Q:QQ:Q:Q::QQ:Q:QQ:Q:Q:: 2(
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
: "█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┐
serving_defaultФ
M
dense_3013_input9
"serving_default_dense_3013_input:0         Q>

dense_30150
StatefulPartitionedCall:0         tensorflow/serving/predict:жN
█
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
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
┐
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
╩
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
ќ2Њ
2__inference_sequential_1140_layer_call_fn_35736328
2__inference_sequential_1140_layer_call_fn_35736492
2__inference_sequential_1140_layer_call_fn_35736509
2__inference_sequential_1140_layer_call_fn_35736429└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ѓ2 
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736534
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736559
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736449
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736469└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ОBн
#__inference__wrapped_model_35736254dense_3013_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
,
/serving_default"
signature_map
#:!QQ2dense_3013/kernel
:Q2dense_3013/bias
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
Г
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
О2н
-__inference_dense_3013_layer_call_fn_35736587б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736598б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
#:!QQ2dense_3014/kernel
:Q2dense_3014/bias
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
Г
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
О2н
-__inference_dense_3014_layer_call_fn_35736607б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736618б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
#:!Q2dense_3015/kernel
:2dense_3015/bias
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
Г
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
О2н
-__inference_dense_3015_layer_call_fn_35736627б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736637б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
&__inference_signature_wrapper_35736578dense_3013_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
(:&QQ2Adam/dense_3013/kernel/m
": Q2Adam/dense_3013/bias/m
(:&QQ2Adam/dense_3014/kernel/m
": Q2Adam/dense_3014/bias/m
(:&Q2Adam/dense_3015/kernel/m
": 2Adam/dense_3015/bias/m
(:&QQ2Adam/dense_3013/kernel/v
": Q2Adam/dense_3013/bias/v
(:&QQ2Adam/dense_3014/kernel/v
": Q2Adam/dense_3014/bias/v
(:&Q2Adam/dense_3015/kernel/v
": 2Adam/dense_3015/bias/vБ
#__inference__wrapped_model_35736254|9б6
/б,
*і'
dense_3013_input         Q
ф "7ф4
2

dense_3015$і!

dense_3015         е
H__inference_dense_3013_layer_call_and_return_conditional_losses_35736598\/б,
%б"
 і
inputs         Q
ф "%б"
і
0         Q
џ ђ
-__inference_dense_3013_layer_call_fn_35736587O/б,
%б"
 і
inputs         Q
ф "і         Qе
H__inference_dense_3014_layer_call_and_return_conditional_losses_35736618\/б,
%б"
 і
inputs         Q
ф "%б"
і
0         Q
џ ђ
-__inference_dense_3014_layer_call_fn_35736607O/б,
%б"
 і
inputs         Q
ф "і         Qе
H__inference_dense_3015_layer_call_and_return_conditional_losses_35736637\/б,
%б"
 і
inputs         Q
ф "%б"
і
0         
џ ђ
-__inference_dense_3015_layer_call_fn_35736627O/б,
%б"
 і
inputs         Q
ф "і         ├
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736449rAб>
7б4
*і'
dense_3013_input         Q
p 

 
ф "%б"
і
0         
џ ├
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736469rAб>
7б4
*і'
dense_3013_input         Q
p

 
ф "%б"
і
0         
џ ╣
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736534h7б4
-б*
 і
inputs         Q
p 

 
ф "%б"
і
0         
џ ╣
M__inference_sequential_1140_layer_call_and_return_conditional_losses_35736559h7б4
-б*
 і
inputs         Q
p

 
ф "%б"
і
0         
џ Џ
2__inference_sequential_1140_layer_call_fn_35736328eAб>
7б4
*і'
dense_3013_input         Q
p 

 
ф "і         Џ
2__inference_sequential_1140_layer_call_fn_35736429eAб>
7б4
*і'
dense_3013_input         Q
p

 
ф "і         Љ
2__inference_sequential_1140_layer_call_fn_35736492[7б4
-б*
 і
inputs         Q
p 

 
ф "і         Љ
2__inference_sequential_1140_layer_call_fn_35736509[7б4
-б*
 і
inputs         Q
p

 
ф "і         ╗
&__inference_signature_wrapper_35736578љMбJ
б 
Cф@
>
dense_3013_input*і'
dense_3013_input         Q"7ф4
2

dense_3015$і!

dense_3015         