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
dense_6038/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*"
shared_namedense_6038/kernel
w
%dense_6038/kernel/Read/ReadVariableOpReadVariableOpdense_6038/kernel*
_output_shapes

:55*
dtype0
v
dense_6038/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:5* 
shared_namedense_6038/bias
o
#dense_6038/bias/Read/ReadVariableOpReadVariableOpdense_6038/bias*
_output_shapes
:5*
dtype0
~
dense_6039/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*"
shared_namedense_6039/kernel
w
%dense_6039/kernel/Read/ReadVariableOpReadVariableOpdense_6039/kernel*
_output_shapes

:55*
dtype0
v
dense_6039/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:5* 
shared_namedense_6039/bias
o
#dense_6039/bias/Read/ReadVariableOpReadVariableOpdense_6039/bias*
_output_shapes
:5*
dtype0
~
dense_6040/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*"
shared_namedense_6040/kernel
w
%dense_6040/kernel/Read/ReadVariableOpReadVariableOpdense_6040/kernel*
_output_shapes

:55*
dtype0
v
dense_6040/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:5* 
shared_namedense_6040/bias
o
#dense_6040/bias/Read/ReadVariableOpReadVariableOpdense_6040/bias*
_output_shapes
:5*
dtype0
~
dense_6041/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:5*"
shared_namedense_6041/kernel
w
%dense_6041/kernel/Read/ReadVariableOpReadVariableOpdense_6041/kernel*
_output_shapes

:5*
dtype0
v
dense_6041/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_6041/bias
o
#dense_6041/bias/Read/ReadVariableOpReadVariableOpdense_6041/bias*
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
Adam/dense_6038/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*)
shared_nameAdam/dense_6038/kernel/m
�
,Adam/dense_6038/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6038/kernel/m*
_output_shapes

:55*
dtype0
�
Adam/dense_6038/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*'
shared_nameAdam/dense_6038/bias/m
}
*Adam/dense_6038/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6038/bias/m*
_output_shapes
:5*
dtype0
�
Adam/dense_6039/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*)
shared_nameAdam/dense_6039/kernel/m
�
,Adam/dense_6039/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6039/kernel/m*
_output_shapes

:55*
dtype0
�
Adam/dense_6039/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*'
shared_nameAdam/dense_6039/bias/m
}
*Adam/dense_6039/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6039/bias/m*
_output_shapes
:5*
dtype0
�
Adam/dense_6040/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*)
shared_nameAdam/dense_6040/kernel/m
�
,Adam/dense_6040/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6040/kernel/m*
_output_shapes

:55*
dtype0
�
Adam/dense_6040/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*'
shared_nameAdam/dense_6040/bias/m
}
*Adam/dense_6040/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6040/bias/m*
_output_shapes
:5*
dtype0
�
Adam/dense_6041/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:5*)
shared_nameAdam/dense_6041/kernel/m
�
,Adam/dense_6041/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6041/kernel/m*
_output_shapes

:5*
dtype0
�
Adam/dense_6041/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_6041/bias/m
}
*Adam/dense_6041/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6041/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_6038/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*)
shared_nameAdam/dense_6038/kernel/v
�
,Adam/dense_6038/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6038/kernel/v*
_output_shapes

:55*
dtype0
�
Adam/dense_6038/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*'
shared_nameAdam/dense_6038/bias/v
}
*Adam/dense_6038/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6038/bias/v*
_output_shapes
:5*
dtype0
�
Adam/dense_6039/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*)
shared_nameAdam/dense_6039/kernel/v
�
,Adam/dense_6039/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6039/kernel/v*
_output_shapes

:55*
dtype0
�
Adam/dense_6039/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*'
shared_nameAdam/dense_6039/bias/v
}
*Adam/dense_6039/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6039/bias/v*
_output_shapes
:5*
dtype0
�
Adam/dense_6040/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:55*)
shared_nameAdam/dense_6040/kernel/v
�
,Adam/dense_6040/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6040/kernel/v*
_output_shapes

:55*
dtype0
�
Adam/dense_6040/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*'
shared_nameAdam/dense_6040/bias/v
}
*Adam/dense_6040/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6040/bias/v*
_output_shapes
:5*
dtype0
�
Adam/dense_6041/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:5*)
shared_nameAdam/dense_6041/kernel/v
�
,Adam/dense_6041/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6041/kernel/v*
_output_shapes

