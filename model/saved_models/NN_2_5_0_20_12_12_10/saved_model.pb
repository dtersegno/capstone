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
dense_2704/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*"
shared_namedense_2704/kernel
w
%dense_2704/kernel/Read/ReadVariableOpReadVariableOpdense_2704/kernel*
_output_shapes

:22*
dtype0
v
dense_2704/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_namedense_2704/bias
o
#dense_2704/bias/Read/ReadVariableOpReadVariableOpdense_2704/bias*
_output_shapes
:2*
dtype0
~
dense_2705/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*"
shared_namedense_2705/kernel
w
%dense_2705/kernel/Read/ReadVariableOpReadVariableOpdense_2705/kernel*
_output_shapes

:22*
dtype0
v
dense_2705/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_namedense_2705/bias
o
#dense_2705/bias/Read/ReadVariableOpReadVariableOpdense_2705/bias*
_output_shapes
:2*
dtype0
~
dense_2706/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*"
shared_namedense_2706/kernel
w
%dense_2706/kernel/Read/ReadVariableOpReadVariableOpdense_2706/kernel*
_output_shapes

:2*
dtype0
v
dense_2706/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_2706/bias
o
#dense_2706/bias/Read/ReadVariableOpReadVariableOpdense_2706/bias*
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
Adam/dense_2704/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*)
shared_nameAdam/dense_2704/kernel/m
Ё
,Adam/dense_2704/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2704/kernel/m*
_output_shapes

:22*
dtype0
ё
Adam/dense_2704/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*'
shared_nameAdam/dense_2704/bias/m
}
*Adam/dense_2704/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2704/bias/m*
_output_shapes
:2*
dtype0
ї
Adam/dense_2705/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*)
shared_nameAdam/dense_2705/kernel/m
Ё
,Adam/dense_2705/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2705/kernel/m*
_output_shapes

:22*
dtype0
ё
Adam/dense_2705/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*'
shared_nameAdam/dense_2705/bias/m
}
*Adam/dense_2705/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2705/bias/m*
_output_shapes
:2*
dtype0
ї
Adam/dense_2706/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*)
shared_nameAdam/dense_2706/kernel/m
Ё
,Adam/dense_2706/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2706/kernel/m*
_output_shapes

:2*
dtype0
ё
Adam/dense_2706/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2706/bias/m
}
*Adam/dense_2706/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2706/bias/m*
_output_shapes
:*
dtype0
ї
Adam/dense_2704/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*)
shared_nameAdam/dense_2704/kernel/v
Ё
,Adam/dense_2704/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2704/kernel/v*
_output_shapes

:22*
dtype0
ё
Adam/dense_2704/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*'
shared_nameAdam/dense_2704/bias/v
}
*Adam/dense_2704/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2704/bias/v*
_output_shapes
:2*
dtype0
ї
Adam/dense_2705/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*)
shared_nameAdam/dense_2705/kernel/v
Ё
,Adam/dense_2705/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2705/kernel/v*
_output_shapes

:22*
dtype0
ё
Adam/dense_2705/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*'
shared_nameAdam/dense_2705/bias/v
}
*Adam/dense_2705/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2705/bias/v*
_output_shapes
:2*
dtype0
ї
Adam/dense_2706/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*)
shared_nameAdam/dense_2706/kernel/v
Ё
,Adam/dense_2706/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2706/kernel/v*
_output_shapes

:2*
dtype0
ё
Adam/dense_2706/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2706/bias/v
}
*Adam/dense_2706/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2706/bias/v*
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
VARIABLE_VALUEdense_2704/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2704/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2705/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2705/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2706/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2706/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_2704/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2704/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2705/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2705/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2706/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2706/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2704/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2704/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2705/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2705/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2706/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2706/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
 serving_default_dense_2704_inputPlaceholder*'
