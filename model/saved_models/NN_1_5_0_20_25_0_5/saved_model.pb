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
dense_3684/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:33*"
shared_namedense_3684/kernel
w
%dense_3684/kernel/Read/ReadVariableOpReadVariableOpdense_3684/kernel*
_output_shapes

:33*
dtype0
v
dense_3684/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:3* 
shared_namedense_3684/bias
o
#dense_3684/bias/Read/ReadVariableOpReadVariableOpdense_3684/bias*
_output_shapes
:3*
dtype0
~
dense_3685/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3*"
shared_namedense_3685/kernel
w
%dense_3685/kernel/Read/ReadVariableOpReadVariableOpdense_3685/kernel*
_output_shapes

:3*
dtype0
v
dense_3685/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_3685/bias
o
#dense_3685/bias/Read/ReadVariableOpReadVariableOpdense_3685/bias*
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
Adam/dense_3684/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:33*)
shared_nameAdam/dense_3684/kernel/m
�
,Adam/dense_3684/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3684/kernel/m*
_output_shapes

:33*
dtype0
�
Adam/dense_3684/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:3*'
shared_nameAdam/dense_3684/bias/m
}
*Adam/dense_3684/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3684/bias/m*
_output_shapes
:3*
dtype0
�
Adam/dense_3685/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3*)
shared_nameAdam/dense_3685/kernel/m
�
,Adam/dense_3685/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3685/kernel/m*
_output_shapes

:3*
dtype0
�
Adam/dense_3685/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_3685/bias/m
}
*Adam/dense_3685/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3685/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_3684/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:33*)
shared_nameAdam/dense_3684/kernel/v
�
,Adam/dense_3684/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3684/kernel/v*
_output_shapes

:33*
dtype0
�
Adam/dense_3684/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:3*'
shared_nameAdam/dense_3684/bias/v
}
*Adam/dense_3684/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3684/bias/v*
_output_shapes
:3*
dtype0
�
Adam/dense_3685/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3*)
shared_nameAdam/dense_3685/kernel/v
�
,Adam/dense_3685/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3685/kernel/v*
_output_shapes

:3*
dtype0
�
Adam/dense_3685/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_3685/bias/v
}
*Adam/dense_3685/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3685/bias/v*
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
VARIABLE_VALUEdense_3684/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3684/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_3685/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3685/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_3684/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_3684/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_3685/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_3685/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_3684/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_3684/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_3685/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_3685/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_dense_3684_inputPlaceholder*'
_output_shapes
:���������3*
dtype0*
shape:���������3
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_3684_inputdense_3684/kerneldense_3684/biasdense_3685/kerneldense_3685/bias*
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
&__inference_signature_wrapper_40735871
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_3684/kernel/Read/ReadVariableOp#dense_3684/bias/Read/ReadVariableOp%dense_3685/kernel/Read/ReadVariableOp#dense_3685/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_3684/kernel/m/Read/ReadVariableOp*Adam/dense_3684/bias/m/Read/ReadVariableOp,Adam/dense_3685/kernel/m/Read/ReadVariableOp*Adam/dense_3685/bias/m/Read/ReadVariableOp,Adam/dense_3684/kernel/v/Read/ReadVariableOp*Adam/dense_3684/bias/v/Read/ReadVariableOp,Adam/dense_3685/kernel/v/Read/ReadVariableOp*Adam/dense_3685/bias/v/Read/ReadVariableOpConst* 
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
!__inference__traced_save_40735990
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3684/kerneldense_3684/biasdense_3685/kerneldense_3685/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_3684/kernel/mAdam/dense_3684/bias/mAdam/dense_3685/kernel/mAdam/dense_3685/bias/mAdam/dense_3684/kernel/vAdam/dense_3684/bias/vAdam/dense_3685/kernel/vAdam/dense_3685/bias/v*
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
$__inference__traced_restore_40736057��
�
�
2__inference_sequential_1469_layer_call_fn_40735807

inputs
unknown:33
	unknown_0:3
	unknown_1:3
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
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735673o
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
:���������3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�	
�
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735666