:5*
dtype0
�
Adam/dense_6041/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_6041/bias/v
}
*Adam/dense_6041/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6041/bias/v*
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
VARIABLE_VALUEdense_6038/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_6038/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_6039/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_6039/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_6040/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_6040/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_6041/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_6041/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_6038/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_6038/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_6039/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_6039/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_6040/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_6040/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_6041/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_6041/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_6038/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_6038/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_6039/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_6039/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_6040/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_6040/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_6041/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_6041/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_dense_6038_inputPlaceholder*'
_output_shapes
:���������5*
dtype0*
shape:���������5
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_6038_inputdense_6038/kerneldense_6038/biasdense_6039/kerneldense_6039/biasdense_6040/kerneldense_6040/biasdense_6041/kerneldense_6041/bias*
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
&__inference_signature_wrapper_74094983
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_6038/kernel/Read/ReadVariableOp#dense_6038/bias/Read/ReadVariableOp%dense_6039/kernel/Read/ReadVariableOp#dense_6039/bias/Read/ReadVariableOp%dense_6040/kernel/Read/ReadVariableOp#dense_6040/bias/Read/ReadVariableOp%dense_6041/kernel/Read/ReadVariableOp#dense_6041/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_6038/kernel/m/Read/ReadVariableOp*Adam/dense_6038/bias/m/Read/ReadVariableOp,Adam/dense_6039/kernel/m/Read/ReadVariableOp*Adam/dense_6039/bias/m/Read/ReadVariableOp,Adam/dense_6040/kernel/m/Read/ReadVariableOp*Adam/dense_6040/bias/m/Read/ReadVariableOp,Adam/dense_6041/kernel/m/Read/ReadVariableOp*Adam/dense_6041/bias/m/Read/ReadVariableOp,Adam/dense_6038/kernel/v/Read/ReadVariableOp*Adam/dense_6038/bias/v/Read/ReadVariableOp,Adam/dense_6039/kernel/v/Read/ReadVariableOp*Adam/dense_6039/bias/v/Read/ReadVariableOp,Adam/dense_6040/kernel/v/Read/ReadVariableOp*Adam/dense_6040/bias/v/Read/ReadVariableOp,Adam/dense_6041/kernel/v/Read/ReadVariableOp*Adam/dense_6041/bias/v/Read/ReadVariableOpConst*,
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
!__inference__traced_save_74095178
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6038/kerneldense_6038/biasdense_6039/kerneldense_6039/biasdense_6040/kerneldense_6040/biasdense_6041/kerneldense_6041/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_6038/kernel/mAdam/dense_6038/bias/mAdam/dense_6039/kernel/mAdam/dense_6039/bias/mAdam/dense_6040/kernel/mAdam/dense_6040/bias/mAdam/dense_6041/kernel/mAdam/dense_6041/bias/mAdam/dense_6038/kernel/vAdam/dense_6038/bias/vAdam/dense_6039/kernel/vAdam/dense_6039/bias/vAdam/dense_6040/kernel/vAdam/dense_6040/bias/vAdam/dense_6041/kernel/vAdam/dense_6041/bias/v*+
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
$__inference__traced_restore_74095281��
�D
�
!__inference__traced_save_74095178
file_prefix0
,savev2_dense_6038_kernel_read_readvariableop.
*savev2_dense_6038_bias_read_readvariableop0
,savev2_dense_6039_kernel_read_readvariableop.
*savev2_dense_6039_bias_read_readvariableop0
,savev2_dense_6040_kernel_read_readvariableop.
*savev2_dense_6040_bias_read_readvariableop0
,savev2_dense_6041_kernel_read_readvariableop.
*savev2_dense_6041_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_6038_kernel_m_read_readvariableop5
1savev2_adam_dense_6038_bias_m_read_readvariableop7
3savev2_adam_dense_6039_kernel_m_read_readvariableop5
1savev2_adam_dense_6039_bias_m_read_readvariableop7
3savev2_adam_dense_6040_kernel_m_read_readvariableop5
1savev2_adam_dense_6040_bias_m_read_readvariableop7
3savev2_adam_dense_6041_kernel_m_read_readvariableop5
1savev2_adam_dense_6041_bias_m_read_readvariableop7
3savev2_adam_dense_6038_kernel_v_read_readvariableop5
1savev2_adam_dense_6038_bias_v_read_readvariableop7
3savev2_adam_dense_6039_kernel_v_read_readvariableop5
1savev2_adam_dense_6039_bias_v_read_readvariableop7
3savev2_adam_dense_6040_kernel_v_read_readvariableop5
1savev2_adam_dense_6040_bias_v_read_readvariableop7
3savev2_adam_dense_6041_kernel_v_read_readvariableop5
1savev2_adam_dense_6041_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_6038_kernel_read_readvariableop*savev2_dense_6038_bias_read_readvariableop,savev2_dense_6039_kernel_read_readvariableop*savev2_dense_6039_bias_read_readvariableop,savev2_dense_6040_kernel_read_readvariableop*savev2_dense_6040_bias_read_readvariableop,savev2_dense_6041_kernel_read_readvariableop*savev2_dense_6041_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_6038_kernel_m_read_readvariableop1savev2_adam_dense_6038_bias_m_read_readvariableop3savev2_adam_dense_6039_kernel_m_read_readvariableop1savev2_adam_dense_6039_bias_m_read_readvariableop3savev2_adam_dense_6040_kernel_m_read_readvariableop1savev2_adam_dense_6040_bias_m_read_readvariableop3savev2_adam_dense_6041_kernel_m_read_readvariableop1savev2_adam_dense_6041_bias_m_read_readvariableop3savev2_adam_dense_6038_kernel_v_read_readvariableop1savev2_adam_dense_6038_bias_v_read_readvariableop3savev2_adam_dense_6039_kernel_v_read_readvariableop1savev2_adam_dense_6039_bias_v_read_readvariableop3savev2_adam_dense_6040_kernel_v_read_readvariableop1savev2_adam_dense_6040_bias_v_read_readvariableop3savev2_adam_dense_6041_kernel_v_read_readvariableop1savev2_adam_dense_6041_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�: :55:5:55:5:55:5:5:: : : : : : : :55:5:55:5:55:5:5::55:5:55:5:55:5:5:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:55: 

_output_shapes
:5:$ 

_output_shapes

:55: 

_output_shapes
:5:$ 

_output_shapes

:55: 

_output_shapes
:5:$ 

_output_shapes

:5: 
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

:55: 

_output_shapes
:5:$ 

_output_shapes

:55: 

_output_shapes
:5:$ 

_output_shapes

:55: 

_output_shapes
:5:$ 

_output_shapes

:5: 

_output_shapes
::$ 

_output_shapes

:55: 

_output_shapes
:5:$ 

_output_shapes