_output_shapes
:         2*
dtype0*
shape:         2
х
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_2704_inputdense_2704/kerneldense_2704/biasdense_2705/kerneldense_2705/biasdense_2706/kerneldense_2706/bias*
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
&__inference_signature_wrapper_24271618
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ћ

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_2704/kernel/Read/ReadVariableOp#dense_2704/bias/Read/ReadVariableOp%dense_2705/kernel/Read/ReadVariableOp#dense_2705/bias/Read/ReadVariableOp%dense_2706/kernel/Read/ReadVariableOp#dense_2706/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_2704/kernel/m/Read/ReadVariableOp*Adam/dense_2704/bias/m/Read/ReadVariableOp,Adam/dense_2705/kernel/m/Read/ReadVariableOp*Adam/dense_2705/bias/m/Read/ReadVariableOp,Adam/dense_2706/kernel/m/Read/ReadVariableOp*Adam/dense_2706/bias/m/Read/ReadVariableOp,Adam/dense_2704/kernel/v/Read/ReadVariableOp*Adam/dense_2704/bias/v/Read/ReadVariableOp,Adam/dense_2705/kernel/v/Read/ReadVariableOp*Adam/dense_2705/bias/v/Read/ReadVariableOp,Adam/dense_2706/kernel/v/Read/ReadVariableOp*Adam/dense_2706/bias/v/Read/ReadVariableOpConst*&
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
!__inference__traced_save_24271775
ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2704/kerneldense_2704/biasdense_2705/kerneldense_2705/biasdense_2706/kerneldense_2706/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_2704/kernel/mAdam/dense_2704/bias/mAdam/dense_2705/kernel/mAdam/dense_2705/bias/mAdam/dense_2706/kernel/mAdam/dense_2706/bias/mAdam/dense_2704/kernel/vAdam/dense_2704/bias/vAdam/dense_2705/kernel/vAdam/dense_2705/bias/vAdam/dense_2706/kernel/vAdam/dense_2706/bias/v*%
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
$__inference__traced_restore_24271860э¤
╩
џ
-__inference_dense_2706_layer_call_fn_24271667

inputs
unknown:2
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
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271346o
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
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
┤
д
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271599

