��
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
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
~
dense_4430/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:DD*"
shared_namedense_4430/kernel
w
%dense_4430/kernel/Read/ReadVariableOpReadVariableOpdense_4430/kernel*
_output_shapes

:DD*
dtype0
v
dense_4430/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:D* 
shared_namedense_4430/bias
o
#dense_4430/bias/Read/ReadVariableOpReadVariableOpdense_4430/bias*
_output_shapes
:D*
dtype0
~
dense_4431/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:D*"
shared_namedense_4431/kernel
w
%dense_4431/kernel/Read/ReadVariableOpReadVariableOpdense_4431/kernel*
_output_shapes

:D*
dtype0
v
dense_4431/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_4431/bias
o
#dense_4431/bias/Read/ReadVariableOpReadVariableOpdense_4431/bias*
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
Adam/dense_4430/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:DD*)
shared_nameAdam/dense_4430/kernel/m
�
,Adam/dense_4430/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4430/kernel/m*
_output_shapes

:DD*
dtype0
�
Adam/dense_4430/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:D*'
shared_nameAdam/dense_4430/bias/m
}
*Adam/dense_4430/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4430/bias/m*
_output_shapes
:D*
dtype0
�
Adam/dense_4431/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:D*)
shared_nameAdam/dense_4431/kernel/m
�
,Adam/dense_4431/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4431/kernel/m*
_output_shapes

:D*
dtype0
�
Adam/dense_4431/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_4431/bias/m
}
*Adam/dense_4431/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4431/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_4430/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:DD*)
shared_nameAdam/dense_4430/kernel/v
�
,Adam/dense_4430/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4430/kernel/v*
_output_shapes

:DD*
dtype0
�
Adam/dense_4430/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:D*'
shared_nameAdam/dense_4430/bias/v
}
*Adam/dense_4430/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4430/bias/v*
_output_shapes
:D*
dtype0
�
Adam/dense_4431/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:D*)
shared_nameAdam/dense_4431/kernel/v
�
,Adam/dense_4431/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4431/kernel/v*
_output_shapes

:D*
dtype0
�
Adam/dense_4431/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_4431/bias/v
}
*Adam/dense_4431/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4431/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
� 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
iter

beta_1

beta_2
	decay
 learning_ratem6m7m8m9v:v;v<v=*
 
0
1
2
3*
 
0
1
2
3*
* 
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

