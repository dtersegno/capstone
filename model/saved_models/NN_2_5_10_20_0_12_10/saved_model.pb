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
dense_2641/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:::*"
shared_namedense_2641/kernel
w
%dense_2641/kernel/Read/ReadVariableOpReadVariableOpdense_2641/kernel*
_output_shapes

:::*
dtype0
v
dense_2641/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape::* 
shared_namedense_2641/bias
o
#dense_2641/bias/Read/ReadVariableOpReadVariableOpdense_2641/bias*
_output_shapes
::*
dtype0
~
dense_2642/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:::*"
shared_namedense_2642/kernel
w
%dense_2642/kernel/Read/ReadVariableOpReadVariableOpdense_2642/kernel*
_output_shapes

:::*
dtype0
v
dense_2642/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape::* 
shared_namedense_2642/bias
o
#dense_2642/bias/Read/ReadVariableOpReadVariableOpdense_2642/bias*
_output_shapes
::*
dtype0
~
dense_2643/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
::*"
shared_namedense_2643/kernel
w
%dense_2643/kernel/Read/ReadVariableOpReadVariableOpdense_2643/kernel*
_output_shapes

::*
dtype0
v
dense_2643/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_2643/bias
o
#dense_2643/bias/Read/ReadVariableOpReadVariableOpdense_2643/bias*
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
Adam/dense_2641/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:::*)
shared_nameAdam/dense_2641/kernel/m
Ё
,Adam/dense_2641/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2641/kernel/m*
_output_shapes

:::*
dtype0
ё
Adam/dense_2641/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape::*'
shared_nameAdam/dense_2641/bias/m
}
*Adam/dense_2641/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2641/bias/m*
_output_shapes
::*
dtype0
ї
Adam/dense_2642/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:::*)
shared_nameAdam/dense_2642/kernel/m
Ё
,Adam/dense_2642/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2642/kernel/m*
_output_shapes

:::*
dtype0
ё
Adam/dense_2642/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape::*'
shared_nameAdam/dense_2642/bias/m
}
*Adam/dense_2642/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2642/bias/m*
_output_shapes
::*
dtype0
ї
Adam/dense_2643/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
::*)
shared_nameAdam/dense_2643/kernel/m
Ё
,Adam/dense_2643/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2643/kernel/m*
_output_shapes

::*
dtype0
ё
Adam/dense_2643/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2643/bias/m
}
*Adam/dense_2643/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2643/bias/m*
_output_shapes
:*
dtype0
ї
Adam/dense_2641/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:::*)
shared_nameAdam/dense_2641/kernel/v
Ё
,Adam/dense_2641/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2641/kernel/v*
_output_shapes

:::*
dtype0
ё
Adam/dense_2641/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape::*'
shared_nameAdam/dense_2641/bias/v
}
*Adam/dense_2641/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2641/bias/v*
_output_shapes
::*
dtype0
ї
Adam/dense_2642/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:::*)
shared_nameAdam/dense_2642/kernel/v
Ё
,Adam/dense_2642/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2642/kernel/v*
_output_shapes

:::*
dtype0
ё
Adam/dense_2642/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape::*'
shared_nameAdam/dense_2642/bias/v
}
*Adam/dense_2642/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2642/bias/v*
_output_shapes
::*
dtype0
ї
Adam/dense_2643/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
::*)
shared_nameAdam/dense_2643/kernel/v
Ё
,Adam/dense_2643/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2643/kernel/v*
_output_shapes

::*
dtype0
ё
Adam/dense_2643/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2643/bias/v
}
*Adam/dense_2643/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2643/bias/v*
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
VARIABLE_VALUEdense_2641/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2641/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2642/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2642/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2643/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2643/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_2641/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2641/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2642/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2642/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2643/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2643/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2641/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2641/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2642/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2642/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/dense_2643/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/dense_2643/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
 serving_default_dense_2641_inputPlaceholder*'