inputs;
)dense_2704_matmul_readvariableop_resource:228
*dense_2704_biasadd_readvariableop_resource:2;
)dense_2705_matmul_readvariableop_resource:228
*dense_2705_biasadd_readvariableop_resource:2;
)dense_2706_matmul_readvariableop_resource:28
*dense_2706_biasadd_readvariableop_resource:
identityѕб!dense_2704/BiasAdd/ReadVariableOpб dense_2704/MatMul/ReadVariableOpб!dense_2705/BiasAdd/ReadVariableOpб dense_2705/MatMul/ReadVariableOpб!dense_2706/BiasAdd/ReadVariableOpб dense_2706/MatMul/ReadVariableOp`
dense_2704/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         2і
 dense_2704/MatMul/ReadVariableOpReadVariableOp)dense_2704_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0ї
dense_2704/MatMulMatMuldense_2704/Cast:y:0(dense_2704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2ѕ
!dense_2704/BiasAdd/ReadVariableOpReadVariableOp*dense_2704_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ќ
dense_2704/BiasAddBiasAdddense_2704/MatMul:product:0)dense_2704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2f
dense_2704/ReluReludense_2704/BiasAdd:output:0*
T0*'
_output_shapes
:         2і
 dense_2705/MatMul/ReadVariableOpReadVariableOp)dense_2705_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0ќ
dense_2705/MatMulMatMuldense_2704/Relu:activations:0(dense_2705/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2ѕ
!dense_2705/BiasAdd/ReadVariableOpReadVariableOp*dense_2705_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ќ
dense_2705/BiasAddBiasAdddense_2705/MatMul:product:0)dense_2705/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2f
dense_2705/ReluReludense_2705/BiasAdd:output:0*
T0*'
_output_shapes
:         2і
 dense_2706/MatMul/ReadVariableOpReadVariableOp)dense_2706_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ќ
dense_2706/MatMulMatMuldense_2705/Relu:activations:0(dense_2706/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѕ
!dense_2706/BiasAdd/ReadVariableOpReadVariableOp*dense_2706_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
dense_2706/BiasAddBiasAdddense_2706/MatMul:product:0)dense_2706/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
IdentityIdentitydense_2706/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Џ
NoOpNoOp"^dense_2704/BiasAdd/ReadVariableOp!^dense_2704/MatMul/ReadVariableOp"^dense_2705/BiasAdd/ReadVariableOp!^dense_2705/MatMul/ReadVariableOp"^dense_2706/BiasAdd/ReadVariableOp!^dense_2706/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : : : : : 2F
!dense_2704/BiasAdd/ReadVariableOp!dense_2704/BiasAdd/ReadVariableOp2D
 dense_2704/MatMul/ReadVariableOp dense_2704/MatMul/ReadVariableOp2F
!dense_2705/BiasAdd/ReadVariableOp!dense_2705/BiasAdd/ReadVariableOp2D
 dense_2705/MatMul/ReadVariableOp dense_2705/MatMul/ReadVariableOp2F
!dense_2706/BiasAdd/ReadVariableOp!dense_2706/BiasAdd/ReadVariableOp2D
 dense_2706/MatMul/ReadVariableOp dense_2706/MatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Ъ

щ
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271658

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
џ	
Ћ
2__inference_sequential_1037_layer_call_fn_24271368
dense_2704_input
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityѕбStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCalldense_2704_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271353o
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
:         2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         2
*
_user_specified_namedense_2704_input
Ъ

щ
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271313

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╦	
щ
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271677

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
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
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
п
╣
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271437

inputs%
dense_2704_24271421:22!
dense_2704_24271423:2%
dense_2705_24271426:22!
dense_2705_24271428:2%
dense_2706_24271431:2!
dense_2706_24271433:
identityѕб"dense_2704/StatefulPartitionedCallб"dense_2705/StatefulPartitionedCallб"dense_2706/StatefulPartitionedCall`
dense_2704/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         2І
"dense_2704/StatefulPartitionedCallStatefulPartitionedCalldense_2704/Cast:y:0dense_2704_24271421dense_2704_24271423*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271313Б
"dense_2705/StatefulPartitionedCallStatefulPartitionedCall+dense_2704/StatefulPartitionedCall:output:0dense_2705_24271426dense_2705_24271428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271330Б
"dense_2706/StatefulPartitionedCallStatefulPartitionedCall+dense_2705/StatefulPartitionedCall:output:0dense_2706_24271431dense_2706_24271433*
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
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271346z
IdentityIdentity+dense_2706/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_2704/StatefulPartitionedCall#^dense_2705/StatefulPartitionedCall#^dense_2706/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : : : : : 2H
"dense_2704/StatefulPartitionedCall"dense_2704/StatefulPartitionedCall2H
"dense_2705/StatefulPartitionedCall"dense_2705/StatefulPartitionedCall2H
"dense_2706/StatefulPartitionedCall"dense_2706/StatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
С
Ѕ
&__inference_signature_wrapper_24271618
dense_2704_input
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCalldense_2704_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_24271294o
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
:         2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         2
*
_user_specified_namedense_2704_input
╩
џ
-__inference_dense_2705_layer_call_fn_24271647

inputs
unknown:22
	unknown_0:2
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271330o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╩
џ
-__inference_dense_2704_layer_call_fn_24271627

inputs
unknown:22
	unknown_0:2
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271313o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
┌9
Я