&serving_default* 
a[
VARIABLE_VALUEdense_4430/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_4430/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_4431/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_4431/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
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

0
1*

10*
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
	2total
	3count
4	variables
5	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

4	variables*
�~
VARIABLE_VALUEAdam/dense_4430/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_4430/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_4431/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_4431/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_4430/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_4430/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_4431/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_4431/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_dense_4430_inputPlaceholder*'
_output_shapes
:���������D*
dtype0*
shape:���������D
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_4430_inputdense_4430/kerneldense_4430/biasdense_4431/kerneldense_4431/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_64518161
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_4430/kernel/Read/ReadVariableOp#dense_4430/bias/Read/ReadVariableOp%dense_4431/kernel/Read/ReadVariableOp#dense_4431/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_4430/kernel/m/Read/ReadVariableOp*Adam/dense_4430/bias/m/Read/ReadVariableOp,Adam/dense_4431/kernel/m/Read/ReadVariableOp*Adam/dense_4431/bias/m/Read/ReadVariableOp,Adam/dense_4430/kernel/v/Read/ReadVariableOp*Adam/dense_4430/bias/v/Read/ReadVariableOp,Adam/dense_4431/kernel/v/Read/ReadVariableOp*Adam/dense_4431/bias/v/Read/ReadVariableOpConst* 
Tin
2	*
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
!__inference__traced_save_64518280
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4430/kerneldense_4430/biasdense_4431/kerneldense_4431/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_4430/kernel/mAdam/dense_4430/bias/mAdam/dense_4431/kernel/mAdam/dense_4431/bias/mAdam/dense_4430/kernel/vAdam/dense_4430/bias/vAdam/dense_4431/kernel/vAdam/dense_4431/bias/v*
Tin
2*
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
$__inference__traced_restore_64518347��
�
�
&__inference_signature_wrapper_64518161
dense_4430_input
unknown:DD
	unknown_0:D
	unknown_1:D
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_4430_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_64517921o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������D
*
_user_specified_namedense_4430_input
�
�
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518078
dense_4430_input%
dense_4430_64518067:DD!
dense_4430_64518069:D%
dense_4431_64518072:D!
dense_4431_64518074:
identity��"dense_4430/StatefulPartitionedCall�"dense_4431/StatefulPartitionedCallj
dense_4430/CastCastdense_4430_input*

DstT0*

SrcT0*'
_output_shapes
:���������D�
"dense_4430/StatefulPartitionedCallStatefulPartitionedCalldense_4430/Cast:y:0dense_4430_64518067dense_4430_64518069*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������D*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_4430_layer_call_and_return_conditional_losses_64517940�
"dense_4431/StatefulPartitionedCallStatefulPartitionedCall+dense_4430/StatefulPartitionedCall:output:0dense_4431_64518072dense_4431_64518074*
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
H__inference_dense_4431_layer_call_and_return_conditional_losses_64517956z
IdentityIdentity+dense_4431/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_4430/StatefulPartitionedCall#^dense_4431/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 2H
"dense_4430/StatefulPartitionedCall"dense_4430/StatefulPartitionedCall2H
"dense_4431/StatefulPartitionedCall"dense_4431/StatefulPartitionedCall:Y U
'
_output_shapes
:���������D
*
_user_specified_namedense_4430_input
�
�
2__inference_sequential_1842_layer_call_fn_64518048
dense_4430_input
unknown:DD
	unknown_0:D
	unknown_1:D
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_4430_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518024o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������D
*
_user_specified_namedense_4430_input
�
�
2__inference_sequential_1842_layer_call_fn_64518110

inputs
unknown:DD
	unknown_0:D
	unknown_1:D
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518024o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�
�
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64517963

inputs%
dense_4430_64517941:DD!
dense_4430_64517943:D%
dense_4431_64517957:D!
dense_4431_64517959:
identity��"dense_4430/StatefulPartitionedCall�"dense_4431/StatefulPartitionedCall`
dense_4430/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������D�
"dense_4430/StatefulPartitionedCallStatefulPartitionedCalldense_4430/Cast:y:0dense_4430_64517941dense_4430_64517943*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������D*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_4430_layer_call_and_return_conditional_losses_64517940�
"dense_4431/StatefulPartitionedCallStatefulPartitionedCall+dense_4430/StatefulPartitionedCall:output:0dense_4431_64517957dense_4431_64517959*
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
H__inference_dense_4431_layer_call_and_return_conditional_losses_64517956z
IdentityIdentity+dense_4431/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_4430/StatefulPartitionedCall#^dense_4431/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 2H
"dense_4430/StatefulPartitionedCall"dense_4430/StatefulPartitionedCall2H
"dense_4431/StatefulPartitionedCall"dense_4431/StatefulPartitionedCall:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�
�
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518024

inputs%
dense_4430_64518013:DD!
dense_4430_64518015:D%
dense_4431_64518018:D!
dense_4431_64518020:
identity��"dense_4430/StatefulPartitionedCall�"dense_4431/StatefulPartitionedCall`
dense_4430/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������D�
"dense_4430/StatefulPartitionedCallStatefulPartitionedCalldense_4430/Cast:y:0dense_4430_64518013dense_4430_64518015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������D*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_4430_layer_call_and_return_conditional_losses_64517940�
"dense_4431/StatefulPartitionedCallStatefulPartitionedCall+dense_4430/StatefulPartitionedCall:output:0dense_4431_64518018dense_4431_64518020*
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
H__inference_dense_4431_layer_call_and_return_conditional_losses_64517956z
IdentityIdentity+dense_4431/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_4430/StatefulPartitionedCall#^dense_4431/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 2H
"dense_4430/StatefulPartitionedCall"dense_4430/StatefulPartitionedCall2H
"dense_4431/StatefulPartitionedCall"dense_4431/StatefulPartitionedCall:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�
�
2__inference_sequential_1842_layer_call_fn_64518097

inputs
unknown:DD
	unknown_0:D
	unknown_1:D
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64517963o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�

�
H__inference_dense_4430_layer_call_and_return_conditional_losses_64517940

inputs0
matmul_readvariableop_resource:DD-
biasadd_readvariableop_resource:D
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:DD*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:D*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������DP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������D: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�
�
-__inference_dense_4430_layer_call_fn_64518170

inputs
unknown:DD
	unknown_0:D
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������D*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_4430_layer_call_and_return_conditional_losses_64517940o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������D`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������D: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�	
�
H__inference_dense_4431_layer_call_and_return_conditional_losses_64517956

inputs0
matmul_readvariableop_resource:D-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:D*
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
:���������D: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�
�
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518146

inputs;
)dense_4430_matmul_readvariableop_resource:DD8
*dense_4430_biasadd_readvariableop_resource:D;
)dense_4431_matmul_readvariableop_resource:D8
*dense_4431_biasadd_readvariableop_resource:
identity��!dense_4430/BiasAdd/ReadVariableOp� dense_4430/MatMul/ReadVariableOp�!dense_4431/BiasAdd/ReadVariableOp� dense_4431/MatMul/ReadVariableOp`
dense_4430/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������D�
 dense_4430/MatMul/ReadVariableOpReadVariableOp)dense_4430_matmul_readvariableop_resource*