_output_shapes
:         :*
dtype0*
shape:         :
х
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_2641_inputdense_2641/kerneldense_2641/biasdense_2642/kerneldense_2642/biasdense_2643/kerneldense_2643/bias*
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
&__inference_signature_wrapper_22177870
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ћ

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_2641/kernel/Read/ReadVariableOp#dense_2641/bias/Read/ReadVariableOp%dense_2642/kernel/Read/ReadVariableOp#dense_2642/bias/Read/ReadVariableOp%dense_2643/kernel/Read/ReadVariableOp#dense_2643/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_2641/kernel/m/Read/ReadVariableOp*Adam/dense_2641/bias/m/Read/ReadVariableOp,Adam/dense_2642/kernel/m/Read/ReadVariableOp*Adam/dense_2642/bias/m/Read/ReadVariableOp,Adam/dense_2643/kernel/m/Read/ReadVariableOp*Adam/dense_2643/bias/m/Read/ReadVariableOp,Adam/dense_2641/kernel/v/Read/ReadVariableOp*Adam/dense_2641/bias/v/Read/ReadVariableOp,Adam/dense_2642/kernel/v/Read/ReadVariableOp*Adam/dense_2642/bias/v/Read/ReadVariableOp,Adam/dense_2643/kernel/v/Read/ReadVariableOp*Adam/dense_2643/bias/v/Read/ReadVariableOpConst*&
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
!__inference__traced_save_22178027
ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2641/kerneldense_2641/biasdense_2642/kerneldense_2642/biasdense_2643/kerneldense_2643/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_2641/kernel/mAdam/dense_2641/bias/mAdam/dense_2642/kernel/mAdam/dense_2642/bias/mAdam/dense_2643/kernel/mAdam/dense_2643/bias/mAdam/dense_2641/kernel/vAdam/dense_2641/bias/vAdam/dense_2642/kernel/vAdam/dense_2642/bias/vAdam/dense_2643/kernel/vAdam/dense_2643/bias/v*%
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
$__inference__traced_restore_22178112э¤
╩
џ
-__inference_dense_2642_layer_call_fn_22177899

inputs
unknown:::
	unknown_0::
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177582o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         :`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
Ш
├
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177761
dense_2641_input%
dense_2641_22177745:::!
dense_2641_22177747::%
dense_2642_22177750:::!
dense_2642_22177752::%
dense_2643_22177755::!
dense_2643_22177757:
identityѕб"dense_2641/StatefulPartitionedCallб"dense_2642/StatefulPartitionedCallб"dense_2643/StatefulPartitionedCallj
dense_2641/CastCastdense_2641_input*

DstT0*

SrcT0*'
_output_shapes
:         :І
"dense_2641/StatefulPartitionedCallStatefulPartitionedCalldense_2641/Cast:y:0dense_2641_22177745dense_2641_22177747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177565Б
"dense_2642/StatefulPartitionedCallStatefulPartitionedCall+dense_2641/StatefulPartitionedCall:output:0dense_2642_22177750dense_2642_22177752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177582Б
"dense_2643/StatefulPartitionedCallStatefulPartitionedCall+dense_2642/StatefulPartitionedCall:output:0dense_2643_22177755dense_2643_22177757*
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
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177598z
IdentityIdentity+dense_2643/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_2641/StatefulPartitionedCall#^dense_2642/StatefulPartitionedCall#^dense_2643/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :: : : : : : 2H
"dense_2641/StatefulPartitionedCall"dense_2641/StatefulPartitionedCall2H
"dense_2642/StatefulPartitionedCall"dense_2642/StatefulPartitionedCall2H
"dense_2643/StatefulPartitionedCall"dense_2643/StatefulPartitionedCall:Y U
'
_output_shapes
:         :
*
_user_specified_namedense_2641_input
Ъ

щ
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177565

inputs0
matmul_readvariableop_resource:::-
biasadd_readvariableop_resource::
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:::*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
::*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         :a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         :w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
п
╣
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177689

inputs%
dense_2641_22177673:::!
dense_2641_22177675::%
dense_2642_22177678:::!
dense_2642_22177680::%
dense_2643_22177683::!
dense_2643_22177685:
identityѕб"dense_2641/StatefulPartitionedCallб"dense_2642/StatefulPartitionedCallб"dense_2643/StatefulPartitionedCall`
dense_2641/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         :І
"dense_2641/StatefulPartitionedCallStatefulPartitionedCalldense_2641/Cast:y:0dense_2641_22177673dense_2641_22177675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177565Б
"dense_2642/StatefulPartitionedCallStatefulPartitionedCall+dense_2641/StatefulPartitionedCall:output:0dense_2642_22177678dense_2642_22177680*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177582Б
"dense_2643/StatefulPartitionedCallStatefulPartitionedCall+dense_2642/StatefulPartitionedCall:output:0dense_2643_22177683dense_2643_22177685*
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
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177598z
IdentityIdentity+dense_2643/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_2641/StatefulPartitionedCall#^dense_2642/StatefulPartitionedCall#^dense_2643/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :: : : : : : 2H
"dense_2641/StatefulPartitionedCall"dense_2641/StatefulPartitionedCall2H
"dense_2642/StatefulPartitionedCall"dense_2642/StatefulPartitionedCall2H
"dense_2643/StatefulPartitionedCall"dense_2643/StatefulPartitionedCall:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
╩
џ
-__inference_dense_2643_layer_call_fn_22177919