:55: 

_output_shapes
:5:$ 

_output_shapes

:55: 

_output_shapes
:5:$ 

_output_shapes

:5: 

_output_shapes
:: 

_output_shapes
: 
�%
�
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094928

inputs;
)dense_6038_matmul_readvariableop_resource:558
*dense_6038_biasadd_readvariableop_resource:5;
)dense_6039_matmul_readvariableop_resource:558
*dense_6039_biasadd_readvariableop_resource:5;
)dense_6040_matmul_readvariableop_resource:558
*dense_6040_biasadd_readvariableop_resource:5;
)dense_6041_matmul_readvariableop_resource:58
*dense_6041_biasadd_readvariableop_resource:
identity��!dense_6038/BiasAdd/ReadVariableOp� dense_6038/MatMul/ReadVariableOp�!dense_6039/BiasAdd/ReadVariableOp� dense_6039/MatMul/ReadVariableOp�!dense_6040/BiasAdd/ReadVariableOp� dense_6040/MatMul/ReadVariableOp�!dense_6041/BiasAdd/ReadVariableOp� dense_6041/MatMul/ReadVariableOp`
dense_6038/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������5�
 dense_6038/MatMul/ReadVariableOpReadVariableOp)dense_6038_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
dense_6038/MatMulMatMuldense_6038/Cast:y:0(dense_6038/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
!dense_6038/BiasAdd/ReadVariableOpReadVariableOp*dense_6038_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
dense_6038/BiasAddBiasAdddense_6038/MatMul:product:0)dense_6038/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5f
dense_6038/ReluReludense_6038/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
 dense_6039/MatMul/ReadVariableOpReadVariableOp)dense_6039_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
dense_6039/MatMulMatMuldense_6038/Relu:activations:0(dense_6039/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
!dense_6039/BiasAdd/ReadVariableOpReadVariableOp*dense_6039_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
dense_6039/BiasAddBiasAdddense_6039/MatMul:product:0)dense_6039/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5f
dense_6039/ReluReludense_6039/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
 dense_6040/MatMul/ReadVariableOpReadVariableOp)dense_6040_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
dense_6040/MatMulMatMuldense_6039/Relu:activations:0(dense_6040/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
!dense_6040/BiasAdd/ReadVariableOpReadVariableOp*dense_6040_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
dense_6040/BiasAddBiasAdddense_6040/MatMul:product:0)dense_6040/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5f
dense_6040/ReluReludense_6040/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
 dense_6041/MatMul/ReadVariableOpReadVariableOp)dense_6041_matmul_readvariableop_resource*
_output_shapes

:5*
dtype0�
dense_6041/MatMulMatMuldense_6040/Relu:activations:0(dense_6041/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_6041/BiasAdd/ReadVariableOpReadVariableOp*dense_6041_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6041/BiasAddBiasAdddense_6041/MatMul:product:0)dense_6041/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_6041/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_6038/BiasAdd/ReadVariableOp!^dense_6038/MatMul/ReadVariableOp"^dense_6039/BiasAdd/ReadVariableOp!^dense_6039/MatMul/ReadVariableOp"^dense_6040/BiasAdd/ReadVariableOp!^dense_6040/MatMul/ReadVariableOp"^dense_6041/BiasAdd/ReadVariableOp!^dense_6041/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������5: : : : : : : : 2F
!dense_6038/BiasAdd/ReadVariableOp!dense_6038/BiasAdd/ReadVariableOp2D
 dense_6038/MatMul/ReadVariableOp dense_6038/MatMul/ReadVariableOp2F
!dense_6039/BiasAdd/ReadVariableOp!dense_6039/BiasAdd/ReadVariableOp2D
 dense_6039/MatMul/ReadVariableOp dense_6039/MatMul/ReadVariableOp2F
!dense_6040/BiasAdd/ReadVariableOp!dense_6040/BiasAdd/ReadVariableOp2D
 dense_6040/MatMul/ReadVariableOp dense_6040/MatMul/ReadVariableOp2F
!dense_6041/BiasAdd/ReadVariableOp!dense_6041/BiasAdd/ReadVariableOp2D
 dense_6041/MatMul/ReadVariableOp dense_6041/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�

�
H__inference_dense_6039_layer_call_and_return_conditional_losses_74095023

inputs0
matmul_readvariableop_resource:55-
biasadd_readvariableop_resource:5
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:55*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������5a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������5w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�	
�
2__inference_sequential_2264_layer_call_fn_74094875

inputs
unknown:55
	unknown_0:5
	unknown_1:55
	unknown_2:5
	unknown_3:55
	unknown_4:5
	unknown_5:5
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
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094651o
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
#:���������5: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�
�
-__inference_dense_6038_layer_call_fn_74094992

inputs
unknown:55
	unknown_0:5
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6038_layer_call_and_return_conditional_losses_74094594o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������5`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�0
�
#__inference__wrapped_model_74094575
dense_6038_inputK
9sequential_2264_dense_6038_matmul_readvariableop_resource:55H
:sequential_2264_dense_6038_biasadd_readvariableop_resource:5K
9sequential_2264_dense_6039_matmul_readvariableop_resource:55H
:sequential_2264_dense_6039_biasadd_readvariableop_resource:5K
9sequential_2264_dense_6040_matmul_readvariableop_resource:55H
:sequential_2264_dense_6040_biasadd_readvariableop_resource:5K
9sequential_2264_dense_6041_matmul_readvariableop_resource:5H
:sequential_2264_dense_6041_biasadd_readvariableop_resource:
identity��1sequential_2264/dense_6038/BiasAdd/ReadVariableOp�0sequential_2264/dense_6038/MatMul/ReadVariableOp�1sequential_2264/dense_6039/BiasAdd/ReadVariableOp�0sequential_2264/dense_6039/MatMul/ReadVariableOp�1sequential_2264/dense_6040/BiasAdd/ReadVariableOp�0sequential_2264/dense_6040/MatMul/ReadVariableOp�1sequential_2264/dense_6041/BiasAdd/ReadVariableOp�0sequential_2264/dense_6041/MatMul/ReadVariableOpz
sequential_2264/dense_6038/CastCastdense_6038_input*