inputs0
matmul_readvariableop_resource:3-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:3*
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
:���������3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�	
�
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735910

inputs0
matmul_readvariableop_resource:3-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:3*
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
:���������3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�
�
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735773
dense_3684_input%
dense_3684_40735762:33!
dense_3684_40735764:3%
dense_3685_40735767:3!
dense_3685_40735769:
identity��"dense_3684/StatefulPartitionedCall�"dense_3685/StatefulPartitionedCallj
dense_3684/CastCastdense_3684_input*

DstT0*

SrcT0*'
_output_shapes
:���������3�
"dense_3684/StatefulPartitionedCallStatefulPartitionedCalldense_3684/Cast:y:0dense_3684_40735762dense_3684_40735764*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735650�
"dense_3685/StatefulPartitionedCallStatefulPartitionedCall+dense_3684/StatefulPartitionedCall:output:0dense_3685_40735767dense_3685_40735769*
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
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735666z
IdentityIdentity+dense_3685/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_3684/StatefulPartitionedCall#^dense_3685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������3: : : : 2H
"dense_3684/StatefulPartitionedCall"dense_3684/StatefulPartitionedCall2H
"dense_3685/StatefulPartitionedCall"dense_3685/StatefulPartitionedCall:Y U
'
_output_shapes
:���������3
*
_user_specified_namedense_3684_input
�
�
2__inference_sequential_1469_layer_call_fn_40735684
dense_3684_input
unknown:33
	unknown_0:3
	unknown_1:3
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_3684_inputunknown	unknown_0	unknown_1	unknown_2*
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
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735673o
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
:���������3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������3
*
_user_specified_namedense_3684_input
�
�
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735838