inputs
unknown::
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
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177598o
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
:         :: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
┤
д
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177826

inputs;
)dense_2641_matmul_readvariableop_resource:::8
*dense_2641_biasadd_readvariableop_resource::;
)dense_2642_matmul_readvariableop_resource:::8
*dense_2642_biasadd_readvariableop_resource::;
)dense_2643_matmul_readvariableop_resource::8
*dense_2643_biasadd_readvariableop_resource:
identityѕб!dense_2641/BiasAdd/ReadVariableOpб dense_2641/MatMul/ReadVariableOpб!dense_2642/BiasAdd/ReadVariableOpб dense_2642/MatMul/ReadVariableOpб!dense_2643/BiasAdd/ReadVariableOpб dense_2643/MatMul/ReadVariableOp`
dense_2641/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         :і
 dense_2641/MatMul/ReadVariableOpReadVariableOp)dense_2641_matmul_readvariableop_resource*
_output_shapes

:::*
dtype0ї
dense_2641/MatMulMatMuldense_2641/Cast:y:0(dense_2641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :ѕ
!dense_2641/BiasAdd/ReadVariableOpReadVariableOp*dense_2641_biasadd_readvariableop_resource*
_output_shapes
::*
dtype0Ќ
dense_2641/BiasAddBiasAdddense_2641/MatMul:product:0)dense_2641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :f
dense_2641/ReluReludense_2641/BiasAdd:output:0*
T0*'
_output_shapes
:         :і
 dense_2642/MatMul/ReadVariableOpReadVariableOp)dense_2642_matmul_readvariableop_resource*
_output_shapes

:::*
dtype0ќ
dense_2642/MatMulMatMuldense_2641/Relu:activations:0(dense_2642/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :ѕ
!dense_2642/BiasAdd/ReadVariableOpReadVariableOp*dense_2642_biasadd_readvariableop_resource*
_output_shapes
::*
dtype0Ќ
dense_2642/BiasAddBiasAdddense_2642/MatMul:product:0)dense_2642/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :f
dense_2642/ReluReludense_2642/BiasAdd:output:0*
T0*'
_output_shapes
:         :і
 dense_2643/MatMul/ReadVariableOpReadVariableOp)dense_2643_matmul_readvariableop_resource*
_output_shapes

::*
dtype0ќ
dense_2643/MatMulMatMuldense_2642/Relu:activations:0(dense_2643/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѕ
!dense_2643/BiasAdd/ReadVariableOpReadVariableOp*dense_2643_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
dense_2643/BiasAddBiasAdddense_2643/MatMul:product:0)dense_2643/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
IdentityIdentitydense_2643/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Џ
NoOpNoOp"^dense_2641/BiasAdd/ReadVariableOp!^dense_2641/MatMul/ReadVariableOp"^dense_2642/BiasAdd/ReadVariableOp!^dense_2642/MatMul/ReadVariableOp"^dense_2643/BiasAdd/ReadVariableOp!^dense_2643/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :: : : : : : 2F
!dense_2641/BiasAdd/ReadVariableOp!dense_2641/BiasAdd/ReadVariableOp2D
 dense_2641/MatMul/ReadVariableOp dense_2641/MatMul/ReadVariableOp2F
!dense_2642/BiasAdd/ReadVariableOp!dense_2642/BiasAdd/ReadVariableOp2D
 dense_2642/MatMul/ReadVariableOp dense_2642/MatMul/ReadVariableOp2F
!dense_2643/BiasAdd/ReadVariableOp!dense_2643/BiasAdd/ReadVariableOp2D
 dense_2643/MatMul/ReadVariableOp dense_2643/MatMul/ReadVariableOp:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
┌9
Я

!__inference__traced_save_22178027
file_prefix0
,savev2_dense_2641_kernel_read_readvariableop.
*savev2_dense_2641_bias_read_readvariableop0
,savev2_dense_2642_kernel_read_readvariableop.
*savev2_dense_2642_bias_read_readvariableop0
,savev2_dense_2643_kernel_read_readvariableop.
*savev2_dense_2643_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_2641_kernel_m_read_readvariableop5
1savev2_adam_dense_2641_bias_m_read_readvariableop7
3savev2_adam_dense_2642_kernel_m_read_readvariableop5
1savev2_adam_dense_2642_bias_m_read_readvariableop7
3savev2_adam_dense_2643_kernel_m_read_readvariableop5
1savev2_adam_dense_2643_bias_m_read_readvariableop7
3savev2_adam_dense_2641_kernel_v_read_readvariableop5
1savev2_adam_dense_2641_bias_v_read_readvariableop7
3savev2_adam_dense_2642_kernel_v_read_readvariableop5
1savev2_adam_dense_2642_bias_v_read_readvariableop7
3savev2_adam_dense_2643_kernel_v_read_readvariableop5
1savev2_adam_dense_2643_bias_v_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_2641_kernel_read_readvariableop*savev2_dense_2641_bias_read_readvariableop,savev2_dense_2642_kernel_read_readvariableop*savev2_dense_2642_bias_read_readvariableop,savev2_dense_2643_kernel_read_readvariableop*savev2_dense_2643_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_2641_kernel_m_read_readvariableop1savev2_adam_dense_2641_bias_m_read_readvariableop3savev2_adam_dense_2642_kernel_m_read_readvariableop1savev2_adam_dense_2642_bias_m_read_readvariableop3savev2_adam_dense_2643_kernel_m_read_readvariableop1savev2_adam_dense_2643_bias_m_read_readvariableop3savev2_adam_dense_2641_kernel_v_read_readvariableop1savev2_adam_dense_2641_bias_v_read_readvariableop3savev2_adam_dense_2642_kernel_v_read_readvariableop1savev2_adam_dense_2642_bias_v_read_readvariableop3savev2_adam_dense_2643_kernel_v_read_readvariableop1savev2_adam_dense_2643_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
б: :::::::::::::: : : : : : : ::::::::::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:::: 

_output_shapes
:::$ 

_output_shapes

:::: 

_output_shapes
:::$ 

_output_shapes

::: 
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

:::: 

_output_shapes
:::$ 

_output_shapes

:::: 

_output_shapes
:::$ 

_output_shapes

::: 

_output_shapes
::$ 

_output_shapes

:::: 

_output_shapes
:::$ 

_output_shapes

:::: 

_output_shapes
:::$ 

_output_shapes

::: 

_output_shapes
::

_output_shapes
: 
іf
ъ
$__inference__traced_restore_22178112
file_prefix4
"assignvariableop_dense_2641_kernel:::0
"assignvariableop_1_dense_2641_bias::6
$assignvariableop_2_dense_2642_kernel:::0
"assignvariableop_3_dense_2642_bias::6
$assignvariableop_4_dense_2643_kernel::0
"assignvariableop_5_dense_2643_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: >
,assignvariableop_13_adam_dense_2641_kernel_m:::8
*assignvariableop_14_adam_dense_2641_bias_m::>
,assignvariableop_15_adam_dense_2642_kernel_m:::8
*assignvariableop_16_adam_dense_2642_bias_m::>
,assignvariableop_17_adam_dense_2643_kernel_m::8
*assignvariableop_18_adam_dense_2643_bias_m:>
,assignvariableop_19_adam_dense_2641_kernel_v:::8
*assignvariableop_20_adam_dense_2641_bias_v::>
,assignvariableop_21_adam_dense_2642_kernel_v:::8
*assignvariableop_22_adam_dense_2642_bias_v::>
,assignvariableop_23_adam_dense_2643_kernel_v::8
*assignvariableop_24_adam_dense_2643_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_2641_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_2641_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_2642_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_2642_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_2643_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_2643_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_2641_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_2641_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_2642_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_2642_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_2643_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_2643_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_2641_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_2641_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_2642_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_2642_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_2643_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_2643_bias_vIdentity_24:output:0"/device:CPU:0*
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
џ	
Ћ
2__inference_sequential_1016_layer_call_fn_22177721
dense_2641_input
unknown:::
	unknown_0::
	unknown_1:::
	unknown_2::
	unknown_3::
	unknown_4:
identityѕбStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCalldense_2641_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177689o
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
:         :: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         :
*
_user_specified_namedense_2641_input
Ч
І
2__inference_sequential_1016_layer_call_fn_22177784

inputs
unknown:::
	unknown_0::
	unknown_1:::
	unknown_2::
	unknown_3::
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
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177605o
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
:         :: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
╩%
к
#__inference__wrapped_model_22177546
dense_2641_inputK
9sequential_1016_dense_2641_matmul_readvariableop_resource:::H
:sequential_1016_dense_2641_biasadd_readvariableop_resource::K
9sequential_1016_dense_2642_matmul_readvariableop_resource:::H
:sequential_1016_dense_2642_biasadd_readvariableop_resource::K
9sequential_1016_dense_2643_matmul_readvariableop_resource::H
:sequential_1016_dense_2643_biasadd_readvariableop_resource:
identityѕб1sequential_1016/dense_2641/BiasAdd/ReadVariableOpб0sequential_1016/dense_2641/MatMul/ReadVariableOpб1sequential_1016/dense_2642/BiasAdd/ReadVariableOpб0sequential_1016/dense_2642/MatMul/ReadVariableOpб1sequential_1016/dense_2643/BiasAdd/ReadVariableOpб0sequential_1016/dense_2643/MatMul/ReadVariableOpz
sequential_1016/dense_2641/CastCastdense_2641_input*

DstT0*

SrcT0*'
_output_shapes
:         :ф
0sequential_1016/dense_2641/MatMul/ReadVariableOpReadVariableOp9sequential_1016_dense_2641_matmul_readvariableop_resource*
_output_shapes

:::*
dtype0╝
!sequential_1016/dense_2641/MatMulMatMul#sequential_1016/dense_2641/Cast:y:08sequential_1016/dense_2641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :е
1sequential_1016/dense_2641/BiasAdd/ReadVariableOpReadVariableOp:sequential_1016_dense_2641_biasadd_readvariableop_resource*
_output_shapes
::*
dtype0К
"sequential_1016/dense_2641/BiasAddBiasAdd+sequential_1016/dense_2641/MatMul:product:09sequential_1016/dense_2641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :є
sequential_1016/dense_2641/ReluRelu+sequential_1016/dense_2641/BiasAdd:output:0*
T0*'
_output_shapes
:         :ф
0sequential_1016/dense_2642/MatMul/ReadVariableOpReadVariableOp9sequential_1016_dense_2642_matmul_readvariableop_resource*
_output_shapes

:::*
dtype0к
!sequential_1016/dense_2642/MatMulMatMul-sequential_1016/dense_2641/Relu:activations:08sequential_1016/dense_2642/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :е
1sequential_1016/dense_2642/BiasAdd/ReadVariableOpReadVariableOp:sequential_1016_dense_2642_biasadd_readvariableop_resource*
_output_shapes
::*
dtype0К
"sequential_1016/dense_2642/BiasAddBiasAdd+sequential_1016/dense_2642/MatMul:product:09sequential_1016/dense_2642/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :є
sequential_1016/dense_2642/ReluRelu+sequential_1016/dense_2642/BiasAdd:output:0*
T0*'
_output_shapes
:         :ф
0sequential_1016/dense_2643/MatMul/ReadVariableOpReadVariableOp9sequential_1016_dense_2643_matmul_readvariableop_resource*
_output_shapes

::*
dtype0к
!sequential_1016/dense_2643/MatMulMatMul-sequential_1016/dense_2642/Relu:activations:08sequential_1016/dense_2643/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         е
1sequential_1016/dense_2643/BiasAdd/ReadVariableOpReadVariableOp:sequential_1016_dense_2643_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0К
"sequential_1016/dense_2643/BiasAddBiasAdd+sequential_1016/dense_2643/MatMul:product:09sequential_1016/dense_2643/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         z
IdentityIdentity+sequential_1016/dense_2643/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp2^sequential_1016/dense_2641/BiasAdd/ReadVariableOp1^sequential_1016/dense_2641/MatMul/ReadVariableOp2^sequential_1016/dense_2642/BiasAdd/ReadVariableOp1^sequential_1016/dense_2642/MatMul/ReadVariableOp2^sequential_1016/dense_2643/BiasAdd/ReadVariableOp1^sequential_1016/dense_2643/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :: : : : : : 2f
1sequential_1016/dense_2641/BiasAdd/ReadVariableOp1sequential_1016/dense_2641/BiasAdd/ReadVariableOp2d
0sequential_1016/dense_2641/MatMul/ReadVariableOp0sequential_1016/dense_2641/MatMul/ReadVariableOp2f
1sequential_1016/dense_2642/BiasAdd/ReadVariableOp1sequential_1016/dense_2642/BiasAdd/ReadVariableOp2d
0sequential_1016/dense_2642/MatMul/ReadVariableOp0sequential_1016/dense_2642/MatMul/ReadVariableOp2f
1sequential_1016/dense_2643/BiasAdd/ReadVariableOp1sequential_1016/dense_2643/BiasAdd/ReadVariableOp2d
0sequential_1016/dense_2643/MatMul/ReadVariableOp0sequential_1016/dense_2643/MatMul/ReadVariableOp:Y U
'
_output_shapes
:         :
*
_user_specified_namedense_2641_input
╩
џ
-__inference_dense_2641_layer_call_fn_22177879

inputs
unknown:::
	unknown_0::
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         :`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
Ъ