DstT0*

SrcT0*'
_output_shapes
:���������5�
0sequential_2264/dense_6038/MatMul/ReadVariableOpReadVariableOp9sequential_2264_dense_6038_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
!sequential_2264/dense_6038/MatMulMatMul#sequential_2264/dense_6038/Cast:y:08sequential_2264/dense_6038/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
1sequential_2264/dense_6038/BiasAdd/ReadVariableOpReadVariableOp:sequential_2264_dense_6038_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
"sequential_2264/dense_6038/BiasAddBiasAdd+sequential_2264/dense_6038/MatMul:product:09sequential_2264/dense_6038/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
sequential_2264/dense_6038/ReluRelu+sequential_2264/dense_6038/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
0sequential_2264/dense_6039/MatMul/ReadVariableOpReadVariableOp9sequential_2264_dense_6039_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
!sequential_2264/dense_6039/MatMulMatMul-sequential_2264/dense_6038/Relu:activations:08sequential_2264/dense_6039/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
1sequential_2264/dense_6039/BiasAdd/ReadVariableOpReadVariableOp:sequential_2264_dense_6039_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
"sequential_2264/dense_6039/BiasAddBiasAdd+sequential_2264/dense_6039/MatMul:product:09sequential_2264/dense_6039/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
sequential_2264/dense_6039/ReluRelu+sequential_2264/dense_6039/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
0sequential_2264/dense_6040/MatMul/ReadVariableOpReadVariableOp9sequential_2264_dense_6040_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
!sequential_2264/dense_6040/MatMulMatMul-sequential_2264/dense_6039/Relu:activations:08sequential_2264/dense_6040/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
1sequential_2264/dense_6040/BiasAdd/ReadVariableOpReadVariableOp:sequential_2264_dense_6040_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
"sequential_2264/dense_6040/BiasAddBiasAdd+sequential_2264/dense_6040/MatMul:product:09sequential_2264/dense_6040/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
sequential_2264/dense_6040/ReluRelu+sequential_2264/dense_6040/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
0sequential_2264/dense_6041/MatMul/ReadVariableOpReadVariableOp9sequential_2264_dense_6041_matmul_readvariableop_resource*
_output_shapes

:5*
dtype0�
!sequential_2264/dense_6041/MatMulMatMul-sequential_2264/dense_6040/Relu:activations:08sequential_2264/dense_6041/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_2264/dense_6041/BiasAdd/ReadVariableOpReadVariableOp:sequential_2264_dense_6041_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_2264/dense_6041/BiasAddBiasAdd+sequential_2264/dense_6041/MatMul:product:09sequential_2264/dense_6041/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential_2264/dense_6041/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^sequential_2264/dense_6038/BiasAdd/ReadVariableOp1^sequential_2264/dense_6038/MatMul/ReadVariableOp2^sequential_2264/dense_6039/BiasAdd/ReadVariableOp1^sequential_2264/dense_6039/MatMul/ReadVariableOp2^sequential_2264/dense_6040/BiasAdd/ReadVariableOp1^sequential_2264/dense_6040/MatMul/ReadVariableOp2^sequential_2264/dense_6041/BiasAdd/ReadVariableOp1^sequential_2264/dense_6041/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������5: : : : : : : : 2f
1sequential_2264/dense_6038/BiasAdd/ReadVariableOp1sequential_2264/dense_6038/BiasAdd/ReadVariableOp2d
0sequential_2264/dense_6038/MatMul/ReadVariableOp0sequential_2264/dense_6038/MatMul/ReadVariableOp2f
1sequential_2264/dense_6039/BiasAdd/ReadVariableOp1sequential_2264/dense_6039/BiasAdd/ReadVariableOp2d
0sequential_2264/dense_6039/MatMul/ReadVariableOp0sequential_2264/dense_6039/MatMul/ReadVariableOp2f
1sequential_2264/dense_6040/BiasAdd/ReadVariableOp1sequential_2264/dense_6040/BiasAdd/ReadVariableOp2d
0sequential_2264/dense_6040/MatMul/ReadVariableOp0sequential_2264/dense_6040/MatMul/ReadVariableOp2f
1sequential_2264/dense_6041/BiasAdd/ReadVariableOp1sequential_2264/dense_6041/BiasAdd/ReadVariableOp2d
0sequential_2264/dense_6041/MatMul/ReadVariableOp0sequential_2264/dense_6041/MatMul/ReadVariableOp:Y U
'
_output_shapes
:���������5
*
_user_specified_namedense_6038_input
�

�
H__inference_dense_6038_layer_call_and_return_conditional_losses_74095003

inputs0
matmul_readvariableop_resource:55-
biasadd_readvariableop_resource:5
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:55*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������5a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������5w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�	
�
2__inference_sequential_2264_layer_call_fn_74094798
dense_6038_input
unknown:55
	unknown_0:5
	unknown_1:55
	unknown_2:5
	unknown_3:55
	unknown_4:5
	unknown_5:5
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_6038_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094758o
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
#:���������5: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������5
*
_user_specified_namedense_6038_input
�%
�
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094960

