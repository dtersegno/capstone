��
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
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
~
dense_5678/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*"
shared_namedense_5678/kernel
w
%dense_5678/kernel/Read/ReadVariableOpReadVariableOpdense_5678/kernel*
_output_shapes

:00*
dtype0
v
dense_5678/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_namedense_5678/bias
o
#dense_5678/bias/Read/ReadVariableOpReadVariableOpdense_5678/bias*
_output_shapes
:0*
dtype0
~
dense_5679/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*"
shared_namedense_5679/kernel
w
%dense_5679/kernel/Read/ReadVariableOpReadVariableOpdense_5679/kernel*
_output_shapes

:00*
dtype0
v
dense_5679/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_namedense_5679/bias
o
#dense_5679/bias/Read/ReadVariableOpReadVariableOpdense_5679/bias*
_output_shapes
:0*
dtype0
~
dense_5680/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*"
shared_namedense_5680/kernel
w
%dense_5680/kernel/Read/ReadVariableOpReadVariableOpdense_5680/kernel*
_output_shapes

:00*
dtype0
v
dense_5680/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_namedense_5680/bias
o
#dense_5680/bias/Read/ReadVariableOpReadVariableOpdense_5680/bias*
_output_shapes
:0*
dtype0
~
dense_5681/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*"
shared_namedense_5681/kernel
w
%dense_5681/kernel/Read/ReadVariableOpReadVariableOpdense_5681/kernel*
_output_shapes

:0*
dtype0
v
dense_5681/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_5681/bias
o
#dense_5681/bias/Read/ReadVariableOpReadVariableOpdense_5681/bias*
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
Adam/dense_5678/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*)
shared_nameAdam/dense_5678/kernel/m
�
,Adam/dense_5678/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5678/kernel/m*
_output_shapes

:00*
dtype0
�
Adam/dense_5678/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/dense_5678/bias/m
}
*Adam/dense_5678/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5678/bias/m*
_output_shapes
:0*
dtype0
�
Adam/dense_5679/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*)
shared_nameAdam/dense_5679/kernel/m
�
,Adam/dense_5679/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5679/kernel/m*
_output_shapes

:00*
dtype0
�
Adam/dense_5679/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/dense_5679/bias/m
}
*Adam/dense_5679/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5679/bias/m*
_output_shapes
:0*
dtype0
�
Adam/dense_5680/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*)
shared_nameAdam/dense_5680/kernel/m
�
,Adam/dense_5680/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5680/kernel/m*
_output_shapes

:00*
dtype0
�
Adam/dense_5680/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/dense_5680/bias/m
}
*Adam/dense_5680/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5680/bias/m*
_output_shapes
:0*
dtype0
�
Adam/dense_5681/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*)
shared_nameAdam/dense_5681/kernel/m
�
,Adam/dense_5681/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5681/kernel/m*
_output_shapes

:0*
dtype0
�
Adam/dense_5681/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_5681/bias/m
}
*Adam/dense_5681/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5681/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_5678/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*)
shared_nameAdam/dense_5678/kernel/v
�
,Adam/dense_5678/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5678/kernel/v*
_output_shapes

:00*
dtype0
�
Adam/dense_5678/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/dense_5678/bias/v
}
*Adam/dense_5678/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5678/bias/v*
_output_shapes
:0*
dtype0
�
Adam/dense_5679/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*)
shared_nameAdam/dense_5679/kernel/v
�
,Adam/dense_5679/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5679/kernel/v*
_output_shapes

:00*
dtype0
�
Adam/dense_5679/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/dense_5679/bias/v
}
*Adam/dense_5679/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5679/bias/v*
_output_shapes
:0*
dtype0
�
Adam/dense_5680/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:00*)
shared_nameAdam/dense_5680/kernel/v
�
,Adam/dense_5680/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5680/kernel/v*
_output_shapes

:00*
dtype0
�
Adam/dense_5680/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/dense_5680/bias/v
}
*Adam/dense_5680/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5680/bias/v*
_output_shapes
:0*
dtype0
�
Adam/dense_5681/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*)
shared_nameAdam/dense_5681/kernel/v
�
,Adam/dense_5681/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5681/kernel/v*
_output_shapes

:0*
dtype0
�
Adam/dense_5681/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_5681/bias/v
}
*Adam/dense_5681/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5681/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�5
value�5B�5 B�4
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
�

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses*
�
.iter

/beta_1

0beta_2
	1decay
2learning_ratemRmSmTmUmVmW&mX'mYvZv[v\v]v^v_&v`'va*
<
0
1
2
3
4
5
&6
'7*
<
0
1
2
3
4
5
&6
'7*
* 
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