inputs;
)dense_3684_matmul_readvariableop_resource:338
*dense_3684_biasadd_readvariableop_resource:3;
)dense_3685_matmul_readvariableop_resource:38
*dense_3685_biasadd_readvariableop_resource:
identity��!dense_3684/BiasAdd/ReadVariableOp� dense_3684/MatMul/ReadVariableOp�!dense_3685/BiasAdd/ReadVariableOp� dense_3685/MatMul/ReadVariableOp`
dense_3684/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������3�
 dense_3684/MatMul/ReadVariableOpReadVariableOp)dense_3684_matmul_readvariableop_resource*
_output_shapes

:33*
dtype0�
dense_3684/MatMulMatMuldense_3684/Cast:y:0(dense_3684/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3�
!dense_3684/BiasAdd/ReadVariableOpReadVariableOp*dense_3684_biasadd_readvariableop_resource*
_output_shapes
:3*
dtype0�
dense_3684/BiasAddBiasAdddense_3684/MatMul:product:0)dense_3684/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3f
dense_3684/ReluReludense_3684/BiasAdd:output:0*
T0*'
_output_shapes
:���������3�
 dense_3685/MatMul/ReadVariableOpReadVariableOp)dense_3685_matmul_readvariableop_resource*
_output_shapes

:3*
dtype0�
dense_3685/MatMulMatMuldense_3684/Relu:activations:0(dense_3685/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_3685/BiasAdd/ReadVariableOpReadVariableOp*dense_3685_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3685/BiasAddBiasAdddense_3685/MatMul:product:0)dense_3685/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_3685/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_3684/BiasAdd/ReadVariableOp!^dense_3684/MatMul/ReadVariableOp"^dense_3685/BiasAdd/ReadVariableOp!^dense_3685/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������3: : : : 2F
!dense_3684/BiasAdd/ReadVariableOp!dense_3684/BiasAdd/ReadVariableOp2D
 dense_3684/MatMul/ReadVariableOp dense_3684/MatMul/ReadVariableOp2F
!dense_3685/BiasAdd/ReadVariableOp!dense_3685/BiasAdd/ReadVariableOp2D
 dense_3685/MatMul/ReadVariableOp dense_3685/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�

�
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735891

inputs0
matmul_readvariableop_resource:33-
biasadd_readvariableop_resource:3
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:33*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:3*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������3a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������3w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�
�
2__inference_sequential_1469_layer_call_fn_40735758
dense_3684_input
unknown:33
	unknown_0:3
	unknown_1:3
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_3684_inputunknown	unknown_0	unknown_1	unknown_2*
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
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735734o
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
:���������3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������3
*
_user_specified_namedense_3684_input
�/
�
!__inference__traced_save_40735990
file_prefix0
,savev2_dense_3684_kernel_read_readvariableop.
*savev2_dense_3684_bias_read_readvariableop0
,savev2_dense_3685_kernel_read_readvariableop.
*savev2_dense_3685_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_3684_kernel_m_read_readvariableop5
1savev2_adam_dense_3684_bias_m_read_readvariableop7
3savev2_adam_dense_3685_kernel_m_read_readvariableop5
1savev2_adam_dense_3685_bias_m_read_readvariableop7
3savev2_adam_dense_3684_kernel_v_read_readvariableop5
1savev2_adam_dense_3684_bias_v_read_readvariableop7
3savev2_adam_dense_3685_kernel_v_read_readvariableop5
1savev2_adam_dense_3685_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_3684_kernel_read_readvariableop*savev2_dense_3684_bias_read_readvariableop,savev2_dense_3685_kernel_read_readvariableop*savev2_dense_3685_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_3684_kernel_m_read_readvariableop1savev2_adam_dense_3684_bias_m_read_readvariableop3savev2_adam_dense_3685_kernel_m_read_readvariableop1savev2_adam_dense_3685_bias_m_read_readvariableop3savev2_adam_dense_3684_kernel_v_read_readvariableop1savev2_adam_dense_3684_bias_v_read_readvariableop3savev2_adam_dense_3685_kernel_v_read_readvariableop1savev2_adam_dense_3685_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
r: :33:3:3:: : : : : : : :33:3:3::33:3:3:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:33: 

_output_shapes
:3:$ 

_output_shapes

:3: 
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

:33: 

_output_shapes
:3:$ 

_output_shapes

:3: 

_output_shapes
::$ 

_output_shapes

:33: 

_output_shapes
:3:$ 

_output_shapes

:3: 

_output_shapes
::

_output_shapes
: 
�
�
#__inference__wrapped_model_40735631
dense_3684_inputK
9sequential_1469_dense_3684_matmul_readvariableop_resource:33H
:sequential_1469_dense_3684_biasadd_readvariableop_resource:3K
9sequential_1469_dense_3685_matmul_readvariableop_resource:3H
:sequential_1469_dense_3685_biasadd_readvariableop_resource:
identity��1sequential_1469/dense_3684/BiasAdd/ReadVariableOp�0sequential_1469/dense_3684/MatMul/ReadVariableOp�1sequential_1469/dense_3685/BiasAdd/ReadVariableOp�0sequential_1469/dense_3685/MatMul/ReadVariableOpz
sequential_1469/dense_3684/CastCastdense_3684_input*

DstT0*

SrcT0*'
_output_shapes
:���������3�
0sequential_1469/dense_3684/MatMul/ReadVariableOpReadVariableOp9sequential_1469_dense_3684_matmul_readvariableop_resource*
_output_shapes

:33*
dtype0�
!sequential_1469/dense_3684/MatMulMatMul#sequential_1469/dense_3684/Cast:y:08sequential_1469/dense_3684/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3�
1sequential_1469/dense_3684/BiasAdd/ReadVariableOpReadVariableOp:sequential_1469_dense_3684_biasadd_readvariableop_resource*
_output_shapes
:3*
dtype0�
"sequential_1469/dense_3684/BiasAddBiasAdd+sequential_1469/dense_3684/MatMul:product:09sequential_1469/dense_3684/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3�
sequential_1469/dense_3684/ReluRelu+sequential_1469/dense_3684/BiasAdd:output:0*
T0*'
_output_shapes
:���������3�
0sequential_1469/dense_3685/MatMul/ReadVariableOpReadVariableOp9sequential_1469_dense_3685_matmul_readvariableop_resource*
_output_shapes

:3*
dtype0�
!sequential_1469/dense_3685/MatMulMatMul-sequential_1469/dense_3684/Relu:activations:08sequential_1469/dense_3685/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_1469/dense_3685/BiasAdd/ReadVariableOpReadVariableOp:sequential_1469_dense_3685_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_1469/dense_3685/BiasAddBiasAdd+sequential_1469/dense_3685/MatMul:product:09sequential_1469/dense_3685/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential_1469/dense_3685/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^sequential_1469/dense_3684/BiasAdd/ReadVariableOp1^sequential_1469/dense_3684/MatMul/ReadVariableOp2^sequential_1469/dense_3685/BiasAdd/ReadVariableOp1^sequential_1469/dense_3685/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������3: : : : 2f
1sequential_1469/dense_3684/BiasAdd/ReadVariableOp1sequential_1469/dense_3684/BiasAdd/ReadVariableOp2d
0sequential_1469/dense_3684/MatMul/ReadVariableOp0sequential_1469/dense_3684/MatMul/ReadVariableOp2f
1sequential_1469/dense_3685/BiasAdd/ReadVariableOp1sequential_1469/dense_3685/BiasAdd/ReadVariableOp2d
0sequential_1469/dense_3685/MatMul/ReadVariableOp0sequential_1469/dense_3685/MatMul/ReadVariableOp:Y U
'
_output_shapes
:���������3
*
_user_specified_namedense_3684_input
�
�
&__inference_signature_wrapper_40735871
dense_3684_input
unknown:33
	unknown_0:3
	unknown_1:3
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_3684_inputunknown	unknown_0	unknown_1	unknown_2*
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
#__inference__wrapped_model_40735631o
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
:���������3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������3
*
_user_specified_namedense_3684_input
�
�
2__inference_sequential_1469_layer_call_fn_40735820

inputs
unknown:33
	unknown_0:3
	unknown_1:3
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
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735734o
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
:���������3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�
�
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735673

inputs%
dense_3684_40735651:33!
dense_3684_40735653:3%
dense_3685_40735667:3!
dense_3685_40735669:
identity��"dense_3684/StatefulPartitionedCall�"dense_3685/StatefulPartitionedCall`
dense_3684/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������3�
"dense_3684/StatefulPartitionedCallStatefulPartitionedCalldense_3684/Cast:y:0dense_3684_40735651dense_3684_40735653*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735650�
"dense_3685/StatefulPartitionedCallStatefulPartitionedCall+dense_3684/StatefulPartitionedCall:output:0dense_3685_40735667dense_3685_40735669*
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
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735666z
IdentityIdentity+dense_3685/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_3684/StatefulPartitionedCall#^dense_3685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������3: : : : 2H
"dense_3684/StatefulPartitionedCall"dense_3684/StatefulPartitionedCall2H
"dense_3685/StatefulPartitionedCall"dense_3685/StatefulPartitionedCall:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�
�
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735734