inputs;
)dense_6038_matmul_readvariableop_resource:558
*dense_6038_biasadd_readvariableop_resource:5;
)dense_6039_matmul_readvariableop_resource:558
*dense_6039_biasadd_readvariableop_resource:5;
)dense_6040_matmul_readvariableop_resource:558
*dense_6040_biasadd_readvariableop_resource:5;
)dense_6041_matmul_readvariableop_resource:58
*dense_6041_biasadd_readvariableop_resource:
identity��!dense_6038/BiasAdd/ReadVariableOp� dense_6038/MatMul/ReadVariableOp�!dense_6039/BiasAdd/ReadVariableOp� dense_6039/MatMul/ReadVariableOp�!dense_6040/BiasAdd/ReadVariableOp� dense_6040/MatMul/ReadVariableOp�!dense_6041/BiasAdd/ReadVariableOp� dense_6041/MatMul/ReadVariableOp`
dense_6038/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������5�
 dense_6038/MatMul/ReadVariableOpReadVariableOp)dense_6038_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
dense_6038/MatMulMatMuldense_6038/Cast:y:0(dense_6038/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
!dense_6038/BiasAdd/ReadVariableOpReadVariableOp*dense_6038_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
dense_6038/BiasAddBiasAdddense_6038/MatMul:product:0)dense_6038/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5f
dense_6038/ReluReludense_6038/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
 dense_6039/MatMul/ReadVariableOpReadVariableOp)dense_6039_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
dense_6039/MatMulMatMuldense_6038/Relu:activations:0(dense_6039/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
!dense_6039/BiasAdd/ReadVariableOpReadVariableOp*dense_6039_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
dense_6039/BiasAddBiasAdddense_6039/MatMul:product:0)dense_6039/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5f
dense_6039/ReluReludense_6039/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
 dense_6040/MatMul/ReadVariableOpReadVariableOp)dense_6040_matmul_readvariableop_resource*
_output_shapes

:55*
dtype0�
dense_6040/MatMulMatMuldense_6039/Relu:activations:0(dense_6040/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5�
!dense_6040/BiasAdd/ReadVariableOpReadVariableOp*dense_6040_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype0�
dense_6040/BiasAddBiasAdddense_6040/MatMul:product:0)dense_6040/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5f
dense_6040/ReluReludense_6040/BiasAdd:output:0*
T0*'
_output_shapes
:���������5�
 dense_6041/MatMul/ReadVariableOpReadVariableOp)dense_6041_matmul_readvariableop_resource*
_output_shapes

:5*
dtype0�
dense_6041/MatMulMatMuldense_6040/Relu:activations:0(dense_6041/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_6041/BiasAdd/ReadVariableOpReadVariableOp*dense_6041_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6041/BiasAddBiasAdddense_6041/MatMul:product:0)dense_6041/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_6041/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_6038/BiasAdd/ReadVariableOp!^dense_6038/MatMul/ReadVariableOp"^dense_6039/BiasAdd/ReadVariableOp!^dense_6039/MatMul/ReadVariableOp"^dense_6040/BiasAdd/ReadVariableOp!^dense_6040/MatMul/ReadVariableOp"^dense_6041/BiasAdd/ReadVariableOp!^dense_6041/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������5: : : : : : : : 2F
!dense_6038/BiasAdd/ReadVariableOp!dense_6038/BiasAdd/ReadVariableOp2D
 dense_6038/MatMul/ReadVariableOp dense_6038/MatMul/ReadVariableOp2F
!dense_6039/BiasAdd/ReadVariableOp!dense_6039/BiasAdd/ReadVariableOp2D
 dense_6039/MatMul/ReadVariableOp dense_6039/MatMul/ReadVariableOp2F
!dense_6040/BiasAdd/ReadVariableOp!dense_6040/BiasAdd/ReadVariableOp2D
 dense_6040/MatMul/ReadVariableOp dense_6040/MatMul/ReadVariableOp2F
!dense_6041/BiasAdd/ReadVariableOp!dense_6041/BiasAdd/ReadVariableOp2D
 dense_6041/MatMul/ReadVariableOp dense_6041/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�
�
-__inference_dense_6039_layer_call_fn_74095012

inputs
unknown:55
	unknown_0:5
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6039_layer_call_and_return_conditional_losses_74094611o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������5`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�}
�
$__inference__traced_restore_74095281
file_prefix4
"assignvariableop_dense_6038_kernel:550
"assignvariableop_1_dense_6038_bias:56
$assignvariableop_2_dense_6039_kernel:550
"assignvariableop_3_dense_6039_bias:56
$assignvariableop_4_dense_6040_kernel:550
"assignvariableop_5_dense_6040_bias:56
$assignvariableop_6_dense_6041_kernel:50
"assignvariableop_7_dense_6041_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: >
,assignvariableop_15_adam_dense_6038_kernel_m:558
*assignvariableop_16_adam_dense_6038_bias_m:5>
,assignvariableop_17_adam_dense_6039_kernel_m:558
*assignvariableop_18_adam_dense_6039_bias_m:5>
,assignvariableop_19_adam_dense_6040_kernel_m:558
*assignvariableop_20_adam_dense_6040_bias_m:5>
,assignvariableop_21_adam_dense_6041_kernel_m:58
*assignvariableop_22_adam_dense_6041_bias_m:>
,assignvariableop_23_adam_dense_6038_kernel_v:558
*assignvariableop_24_adam_dense_6038_bias_v:5>
,assignvariableop_25_adam_dense_6039_kernel_v:558
*assignvariableop_26_adam_dense_6039_bias_v:5>
,assignvariableop_27_adam_dense_6040_kernel_v:558
*assignvariableop_28_adam_dense_6040_bias_v:5>
,assignvariableop_29_adam_dense_6041_kernel_v:58
*assignvariableop_30_adam_dense_6041_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_6038_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_6038_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_6039_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_6039_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_6040_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_6040_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_6041_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_6041_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_6038_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_6038_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_6039_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_6039_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_6040_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_6040_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_6041_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_6041_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_6038_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_6038_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_dense_6039_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_6039_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_dense_6040_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_6040_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_dense_6041_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_6041_bias_vIdentity_30:output:0"/device:CPU:0*
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
�	
�
2__inference_sequential_2264_layer_call_fn_74094896