_output_shapes

:DD*
dtype0�
dense_4430/MatMulMatMuldense_4430/Cast:y:0(dense_4430/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������D�
!dense_4430/BiasAdd/ReadVariableOpReadVariableOp*dense_4430_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0�
dense_4430/BiasAddBiasAdddense_4430/MatMul:product:0)dense_4430/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Df
dense_4430/ReluReludense_4430/BiasAdd:output:0*
T0*'
_output_shapes
:���������D�
 dense_4431/MatMul/ReadVariableOpReadVariableOp)dense_4431_matmul_readvariableop_resource*
_output_shapes

:D*
dtype0�
dense_4431/MatMulMatMuldense_4430/Relu:activations:0(dense_4431/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_4431/BiasAdd/ReadVariableOpReadVariableOp*dense_4431_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4431/BiasAddBiasAdddense_4431/MatMul:product:0)dense_4431/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_4431/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_4430/BiasAdd/ReadVariableOp!^dense_4430/MatMul/ReadVariableOp"^dense_4431/BiasAdd/ReadVariableOp!^dense_4431/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 2F
!dense_4430/BiasAdd/ReadVariableOp!dense_4430/BiasAdd/ReadVariableOp2D
 dense_4430/MatMul/ReadVariableOp dense_4430/MatMul/ReadVariableOp2F
!dense_4431/BiasAdd/ReadVariableOp!dense_4431/BiasAdd/ReadVariableOp2D
 dense_4431/MatMul/ReadVariableOp dense_4431/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�	
�
H__inference_dense_4431_layer_call_and_return_conditional_losses_64518200

inputs0
matmul_readvariableop_resource:D-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:D*
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
:���������D: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�
�
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518128