!__inference__traced_save_24271775
file_prefix0
,savev2_dense_2704_kernel_read_readvariableop.
*savev2_dense_2704_bias_read_readvariableop0
,savev2_dense_2705_kernel_read_readvariableop.
*savev2_dense_2705_bias_read_readvariableop0
,savev2_dense_2706_kernel_read_readvariableop.
*savev2_dense_2706_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_2704_kernel_m_read_readvariableop5
1savev2_adam_dense_2704_bias_m_read_readvariableop7
3savev2_adam_dense_2705_kernel_m_read_readvariableop5
1savev2_adam_dense_2705_bias_m_read_readvariableop7
3savev2_adam_dense_2706_kernel_m_read_readvariableop5
1savev2_adam_dense_2706_bias_m_read_readvariableop7
3savev2_adam_dense_2704_kernel_v_read_readvariableop5
1savev2_adam_dense_2704_bias_v_read_readvariableop7
3savev2_adam_dense_2705_kernel_v_read_readvariableop5
1savev2_adam_dense_2705_bias_v_read_readvariableop7
3savev2_adam_dense_2706_kernel_v_read_readvariableop5
1savev2_adam_dense_2706_bias_v_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_2704_kernel_read_readvariableop*savev2_dense_2704_bias_read_readvariableop,savev2_dense_2705_kernel_read_readvariableop*savev2_dense_2705_bias_read_readvariableop,savev2_dense_2706_kernel_read_readvariableop*savev2_dense_2706_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_2704_kernel_m_read_readvariableop1savev2_adam_dense_2704_bias_m_read_readvariableop3savev2_adam_dense_2705_kernel_m_read_readvariableop1savev2_adam_dense_2705_bias_m_read_readvariableop3savev2_adam_dense_2706_kernel_m_read_readvariableop1savev2_adam_dense_2706_bias_m_read_readvariableop3savev2_adam_dense_2704_kernel_v_read_readvariableop1savev2_adam_dense_2704_bias_v_read_readvariableop3savev2_adam_dense_2705_kernel_v_read_readvariableop1savev2_adam_dense_2705_bias_v_read_readvariableop3savev2_adam_dense_2706_kernel_v_read_readvariableop1savev2_adam_dense_2706_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
б: :22:2:22:2:2:: : : : : : : :22:2:22:2:2::22:2:22:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 
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

:22: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: 
п
╣
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271353

inputs%
dense_2704_24271314:22!
dense_2704_24271316:2%
dense_2705_24271331:22!
dense_2705_24271333:2%
dense_2706_24271347:2!
dense_2706_24271349:
identityѕб"dense_2704/StatefulPartitionedCallб"dense_2705/StatefulPartitionedCallб"dense_2706/StatefulPartitionedCall`
dense_2704/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         2І
"dense_2704/StatefulPartitionedCallStatefulPartitionedCalldense_2704/Cast:y:0dense_2704_24271314dense_2704_24271316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271313Б
"dense_2705/StatefulPartitionedCallStatefulPartitionedCall+dense_2704/StatefulPartitionedCall:output:0dense_2705_24271331dense_2705_24271333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271330Б
"dense_2706/StatefulPartitionedCallStatefulPartitionedCall+dense_2705/StatefulPartitionedCall:output:0dense_2706_24271347dense_2706_24271349*
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
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271346z
IdentityIdentity+dense_2706/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_2704/StatefulPartitionedCall#^dense_2705/StatefulPartitionedCall#^dense_2706/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : : : : : 2H
"dense_2704/StatefulPartitionedCall"dense_2704/StatefulPartitionedCall2H
"dense_2705/StatefulPartitionedCall"dense_2705/StatefulPartitionedCall2H
"dense_2706/StatefulPartitionedCall"dense_2706/StatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Ш
├
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271509
dense_2704_input%
dense_2704_24271493:22!
dense_2704_24271495:2%
dense_2705_24271498:22!
dense_2705_24271500:2%
dense_2706_24271503:2!
dense_2706_24271505:
identityѕб"dense_2704/StatefulPartitionedCallб"dense_2705/StatefulPartitionedCallб"dense_2706/StatefulPartitionedCallj
dense_2704/CastCastdense_2704_input*

DstT0*