8serving_default* 
a[
VARIABLE_VALUEdense_5678/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5678/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_5679/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5679/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_5680/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5680/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_5681/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5681/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*

&0
'1*
* 
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
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
 
0
1
2
3*

M0*
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
* 
* 
* 
* 
* 
8
	Ntotal
	Ocount
P	variables
Q	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

N0
O1*

P	variables*
�~
VARIABLE_VALUEAdam/dense_5678/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5678/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5679/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5679/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5680/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5680/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5681/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5681/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5678/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5678/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5679/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5679/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5680/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5680/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5681/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5681/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_dense_5678_inputPlaceholder*'
_output_shapes
:���������0*
dtype0*
shape:���������0
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_5678_inputdense_5678/kerneldense_5678/biasdense_5679/kerneldense_5679/biasdense_5680/kerneldense_5680/biasdense_5681/kerneldense_5681/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_71146239
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_5678/kernel/Read/ReadVariableOp#dense_5678/bias/Read/ReadVariableOp%dense_5679/kernel/Read/ReadVariableOp#dense_5679/bias/Read/ReadVariableOp%dense_5680/kernel/Read/ReadVariableOp#dense_5680/bias/Read/ReadVariableOp%dense_5681/kernel/Read/ReadVariableOp#dense_5681/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_5678/kernel/m/Read/ReadVariableOp*Adam/dense_5678/bias/m/Read/ReadVariableOp,Adam/dense_5679/kernel/m/Read/ReadVariableOp*Adam/dense_5679/bias/m/Read/ReadVariableOp,Adam/dense_5680/kernel/m/Read/ReadVariableOp*Adam/dense_5680/bias/m/Read/ReadVariableOp,Adam/dense_5681/kernel/m/Read/ReadVariableOp*Adam/dense_5681/bias/m/Read/ReadVariableOp,Adam/dense_5678/kernel/v/Read/ReadVariableOp*Adam/dense_5678/bias/v/Read/ReadVariableOp,Adam/dense_5679/kernel/v/Read/ReadVariableOp*Adam/dense_5679/bias/v/Read/ReadVariableOp,Adam/dense_5680/kernel/v/Read/ReadVariableOp*Adam/dense_5680/bias/v/Read/ReadVariableOp,Adam/dense_5681/kernel/v/Read/ReadVariableOp*Adam/dense_5681/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
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
!__inference__traced_save_71146434
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5678/kerneldense_5678/biasdense_5679/kerneldense_5679/biasdense_5680/kerneldense_5680/biasdense_5681/kerneldense_5681/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_5678/kernel/mAdam/dense_5678/bias/mAdam/dense_5679/kernel/mAdam/dense_5679/bias/mAdam/dense_5680/kernel/mAdam/dense_5680/bias/mAdam/dense_5681/kernel/mAdam/dense_5681/bias/mAdam/dense_5678/kernel/vAdam/dense_5678/bias/vAdam/dense_5679/kernel/vAdam/dense_5679/bias/vAdam/dense_5680/kernel/vAdam/dense_5680/bias/vAdam/dense_5681/kernel/vAdam/dense_5681/bias/v*+
Tin$
"2 *
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
$__inference__traced_restore_71146537��
�	
�
2__inference_sequential_2174_layer_call_fn_71146054
dense_5678_input
unknown:00
	unknown_0:0
	unknown_1:00
	unknown_2:0
	unknown_3:00
	unknown_4:0
	unknown_5:0
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5678_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146014o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������0
*
_user_specified_namedense_5678_input
�
�
-__inference_dense_5679_layer_call_fn_71146268

inputs
unknown:00
	unknown_0:0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5679_layer_call_and_return_conditional_losses_71145867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�

�
H__inference_dense_5680_layer_call_and_return_conditional_losses_71146299

inputs0
matmul_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:00*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������0a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71145907

inputs%
dense_5678_71145851:00!
dense_5678_71145853:0%
dense_5679_71145868:00!
dense_5679_71145870:0%
dense_5680_71145885:00!
dense_5680_71145887:0%
dense_5681_71145901:0!
dense_5681_71145903:
identity��"dense_5678/StatefulPartitionedCall�"dense_5679/StatefulPartitionedCall�"dense_5680/StatefulPartitionedCall�"dense_5681/StatefulPartitionedCall`
dense_5678/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������0�
"dense_5678/StatefulPartitionedCallStatefulPartitionedCalldense_5678/Cast:y:0dense_5678_71145851dense_5678_71145853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5678_layer_call_and_return_conditional_losses_71145850�
"dense_5679/StatefulPartitionedCallStatefulPartitionedCall+dense_5678/StatefulPartitionedCall:output:0dense_5679_71145868dense_5679_71145870*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5679_layer_call_and_return_conditional_losses_71145867�
"dense_5680/StatefulPartitionedCallStatefulPartitionedCall+dense_5679/StatefulPartitionedCall:output:0dense_5680_71145885dense_5680_71145887*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5680_layer_call_and_return_conditional_losses_71145884�
"dense_5681/StatefulPartitionedCallStatefulPartitionedCall+dense_5680/StatefulPartitionedCall:output:0dense_5681_71145901dense_5681_71145903*
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
H__inference_dense_5681_layer_call_and_return_conditional_losses_71145900z
IdentityIdentity+dense_5681/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5678/StatefulPartitionedCall#^dense_5679/StatefulPartitionedCall#^dense_5680/StatefulPartitionedCall#^dense_5681/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 2H
"dense_5678/StatefulPartitionedCall"dense_5678/StatefulPartitionedCall2H
"dense_5679/StatefulPartitionedCall"dense_5679/StatefulPartitionedCall2H
"dense_5680/StatefulPartitionedCall"dense_5680/StatefulPartitionedCall2H
"dense_5681/StatefulPartitionedCall"dense_5681/StatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�	
�
&__inference_signature_wrapper_71146239
dense_5678_input
unknown:00
	unknown_0:0
	unknown_1:00
	unknown_2:0
	unknown_3:00
	unknown_4:0
	unknown_5:0
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5678_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_71145831o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������0
*
_user_specified_namedense_5678_input
�
�
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146014

inputs%
dense_5678_71145993:00!
dense_5678_71145995:0%
dense_5679_71145998:00!
dense_5679_71146000:0%
dense_5680_71146003:00!
dense_5680_71146005:0%
dense_5681_71146008:0!
dense_5681_71146010:
identity��"dense_5678/StatefulPartitionedCall�"dense_5679/StatefulPartitionedCall�"dense_5680/StatefulPartitionedCall�"dense_5681/StatefulPartitionedCall`
dense_5678/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������0�
"dense_5678/StatefulPartitionedCallStatefulPartitionedCalldense_5678/Cast:y:0dense_5678_71145993dense_5678_71145995*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5678_layer_call_and_return_conditional_losses_71145850�
"dense_5679/StatefulPartitionedCallStatefulPartitionedCall+dense_5678/StatefulPartitionedCall:output:0dense_5679_71145998dense_5679_71146000*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5679_layer_call_and_return_conditional_losses_71145867�
"dense_5680/StatefulPartitionedCallStatefulPartitionedCall+dense_5679/StatefulPartitionedCall:output:0dense_5680_71146003dense_5680_71146005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5680_layer_call_and_return_conditional_losses_71145884�
"dense_5681/StatefulPartitionedCallStatefulPartitionedCall+dense_5680/StatefulPartitionedCall:output:0dense_5681_71146008dense_5681_71146010*
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
H__inference_dense_5681_layer_call_and_return_conditional_losses_71145900z
IdentityIdentity+dense_5681/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5678/StatefulPartitionedCall#^dense_5679/StatefulPartitionedCall#^dense_5680/StatefulPartitionedCall#^dense_5681/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 2H
"dense_5678/StatefulPartitionedCall"dense_5678/StatefulPartitionedCall2H
"dense_5679/StatefulPartitionedCall"dense_5679/StatefulPartitionedCall2H
"dense_5680/StatefulPartitionedCall"dense_5680/StatefulPartitionedCall2H
"dense_5681/StatefulPartitionedCall"dense_5681/StatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�

�
H__inference_dense_5678_layer_call_and_return_conditional_losses_71145850

inputs0
matmul_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:00*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������0a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�	
�
2__inference_sequential_2174_layer_call_fn_71145926
dense_5678_input
unknown:00
	unknown_0:0
	unknown_1:00
	unknown_2:0
	unknown_3:00
	unknown_4:0
	unknown_5:0
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5678_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71145907o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������0
*
_user_specified_namedense_5678_input
�	
�
2__inference_sequential_2174_layer_call_fn_71146152

inputs
unknown:00
	unknown_0:0
	unknown_1:00
	unknown_2:0
	unknown_3:00
	unknown_4:0
	unknown_5:0
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146014o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146079
dense_5678_input%
dense_5678_71146058:00!
dense_5678_71146060:0%
dense_5679_71146063:00!
dense_5679_71146065:0%
dense_5680_71146068:00!
dense_5680_71146070:0%
dense_5681_71146073:0!
dense_5681_71146075:
identity��"dense_5678/StatefulPartitionedCall�"dense_5679/StatefulPartitionedCall�"dense_5680/StatefulPartitionedCall�"dense_5681/StatefulPartitionedCallj
dense_5678/CastCastdense_5678_input*

DstT0*

SrcT0*'
_output_shapes
:���������0�
"dense_5678/StatefulPartitionedCallStatefulPartitionedCalldense_5678/Cast:y:0dense_5678_71146058dense_5678_71146060*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5678_layer_call_and_return_conditional_losses_71145850�
"dense_5679/StatefulPartitionedCallStatefulPartitionedCall+dense_5678/StatefulPartitionedCall:output:0dense_5679_71146063dense_5679_71146065*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5679_layer_call_and_return_conditional_losses_71145867�
"dense_5680/StatefulPartitionedCallStatefulPartitionedCall+dense_5679/StatefulPartitionedCall:output:0dense_5680_71146068dense_5680_71146070*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5680_layer_call_and_return_conditional_losses_71145884�
"dense_5681/StatefulPartitionedCallStatefulPartitionedCall+dense_5680/StatefulPartitionedCall:output:0dense_5681_71146073dense_5681_71146075*
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
H__inference_dense_5681_layer_call_and_return_conditional_losses_71145900z
IdentityIdentity+dense_5681/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5678/StatefulPartitionedCall#^dense_5679/StatefulPartitionedCall#^dense_5680/StatefulPartitionedCall#^dense_5681/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 2H
"dense_5678/StatefulPartitionedCall"dense_5678/StatefulPartitionedCall2H
"dense_5679/StatefulPartitionedCall"dense_5679/StatefulPartitionedCall2H
"dense_5680/StatefulPartitionedCall"dense_5680/StatefulPartitionedCall2H
"dense_5681/StatefulPartitionedCall"dense_5681/StatefulPartitionedCall:Y U
'
_output_shapes
:���������0
*
_user_specified_namedense_5678_input
�
�
-__inference_dense_5681_layer_call_fn_71146308

inputs
unknown:0
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
H__inference_dense_5681_layer_call_and_return_conditional_losses_71145900o
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
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�%
�
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146216

inputs;
)dense_5678_matmul_readvariableop_resource:008
*dense_5678_biasadd_readvariableop_resource:0;
)dense_5679_matmul_readvariableop_resource:008
*dense_5679_biasadd_readvariableop_resource:0;
)dense_5680_matmul_readvariableop_resource:008
*dense_5680_biasadd_readvariableop_resource:0;
)dense_5681_matmul_readvariableop_resource:08
*dense_5681_biasadd_readvariableop_resource:
identity��!dense_5678/BiasAdd/ReadVariableOp� dense_5678/MatMul/ReadVariableOp�!dense_5679/BiasAdd/ReadVariableOp� dense_5679/MatMul/ReadVariableOp�!dense_5680/BiasAdd/ReadVariableOp� dense_5680/MatMul/ReadVariableOp�!dense_5681/BiasAdd/ReadVariableOp� dense_5681/MatMul/ReadVariableOp`
dense_5678/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������0�
 dense_5678/MatMul/ReadVariableOpReadVariableOp)dense_5678_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
dense_5678/MatMulMatMuldense_5678/Cast:y:0(dense_5678/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
!dense_5678/BiasAdd/ReadVariableOpReadVariableOp*dense_5678_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
dense_5678/BiasAddBiasAdddense_5678/MatMul:product:0)dense_5678/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0f
dense_5678/ReluReludense_5678/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
 dense_5679/MatMul/ReadVariableOpReadVariableOp)dense_5679_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
dense_5679/MatMulMatMuldense_5678/Relu:activations:0(dense_5679/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
!dense_5679/BiasAdd/ReadVariableOpReadVariableOp*dense_5679_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
dense_5679/BiasAddBiasAdddense_5679/MatMul:product:0)dense_5679/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0f
dense_5679/ReluReludense_5679/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
 dense_5680/MatMul/ReadVariableOpReadVariableOp)dense_5680_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
dense_5680/MatMulMatMuldense_5679/Relu:activations:0(dense_5680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
!dense_5680/BiasAdd/ReadVariableOpReadVariableOp*dense_5680_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
dense_5680/BiasAddBiasAdddense_5680/MatMul:product:0)dense_5680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0f
dense_5680/ReluReludense_5680/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
 dense_5681/MatMul/ReadVariableOpReadVariableOp)dense_5681_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0�
dense_5681/MatMulMatMuldense_5680/Relu:activations:0(dense_5681/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5681/BiasAdd/ReadVariableOpReadVariableOp*dense_5681_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5681/BiasAddBiasAdddense_5681/MatMul:product:0)dense_5681/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_5681/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_5678/BiasAdd/ReadVariableOp!^dense_5678/MatMul/ReadVariableOp"^dense_5679/BiasAdd/ReadVariableOp!^dense_5679/MatMul/ReadVariableOp"^dense_5680/BiasAdd/ReadVariableOp!^dense_5680/MatMul/ReadVariableOp"^dense_5681/BiasAdd/ReadVariableOp!^dense_5681/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 2F
!dense_5678/BiasAdd/ReadVariableOp!dense_5678/BiasAdd/ReadVariableOp2D
 dense_5678/MatMul/ReadVariableOp dense_5678/MatMul/ReadVariableOp2F
!dense_5679/BiasAdd/ReadVariableOp!dense_5679/BiasAdd/ReadVariableOp2D
 dense_5679/MatMul/ReadVariableOp dense_5679/MatMul/ReadVariableOp2F
!dense_5680/BiasAdd/ReadVariableOp!dense_5680/BiasAdd/ReadVariableOp2D
 dense_5680/MatMul/ReadVariableOp dense_5680/MatMul/ReadVariableOp2F
!dense_5681/BiasAdd/ReadVariableOp!dense_5681/BiasAdd/ReadVariableOp2D
 dense_5681/MatMul/ReadVariableOp dense_5681/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�%
�
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146184

inputs;
)dense_5678_matmul_readvariableop_resource:008
*dense_5678_biasadd_readvariableop_resource:0;
)dense_5679_matmul_readvariableop_resource:008
*dense_5679_biasadd_readvariableop_resource:0;
)dense_5680_matmul_readvariableop_resource:008
*dense_5680_biasadd_readvariableop_resource:0;
)dense_5681_matmul_readvariableop_resource:08
*dense_5681_biasadd_readvariableop_resource:
identity��!dense_5678/BiasAdd/ReadVariableOp� dense_5678/MatMul/ReadVariableOp�!dense_5679/BiasAdd/ReadVariableOp� dense_5679/MatMul/ReadVariableOp�!dense_5680/BiasAdd/ReadVariableOp� dense_5680/MatMul/ReadVariableOp�!dense_5681/BiasAdd/ReadVariableOp� dense_5681/MatMul/ReadVariableOp`
dense_5678/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������0�
 dense_5678/MatMul/ReadVariableOpReadVariableOp)dense_5678_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