щ
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177890

inputs0
matmul_readvariableop_resource:::-
biasadd_readvariableop_resource::
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:::*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
::*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         :a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         :w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
џ	
Ћ
2__inference_sequential_1016_layer_call_fn_22177620
dense_2641_input
unknown:::
	unknown_0::
	unknown_1:::
	unknown_2::
	unknown_3::
	unknown_4:
identityѕбStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCalldense_2641_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177605o
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
:         :: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         :
*
_user_specified_namedense_2641_input
п
╣
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177605

inputs%
dense_2641_22177566:::!
dense_2641_22177568::%
dense_2642_22177583:::!
dense_2642_22177585::%
dense_2643_22177599::!
dense_2643_22177601:
identityѕб"dense_2641/StatefulPartitionedCallб"dense_2642/StatefulPartitionedCallб"dense_2643/StatefulPartitionedCall`
dense_2641/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         :І
"dense_2641/StatefulPartitionedCallStatefulPartitionedCalldense_2641/Cast:y:0dense_2641_22177566dense_2641_22177568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177565Б
"dense_2642/StatefulPartitionedCallStatefulPartitionedCall+dense_2641/StatefulPartitionedCall:output:0dense_2642_22177583dense_2642_22177585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177582Б
"dense_2643/StatefulPartitionedCallStatefulPartitionedCall+dense_2642/StatefulPartitionedCall:output:0dense_2643_22177599dense_2643_22177601*
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
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177598z
IdentityIdentity+dense_2643/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_2641/StatefulPartitionedCall#^dense_2642/StatefulPartitionedCall#^dense_2643/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :: : : : : : 2H
"dense_2641/StatefulPartitionedCall"dense_2641/StatefulPartitionedCall2H
"dense_2642/StatefulPartitionedCall"dense_2642/StatefulPartitionedCall2H
"dense_2643/StatefulPartitionedCall"dense_2643/StatefulPartitionedCall:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
С
Ѕ
&__inference_signature_wrapper_22177870
dense_2641_input
unknown:::
	unknown_0::
	unknown_1:::
	unknown_2::
	unknown_3::
	unknown_4:
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCalldense_2641_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_22177546o
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
:         :: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         :
*
_user_specified_namedense_2641_input
Ч
І
2__inference_sequential_1016_layer_call_fn_22177801