inputs
unknown:55
	unknown_0:5
	unknown_1:55
	unknown_2:5
	unknown_3:55
	unknown_4:5
	unknown_5:5
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
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094758o
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
#:���������5: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�
�
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094823
dense_6038_input%
dense_6038_74094802:55!
dense_6038_74094804:5%
dense_6039_74094807:55!
dense_6039_74094809:5%
dense_6040_74094812:55!
dense_6040_74094814:5%
dense_6041_74094817:5!
dense_6041_74094819:
identity��"dense_6038/StatefulPartitionedCall�"dense_6039/StatefulPartitionedCall�"dense_6040/StatefulPartitionedCall�"dense_6041/StatefulPartitionedCallj
dense_6038/CastCastdense_6038_input*

DstT0*

SrcT0*'
_output_shapes
:���������5�
"dense_6038/StatefulPartitionedCallStatefulPartitionedCalldense_6038/Cast:y:0dense_6038_74094802dense_6038_74094804*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6038_layer_call_and_return_conditional_losses_74094594�
"dense_6039/StatefulPartitionedCallStatefulPartitionedCall+dense_6038/StatefulPartitionedCall:output:0dense_6039_74094807dense_6039_74094809*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6039_layer_call_and_return_conditional_losses_74094611�
"dense_6040/StatefulPartitionedCallStatefulPartitionedCall+dense_6039/StatefulPartitionedCall:output:0dense_6040_74094812dense_6040_74094814*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6040_layer_call_and_return_conditional_losses_74094628�
"dense_6041/StatefulPartitionedCallStatefulPartitionedCall+dense_6040/StatefulPartitionedCall:output:0dense_6041_74094817dense_6041_74094819*
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
H__inference_dense_6041_layer_call_and_return_conditional_losses_74094644z
IdentityIdentity+dense_6041/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_6038/StatefulPartitionedCall#^dense_6039/StatefulPartitionedCall#^dense_6040/StatefulPartitionedCall#^dense_6041/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������5: : : : : : : : 2H
"dense_6038/StatefulPartitionedCall"dense_6038/StatefulPartitionedCall2H
"dense_6039/StatefulPartitionedCall"dense_6039/StatefulPartitionedCall2H
"dense_6040/StatefulPartitionedCall"dense_6040/StatefulPartitionedCall2H
"dense_6041/StatefulPartitionedCall"dense_6041/StatefulPartitionedCall:Y U
'
_output_shapes
:���������5
*
_user_specified_namedense_6038_input
�
�
-__inference_dense_6041_layer_call_fn_74095052

inputs
unknown:5
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
H__inference_dense_6041_layer_call_and_return_conditional_losses_74094644o
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
:���������5: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�
�
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094758