dense_5678/MatMulMatMuldense_5678/Cast:y:0(dense_5678/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
!dense_5678/BiasAdd/ReadVariableOpReadVariableOp*dense_5678_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
dense_5678/BiasAddBiasAdddense_5678/MatMul:product:0)dense_5678/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0f
dense_5678/ReluReludense_5678/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
 dense_5679/MatMul/ReadVariableOpReadVariableOp)dense_5679_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
dense_5679/MatMulMatMuldense_5678/Relu:activations:0(dense_5679/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
!dense_5679/BiasAdd/ReadVariableOpReadVariableOp*dense_5679_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
dense_5679/BiasAddBiasAdddense_5679/MatMul:product:0)dense_5679/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0f
dense_5679/ReluReludense_5679/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
 dense_5680/MatMul/ReadVariableOpReadVariableOp)dense_5680_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
dense_5680/MatMulMatMuldense_5679/Relu:activations:0(dense_5680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
!dense_5680/BiasAdd/ReadVariableOpReadVariableOp*dense_5680_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
dense_5680/BiasAddBiasAdddense_5680/MatMul:product:0)dense_5680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0f
dense_5680/ReluReludense_5680/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
 dense_5681/MatMul/ReadVariableOpReadVariableOp)dense_5681_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0�
dense_5681/MatMulMatMuldense_5680/Relu:activations:0(dense_5681/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5681/BiasAdd/ReadVariableOpReadVariableOp*dense_5681_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5681/BiasAddBiasAdddense_5681/MatMul:product:0)dense_5681/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_5681/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_5678/BiasAdd/ReadVariableOp!^dense_5678/MatMul/ReadVariableOp"^dense_5679/BiasAdd/ReadVariableOp!^dense_5679/MatMul/ReadVariableOp"^dense_5680/BiasAdd/ReadVariableOp!^dense_5680/MatMul/ReadVariableOp"^dense_5681/BiasAdd/ReadVariableOp!^dense_5681/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 2F
!dense_5678/BiasAdd/ReadVariableOp!dense_5678/BiasAdd/ReadVariableOp2D
 dense_5678/MatMul/ReadVariableOp dense_5678/MatMul/ReadVariableOp2F