inputs
unknown:::
	unknown_0::
	unknown_1:::
	unknown_2::
	unknown_3::
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
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177689o
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
:         :: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
Ш
├
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177741
dense_2641_input%
dense_2641_22177725:::!
dense_2641_22177727::%
dense_2642_22177730:::!
dense_2642_22177732::%
dense_2643_22177735::!
dense_2643_22177737:
identityѕб"dense_2641/StatefulPartitionedCallб"dense_2642/StatefulPartitionedCallб"dense_2643/StatefulPartitionedCallj
dense_2641/CastCastdense_2641_input*

DstT0*

SrcT0*'
_output_shapes
:         :І
"dense_2641/StatefulPartitionedCallStatefulPartitionedCalldense_2641/Cast:y:0dense_2641_22177725dense_2641_22177727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177565Б
"dense_2642/StatefulPartitionedCallStatefulPartitionedCall+dense_2641/StatefulPartitionedCall:output:0dense_2642_22177730dense_2642_22177732*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         :*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177582Б
"dense_2643/StatefulPartitionedCallStatefulPartitionedCall+dense_2642/StatefulPartitionedCall:output:0dense_2643_22177735dense_2643_22177737*
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
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177598z
IdentityIdentity+dense_2643/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp#^dense_2641/StatefulPartitionedCall#^dense_2642/StatefulPartitionedCall#^dense_2643/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :: : : : : : 2H
"dense_2641/StatefulPartitionedCall"dense_2641/StatefulPartitionedCall2H
"dense_2642/StatefulPartitionedCall"dense_2642/StatefulPartitionedCall2H
"dense_2643/StatefulPartitionedCall"dense_2643/StatefulPartitionedCall:Y U
'
_output_shapes
:         :
*
_user_specified_namedense_2641_input
┤
д
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177851