SrcT0*'
_output_shapes
:         2І
"dense_2704/StatefulPartitionedCallStatefulPartitionedCalldense_2704/Cast:y:0dense_2704_24271493dense_2704_24271495*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271313Б
"dense_2705/StatefulPartitionedCallStatefulPartitionedCall+dense_2704/StatefulPartitionedCall:output:0dense_2705_24271498dense_2705_24271500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271330Б
"dense_2706/StatefulPartitionedCallStatefulPartitionedCall+dense_2705/StatefulPartitionedCall:output:0dense_2706_24271503dense_2706_24271505*
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
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271346z
IdentityIdentity+dense_2706/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_2704/StatefulPartitionedCall#^dense_2705/StatefulPartitionedCall#^dense_2706/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : : : : : 2H
"dense_2704/StatefulPartitionedCall"dense_2704/StatefulPartitionedCall2H
"dense_2705/StatefulPartitionedCall"dense_2705/StatefulPartitionedCall2H
"dense_2706/StatefulPartitionedCall"dense_2706/StatefulPartitionedCall:Y U
'
_output_shapes
:         2
*
_user_specified_namedense_2704_input
Ш
├
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271489
dense_2704_input%
dense_2704_24271473:22!
dense_2704_24271475:2%
dense_2705_24271478:22!
dense_2705_24271480:2%
dense_2706_24271483:2!
dense_2706_24271485:
identityѕб"dense_2704/StatefulPartitionedCallб"dense_2705/StatefulPartitionedCallб"dense_2706/StatefulPartitionedCallj
dense_2704/CastCastdense_2704_input*

DstT0*

SrcT0*'
_output_shapes
:         2І
"dense_2704/StatefulPartitionedCallStatefulPartitionedCalldense_2704/Cast:y:0dense_2704_24271473dense_2704_24271475*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271313Б
"dense_2705/StatefulPartitionedCallStatefulPartitionedCall+dense_2704/StatefulPartitionedCall:output:0dense_2705_24271478dense_2705_24271480*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271330Б
"dense_2706/StatefulPartitionedCallStatefulPartitionedCall+dense_2705/StatefulPartitionedCall:output:0dense_2706_24271483dense_2706_24271485*
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
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271346z
IdentityIdentity+dense_2706/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_2704/StatefulPartitionedCall#^dense_2705/StatefulPartitionedCall#^dense_2706/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : : : : : 2H
"dense_2704/StatefulPartitionedCall"dense_2704/StatefulPartitionedCall2H
"dense_2705/StatefulPartitionedCall"dense_2705/StatefulPartitionedCall2H
"dense_2706/StatefulPartitionedCall"dense_2706/StatefulPartitionedCall:Y U
'
_output_shapes
:         2
*
_user_specified_namedense_2704_input
Ъ

щ
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271330

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
іf
ъ
$__inference__traced_restore_24271860
file_prefix4
"assignvariableop_dense_2704_kernel:220
"assignvariableop_1_dense_2704_bias:26
$assignvariableop_2_dense_2705_kernel:220
"assignvariableop_3_dense_2705_bias:26
$assignvariableop_4_dense_2706_kernel:20
"assignvariableop_5_dense_2706_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: >
,assignvariableop_13_adam_dense_2704_kernel_m:228
*assignvariableop_14_adam_dense_2704_bias_m:2>
,assignvariableop_15_adam_dense_2705_kernel_m:228
*assignvariableop_16_adam_dense_2705_bias_m:2>
,assignvariableop_17_adam_dense_2706_kernel_m:28
*assignvariableop_18_adam_dense_2706_bias_m:>
,assignvariableop_19_adam_dense_2704_kernel_v:228
*assignvariableop_20_adam_dense_2704_bias_v:2>
,assignvariableop_21_adam_dense_2705_kernel_v:228
*assignvariableop_22_adam_dense_2705_bias_v:2>
,assignvariableop_23_adam_dense_2706_kernel_v:28
*assignvariableop_24_adam_dense_2706_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_2704_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_2704_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_2705_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_2705_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_2706_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_2706_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_2704_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_2704_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_2705_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_2705_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_2706_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_2706_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_2704_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_2704_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_2705_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_2705_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_2706_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_2706_bias_vIdentity_24:output:0"/device:CPU:0*
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
┤
д
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271574