!dense_5679/BiasAdd/ReadVariableOp!dense_5679/BiasAdd/ReadVariableOp2D
 dense_5679/MatMul/ReadVariableOp dense_5679/MatMul/ReadVariableOp2F
!dense_5680/BiasAdd/ReadVariableOp!dense_5680/BiasAdd/ReadVariableOp2D
 dense_5680/MatMul/ReadVariableOp dense_5680/MatMul/ReadVariableOp2F
!dense_5681/BiasAdd/ReadVariableOp!dense_5681/BiasAdd/ReadVariableOp2D
 dense_5681/MatMul/ReadVariableOp dense_5681/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�	
�
H__inference_dense_5681_layer_call_and_return_conditional_losses_71145900

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
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
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�

�
H__inference_dense_5680_layer_call_and_return_conditional_losses_71145884

inputs0
matmul_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:00*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������0a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
-__inference_dense_5680_layer_call_fn_71146288

inputs
unknown:00
	unknown_0:0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5680_layer_call_and_return_conditional_losses_71145884o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�D
�
!__inference__traced_save_71146434
file_prefix0
,savev2_dense_5678_kernel_read_readvariableop.
*savev2_dense_5678_bias_read_readvariableop0
,savev2_dense_5679_kernel_read_readvariableop.
*savev2_dense_5679_bias_read_readvariableop0
,savev2_dense_5680_kernel_read_readvariableop.
*savev2_dense_5680_bias_read_readvariableop0
,savev2_dense_5681_kernel_read_readvariableop.
*savev2_dense_5681_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_5678_kernel_m_read_readvariableop5
1savev2_adam_dense_5678_bias_m_read_readvariableop7
3savev2_adam_dense_5679_kernel_m_read_readvariableop5
1savev2_adam_dense_5679_bias_m_read_readvariableop7
3savev2_adam_dense_5680_kernel_m_read_readvariableop5
1savev2_adam_dense_5680_bias_m_read_readvariableop7
3savev2_adam_dense_5681_kernel_m_read_readvariableop5
1savev2_adam_dense_5681_bias_m_read_readvariableop7
3savev2_adam_dense_5678_kernel_v_read_readvariableop5
1savev2_adam_dense_5678_bias_v_read_readvariableop7
3savev2_adam_dense_5679_kernel_v_read_readvariableop5
1savev2_adam_dense_5679_bias_v_read_readvariableop7
3savev2_adam_dense_5680_kernel_v_read_readvariableop5
1savev2_adam_dense_5680_bias_v_read_readvariableop7
3savev2_adam_dense_5681_kernel_v_read_readvariableop5
1savev2_adam_dense_5681_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_5678_kernel_read_readvariableop*savev2_dense_5678_bias_read_readvariableop,savev2_dense_5679_kernel_read_readvariableop*savev2_dense_5679_bias_read_readvariableop,savev2_dense_5680_kernel_read_readvariableop*savev2_dense_5680_bias_read_readvariableop,savev2_dense_5681_kernel_read_readvariableop*savev2_dense_5681_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_5678_kernel_m_read_readvariableop1savev2_adam_dense_5678_bias_m_read_readvariableop3savev2_adam_dense_5679_kernel_m_read_readvariableop1savev2_adam_dense_5679_bias_m_read_readvariableop3savev2_adam_dense_5680_kernel_m_read_readvariableop1savev2_adam_dense_5680_bias_m_read_readvariableop3savev2_adam_dense_5681_kernel_m_read_readvariableop1savev2_adam_dense_5681_bias_m_read_readvariableop3savev2_adam_dense_5678_kernel_v_read_readvariableop1savev2_adam_dense_5678_bias_v_read_readvariableop3savev2_adam_dense_5679_kernel_v_read_readvariableop1savev2_adam_dense_5679_bias_v_read_readvariableop3savev2_adam_dense_5680_kernel_v_read_readvariableop1savev2_adam_dense_5680_bias_v_read_readvariableop3savev2_adam_dense_5681_kernel_v_read_readvariableop1savev2_adam_dense_5681_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	�
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
�: :00:0:00:0:00:0:0:: : : : : : : :00:0:00:0:00:0:0::00:0:00:0:00:0:0:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
::$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:00: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
:: 