inputs%
dense_3684_40735723:33!
dense_3684_40735725:3%
dense_3685_40735728:3!
dense_3685_40735730:
identity��"dense_3684/StatefulPartitionedCall�"dense_3685/StatefulPartitionedCall`
dense_3684/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������3�
"dense_3684/StatefulPartitionedCallStatefulPartitionedCalldense_3684/Cast:y:0dense_3684_40735723dense_3684_40735725*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735650�
"dense_3685/StatefulPartitionedCallStatefulPartitionedCall+dense_3684/StatefulPartitionedCall:output:0dense_3685_40735728dense_3685_40735730*
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
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735666z
IdentityIdentity+dense_3685/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_3684/StatefulPartitionedCall#^dense_3685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������3: : : : 2H
"dense_3684/StatefulPartitionedCall"dense_3684/StatefulPartitionedCall2H
"dense_3685/StatefulPartitionedCall"dense_3685/StatefulPartitionedCall:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�N
�
$__inference__traced_restore_40736057
file_prefix4
"assignvariableop_dense_3684_kernel:330
"assignvariableop_1_dense_3684_bias:36
$assignvariableop_2_dense_3685_kernel:30
"assignvariableop_3_dense_3685_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: >
,assignvariableop_11_adam_dense_3684_kernel_m:338
*assignvariableop_12_adam_dense_3684_bias_m:3>
,assignvariableop_13_adam_dense_3685_kernel_m:38
*assignvariableop_14_adam_dense_3685_bias_m:>
,assignvariableop_15_adam_dense_3684_kernel_v:338
*assignvariableop_16_adam_dense_3684_bias_v:3>
,assignvariableop_17_adam_dense_3685_kernel_v:38
*assignvariableop_18_adam_dense_3685_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_3684_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_3684_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_3685_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_3685_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_11AssignVariableOp,assignvariableop_11_adam_dense_3684_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_3684_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_3685_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_3685_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_3684_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_3684_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_3685_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_3685_bias_vIdentity_18:output:0"/device:CPU:0*
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
_user_specified_namefile_prefix
�
�
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735856

inputs;
)dense_3684_matmul_readvariableop_resource:338
*dense_3684_biasadd_readvariableop_resource:3;
)dense_3685_matmul_readvariableop_resource:38
*dense_3685_biasadd_readvariableop_resource:
identity��!dense_3684/BiasAdd/ReadVariableOp� dense_3684/MatMul/ReadVariableOp�!dense_3685/BiasAdd/ReadVariableOp� dense_3685/MatMul/ReadVariableOp`
dense_3684/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������3�
 dense_3684/MatMul/ReadVariableOpReadVariableOp)dense_3684_matmul_readvariableop_resource*