inputs;
)dense_2704_matmul_readvariableop_resource:228
*dense_2704_biasadd_readvariableop_resource:2;
)dense_2705_matmul_readvariableop_resource:228
*dense_2705_biasadd_readvariableop_resource:2;
)dense_2706_matmul_readvariableop_resource:28
*dense_2706_biasadd_readvariableop_resource:
identityѕб!dense_2704/BiasAdd/ReadVariableOpб dense_2704/MatMul/ReadVariableOpб!dense_2705/BiasAdd/ReadVariableOpб dense_2705/MatMul/ReadVariableOpб!dense_2706/BiasAdd/ReadVariableOpб dense_2706/MatMul/ReadVariableOp`
dense_2704/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         2і
 dense_2704/MatMul/ReadVariableOpReadVariableOp)dense_2704_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0ї
dense_2704/MatMulMatMuldense_2704/Cast:y:0(dense_2704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2ѕ
!dense_2704/BiasAdd/ReadVariableOpReadVariableOp*dense_2704_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ќ
dense_2704/BiasAddBiasAdddense_2704/MatMul:product:0)dense_2704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2f
dense_2704/ReluReludense_2704/BiasAdd:output:0*
T0*'
_output_shapes
:         2і
 dense_2705/MatMul/ReadVariableOpReadVariableOp)dense_2705_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0ќ
dense_2705/MatMulMatMuldense_2704/Relu:activations:0(dense_2705/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2ѕ
!dense_2705/BiasAdd/ReadVariableOpReadVariableOp*dense_2705_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ќ
dense_2705/BiasAddBiasAdddense_2705/MatMul:product:0)dense_2705/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2f
dense_2705/ReluReludense_2705/BiasAdd:output:0*
T0*'
_output_shapes
:         2і
 dense_2706/MatMul/ReadVariableOpReadVariableOp)dense_2706_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ќ
dense_2706/MatMulMatMuldense_2705/Relu:activations:0(dense_2706/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѕ
!dense_2706/BiasAdd/ReadVariableOpReadVariableOp*dense_2706_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
dense_2706/BiasAddBiasAdddense_2706/MatMul:product:0)dense_2706/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
IdentityIdentitydense_2706/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Џ
NoOpNoOp"^dense_2704/BiasAdd/ReadVariableOp!^dense_2704/MatMul/ReadVariableOp"^dense_2705/BiasAdd/ReadVariableOp!^dense_2705/MatMul/ReadVariableOp"^dense_2706/BiasAdd/ReadVariableOp!^dense_2706/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : : : : : 2F
!dense_2704/BiasAdd/ReadVariableOp!dense_2704/BiasAdd/ReadVariableOp2D
 dense_2704/MatMul/ReadVariableOp dense_2704/MatMul/ReadVariableOp2F
!dense_2705/BiasAdd/ReadVariableOp!dense_2705/BiasAdd/ReadVariableOp2D
 dense_2705/MatMul/ReadVariableOp dense_2705/MatMul/ReadVariableOp2F
!dense_2706/BiasAdd/ReadVariableOp!dense_2706/BiasAdd/ReadVariableOp2D
 dense_2706/MatMul/ReadVariableOp dense_2706/MatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╩%
к
#__inference__wrapped_model_24271294
dense_2704_inputK
9sequential_1037_dense_2704_matmul_readvariableop_resource:22H
:sequential_1037_dense_2704_biasadd_readvariableop_resource:2K
9sequential_1037_dense_2705_matmul_readvariableop_resource:22H
:sequential_1037_dense_2705_biasadd_readvariableop_resource:2K
9sequential_1037_dense_2706_matmul_readvariableop_resource:2H
:sequential_1037_dense_2706_biasadd_readvariableop_resource:
identityѕб1sequential_1037/dense_2704/BiasAdd/ReadVariableOpб0sequential_1037/dense_2704/MatMul/ReadVariableOpб1sequential_1037/dense_2705/BiasAdd/ReadVariableOpб0sequential_1037/dense_2705/MatMul/ReadVariableOpб1sequential_1037/dense_2706/BiasAdd/ReadVariableOpб0sequential_1037/dense_2706/MatMul/ReadVariableOpz
sequential_1037/dense_2704/CastCastdense_2704_input*

DstT0*

SrcT0*'
_output_shapes
:         2ф
0sequential_1037/dense_2704/MatMul/ReadVariableOpReadVariableOp9sequential_1037_dense_2704_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0╝
!sequential_1037/dense_2704/MatMulMatMul#sequential_1037/dense_2704/Cast:y:08sequential_1037/dense_2704/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2е
1sequential_1037/dense_2704/BiasAdd/ReadVariableOpReadVariableOp:sequential_1037_dense_2704_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0К
"sequential_1037/dense_2704/BiasAddBiasAdd+sequential_1037/dense_2704/MatMul:product:09sequential_1037/dense_2704/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2є
sequential_1037/dense_2704/ReluRelu+sequential_1037/dense_2704/BiasAdd:output:0*
T0*'
_output_shapes
:         2ф
0sequential_1037/dense_2705/MatMul/ReadVariableOpReadVariableOp9sequential_1037_dense_2705_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0к
!sequential_1037/dense_2705/MatMulMatMul-sequential_1037/dense_2704/Relu:activations:08sequential_1037/dense_2705/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2е
1sequential_1037/dense_2705/BiasAdd/ReadVariableOpReadVariableOp:sequential_1037_dense_2705_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0К
"sequential_1037/dense_2705/BiasAddBiasAdd+sequential_1037/dense_2705/MatMul:product:09sequential_1037/dense_2705/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2є
sequential_1037/dense_2705/ReluRelu+sequential_1037/dense_2705/BiasAdd:output:0*
T0*'
_output_shapes
:         2ф
0sequential_1037/dense_2706/MatMul/ReadVariableOpReadVariableOp9sequential_1037_dense_2706_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0к
!sequential_1037/dense_2706/MatMulMatMul-sequential_1037/dense_2705/Relu:activations:08sequential_1037/dense_2706/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         е
1sequential_1037/dense_2706/BiasAdd/ReadVariableOpReadVariableOp:sequential_1037_dense_2706_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0К
"sequential_1037/dense_2706/BiasAddBiasAdd+sequential_1037/dense_2706/MatMul:product:09sequential_1037/dense_2706/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         z
IdentityIdentity+sequential_1037/dense_2706/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp2^sequential_1037/dense_2704/BiasAdd/ReadVariableOp1^sequential_1037/dense_2704/MatMul/ReadVariableOp2^sequential_1037/dense_2705/BiasAdd/ReadVariableOp1^sequential_1037/dense_2705/MatMul/ReadVariableOp2^sequential_1037/dense_2706/BiasAdd/ReadVariableOp1^sequential_1037/dense_2706/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         2: : : : : : 2f
1sequential_1037/dense_2704/BiasAdd/ReadVariableOp1sequential_1037/dense_2704/BiasAdd/ReadVariableOp2d
0sequential_1037/dense_2704/MatMul/ReadVariableOp0sequential_1037/dense_2704/MatMul/ReadVariableOp2f
1sequential_1037/dense_2705/BiasAdd/ReadVariableOp1sequential_1037/dense_2705/BiasAdd/ReadVariableOp2d
0sequential_1037/dense_2705/MatMul/ReadVariableOp0sequential_1037/dense_2705/MatMul/ReadVariableOp2f
1sequential_1037/dense_2706/BiasAdd/ReadVariableOp1sequential_1037/dense_2706/BiasAdd/ReadVariableOp2d
0sequential_1037/dense_2706/MatMul/ReadVariableOp0sequential_1037/dense_2706/MatMul/ReadVariableOp:Y U
'
_output_shapes
:         2
*
_user_specified_namedense_2704_input
╦	
щ
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271346

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
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
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Ч
І
2__inference_sequential_1037_layer_call_fn_24271549

inputs
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
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
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271437o
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
:         2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Ч
І
2__inference_sequential_1037_layer_call_fn_24271532

inputs
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
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
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271353o
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
:         2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
џ	
Ћ
2__inference_sequential_1037_layer_call_fn_24271469
dense_2704_input
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityѕбStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCalldense_2704_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271437o
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
:         2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         2
*
_user_specified_namedense_2704_input
Ъ

щ
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271638

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┐
serving_defaultФ
M
dense_2704_input9
"serving_default_dense_2704_input:0         2>

dense_27060
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
2__inference_sequential_1037_layer_call_fn_24271368
2__inference_sequential_1037_layer_call_fn_24271532
2__inference_sequential_1037_layer_call_fn_24271549
2__inference_sequential_1037_layer_call_fn_24271469└
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
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271574
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271599
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271489
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271509└
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
#__inference__wrapped_model_24271294dense_2704_input"ў
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
#:!222dense_2704/kernel
:22dense_2704/bias
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
-__inference_dense_2704_layer_call_fn_24271627б
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
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271638б
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
#:!222dense_2705/kernel
:22dense_2705/bias
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
-__inference_dense_2705_layer_call_fn_24271647б
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
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271658б
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
#:!22dense_2706/kernel
:2dense_2706/bias
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
-__inference_dense_2706_layer_call_fn_24271667б
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
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271677б
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
&__inference_signature_wrapper_24271618dense_2704_input"ћ
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
(:&222Adam/dense_2704/kernel/m
": 22Adam/dense_2704/bias/m
(:&222Adam/dense_2705/kernel/m
": 22Adam/dense_2705/bias/m
(:&22Adam/dense_2706/kernel/m
": 2Adam/dense_2706/bias/m
(:&222Adam/dense_2704/kernel/v
": 22Adam/dense_2704/bias/v
(:&222Adam/dense_2705/kernel/v
": 22Adam/dense_2705/bias/v
(:&22Adam/dense_2706/kernel/v
": 2Adam/dense_2706/bias/vБ
#__inference__wrapped_model_24271294|9б6
/б,
*і'
dense_2704_input         2
ф "7ф4
2

dense_2706$і!

dense_2706         е
H__inference_dense_2704_layer_call_and_return_conditional_losses_24271638\/б,
%б"
 і
inputs         2
ф "%б"
і
0         2
џ ђ
-__inference_dense_2704_layer_call_fn_24271627O/б,
%б"
 і
inputs         2
ф "і         2е
H__inference_dense_2705_layer_call_and_return_conditional_losses_24271658\/б,
%б"
 і
inputs         2
ф "%б"
і
0         2
џ ђ
-__inference_dense_2705_layer_call_fn_24271647O/б,
%б"
 і
inputs         2
ф "і         2е
H__inference_dense_2706_layer_call_and_return_conditional_losses_24271677\/б,
%б"
 і
inputs         2
ф "%б"
і
0         
џ ђ
-__inference_dense_2706_layer_call_fn_24271667O/б,
%б"
 і
inputs         2
ф "і         ├
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271489rAб>
7б4
*і'
dense_2704_input         2
p 

 
ф "%б"
і
0         
џ ├
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271509rAб>
7б4
*і'
dense_2704_input         2
p

 
ф "%б"
і
0         
џ ╣
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271574h7б4
-б*
 і
inputs         2
p 

 
ф "%б"
і
0         
џ ╣
M__inference_sequential_1037_layer_call_and_return_conditional_losses_24271599h7б4
-б*
 і
inputs         2
p

 
ф "%б"
і
0         
џ Џ
2__inference_sequential_1037_layer_call_fn_24271368eAб>
7б4
*і'
dense_2704_input         2
p 

 
ф "і         Џ
2__inference_sequential_1037_layer_call_fn_24271469eAб>
7б4
*і'
dense_2704_input         2
p

 
ф "і         Љ
2__inference_sequential_1037_layer_call_fn_24271532[7б4
-б*
 і
inputs         2
p 

 
ф "і         Љ
2__inference_sequential_1037_layer_call_fn_24271549[7б4
-б*
 і
inputs         2
p

 
ф "і         ╗
&__inference_signature_wrapper_24271618љMбJ
б 
Cф@
>
dense_2704_input*і'
dense_2704_input         2"7ф4
2

dense_2706$і!

dense_2706         