_output_shapes
: 
�	
�
2__inference_sequential_2174_layer_call_fn_71146131

inputs
unknown:00
	unknown_0:0
	unknown_1:00
	unknown_2:0
	unknown_3:00
	unknown_4:0
	unknown_5:0
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71145907o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�

�
H__inference_dense_5678_layer_call_and_return_conditional_losses_71146259

inputs0
matmul_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:00*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������0a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�

�
H__inference_dense_5679_layer_call_and_return_conditional_losses_71146279

inputs0
matmul_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:00*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������0a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�	
�
H__inference_dense_5681_layer_call_and_return_conditional_losses_71146318

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
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
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�}
�
$__inference__traced_restore_71146537
file_prefix4
"assignvariableop_dense_5678_kernel:000
"assignvariableop_1_dense_5678_bias:06
$assignvariableop_2_dense_5679_kernel:000
"assignvariableop_3_dense_5679_bias:06
$assignvariableop_4_dense_5680_kernel:000
"assignvariableop_5_dense_5680_bias:06
$assignvariableop_6_dense_5681_kernel:00
"assignvariableop_7_dense_5681_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: >
,assignvariableop_15_adam_dense_5678_kernel_m:008
*assignvariableop_16_adam_dense_5678_bias_m:0>
,assignvariableop_17_adam_dense_5679_kernel_m:008
*assignvariableop_18_adam_dense_5679_bias_m:0>
,assignvariableop_19_adam_dense_5680_kernel_m:008
*assignvariableop_20_adam_dense_5680_bias_m:0>
,assignvariableop_21_adam_dense_5681_kernel_m:08
*assignvariableop_22_adam_dense_5681_bias_m:>
,assignvariableop_23_adam_dense_5678_kernel_v:008
*assignvariableop_24_adam_dense_5678_bias_v:0>
,assignvariableop_25_adam_dense_5679_kernel_v:008
*assignvariableop_26_adam_dense_5679_bias_v:0>
,assignvariableop_27_adam_dense_5680_kernel_v:008
*assignvariableop_28_adam_dense_5680_bias_v:0>
,assignvariableop_29_adam_dense_5681_kernel_v:08
*assignvariableop_30_adam_dense_5681_bias_v:
identity_32��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_dense_5678_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_5678_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_5679_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_5679_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_5680_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_5680_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_5681_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_5681_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_5678_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_5678_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_5679_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_5679_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_5680_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_5680_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_5681_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_5681_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_5678_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_5678_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_dense_5679_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_5679_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_dense_5680_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_5680_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_dense_5681_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_5681_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
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
�
�
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146104
dense_5678_input%
dense_5678_71146083:00!
dense_5678_71146085:0%
dense_5679_71146088:00!
dense_5679_71146090:0%
dense_5680_71146093:00!
dense_5680_71146095:0%
dense_5681_71146098:0!
dense_5681_71146100:
identity��"dense_5678/StatefulPartitionedCall�"dense_5679/StatefulPartitionedCall�"dense_5680/StatefulPartitionedCall�"dense_5681/StatefulPartitionedCallj
dense_5678/CastCastdense_5678_input*