_output_shapes

:33*
dtype0�
dense_3684/MatMulMatMuldense_3684/Cast:y:0(dense_3684/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3�
!dense_3684/BiasAdd/ReadVariableOpReadVariableOp*dense_3684_biasadd_readvariableop_resource*
_output_shapes
:3*
dtype0�
dense_3684/BiasAddBiasAdddense_3684/MatMul:product:0)dense_3684/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3f
dense_3684/ReluReludense_3684/BiasAdd:output:0*
T0*'
_output_shapes
:���������3�
 dense_3685/MatMul/ReadVariableOpReadVariableOp)dense_3685_matmul_readvariableop_resource*
_output_shapes

:3*
dtype0�
dense_3685/MatMulMatMuldense_3684/Relu:activations:0(dense_3685/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_3685/BiasAdd/ReadVariableOpReadVariableOp*dense_3685_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3685/BiasAddBiasAdddense_3685/MatMul:product:0)dense_3685/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_3685/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_3684/BiasAdd/ReadVariableOp!^dense_3684/MatMul/ReadVariableOp"^dense_3685/BiasAdd/ReadVariableOp!^dense_3685/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������3: : : : 2F
!dense_3684/BiasAdd/ReadVariableOp!dense_3684/BiasAdd/ReadVariableOp2D
 dense_3684/MatMul/ReadVariableOp dense_3684/MatMul/ReadVariableOp2F
!dense_3685/BiasAdd/ReadVariableOp!dense_3685/BiasAdd/ReadVariableOp2D
 dense_3685/MatMul/ReadVariableOp dense_3685/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�

�
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735650

inputs0
matmul_readvariableop_resource:33-
biasadd_readvariableop_resource:3
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:33*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:3*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������3P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������3a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������3w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�
�
-__inference_dense_3684_layer_call_fn_40735880