inputs;
)dense_2641_matmul_readvariableop_resource:::8
*dense_2641_biasadd_readvariableop_resource::;
)dense_2642_matmul_readvariableop_resource:::8
*dense_2642_biasadd_readvariableop_resource::;
)dense_2643_matmul_readvariableop_resource::8
*dense_2643_biasadd_readvariableop_resource:
identityѕб!dense_2641/BiasAdd/ReadVariableOpб dense_2641/MatMul/ReadVariableOpб!dense_2642/BiasAdd/ReadVariableOpб dense_2642/MatMul/ReadVariableOpб!dense_2643/BiasAdd/ReadVariableOpб dense_2643/MatMul/ReadVariableOp`
dense_2641/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         :і
 dense_2641/MatMul/ReadVariableOpReadVariableOp)dense_2641_matmul_readvariableop_resource*
_output_shapes

:::*
dtype0ї
dense_2641/MatMulMatMuldense_2641/Cast:y:0(dense_2641/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :ѕ
!dense_2641/BiasAdd/ReadVariableOpReadVariableOp*dense_2641_biasadd_readvariableop_resource*
_output_shapes
::*
dtype0Ќ
dense_2641/BiasAddBiasAdddense_2641/MatMul:product:0)dense_2641/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :f
dense_2641/ReluReludense_2641/BiasAdd:output:0*
T0*'
_output_shapes
:         :і
 dense_2642/MatMul/ReadVariableOpReadVariableOp)dense_2642_matmul_readvariableop_resource*
_output_shapes

:::*
dtype0ќ
dense_2642/MatMulMatMuldense_2641/Relu:activations:0(dense_2642/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :ѕ
!dense_2642/BiasAdd/ReadVariableOpReadVariableOp*dense_2642_biasadd_readvariableop_resource*
_output_shapes
::*
dtype0Ќ
dense_2642/BiasAddBiasAdddense_2642/MatMul:product:0)dense_2642/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :f
dense_2642/ReluReludense_2642/BiasAdd:output:0*
T0*'
_output_shapes
:         :і
 dense_2643/MatMul/ReadVariableOpReadVariableOp)dense_2643_matmul_readvariableop_resource*
_output_shapes

::*
dtype0ќ
dense_2643/MatMulMatMuldense_2642/Relu:activations:0(dense_2643/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѕ
!dense_2643/BiasAdd/ReadVariableOpReadVariableOp*dense_2643_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
dense_2643/BiasAddBiasAdddense_2643/MatMul:product:0)dense_2643/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
IdentityIdentitydense_2643/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Џ
NoOpNoOp"^dense_2641/BiasAdd/ReadVariableOp!^dense_2641/MatMul/ReadVariableOp"^dense_2642/BiasAdd/ReadVariableOp!^dense_2642/MatMul/ReadVariableOp"^dense_2643/BiasAdd/ReadVariableOp!^dense_2643/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :: : : : : : 2F
!dense_2641/BiasAdd/ReadVariableOp!dense_2641/BiasAdd/ReadVariableOp2D
 dense_2641/MatMul/ReadVariableOp dense_2641/MatMul/ReadVariableOp2F
!dense_2642/BiasAdd/ReadVariableOp!dense_2642/BiasAdd/ReadVariableOp2D
 dense_2642/MatMul/ReadVariableOp dense_2642/MatMul/ReadVariableOp2F
!dense_2643/BiasAdd/ReadVariableOp!dense_2643/BiasAdd/ReadVariableOp2D
 dense_2643/MatMul/ReadVariableOp dense_2643/MatMul/ReadVariableOp:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
Ъ

щ
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177910

inputs0
matmul_readvariableop_resource:::-
biasadd_readvariableop_resource::
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:::*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
::*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         :a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         :w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
╦	
щ
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177929

inputs0
matmul_readvariableop_resource::-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

::*
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
:         :: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
Ъ

щ
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177582

inputs0
matmul_readvariableop_resource:::-
biasadd_readvariableop_resource::
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:::*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
::*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         :P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         :a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         :w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         :
 
_user_specified_nameinputs
╦	
щ
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177598

inputs0
matmul_readvariableop_resource::-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

::*
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
:         :: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         :
 
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
dense_2641_input9
"serving_default_dense_2641_input:0         :>

dense_26430
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
2__inference_sequential_1016_layer_call_fn_22177620
2__inference_sequential_1016_layer_call_fn_22177784
2__inference_sequential_1016_layer_call_fn_22177801
2__inference_sequential_1016_layer_call_fn_22177721└
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
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177826
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177851
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177741
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177761└
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
#__inference__wrapped_model_22177546dense_2641_input"ў
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
#:!::2dense_2641/kernel
::2dense_2641/bias
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
-__inference_dense_2641_layer_call_fn_22177879б
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
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177890б
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
#:!::2dense_2642/kernel
::2dense_2642/bias
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
-__inference_dense_2642_layer_call_fn_22177899б
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
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177910б
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
#:!:2dense_2643/kernel
:2dense_2643/bias
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
-__inference_dense_2643_layer_call_fn_22177919б
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
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177929б
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
&__inference_signature_wrapper_22177870dense_2641_input"ћ
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
(:&::2Adam/dense_2641/kernel/m
": :2Adam/dense_2641/bias/m
(:&::2Adam/dense_2642/kernel/m
": :2Adam/dense_2642/bias/m
(:&:2Adam/dense_2643/kernel/m
": 2Adam/dense_2643/bias/m
(:&::2Adam/dense_2641/kernel/v
": :2Adam/dense_2641/bias/v
(:&::2Adam/dense_2642/kernel/v
": :2Adam/dense_2642/bias/v
(:&:2Adam/dense_2643/kernel/v
": 2Adam/dense_2643/bias/vБ
#__inference__wrapped_model_22177546|9б6
/б,
*і'
dense_2641_input         :
ф "7ф4
2

dense_2643$і!

dense_2643         е
H__inference_dense_2641_layer_call_and_return_conditional_losses_22177890\/б,
%б"
 і
inputs         :
ф "%б"
і
0         :
џ ђ
-__inference_dense_2641_layer_call_fn_22177879O/б,
%б"
 і
inputs         :
ф "і         :е
H__inference_dense_2642_layer_call_and_return_conditional_losses_22177910\/б,
%б"
 і
inputs         :
ф "%б"
і
0         :
џ ђ
-__inference_dense_2642_layer_call_fn_22177899O/б,
%б"
 і
inputs         :
ф "і         :е
H__inference_dense_2643_layer_call_and_return_conditional_losses_22177929\/б,
%б"
 і
inputs         :
ф "%б"
і
0         
џ ђ
-__inference_dense_2643_layer_call_fn_22177919O/б,
%б"
 і
inputs         :
ф "і         ├
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177741rAб>
7б4
*і'
dense_2641_input         :
p 

 
ф "%б"
і
0         
џ ├
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177761rAб>
7б4
*і'
dense_2641_input         :
p

 
ф "%б"
і
0         
џ ╣
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177826h7б4
-б*
 і
inputs         :
p 

 
ф "%б"
і
0         
џ ╣
M__inference_sequential_1016_layer_call_and_return_conditional_losses_22177851h7б4
-б*
 і
inputs         :
p

 
ф "%б"
і
0         
џ Џ
2__inference_sequential_1016_layer_call_fn_22177620eAб>
7б4
*і'
dense_2641_input         :
p 

 
ф "і         Џ
2__inference_sequential_1016_layer_call_fn_22177721eAб>
7б4
*і'
dense_2641_input         :
p

 
ф "і         Љ
2__inference_sequential_1016_layer_call_fn_22177784[7б4
-б*
 і
inputs         :
p 

 
ф "і         Љ
2__inference_sequential_1016_layer_call_fn_22177801[7б4
-б*
 і
inputs         :
p

 
ф "і         ╗
&__inference_signature_wrapper_22177870љMбJ
б 
Cф@
>
dense_2641_input*і'
dense_2641_input         :"7ф4
2

dense_2643$і!

dense_2643         