DstT0*

SrcT0*'
_output_shapes
:���������0�
"dense_5678/StatefulPartitionedCallStatefulPartitionedCalldense_5678/Cast:y:0dense_5678_71146083dense_5678_71146085*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5678_layer_call_and_return_conditional_losses_71145850�
"dense_5679/StatefulPartitionedCallStatefulPartitionedCall+dense_5678/StatefulPartitionedCall:output:0dense_5679_71146088dense_5679_71146090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5679_layer_call_and_return_conditional_losses_71145867�
"dense_5680/StatefulPartitionedCallStatefulPartitionedCall+dense_5679/StatefulPartitionedCall:output:0dense_5680_71146093dense_5680_71146095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5680_layer_call_and_return_conditional_losses_71145884�
"dense_5681/StatefulPartitionedCallStatefulPartitionedCall+dense_5680/StatefulPartitionedCall:output:0dense_5681_71146098dense_5681_71146100*
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
H__inference_dense_5681_layer_call_and_return_conditional_losses_71145900z
IdentityIdentity+dense_5681/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5678/StatefulPartitionedCall#^dense_5679/StatefulPartitionedCall#^dense_5680/StatefulPartitionedCall#^dense_5681/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 2H
"dense_5678/StatefulPartitionedCall"dense_5678/StatefulPartitionedCall2H
"dense_5679/StatefulPartitionedCall"dense_5679/StatefulPartitionedCall2H
"dense_5680/StatefulPartitionedCall"dense_5680/StatefulPartitionedCall2H
"dense_5681/StatefulPartitionedCall"dense_5681/StatefulPartitionedCall:Y U
'
_output_shapes
:���������0
*
_user_specified_namedense_5678_input
�
�
-__inference_dense_5678_layer_call_fn_71146248

inputs
unknown:00
	unknown_0:0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5678_layer_call_and_return_conditional_losses_71145850o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs
�0
�
#__inference__wrapped_model_71145831
dense_5678_inputK
9sequential_2174_dense_5678_matmul_readvariableop_resource:00H
:sequential_2174_dense_5678_biasadd_readvariableop_resource:0K
9sequential_2174_dense_5679_matmul_readvariableop_resource:00H
:sequential_2174_dense_5679_biasadd_readvariableop_resource:0K
9sequential_2174_dense_5680_matmul_readvariableop_resource:00H
:sequential_2174_dense_5680_biasadd_readvariableop_resource:0K
9sequential_2174_dense_5681_matmul_readvariableop_resource:0H
:sequential_2174_dense_5681_biasadd_readvariableop_resource:
identity��1sequential_2174/dense_5678/BiasAdd/ReadVariableOp�0sequential_2174/dense_5678/MatMul/ReadVariableOp�1sequential_2174/dense_5679/BiasAdd/ReadVariableOp�0sequential_2174/dense_5679/MatMul/ReadVariableOp�1sequential_2174/dense_5680/BiasAdd/ReadVariableOp�0sequential_2174/dense_5680/MatMul/ReadVariableOp�1sequential_2174/dense_5681/BiasAdd/ReadVariableOp�0sequential_2174/dense_5681/MatMul/ReadVariableOpz
sequential_2174/dense_5678/CastCastdense_5678_input*

DstT0*

SrcT0*'
_output_shapes
:���������0�
0sequential_2174/dense_5678/MatMul/ReadVariableOpReadVariableOp9sequential_2174_dense_5678_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
!sequential_2174/dense_5678/MatMulMatMul#sequential_2174/dense_5678/Cast:y:08sequential_2174/dense_5678/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
1sequential_2174/dense_5678/BiasAdd/ReadVariableOpReadVariableOp:sequential_2174_dense_5678_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
"sequential_2174/dense_5678/BiasAddBiasAdd+sequential_2174/dense_5678/MatMul:product:09sequential_2174/dense_5678/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
sequential_2174/dense_5678/ReluRelu+sequential_2174/dense_5678/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
0sequential_2174/dense_5679/MatMul/ReadVariableOpReadVariableOp9sequential_2174_dense_5679_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
!sequential_2174/dense_5679/MatMulMatMul-sequential_2174/dense_5678/Relu:activations:08sequential_2174/dense_5679/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
1sequential_2174/dense_5679/BiasAdd/ReadVariableOpReadVariableOp:sequential_2174_dense_5679_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
"sequential_2174/dense_5679/BiasAddBiasAdd+sequential_2174/dense_5679/MatMul:product:09sequential_2174/dense_5679/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
sequential_2174/dense_5679/ReluRelu+sequential_2174/dense_5679/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
0sequential_2174/dense_5680/MatMul/ReadVariableOpReadVariableOp9sequential_2174_dense_5680_matmul_readvariableop_resource*
_output_shapes

:00*
dtype0�
!sequential_2174/dense_5680/MatMulMatMul-sequential_2174/dense_5679/Relu:activations:08sequential_2174/dense_5680/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
1sequential_2174/dense_5680/BiasAdd/ReadVariableOpReadVariableOp:sequential_2174_dense_5680_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
"sequential_2174/dense_5680/BiasAddBiasAdd+sequential_2174/dense_5680/MatMul:product:09sequential_2174/dense_5680/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0�
sequential_2174/dense_5680/ReluRelu+sequential_2174/dense_5680/BiasAdd:output:0*
T0*'
_output_shapes
:���������0�
0sequential_2174/dense_5681/MatMul/ReadVariableOpReadVariableOp9sequential_2174_dense_5681_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0�
!sequential_2174/dense_5681/MatMulMatMul-sequential_2174/dense_5680/Relu:activations:08sequential_2174/dense_5681/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_2174/dense_5681/BiasAdd/ReadVariableOpReadVariableOp:sequential_2174_dense_5681_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_2174/dense_5681/BiasAddBiasAdd+sequential_2174/dense_5681/MatMul:product:09sequential_2174/dense_5681/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential_2174/dense_5681/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^sequential_2174/dense_5678/BiasAdd/ReadVariableOp1^sequential_2174/dense_5678/MatMul/ReadVariableOp2^sequential_2174/dense_5679/BiasAdd/ReadVariableOp1^sequential_2174/dense_5679/MatMul/ReadVariableOp2^sequential_2174/dense_5680/BiasAdd/ReadVariableOp1^sequential_2174/dense_5680/MatMul/ReadVariableOp2^sequential_2174/dense_5681/BiasAdd/ReadVariableOp1^sequential_2174/dense_5681/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������0: : : : : : : : 2f
1sequential_2174/dense_5678/BiasAdd/ReadVariableOp1sequential_2174/dense_5678/BiasAdd/ReadVariableOp2d
0sequential_2174/dense_5678/MatMul/ReadVariableOp0sequential_2174/dense_5678/MatMul/ReadVariableOp2f
1sequential_2174/dense_5679/BiasAdd/ReadVariableOp1sequential_2174/dense_5679/BiasAdd/ReadVariableOp2d
0sequential_2174/dense_5679/MatMul/ReadVariableOp0sequential_2174/dense_5679/MatMul/ReadVariableOp2f
1sequential_2174/dense_5680/BiasAdd/ReadVariableOp1sequential_2174/dense_5680/BiasAdd/ReadVariableOp2d
0sequential_2174/dense_5680/MatMul/ReadVariableOp0sequential_2174/dense_5680/MatMul/ReadVariableOp2f
1sequential_2174/dense_5681/BiasAdd/ReadVariableOp1sequential_2174/dense_5681/BiasAdd/ReadVariableOp2d
0sequential_2174/dense_5681/MatMul/ReadVariableOp0sequential_2174/dense_5681/MatMul/ReadVariableOp:Y U
'
_output_shapes
:���������0
*
_user_specified_namedense_5678_input
�

�
H__inference_dense_5679_layer_call_and_return_conditional_losses_71145867

inputs0
matmul_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:00*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������0a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������0
 
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
dense_5678_input9
"serving_default_dense_5678_input:0���������0>

dense_56810
StatefulPartitionedCall:0���������tensorflow/serving/predict:�]
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
�

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
�
.iter

/beta_1

0beta_2
	1decay
2learning_ratemRmSmTmUmVmW&mX'mYvZv[v\v]v^v_&v`'va"
	optimizer
X
0
1
2
3
4
5
&6
'7"
trackable_list_wrapper
X
0
1
2
3
4
5
&6
'7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
2__inference_sequential_2174_layer_call_fn_71145926
2__inference_sequential_2174_layer_call_fn_71146131
2__inference_sequential_2174_layer_call_fn_71146152
2__inference_sequential_2174_layer_call_fn_71146054�
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
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146184
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146216
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146079
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146104�
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
#__inference__wrapped_model_71145831dense_5678_input"�
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
8serving_default"
signature_map
#:!002dense_5678/kernel
:02dense_5678/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_5678_layer_call_fn_71146248�
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
H__inference_dense_5678_layer_call_and_return_conditional_losses_71146259�
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
#:!002dense_5679/kernel
:02dense_5679/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_5679_layer_call_fn_71146268�
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
H__inference_dense_5679_layer_call_and_return_conditional_losses_71146279�
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
#:!002dense_5680/kernel
:02dense_5680/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_5680_layer_call_fn_71146288�
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
H__inference_dense_5680_layer_call_and_return_conditional_losses_71146299�
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
#:!02dense_5681/kernel
:2dense_5681/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_dense_5681_layer_call_fn_71146308�
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
H__inference_dense_5681_layer_call_and_return_conditional_losses_71146318�
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
<
0
1
2
3"
trackable_list_wrapper
'
M0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_signature_wrapper_71146239dense_5678_input"�
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
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
(:&002Adam/dense_5678/kernel/m
": 02Adam/dense_5678/bias/m
(:&002Adam/dense_5679/kernel/m
": 02Adam/dense_5679/bias/m
(:&002Adam/dense_5680/kernel/m
": 02Adam/dense_5680/bias/m
(:&02Adam/dense_5681/kernel/m
": 2Adam/dense_5681/bias/m
(:&002Adam/dense_5678/kernel/v
": 02Adam/dense_5678/bias/v
(:&002Adam/dense_5679/kernel/v
": 02Adam/dense_5679/bias/v
(:&002Adam/dense_5680/kernel/v
": 02Adam/dense_5680/bias/v
(:&02Adam/dense_5681/kernel/v
": 2Adam/dense_5681/bias/v�
#__inference__wrapped_model_71145831~&'9�6
/�,
*�'
dense_5678_input���������0
� "7�4
2

dense_5681$�!

dense_5681����������
H__inference_dense_5678_layer_call_and_return_conditional_losses_71146259\/�,
%�"
 �
inputs���������0
� "%�"
�
0���������0
� �
-__inference_dense_5678_layer_call_fn_71146248O/�,
%�"
 �
inputs���������0
� "����������0�
H__inference_dense_5679_layer_call_and_return_conditional_losses_71146279\/�,
%�"
 �
inputs���������0
� "%�"
�
0���������0
� �
-__inference_dense_5679_layer_call_fn_71146268O/�,
%�"
 �
inputs���������0
� "����������0�
H__inference_dense_5680_layer_call_and_return_conditional_losses_71146299\/�,
%�"
 �
inputs���������0
� "%�"
�
0���������0
� �
-__inference_dense_5680_layer_call_fn_71146288O/�,
%�"
 �
inputs���������0
� "����������0�
H__inference_dense_5681_layer_call_and_return_conditional_losses_71146318\&'/�,
%�"
 �
inputs���������0
� "%�"
�
0���������
� �
-__inference_dense_5681_layer_call_fn_71146308O&'/�,
%�"
 �
inputs���������0
� "�����������
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146079t&'A�>
7�4
*�'
dense_5678_input���������0
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146104t&'A�>
7�4
*�'
dense_5678_input���������0
p

 
� "%�"
�
0���������
� �
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146184j&'7�4
-�*
 �
inputs���������0
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_2174_layer_call_and_return_conditional_losses_71146216j&'7�4
-�*
 �
inputs���������0
p

 
� "%�"
�
0���������
� �
2__inference_sequential_2174_layer_call_fn_71145926g&'A�>
7�4
*�'
dense_5678_input���������0
p 

 
� "�����������
2__inference_sequential_2174_layer_call_fn_71146054g&'A�>
7�4
*�'
dense_5678_input���������0
p

 
� "�����������
2__inference_sequential_2174_layer_call_fn_71146131]&'7�4
-�*
 �
inputs���������0
p 

 
� "�����������
2__inference_sequential_2174_layer_call_fn_71146152]&'7�4
-�*
 �
inputs���������0
p

 
� "�����������
&__inference_signature_wrapper_71146239�&'M�J
� 
C�@
>
dense_5678_input*�'
dense_5678_input���������0"7�4
2

dense_5681$�!

dense_5681���������