inputs
unknown:33
	unknown_0:3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735650o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������3`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������3: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������3
 
_user_specified_nameinputs
�
�
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735788
dense_3684_input%
dense_3684_40735777:33!
dense_3684_40735779:3%
dense_3685_40735782:3!
dense_3685_40735784:
identity��"dense_3684/StatefulPartitionedCall�"dense_3685/StatefulPartitionedCallj
dense_3684/CastCastdense_3684_input*

DstT0*

SrcT0*'
_output_shapes
:���������3�
"dense_3684/StatefulPartitionedCallStatefulPartitionedCalldense_3684/Cast:y:0dense_3684_40735777dense_3684_40735779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735650�
"dense_3685/StatefulPartitionedCallStatefulPartitionedCall+dense_3684/StatefulPartitionedCall:output:0dense_3685_40735782dense_3685_40735784*
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
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735666z
IdentityIdentity+dense_3685/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_3684/StatefulPartitionedCall#^dense_3685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������3: : : : 2H
"dense_3684/StatefulPartitionedCall"dense_3684/StatefulPartitionedCall2H
"dense_3685/StatefulPartitionedCall"dense_3685/StatefulPartitionedCall:Y U
'
_output_shapes
:���������3
*
_user_specified_namedense_3684_input
�
�
-__inference_dense_3685_layer_call_fn_40735900

inputs
unknown:3
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
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735666o
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
:���������3: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������3
 
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
dense_3684_input9
"serving_default_dense_3684_input:0���������3>

dense_36850
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
2__inference_sequential_1469_layer_call_fn_40735684
2__inference_sequential_1469_layer_call_fn_40735807
2__inference_sequential_1469_layer_call_fn_40735820
2__inference_sequential_1469_layer_call_fn_40735758�
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
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735838
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735856
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735773
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735788�
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
#__inference__wrapped_model_40735631dense_3684_input"�
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
#:!332dense_3684/kernel
:32dense_3684/bias
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
-__inference_dense_3684_layer_call_fn_40735880�
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
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735891�
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
#:!32dense_3685/kernel
:2dense_3685/bias
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
-__inference_dense_3685_layer_call_fn_40735900�
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
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735910�
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
&__inference_signature_wrapper_40735871dense_3684_input"�
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
(:&332Adam/dense_3684/kernel/m
": 32Adam/dense_3684/bias/m
(:&32Adam/dense_3685/kernel/m
": 2Adam/dense_3685/bias/m
(:&332Adam/dense_3684/kernel/v
": 32Adam/dense_3684/bias/v
(:&32Adam/dense_3685/kernel/v
": 2Adam/dense_3685/bias/v�
#__inference__wrapped_model_40735631z9�6
/�,
*�'
dense_3684_input���������3
� "7�4
2

dense_3685$�!

dense_3685����������
H__inference_dense_3684_layer_call_and_return_conditional_losses_40735891\/�,
%�"
 �
inputs���������3
� "%�"
�
0���������3
� �
-__inference_dense_3684_layer_call_fn_40735880O/�,
%�"
 �
inputs���������3
� "����������3�
H__inference_dense_3685_layer_call_and_return_conditional_losses_40735910\/�,
%�"
 �
inputs���������3
� "%�"
�
0���������
� �
-__inference_dense_3685_layer_call_fn_40735900O/�,
%�"
 �
inputs���������3
� "�����������
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735773pA�>
7�4
*�'
dense_3684_input���������3
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735788pA�>
7�4
*�'
dense_3684_input���������3
p

 
� "%�"
�
0���������
� �
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735838f7�4
-�*
 �
inputs���������3
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_1469_layer_call_and_return_conditional_losses_40735856f7�4
-�*
 �
inputs���������3
p

 
� "%�"
�
0���������
� �
2__inference_sequential_1469_layer_call_fn_40735684cA�>
7�4
*�'
dense_3684_input���������3
p 

 
� "�����������
2__inference_sequential_1469_layer_call_fn_40735758cA�>
7�4
*�'
dense_3684_input���������3
p

 
� "�����������
2__inference_sequential_1469_layer_call_fn_40735807Y7�4
-�*
 �
inputs���������3
p 

 
� "�����������
2__inference_sequential_1469_layer_call_fn_40735820Y7�4
-�*
 �
inputs���������3
p

 
� "�����������
&__inference_signature_wrapper_40735871�M�J
� 
C�@
>
dense_3684_input*�'
dense_3684_input���������3"7�4
2

dense_3685$�!

dense_3685���������