inputs%
dense_6038_74094737:55!
dense_6038_74094739:5%
dense_6039_74094742:55!
dense_6039_74094744:5%
dense_6040_74094747:55!
dense_6040_74094749:5%
dense_6041_74094752:5!
dense_6041_74094754:
identity��"dense_6038/StatefulPartitionedCall�"dense_6039/StatefulPartitionedCall�"dense_6040/StatefulPartitionedCall�"dense_6041/StatefulPartitionedCall`
dense_6038/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������5�
"dense_6038/StatefulPartitionedCallStatefulPartitionedCalldense_6038/Cast:y:0dense_6038_74094737dense_6038_74094739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6038_layer_call_and_return_conditional_losses_74094594�
"dense_6039/StatefulPartitionedCallStatefulPartitionedCall+dense_6038/StatefulPartitionedCall:output:0dense_6039_74094742dense_6039_74094744*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6039_layer_call_and_return_conditional_losses_74094611�
"dense_6040/StatefulPartitionedCallStatefulPartitionedCall+dense_6039/StatefulPartitionedCall:output:0dense_6040_74094747dense_6040_74094749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6040_layer_call_and_return_conditional_losses_74094628�
"dense_6041/StatefulPartitionedCallStatefulPartitionedCall+dense_6040/StatefulPartitionedCall:output:0dense_6041_74094752dense_6041_74094754*
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
H__inference_dense_6041_layer_call_and_return_conditional_losses_74094644z
IdentityIdentity+dense_6041/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_6038/StatefulPartitionedCall#^dense_6039/StatefulPartitionedCall#^dense_6040/StatefulPartitionedCall#^dense_6041/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������5: : : : : : : : 2H
"dense_6038/StatefulPartitionedCall"dense_6038/StatefulPartitionedCall2H
"dense_6039/StatefulPartitionedCall"dense_6039/StatefulPartitionedCall2H
"dense_6040/StatefulPartitionedCall"dense_6040/StatefulPartitionedCall2H
"dense_6041/StatefulPartitionedCall"dense_6041/StatefulPartitionedCall:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�

�
H__inference_dense_6040_layer_call_and_return_conditional_losses_74095043

inputs0
matmul_readvariableop_resource:55-
biasadd_readvariableop_resource:5
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:55*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������5a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������5w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�	
�
H__inference_dense_6041_layer_call_and_return_conditional_losses_74095062

inputs0
matmul_readvariableop_resource:5-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:5*
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
:���������5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�
�
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094651

inputs%
dense_6038_74094595:55!
dense_6038_74094597:5%
dense_6039_74094612:55!
dense_6039_74094614:5%
dense_6040_74094629:55!
dense_6040_74094631:5%
dense_6041_74094645:5!
dense_6041_74094647:
identity��"dense_6038/StatefulPartitionedCall�"dense_6039/StatefulPartitionedCall�"dense_6040/StatefulPartitionedCall�"dense_6041/StatefulPartitionedCall`
dense_6038/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������5�
"dense_6038/StatefulPartitionedCallStatefulPartitionedCalldense_6038/Cast:y:0dense_6038_74094595dense_6038_74094597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6038_layer_call_and_return_conditional_losses_74094594�
"dense_6039/StatefulPartitionedCallStatefulPartitionedCall+dense_6038/StatefulPartitionedCall:output:0dense_6039_74094612dense_6039_74094614*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6039_layer_call_and_return_conditional_losses_74094611�
"dense_6040/StatefulPartitionedCallStatefulPartitionedCall+dense_6039/StatefulPartitionedCall:output:0dense_6040_74094629dense_6040_74094631*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6040_layer_call_and_return_conditional_losses_74094628�
"dense_6041/StatefulPartitionedCallStatefulPartitionedCall+dense_6040/StatefulPartitionedCall:output:0dense_6041_74094645dense_6041_74094647*
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
H__inference_dense_6041_layer_call_and_return_conditional_losses_74094644z
IdentityIdentity+dense_6041/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_6038/StatefulPartitionedCall#^dense_6039/StatefulPartitionedCall#^dense_6040/StatefulPartitionedCall#^dense_6041/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������5: : : : : : : : 2H
"dense_6038/StatefulPartitionedCall"dense_6038/StatefulPartitionedCall2H
"dense_6039/StatefulPartitionedCall"dense_6039/StatefulPartitionedCall2H
"dense_6040/StatefulPartitionedCall"dense_6040/StatefulPartitionedCall2H
"dense_6041/StatefulPartitionedCall"dense_6041/StatefulPartitionedCall:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�
�
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094848
dense_6038_input%
dense_6038_74094827:55!
dense_6038_74094829:5%
dense_6039_74094832:55!
dense_6039_74094834:5%
dense_6040_74094837:55!
dense_6040_74094839:5%
dense_6041_74094842:5!
dense_6041_74094844:
identity��"dense_6038/StatefulPartitionedCall�"dense_6039/StatefulPartitionedCall�"dense_6040/StatefulPartitionedCall�"dense_6041/StatefulPartitionedCallj
dense_6038/CastCastdense_6038_input*

DstT0*

SrcT0*'
_output_shapes
:���������5�
"dense_6038/StatefulPartitionedCallStatefulPartitionedCalldense_6038/Cast:y:0dense_6038_74094827dense_6038_74094829*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6038_layer_call_and_return_conditional_losses_74094594�
"dense_6039/StatefulPartitionedCallStatefulPartitionedCall+dense_6038/StatefulPartitionedCall:output:0dense_6039_74094832dense_6039_74094834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6039_layer_call_and_return_conditional_losses_74094611�
"dense_6040/StatefulPartitionedCallStatefulPartitionedCall+dense_6039/StatefulPartitionedCall:output:0dense_6040_74094837dense_6040_74094839*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6040_layer_call_and_return_conditional_losses_74094628�
"dense_6041/StatefulPartitionedCallStatefulPartitionedCall+dense_6040/StatefulPartitionedCall:output:0dense_6041_74094842dense_6041_74094844*
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
H__inference_dense_6041_layer_call_and_return_conditional_losses_74094644z
IdentityIdentity+dense_6041/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_6038/StatefulPartitionedCall#^dense_6039/StatefulPartitionedCall#^dense_6040/StatefulPartitionedCall#^dense_6041/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������5: : : : : : : : 2H
"dense_6038/StatefulPartitionedCall"dense_6038/StatefulPartitionedCall2H
"dense_6039/StatefulPartitionedCall"dense_6039/StatefulPartitionedCall2H
"dense_6040/StatefulPartitionedCall"dense_6040/StatefulPartitionedCall2H
"dense_6041/StatefulPartitionedCall"dense_6041/StatefulPartitionedCall:Y U
'
_output_shapes
:���������5
*
_user_specified_namedense_6038_input
�
�
-__inference_dense_6040_layer_call_fn_74095032