inputs;
)dense_4430_matmul_readvariableop_resource:DD8
*dense_4430_biasadd_readvariableop_resource:D;
)dense_4431_matmul_readvariableop_resource:D8
*dense_4431_biasadd_readvariableop_resource:
identity��!dense_4430/BiasAdd/ReadVariableOp� dense_4430/MatMul/ReadVariableOp�!dense_4431/BiasAdd/ReadVariableOp� dense_4431/MatMul/ReadVariableOp`
dense_4430/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������D�
 dense_4430/MatMul/ReadVariableOpReadVariableOp)dense_4430_matmul_readvariableop_resource*
_output_shapes

:DD*
dtype0�
dense_4430/MatMulMatMuldense_4430/Cast:y:0(dense_4430/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������D�
!dense_4430/BiasAdd/ReadVariableOpReadVariableOp*dense_4430_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0�
dense_4430/BiasAddBiasAdddense_4430/MatMul:product:0)dense_4430/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Df
dense_4430/ReluReludense_4430/BiasAdd:output:0*
T0*'
_output_shapes
:���������D�
 dense_4431/MatMul/ReadVariableOpReadVariableOp)dense_4431_matmul_readvariableop_resource*
_output_shapes

:D*
dtype0�
dense_4431/MatMulMatMuldense_4430/Relu:activations:0(dense_4431/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_4431/BiasAdd/ReadVariableOpReadVariableOp*dense_4431_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4431/BiasAddBiasAdddense_4431/MatMul:product:0)dense_4431/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_4431/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_4430/BiasAdd/ReadVariableOp!^dense_4430/MatMul/ReadVariableOp"^dense_4431/BiasAdd/ReadVariableOp!^dense_4431/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 2F
!dense_4430/BiasAdd/ReadVariableOp!dense_4430/BiasAdd/ReadVariableOp2D
 dense_4430/MatMul/ReadVariableOp dense_4430/MatMul/ReadVariableOp2F
!dense_4431/BiasAdd/ReadVariableOp!dense_4431/BiasAdd/ReadVariableOp2D
 dense_4431/MatMul/ReadVariableOp dense_4431/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�
�
-__inference_dense_4431_layer_call_fn_64518190

inputs
unknown:D
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
H__inference_dense_4431_layer_call_and_return_conditional_losses_64517956o
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
:���������D: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�
�
2__inference_sequential_1842_layer_call_fn_64517974
dense_4430_input
unknown:DD
	unknown_0:D
	unknown_1:D
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_4430_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64517963o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������D
*
_user_specified_namedense_4430_input
�
�
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518063
dense_4430_input%
dense_4430_64518052:DD!
dense_4430_64518054:D%
dense_4431_64518057:D!
dense_4431_64518059:
identity��"dense_4430/StatefulPartitionedCall�"dense_4431/StatefulPartitionedCallj
dense_4430/CastCastdense_4430_input*

DstT0*

SrcT0*'
_output_shapes
:���������D�
"dense_4430/StatefulPartitionedCallStatefulPartitionedCalldense_4430/Cast:y:0dense_4430_64518052dense_4430_64518054*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������D*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_4430_layer_call_and_return_conditional_losses_64517940�
"dense_4431/StatefulPartitionedCallStatefulPartitionedCall+dense_4430/StatefulPartitionedCall:output:0dense_4431_64518057dense_4431_64518059*
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
H__inference_dense_4431_layer_call_and_return_conditional_losses_64517956z
IdentityIdentity+dense_4431/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_4430/StatefulPartitionedCall#^dense_4431/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 2H
"dense_4430/StatefulPartitionedCall"dense_4430/StatefulPartitionedCall2H
"dense_4431/StatefulPartitionedCall"dense_4431/StatefulPartitionedCall:Y U
'
_output_shapes
:���������D
*
_user_specified_namedense_4430_input
�/
�
!__inference__traced_save_64518280
file_prefix0
,savev2_dense_4430_kernel_read_readvariableop.
*savev2_dense_4430_bias_read_readvariableop0
,savev2_dense_4431_kernel_read_readvariableop.
*savev2_dense_4431_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_4430_kernel_m_read_readvariableop5
1savev2_adam_dense_4430_bias_m_read_readvariableop7
3savev2_adam_dense_4431_kernel_m_read_readvariableop5
1savev2_adam_dense_4431_bias_m_read_readvariableop7
3savev2_adam_dense_4430_kernel_v_read_readvariableop5
1savev2_adam_dense_4430_bias_v_read_readvariableop7
3savev2_adam_dense_4431_kernel_v_read_readvariableop5
1savev2_adam_dense_4431_bias_v_read_readvariableop
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
: �

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_4430_kernel_read_readvariableop*savev2_dense_4430_bias_read_readvariableop,savev2_dense_4431_kernel_read_readvariableop*savev2_dense_4431_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_4430_kernel_m_read_readvariableop1savev2_adam_dense_4430_bias_m_read_readvariableop3savev2_adam_dense_4431_kernel_m_read_readvariableop1savev2_adam_dense_4431_bias_m_read_readvariableop3savev2_adam_dense_4430_kernel_v_read_readvariableop1savev2_adam_dense_4430_bias_v_read_readvariableop3savev2_adam_dense_4431_kernel_v_read_readvariableop1savev2_adam_dense_4431_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	�
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
_input_shapest
r: :DD:D:D:: : : : : : : :DD:D:D::DD:D:D:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:DD: 

_output_shapes
:D:$ 

_output_shapes

:D: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :
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
: :$ 

_output_shapes

:DD: 

_output_shapes
:D:$ 

_output_shapes

:D: 

_output_shapes
::$ 

_output_shapes

:DD: 

_output_shapes
:D:$ 

_output_shapes

:D: 

_output_shapes
::

_output_shapes
: 
�
�
#__inference__wrapped_model_64517921
dense_4430_inputK
9sequential_1842_dense_4430_matmul_readvariableop_resource:DDH
:sequential_1842_dense_4430_biasadd_readvariableop_resource:DK
9sequential_1842_dense_4431_matmul_readvariableop_resource:DH
:sequential_1842_dense_4431_biasadd_readvariableop_resource:
identity��1sequential_1842/dense_4430/BiasAdd/ReadVariableOp�0sequential_1842/dense_4430/MatMul/ReadVariableOp�1sequential_1842/dense_4431/BiasAdd/ReadVariableOp�0sequential_1842/dense_4431/MatMul/ReadVariableOpz
sequential_1842/dense_4430/CastCastdense_4430_input*

DstT0*

SrcT0*'
_output_shapes
:���������D�
0sequential_1842/dense_4430/MatMul/ReadVariableOpReadVariableOp9sequential_1842_dense_4430_matmul_readvariableop_resource*
_output_shapes

:DD*
dtype0�
!sequential_1842/dense_4430/MatMulMatMul#sequential_1842/dense_4430/Cast:y:08sequential_1842/dense_4430/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������D�
1sequential_1842/dense_4430/BiasAdd/ReadVariableOpReadVariableOp:sequential_1842_dense_4430_biasadd_readvariableop_resource*
_output_shapes
:D*
dtype0�
"sequential_1842/dense_4430/BiasAddBiasAdd+sequential_1842/dense_4430/MatMul:product:09sequential_1842/dense_4430/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������D�
sequential_1842/dense_4430/ReluRelu+sequential_1842/dense_4430/BiasAdd:output:0*
T0*'
_output_shapes
:���������D�
0sequential_1842/dense_4431/MatMul/ReadVariableOpReadVariableOp9sequential_1842_dense_4431_matmul_readvariableop_resource*
_output_shapes

:D*
dtype0�
!sequential_1842/dense_4431/MatMulMatMul-sequential_1842/dense_4430/Relu:activations:08sequential_1842/dense_4431/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_1842/dense_4431/BiasAdd/ReadVariableOpReadVariableOp:sequential_1842_dense_4431_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_1842/dense_4431/BiasAddBiasAdd+sequential_1842/dense_4431/MatMul:product:09sequential_1842/dense_4431/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential_1842/dense_4431/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^sequential_1842/dense_4430/BiasAdd/ReadVariableOp1^sequential_1842/dense_4430/MatMul/ReadVariableOp2^sequential_1842/dense_4431/BiasAdd/ReadVariableOp1^sequential_1842/dense_4431/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������D: : : : 2f
1sequential_1842/dense_4430/BiasAdd/ReadVariableOp1sequential_1842/dense_4430/BiasAdd/ReadVariableOp2d
0sequential_1842/dense_4430/MatMul/ReadVariableOp0sequential_1842/dense_4430/MatMul/ReadVariableOp2f
1sequential_1842/dense_4431/BiasAdd/ReadVariableOp1sequential_1842/dense_4431/BiasAdd/ReadVariableOp2d
0sequential_1842/dense_4431/MatMul/ReadVariableOp0sequential_1842/dense_4431/MatMul/ReadVariableOp:Y U
'
_output_shapes
:���������D
*
_user_specified_namedense_4430_input
�

�
H__inference_dense_4430_layer_call_and_return_conditional_losses_64518181

inputs0
matmul_readvariableop_resource:DD-
biasadd_readvariableop_resource:D
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:DD*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:D*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������DP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������D: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������D
 
_user_specified_nameinputs
�N
�
$__inference__traced_restore_64518347
file_prefix4
"assignvariableop_dense_4430_kernel:DD0
"assignvariableop_1_dense_4430_bias:D6
$assignvariableop_2_dense_4431_kernel:D0
"assignvariableop_3_dense_4431_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: >
,assignvariableop_11_adam_dense_4430_kernel_m:DD8
*assignvariableop_12_adam_dense_4430_bias_m:D>
,assignvariableop_13_adam_dense_4431_kernel_m:D8
*assignvariableop_14_adam_dense_4431_bias_m:>
,assignvariableop_15_adam_dense_4430_kernel_v:DD8
*assignvariableop_16_adam_dense_4430_bias_v:D>
,assignvariableop_17_adam_dense_4431_kernel_v:D8
*assignvariableop_18_adam_dense_4431_bias_v:
identity_20��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_dense_4430_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_4430_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_4431_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_4431_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp,assignvariableop_11_adam_dense_4430_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_4430_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_4431_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_4431_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_4430_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_4430_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_4431_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_4431_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
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
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
dense_4430_input9
"serving_default_dense_4430_input:0���������D>

dense_44310
StatefulPartitionedCall:0���������tensorflow/serving/predict:�?
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
iter

beta_1

beta_2
	decay
 learning_ratem6m7m8m9v:v;v<v="
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�2�
2__inference_sequential_1842_layer_call_fn_64517974
2__inference_sequential_1842_layer_call_fn_64518097
2__inference_sequential_1842_layer_call_fn_64518110
2__inference_sequential_1842_layer_call_fn_64518048�
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
�2�
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518128
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518146
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518063
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518078�
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
#__inference__wrapped_model_64517921dense_4430_input"�
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
&serving_default"
signature_map
#:!DD2dense_4430/kernel
:D2dense_4430/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_4430_layer_call_fn_64518170�
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
H__inference_dense_4430_layer_call_and_return_conditional_losses_64518181�
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
#:!D2dense_4431/kernel
:2dense_4431/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_4431_layer_call_fn_64518190�
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
H__inference_dense_4431_layer_call_and_return_conditional_losses_64518200�
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
.
0
1"
trackable_list_wrapper
'
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_signature_wrapper_64518161dense_4430_input"�
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
N
	2total
	3count
4	variables
5	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
20
31"
trackable_list_wrapper
-
4	variables"
_generic_user_object
(:&DD2Adam/dense_4430/kernel/m
": D2Adam/dense_4430/bias/m
(:&D2Adam/dense_4431/kernel/m
": 2Adam/dense_4431/bias/m
(:&DD2Adam/dense_4430/kernel/v
": D2Adam/dense_4430/bias/v
(:&D2Adam/dense_4431/kernel/v
": 2Adam/dense_4431/bias/v�
#__inference__wrapped_model_64517921z9�6
/�,
*�'
dense_4430_input���������D
� "7�4
2

dense_4431$�!

dense_4431����������
H__inference_dense_4430_layer_call_and_return_conditional_losses_64518181\/�,
%�"
 �
inputs���������D
� "%�"
�
0���������D
� �
-__inference_dense_4430_layer_call_fn_64518170O/�,
%�"
 �
inputs���������D
� "����������D�
H__inference_dense_4431_layer_call_and_return_conditional_losses_64518200\/�,
%�"
 �
inputs���������D
� "%�"
�
0���������
� �
-__inference_dense_4431_layer_call_fn_64518190O/�,
%�"
 �
inputs���������D
� "�����������
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518063pA�>
7�4
*�'
dense_4430_input���������D
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518078pA�>
7�4
*�'
dense_4430_input���������D
p

 
� "%�"
�
0���������
� �
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518128f7�4
-�*
 �
inputs���������D
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_1842_layer_call_and_return_conditional_losses_64518146f7�4
-�*
 �
inputs���������D
p

 
� "%�"
�
0���������
� �
2__inference_sequential_1842_layer_call_fn_64517974cA�>
7�4
*�'
dense_4430_input���������D
p 

 
� "�����������
2__inference_sequential_1842_layer_call_fn_64518048cA�>
7�4
*�'
dense_4430_input���������D
p

 
� "�����������
2__inference_sequential_1842_layer_call_fn_64518097Y7�4
-�*
 �
inputs���������D
p 

 
� "�����������
2__inference_sequential_1842_layer_call_fn_64518110Y7�4
-�*
 �
inputs���������D
p

 
� "�����������
&__inference_signature_wrapper_64518161�M�J
� 
C�@
>
dense_4430_input*�'
dense_4430_input���������D"7�4
2

dense_4431$�!

dense_4431���������