inputs
unknown:55
	unknown_0:5
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_6040_layer_call_and_return_conditional_losses_74094628o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������5`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�	
�
H__inference_dense_6041_layer_call_and_return_conditional_losses_74094644

inputs0
matmul_readvariableop_resource:5-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:5*
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
:���������5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�

�
H__inference_dense_6039_layer_call_and_return_conditional_losses_74094611

inputs0
matmul_readvariableop_resource:55-
biasadd_readvariableop_resource:5
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:55*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������5a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������5w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�

�
H__inference_dense_6038_layer_call_and_return_conditional_losses_74094594

inputs0
matmul_readvariableop_resource:55-
biasadd_readvariableop_resource:5
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:55*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������5a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������5w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
_user_specified_nameinputs
�	
�
2__inference_sequential_2264_layer_call_fn_74094670
dense_6038_input
unknown:55
	unknown_0:5
	unknown_1:55
	unknown_2:5
	unknown_3:55
	unknown_4:5
	unknown_5:5
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_6038_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094651o
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
#:���������5: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������5
*
_user_specified_namedense_6038_input
�	
�
&__inference_signature_wrapper_74094983
dense_6038_input
unknown:55
	unknown_0:5
	unknown_1:55
	unknown_2:5
	unknown_3:55
	unknown_4:5
	unknown_5:5
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_6038_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
#__inference__wrapped_model_74094575o
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
#:���������5: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������5
*
_user_specified_namedense_6038_input
�

�
H__inference_dense_6040_layer_call_and_return_conditional_losses_74094628

inputs0
matmul_readvariableop_resource:55-
biasadd_readvariableop_resource:5
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:55*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������5P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������5a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������5w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������5: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������5
 
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
dense_6038_input9
"serving_default_dense_6038_input:0���������5>

dense_60410
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
2__inference_sequential_2264_layer_call_fn_74094670
2__inference_sequential_2264_layer_call_fn_74094875
2__inference_sequential_2264_layer_call_fn_74094896
2__inference_sequential_2264_layer_call_fn_74094798�
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
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094928
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094960
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094823
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094848�
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
#__inference__wrapped_model_74094575dense_6038_input"�
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
#:!552dense_6038/kernel
:52dense_6038/bias
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
-__inference_dense_6038_layer_call_fn_74094992�
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
H__inference_dense_6038_layer_call_and_return_conditional_losses_74095003�
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
#:!552dense_6039/kernel
:52dense_6039/bias
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
-__inference_dense_6039_layer_call_fn_74095012�
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
H__inference_dense_6039_layer_call_and_return_conditional_losses_74095023�
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
#:!552dense_6040/kernel
:52dense_6040/bias
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
-__inference_dense_6040_layer_call_fn_74095032�
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
H__inference_dense_6040_layer_call_and_return_conditional_losses_74095043�
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
#:!52dense_6041/kernel
:2dense_6041/bias
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
-__inference_dense_6041_layer_call_fn_74095052�
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
H__inference_dense_6041_layer_call_and_return_conditional_losses_74095062�
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
&__inference_signature_wrapper_74094983dense_6038_input"�
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
(:&552Adam/dense_6038/kernel/m
": 52Adam/dense_6038/bias/m
(:&552Adam/dense_6039/kernel/m
": 52Adam/dense_6039/bias/m
(:&552Adam/dense_6040/kernel/m
": 52Adam/dense_6040/bias/m
(:&52Adam/dense_6041/kernel/m
": 2Adam/dense_6041/bias/m
(:&552Adam/dense_6038/kernel/v
": 52Adam/dense_6038/bias/v
(:&552Adam/dense_6039/kernel/v
": 52Adam/dense_6039/bias/v
(:&552Adam/dense_6040/kernel/v
": 52Adam/dense_6040/bias/v
(:&52Adam/dense_6041/kernel/v
": 2Adam/dense_6041/bias/v�
#__inference__wrapped_model_74094575~&'9�6
/�,
*�'
dense_6038_input���������5
� "7�4
2

dense_6041$�!

dense_6041����������
H__inference_dense_6038_layer_call_and_return_conditional_losses_74095003\/�,
%�"
 �
inputs���������5
� "%�"
�
0���������5
� �
-__inference_dense_6038_layer_call_fn_74094992O/�,
%�"
 �
inputs���������5
� "����������5�
H__inference_dense_6039_layer_call_and_return_conditional_losses_74095023\/�,
%�"
 �
inputs���������5
� "%�"
�
0���������5
� �
-__inference_dense_6039_layer_call_fn_74095012O/�,
%�"
 �
inputs���������5
� "����������5�
H__inference_dense_6040_layer_call_and_return_conditional_losses_74095043\/�,
%�"
 �
inputs���������5
� "%�"
�
0���������5
� �
-__inference_dense_6040_layer_call_fn_74095032O/�,
%�"
 �
inputs���������5
� "����������5�
H__inference_dense_6041_layer_call_and_return_conditional_losses_74095062\&'/�,
%�"
 �
inputs���������5
� "%�"
�
0���������
� �
-__inference_dense_6041_layer_call_fn_74095052O&'/�,
%�"
 �
inputs���������5
� "�����������
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094823t&'A�>
7�4
*�'
dense_6038_input���������5
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094848t&'A�>
7�4
*�'
dense_6038_input���������5
p

 
� "%�"
�
0���������
� �
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094928j&'7�4
-�*
 �
inputs���������5
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_2264_layer_call_and_return_conditional_losses_74094960j&'7�4
-�*
 �
inputs���������5
p

 
� "%�"
�
0���������
� �
2__inference_sequential_2264_layer_call_fn_74094670g&'A�>
7�4
*�'
dense_6038_input���������5
p 

 
� "�����������
2__inference_sequential_2264_layer_call_fn_74094798g&'A�>
7�4
*�'
dense_6038_input���������5
p

 
� "�����������
2__inference_sequential_2264_layer_call_fn_74094875]&'7�4
-�*
 �
inputs���������5
p 

 
� "�����������
2__inference_sequential_2264_layer_call_fn_74094896]&'7�4
-�*
 �
inputs���������5
p

 
� "�����������
&__inference_signature_wrapper_74094983�&'M�J
� 
C�@
>
dense_6038_input*�'
dense_6038_input���������5"7�4
2

dense_6041$�!

dense_6041���������