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
dense_5422/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*"
shared_namedense_5422/kernel
w
%dense_5422/kernel/Read/ReadVariableOpReadVariableOpdense_5422/kernel*
_output_shapes

:GG*
dtype0
v
dense_5422/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:G* 
shared_namedense_5422/bias
o
#dense_5422/bias/Read/ReadVariableOpReadVariableOpdense_5422/bias*
_output_shapes
:G*
dtype0
~
dense_5423/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*"
shared_namedense_5423/kernel
w
%dense_5423/kernel/Read/ReadVariableOpReadVariableOpdense_5423/kernel*
_output_shapes

:GG*
dtype0
v
dense_5423/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:G* 
shared_namedense_5423/bias
o
#dense_5423/bias/Read/ReadVariableOpReadVariableOpdense_5423/bias*
_output_shapes
:G*
dtype0
~
dense_5424/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*"
shared_namedense_5424/kernel
w
%dense_5424/kernel/Read/ReadVariableOpReadVariableOpdense_5424/kernel*
_output_shapes

:GG*
dtype0
v
dense_5424/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:G* 
shared_namedense_5424/bias
o
#dense_5424/bias/Read/ReadVariableOpReadVariableOpdense_5424/bias*
_output_shapes
:G*
dtype0
~
dense_5425/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:G*"
shared_namedense_5425/kernel
w
%dense_5425/kernel/Read/ReadVariableOpReadVariableOpdense_5425/kernel*
_output_shapes

:G*
dtype0
v
dense_5425/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_5425/bias
o
#dense_5425/bias/Read/ReadVariableOpReadVariableOpdense_5425/bias*
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
Adam/dense_5422/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*)
shared_nameAdam/dense_5422/kernel/m
�
,Adam/dense_5422/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5422/kernel/m*
_output_shapes

:GG*
dtype0
�
Adam/dense_5422/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:G*'
shared_nameAdam/dense_5422/bias/m
}
*Adam/dense_5422/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5422/bias/m*
_output_shapes
:G*
dtype0
�
Adam/dense_5423/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*)
shared_nameAdam/dense_5423/kernel/m
�
,Adam/dense_5423/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5423/kernel/m*
_output_shapes

:GG*
dtype0
�
Adam/dense_5423/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:G*'
shared_nameAdam/dense_5423/bias/m
}
*Adam/dense_5423/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5423/bias/m*
_output_shapes
:G*
dtype0
�
Adam/dense_5424/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*)
shared_nameAdam/dense_5424/kernel/m
�
,Adam/dense_5424/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5424/kernel/m*
_output_shapes

:GG*
dtype0
�
Adam/dense_5424/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:G*'
shared_nameAdam/dense_5424/bias/m
}
*Adam/dense_5424/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5424/bias/m*
_output_shapes
:G*
dtype0
�
Adam/dense_5425/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:G*)
shared_nameAdam/dense_5425/kernel/m
�
,Adam/dense_5425/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5425/kernel/m*
_output_shapes

:G*
dtype0
�
Adam/dense_5425/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_5425/bias/m
}
*Adam/dense_5425/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5425/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_5422/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*)
shared_nameAdam/dense_5422/kernel/v
�
,Adam/dense_5422/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5422/kernel/v*
_output_shapes

:GG*
dtype0
�
Adam/dense_5422/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:G*'
shared_nameAdam/dense_5422/bias/v
}
*Adam/dense_5422/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5422/bias/v*
_output_shapes
:G*
dtype0
�
Adam/dense_5423/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*)
shared_nameAdam/dense_5423/kernel/v
�
,Adam/dense_5423/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5423/kernel/v*
_output_shapes

:GG*
dtype0
�
Adam/dense_5423/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:G*'
shared_nameAdam/dense_5423/bias/v
}
*Adam/dense_5423/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5423/bias/v*
_output_shapes
:G*
dtype0
�
Adam/dense_5424/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:GG*)
shared_nameAdam/dense_5424/kernel/v
�
,Adam/dense_5424/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5424/kernel/v*
_output_shapes

:GG*
dtype0
�
Adam/dense_5424/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:G*'
shared_nameAdam/dense_5424/bias/v
}
*Adam/dense_5424/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5424/bias/v*
_output_shapes
:G*
dtype0
�
Adam/dense_5425/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:G*)
shared_nameAdam/dense_5425/kernel/v
�
,Adam/dense_5425/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5425/kernel/v*
_output_shapes

:G*
dtype0
�
Adam/dense_5425/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_5425/bias/v
}
*Adam/dense_5425/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5425/bias/v*
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
VARIABLE_VALUEdense_5422/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5422/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_5423/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5423/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_5424/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5424/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_5425/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5425/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_5422/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5422/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5423/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5423/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5424/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5424/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5425/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5425/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5422/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5422/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5423/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5423/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5424/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5424/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/dense_5425/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense_5425/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_dense_5422_inputPlaceholder*'
_output_shapes
:���������G*
dtype0*
shape:���������G
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_5422_inputdense_5422/kerneldense_5422/biasdense_5423/kerneldense_5423/biasdense_5424/kerneldense_5424/biasdense_5425/kerneldense_5425/bias*
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
&__inference_signature_wrapper_69112087
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_5422/kernel/Read/ReadVariableOp#dense_5422/bias/Read/ReadVariableOp%dense_5423/kernel/Read/ReadVariableOp#dense_5423/bias/Read/ReadVariableOp%dense_5424/kernel/Read/ReadVariableOp#dense_5424/bias/Read/ReadVariableOp%dense_5425/kernel/Read/ReadVariableOp#dense_5425/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_5422/kernel/m/Read/ReadVariableOp*Adam/dense_5422/bias/m/Read/ReadVariableOp,Adam/dense_5423/kernel/m/Read/ReadVariableOp*Adam/dense_5423/bias/m/Read/ReadVariableOp,Adam/dense_5424/kernel/m/Read/ReadVariableOp*Adam/dense_5424/bias/m/Read/ReadVariableOp,Adam/dense_5425/kernel/m/Read/ReadVariableOp*Adam/dense_5425/bias/m/Read/ReadVariableOp,Adam/dense_5422/kernel/v/Read/ReadVariableOp*Adam/dense_5422/bias/v/Read/ReadVariableOp,Adam/dense_5423/kernel/v/Read/ReadVariableOp*Adam/dense_5423/bias/v/Read/ReadVariableOp,Adam/dense_5424/kernel/v/Read/ReadVariableOp*Adam/dense_5424/bias/v/Read/ReadVariableOp,Adam/dense_5425/kernel/v/Read/ReadVariableOp*Adam/dense_5425/bias/v/Read/ReadVariableOpConst*,
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
!__inference__traced_save_69112282
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5422/kerneldense_5422/biasdense_5423/kerneldense_5423/biasdense_5424/kerneldense_5424/biasdense_5425/kerneldense_5425/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_5422/kernel/mAdam/dense_5422/bias/mAdam/dense_5423/kernel/mAdam/dense_5423/bias/mAdam/dense_5424/kernel/mAdam/dense_5424/bias/mAdam/dense_5425/kernel/mAdam/dense_5425/bias/mAdam/dense_5422/kernel/vAdam/dense_5422/bias/vAdam/dense_5423/kernel/vAdam/dense_5423/bias/vAdam/dense_5424/kernel/vAdam/dense_5424/bias/vAdam/dense_5425/kernel/vAdam/dense_5425/bias/v*+
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
$__inference__traced_restore_69112385��
�
�
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111862

inputs%
dense_5422_69111841:GG!
dense_5422_69111843:G%
dense_5423_69111846:GG!
dense_5423_69111848:G%
dense_5424_69111851:GG!
dense_5424_69111853:G%
dense_5425_69111856:G!
dense_5425_69111858:
identity��"dense_5422/StatefulPartitionedCall�"dense_5423/StatefulPartitionedCall�"dense_5424/StatefulPartitionedCall�"dense_5425/StatefulPartitionedCall`
dense_5422/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������G�
"dense_5422/StatefulPartitionedCallStatefulPartitionedCalldense_5422/Cast:y:0dense_5422_69111841dense_5422_69111843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5422_layer_call_and_return_conditional_losses_69111698�
"dense_5423/StatefulPartitionedCallStatefulPartitionedCall+dense_5422/StatefulPartitionedCall:output:0dense_5423_69111846dense_5423_69111848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5423_layer_call_and_return_conditional_losses_69111715�
"dense_5424/StatefulPartitionedCallStatefulPartitionedCall+dense_5423/StatefulPartitionedCall:output:0dense_5424_69111851dense_5424_69111853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5424_layer_call_and_return_conditional_losses_69111732�
"dense_5425/StatefulPartitionedCallStatefulPartitionedCall+dense_5424/StatefulPartitionedCall:output:0dense_5425_69111856dense_5425_69111858*
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
H__inference_dense_5425_layer_call_and_return_conditional_losses_69111748z
IdentityIdentity+dense_5425/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5422/StatefulPartitionedCall#^dense_5423/StatefulPartitionedCall#^dense_5424/StatefulPartitionedCall#^dense_5425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������G: : : : : : : : 2H
"dense_5422/StatefulPartitionedCall"dense_5422/StatefulPartitionedCall2H
"dense_5423/StatefulPartitionedCall"dense_5423/StatefulPartitionedCall2H
"dense_5424/StatefulPartitionedCall"dense_5424/StatefulPartitionedCall2H
"dense_5425/StatefulPartitionedCall"dense_5425/StatefulPartitionedCall:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�
�
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111952
dense_5422_input%
dense_5422_69111931:GG!
dense_5422_69111933:G%
dense_5423_69111936:GG!
dense_5423_69111938:G%
dense_5424_69111941:GG!
dense_5424_69111943:G%
dense_5425_69111946:G!
dense_5425_69111948:
identity��"dense_5422/StatefulPartitionedCall�"dense_5423/StatefulPartitionedCall�"dense_5424/StatefulPartitionedCall�"dense_5425/StatefulPartitionedCallj
dense_5422/CastCastdense_5422_input*

DstT0*

SrcT0*'
_output_shapes
:���������G�
"dense_5422/StatefulPartitionedCallStatefulPartitionedCalldense_5422/Cast:y:0dense_5422_69111931dense_5422_69111933*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5422_layer_call_and_return_conditional_losses_69111698�
"dense_5423/StatefulPartitionedCallStatefulPartitionedCall+dense_5422/StatefulPartitionedCall:output:0dense_5423_69111936dense_5423_69111938*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5423_layer_call_and_return_conditional_losses_69111715�
"dense_5424/StatefulPartitionedCallStatefulPartitionedCall+dense_5423/StatefulPartitionedCall:output:0dense_5424_69111941dense_5424_69111943*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5424_layer_call_and_return_conditional_losses_69111732�
"dense_5425/StatefulPartitionedCallStatefulPartitionedCall+dense_5424/StatefulPartitionedCall:output:0dense_5425_69111946dense_5425_69111948*
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
H__inference_dense_5425_layer_call_and_return_conditional_losses_69111748z
IdentityIdentity+dense_5425/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5422/StatefulPartitionedCall#^dense_5423/StatefulPartitionedCall#^dense_5424/StatefulPartitionedCall#^dense_5425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������G: : : : : : : : 2H
"dense_5422/StatefulPartitionedCall"dense_5422/StatefulPartitionedCall2H
"dense_5423/StatefulPartitionedCall"dense_5423/StatefulPartitionedCall2H
"dense_5424/StatefulPartitionedCall"dense_5424/StatefulPartitionedCall2H
"dense_5425/StatefulPartitionedCall"dense_5425/StatefulPartitionedCall:Y U
'
_output_shapes
:���������G
*
_user_specified_namedense_5422_input
�	
�
H__inference_dense_5425_layer_call_and_return_conditional_losses_69112166

inputs0
matmul_readvariableop_resource:G-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:G*
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
:���������G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�
�
-__inference_dense_5422_layer_call_fn_69112096

inputs
unknown:GG
	unknown_0:G
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5422_layer_call_and_return_conditional_losses_69111698o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������G`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�
�
-__inference_dense_5423_layer_call_fn_69112116

inputs
unknown:GG
	unknown_0:G
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5423_layer_call_and_return_conditional_losses_69111715o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������G`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�	
�
&__inference_signature_wrapper_69112087
dense_5422_input
unknown:GG
	unknown_0:G
	unknown_1:GG
	unknown_2:G
	unknown_3:GG
	unknown_4:G
	unknown_5:G
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5422_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
#__inference__wrapped_model_69111679o
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
#:���������G: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������G
*
_user_specified_namedense_5422_input
�
�
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111755

inputs%
dense_5422_69111699:GG!
dense_5422_69111701:G%
dense_5423_69111716:GG!
dense_5423_69111718:G%
dense_5424_69111733:GG!
dense_5424_69111735:G%
dense_5425_69111749:G!
dense_5425_69111751:
identity��"dense_5422/StatefulPartitionedCall�"dense_5423/StatefulPartitionedCall�"dense_5424/StatefulPartitionedCall�"dense_5425/StatefulPartitionedCall`
dense_5422/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������G�
"dense_5422/StatefulPartitionedCallStatefulPartitionedCalldense_5422/Cast:y:0dense_5422_69111699dense_5422_69111701*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5422_layer_call_and_return_conditional_losses_69111698�
"dense_5423/StatefulPartitionedCallStatefulPartitionedCall+dense_5422/StatefulPartitionedCall:output:0dense_5423_69111716dense_5423_69111718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5423_layer_call_and_return_conditional_losses_69111715�
"dense_5424/StatefulPartitionedCallStatefulPartitionedCall+dense_5423/StatefulPartitionedCall:output:0dense_5424_69111733dense_5424_69111735*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5424_layer_call_and_return_conditional_losses_69111732�
"dense_5425/StatefulPartitionedCallStatefulPartitionedCall+dense_5424/StatefulPartitionedCall:output:0dense_5425_69111749dense_5425_69111751*
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
H__inference_dense_5425_layer_call_and_return_conditional_losses_69111748z
IdentityIdentity+dense_5425/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5422/StatefulPartitionedCall#^dense_5423/StatefulPartitionedCall#^dense_5424/StatefulPartitionedCall#^dense_5425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������G: : : : : : : : 2H
"dense_5422/StatefulPartitionedCall"dense_5422/StatefulPartitionedCall2H
"dense_5423/StatefulPartitionedCall"dense_5423/StatefulPartitionedCall2H
"dense_5424/StatefulPartitionedCall"dense_5424/StatefulPartitionedCall2H
"dense_5425/StatefulPartitionedCall"dense_5425/StatefulPartitionedCall:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�

�
H__inference_dense_5422_layer_call_and_return_conditional_losses_69111698

inputs0
matmul_readvariableop_resource:GG-
biasadd_readvariableop_resource:G
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:GG*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:G*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������GP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Ga
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Gw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�D
�
!__inference__traced_save_69112282
file_prefix0
,savev2_dense_5422_kernel_read_readvariableop.
*savev2_dense_5422_bias_read_readvariableop0
,savev2_dense_5423_kernel_read_readvariableop.
*savev2_dense_5423_bias_read_readvariableop0
,savev2_dense_5424_kernel_read_readvariableop.
*savev2_dense_5424_bias_read_readvariableop0
,savev2_dense_5425_kernel_read_readvariableop.
*savev2_dense_5425_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_5422_kernel_m_read_readvariableop5
1savev2_adam_dense_5422_bias_m_read_readvariableop7
3savev2_adam_dense_5423_kernel_m_read_readvariableop5
1savev2_adam_dense_5423_bias_m_read_readvariableop7
3savev2_adam_dense_5424_kernel_m_read_readvariableop5
1savev2_adam_dense_5424_bias_m_read_readvariableop7
3savev2_adam_dense_5425_kernel_m_read_readvariableop5
1savev2_adam_dense_5425_bias_m_read_readvariableop7
3savev2_adam_dense_5422_kernel_v_read_readvariableop5
1savev2_adam_dense_5422_bias_v_read_readvariableop7
3savev2_adam_dense_5423_kernel_v_read_readvariableop5
1savev2_adam_dense_5423_bias_v_read_readvariableop7
3savev2_adam_dense_5424_kernel_v_read_readvariableop5
1savev2_adam_dense_5424_bias_v_read_readvariableop7
3savev2_adam_dense_5425_kernel_v_read_readvariableop5
1savev2_adam_dense_5425_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_5422_kernel_read_readvariableop*savev2_dense_5422_bias_read_readvariableop,savev2_dense_5423_kernel_read_readvariableop*savev2_dense_5423_bias_read_readvariableop,savev2_dense_5424_kernel_read_readvariableop*savev2_dense_5424_bias_read_readvariableop,savev2_dense_5425_kernel_read_readvariableop*savev2_dense_5425_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_5422_kernel_m_read_readvariableop1savev2_adam_dense_5422_bias_m_read_readvariableop3savev2_adam_dense_5423_kernel_m_read_readvariableop1savev2_adam_dense_5423_bias_m_read_readvariableop3savev2_adam_dense_5424_kernel_m_read_readvariableop1savev2_adam_dense_5424_bias_m_read_readvariableop3savev2_adam_dense_5425_kernel_m_read_readvariableop1savev2_adam_dense_5425_bias_m_read_readvariableop3savev2_adam_dense_5422_kernel_v_read_readvariableop1savev2_adam_dense_5422_bias_v_read_readvariableop3savev2_adam_dense_5423_kernel_v_read_readvariableop1savev2_adam_dense_5423_bias_v_read_readvariableop3savev2_adam_dense_5424_kernel_v_read_readvariableop1savev2_adam_dense_5424_bias_v_read_readvariableop3savev2_adam_dense_5425_kernel_v_read_readvariableop1savev2_adam_dense_5425_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�: :GG:G:GG:G:GG:G:G:: : : : : : : :GG:G:GG:G:GG:G:G::GG:G:GG:G:GG:G:G:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:GG: 

_output_shapes
:G:$ 

_output_shapes

:GG: 

_output_shapes
:G:$ 

_output_shapes

:GG: 

_output_shapes
:G:$ 

_output_shapes

:G: 
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

:GG: 

_output_shapes
:G:$ 

_output_shapes

:GG: 

_output_shapes
:G:$ 

_output_shapes

:GG: 

_output_shapes
:G:$ 

_output_shapes

:G: 

_output_shapes
::$ 

_output_shapes

:GG: 

_output_shapes
:G:$ 

_output_shapes

:GG: 

_output_shapes
:G:$ 

_output_shapes

:GG: 

_output_shapes
:G:$ 

_output_shapes

:G: 

_output_shapes
:: 

_output_shapes
: 
�}
�
$__inference__traced_restore_69112385
file_prefix4
"assignvariableop_dense_5422_kernel:GG0
"assignvariableop_1_dense_5422_bias:G6
$assignvariableop_2_dense_5423_kernel:GG0
"assignvariableop_3_dense_5423_bias:G6
$assignvariableop_4_dense_5424_kernel:GG0
"assignvariableop_5_dense_5424_bias:G6
$assignvariableop_6_dense_5425_kernel:G0
"assignvariableop_7_dense_5425_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: >
,assignvariableop_15_adam_dense_5422_kernel_m:GG8
*assignvariableop_16_adam_dense_5422_bias_m:G>
,assignvariableop_17_adam_dense_5423_kernel_m:GG8
*assignvariableop_18_adam_dense_5423_bias_m:G>
,assignvariableop_19_adam_dense_5424_kernel_m:GG8
*assignvariableop_20_adam_dense_5424_bias_m:G>
,assignvariableop_21_adam_dense_5425_kernel_m:G8
*assignvariableop_22_adam_dense_5425_bias_m:>
,assignvariableop_23_adam_dense_5422_kernel_v:GG8
*assignvariableop_24_adam_dense_5422_bias_v:G>
,assignvariableop_25_adam_dense_5423_kernel_v:GG8
*assignvariableop_26_adam_dense_5423_bias_v:G>
,assignvariableop_27_adam_dense_5424_kernel_v:GG8
*assignvariableop_28_adam_dense_5424_bias_v:G>
,assignvariableop_29_adam_dense_5425_kernel_v:G8
*assignvariableop_30_adam_dense_5425_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_5422_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_5422_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_5423_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_5423_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_5424_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_5424_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_5425_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_5425_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_5422_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_5422_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_5423_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_5423_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_5424_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_5424_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_5425_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_5425_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_5422_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_5422_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_dense_5423_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_5423_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_dense_5424_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_5424_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_dense_5425_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_5425_bias_vIdentity_30:output:0"/device:CPU:0*
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

�
H__inference_dense_5424_layer_call_and_return_conditional_losses_69111732

inputs0
matmul_readvariableop_resource:GG-
biasadd_readvariableop_resource:G
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:GG*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:G*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������GP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Ga
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Gw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�0
�
#__inference__wrapped_model_69111679
dense_5422_inputK
9sequential_2110_dense_5422_matmul_readvariableop_resource:GGH
:sequential_2110_dense_5422_biasadd_readvariableop_resource:GK
9sequential_2110_dense_5423_matmul_readvariableop_resource:GGH
:sequential_2110_dense_5423_biasadd_readvariableop_resource:GK
9sequential_2110_dense_5424_matmul_readvariableop_resource:GGH
:sequential_2110_dense_5424_biasadd_readvariableop_resource:GK
9sequential_2110_dense_5425_matmul_readvariableop_resource:GH
:sequential_2110_dense_5425_biasadd_readvariableop_resource:
identity��1sequential_2110/dense_5422/BiasAdd/ReadVariableOp�0sequential_2110/dense_5422/MatMul/ReadVariableOp�1sequential_2110/dense_5423/BiasAdd/ReadVariableOp�0sequential_2110/dense_5423/MatMul/ReadVariableOp�1sequential_2110/dense_5424/BiasAdd/ReadVariableOp�0sequential_2110/dense_5424/MatMul/ReadVariableOp�1sequential_2110/dense_5425/BiasAdd/ReadVariableOp�0sequential_2110/dense_5425/MatMul/ReadVariableOpz
sequential_2110/dense_5422/CastCastdense_5422_input*

DstT0*

SrcT0*'
_output_shapes
:���������G�
0sequential_2110/dense_5422/MatMul/ReadVariableOpReadVariableOp9sequential_2110_dense_5422_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
!sequential_2110/dense_5422/MatMulMatMul#sequential_2110/dense_5422/Cast:y:08sequential_2110/dense_5422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
1sequential_2110/dense_5422/BiasAdd/ReadVariableOpReadVariableOp:sequential_2110_dense_5422_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
"sequential_2110/dense_5422/BiasAddBiasAdd+sequential_2110/dense_5422/MatMul:product:09sequential_2110/dense_5422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
sequential_2110/dense_5422/ReluRelu+sequential_2110/dense_5422/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
0sequential_2110/dense_5423/MatMul/ReadVariableOpReadVariableOp9sequential_2110_dense_5423_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
!sequential_2110/dense_5423/MatMulMatMul-sequential_2110/dense_5422/Relu:activations:08sequential_2110/dense_5423/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
1sequential_2110/dense_5423/BiasAdd/ReadVariableOpReadVariableOp:sequential_2110_dense_5423_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
"sequential_2110/dense_5423/BiasAddBiasAdd+sequential_2110/dense_5423/MatMul:product:09sequential_2110/dense_5423/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
sequential_2110/dense_5423/ReluRelu+sequential_2110/dense_5423/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
0sequential_2110/dense_5424/MatMul/ReadVariableOpReadVariableOp9sequential_2110_dense_5424_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
!sequential_2110/dense_5424/MatMulMatMul-sequential_2110/dense_5423/Relu:activations:08sequential_2110/dense_5424/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
1sequential_2110/dense_5424/BiasAdd/ReadVariableOpReadVariableOp:sequential_2110_dense_5424_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
"sequential_2110/dense_5424/BiasAddBiasAdd+sequential_2110/dense_5424/MatMul:product:09sequential_2110/dense_5424/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
sequential_2110/dense_5424/ReluRelu+sequential_2110/dense_5424/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
0sequential_2110/dense_5425/MatMul/ReadVariableOpReadVariableOp9sequential_2110_dense_5425_matmul_readvariableop_resource*
_output_shapes

:G*
dtype0�
!sequential_2110/dense_5425/MatMulMatMul-sequential_2110/dense_5424/Relu:activations:08sequential_2110/dense_5425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_2110/dense_5425/BiasAdd/ReadVariableOpReadVariableOp:sequential_2110_dense_5425_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_2110/dense_5425/BiasAddBiasAdd+sequential_2110/dense_5425/MatMul:product:09sequential_2110/dense_5425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential_2110/dense_5425/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^sequential_2110/dense_5422/BiasAdd/ReadVariableOp1^sequential_2110/dense_5422/MatMul/ReadVariableOp2^sequential_2110/dense_5423/BiasAdd/ReadVariableOp1^sequential_2110/dense_5423/MatMul/ReadVariableOp2^sequential_2110/dense_5424/BiasAdd/ReadVariableOp1^sequential_2110/dense_5424/MatMul/ReadVariableOp2^sequential_2110/dense_5425/BiasAdd/ReadVariableOp1^sequential_2110/dense_5425/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������G: : : : : : : : 2f
1sequential_2110/dense_5422/BiasAdd/ReadVariableOp1sequential_2110/dense_5422/BiasAdd/ReadVariableOp2d
0sequential_2110/dense_5422/MatMul/ReadVariableOp0sequential_2110/dense_5422/MatMul/ReadVariableOp2f
1sequential_2110/dense_5423/BiasAdd/ReadVariableOp1sequential_2110/dense_5423/BiasAdd/ReadVariableOp2d
0sequential_2110/dense_5423/MatMul/ReadVariableOp0sequential_2110/dense_5423/MatMul/ReadVariableOp2f
1sequential_2110/dense_5424/BiasAdd/ReadVariableOp1sequential_2110/dense_5424/BiasAdd/ReadVariableOp2d
0sequential_2110/dense_5424/MatMul/ReadVariableOp0sequential_2110/dense_5424/MatMul/ReadVariableOp2f
1sequential_2110/dense_5425/BiasAdd/ReadVariableOp1sequential_2110/dense_5425/BiasAdd/ReadVariableOp2d
0sequential_2110/dense_5425/MatMul/ReadVariableOp0sequential_2110/dense_5425/MatMul/ReadVariableOp:Y U
'
_output_shapes
:���������G
*
_user_specified_namedense_5422_input
�

�
H__inference_dense_5424_layer_call_and_return_conditional_losses_69112147

inputs0
matmul_readvariableop_resource:GG-
biasadd_readvariableop_resource:G
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:GG*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:G*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������GP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Ga
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Gw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�	
�
2__inference_sequential_2110_layer_call_fn_69111979

inputs
unknown:GG
	unknown_0:G
	unknown_1:GG
	unknown_2:G
	unknown_3:GG
	unknown_4:G
	unknown_5:G
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
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111755o
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
#:���������G: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�

�
H__inference_dense_5423_layer_call_and_return_conditional_losses_69111715

inputs0
matmul_readvariableop_resource:GG-
biasadd_readvariableop_resource:G
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:GG*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:G*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������GP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Ga
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Gw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�	
�
2__inference_sequential_2110_layer_call_fn_69111774
dense_5422_input
unknown:GG
	unknown_0:G
	unknown_1:GG
	unknown_2:G
	unknown_3:GG
	unknown_4:G
	unknown_5:G
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5422_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111755o
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
#:���������G: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������G
*
_user_specified_namedense_5422_input
�	
�
2__inference_sequential_2110_layer_call_fn_69111902
dense_5422_input
unknown:GG
	unknown_0:G
	unknown_1:GG
	unknown_2:G
	unknown_3:GG
	unknown_4:G
	unknown_5:G
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5422_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111862o
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
#:���������G: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������G
*
_user_specified_namedense_5422_input
�%
�
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69112032

inputs;
)dense_5422_matmul_readvariableop_resource:GG8
*dense_5422_biasadd_readvariableop_resource:G;
)dense_5423_matmul_readvariableop_resource:GG8
*dense_5423_biasadd_readvariableop_resource:G;
)dense_5424_matmul_readvariableop_resource:GG8
*dense_5424_biasadd_readvariableop_resource:G;
)dense_5425_matmul_readvariableop_resource:G8
*dense_5425_biasadd_readvariableop_resource:
identity��!dense_5422/BiasAdd/ReadVariableOp� dense_5422/MatMul/ReadVariableOp�!dense_5423/BiasAdd/ReadVariableOp� dense_5423/MatMul/ReadVariableOp�!dense_5424/BiasAdd/ReadVariableOp� dense_5424/MatMul/ReadVariableOp�!dense_5425/BiasAdd/ReadVariableOp� dense_5425/MatMul/ReadVariableOp`
dense_5422/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������G�
 dense_5422/MatMul/ReadVariableOpReadVariableOp)dense_5422_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
dense_5422/MatMulMatMuldense_5422/Cast:y:0(dense_5422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
!dense_5422/BiasAdd/ReadVariableOpReadVariableOp*dense_5422_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
dense_5422/BiasAddBiasAdddense_5422/MatMul:product:0)dense_5422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gf
dense_5422/ReluReludense_5422/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
 dense_5423/MatMul/ReadVariableOpReadVariableOp)dense_5423_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
dense_5423/MatMulMatMuldense_5422/Relu:activations:0(dense_5423/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
!dense_5423/BiasAdd/ReadVariableOpReadVariableOp*dense_5423_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
dense_5423/BiasAddBiasAdddense_5423/MatMul:product:0)dense_5423/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gf
dense_5423/ReluReludense_5423/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
 dense_5424/MatMul/ReadVariableOpReadVariableOp)dense_5424_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
dense_5424/MatMulMatMuldense_5423/Relu:activations:0(dense_5424/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
!dense_5424/BiasAdd/ReadVariableOpReadVariableOp*dense_5424_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
dense_5424/BiasAddBiasAdddense_5424/MatMul:product:0)dense_5424/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gf
dense_5424/ReluReludense_5424/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
 dense_5425/MatMul/ReadVariableOpReadVariableOp)dense_5425_matmul_readvariableop_resource*
_output_shapes

:G*
dtype0�
dense_5425/MatMulMatMuldense_5424/Relu:activations:0(dense_5425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5425/BiasAdd/ReadVariableOpReadVariableOp*dense_5425_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5425/BiasAddBiasAdddense_5425/MatMul:product:0)dense_5425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_5425/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_5422/BiasAdd/ReadVariableOp!^dense_5422/MatMul/ReadVariableOp"^dense_5423/BiasAdd/ReadVariableOp!^dense_5423/MatMul/ReadVariableOp"^dense_5424/BiasAdd/ReadVariableOp!^dense_5424/MatMul/ReadVariableOp"^dense_5425/BiasAdd/ReadVariableOp!^dense_5425/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������G: : : : : : : : 2F
!dense_5422/BiasAdd/ReadVariableOp!dense_5422/BiasAdd/ReadVariableOp2D
 dense_5422/MatMul/ReadVariableOp dense_5422/MatMul/ReadVariableOp2F
!dense_5423/BiasAdd/ReadVariableOp!dense_5423/BiasAdd/ReadVariableOp2D
 dense_5423/MatMul/ReadVariableOp dense_5423/MatMul/ReadVariableOp2F
!dense_5424/BiasAdd/ReadVariableOp!dense_5424/BiasAdd/ReadVariableOp2D
 dense_5424/MatMul/ReadVariableOp dense_5424/MatMul/ReadVariableOp2F
!dense_5425/BiasAdd/ReadVariableOp!dense_5425/BiasAdd/ReadVariableOp2D
 dense_5425/MatMul/ReadVariableOp dense_5425/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�
�
-__inference_dense_5424_layer_call_fn_69112136

inputs
unknown:GG
	unknown_0:G
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5424_layer_call_and_return_conditional_losses_69111732o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������G`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�%
�
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69112064

inputs;
)dense_5422_matmul_readvariableop_resource:GG8
*dense_5422_biasadd_readvariableop_resource:G;
)dense_5423_matmul_readvariableop_resource:GG8
*dense_5423_biasadd_readvariableop_resource:G;
)dense_5424_matmul_readvariableop_resource:GG8
*dense_5424_biasadd_readvariableop_resource:G;
)dense_5425_matmul_readvariableop_resource:G8
*dense_5425_biasadd_readvariableop_resource:
identity��!dense_5422/BiasAdd/ReadVariableOp� dense_5422/MatMul/ReadVariableOp�!dense_5423/BiasAdd/ReadVariableOp� dense_5423/MatMul/ReadVariableOp�!dense_5424/BiasAdd/ReadVariableOp� dense_5424/MatMul/ReadVariableOp�!dense_5425/BiasAdd/ReadVariableOp� dense_5425/MatMul/ReadVariableOp`
dense_5422/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������G�
 dense_5422/MatMul/ReadVariableOpReadVariableOp)dense_5422_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
dense_5422/MatMulMatMuldense_5422/Cast:y:0(dense_5422/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
!dense_5422/BiasAdd/ReadVariableOpReadVariableOp*dense_5422_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
dense_5422/BiasAddBiasAdddense_5422/MatMul:product:0)dense_5422/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gf
dense_5422/ReluReludense_5422/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
 dense_5423/MatMul/ReadVariableOpReadVariableOp)dense_5423_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
dense_5423/MatMulMatMuldense_5422/Relu:activations:0(dense_5423/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
!dense_5423/BiasAdd/ReadVariableOpReadVariableOp*dense_5423_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
dense_5423/BiasAddBiasAdddense_5423/MatMul:product:0)dense_5423/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gf
dense_5423/ReluReludense_5423/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
 dense_5424/MatMul/ReadVariableOpReadVariableOp)dense_5424_matmul_readvariableop_resource*
_output_shapes

:GG*
dtype0�
dense_5424/MatMulMatMuldense_5423/Relu:activations:0(dense_5424/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G�
!dense_5424/BiasAdd/ReadVariableOpReadVariableOp*dense_5424_biasadd_readvariableop_resource*
_output_shapes
:G*
dtype0�
dense_5424/BiasAddBiasAdddense_5424/MatMul:product:0)dense_5424/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gf
dense_5424/ReluReludense_5424/BiasAdd:output:0*
T0*'
_output_shapes
:���������G�
 dense_5425/MatMul/ReadVariableOpReadVariableOp)dense_5425_matmul_readvariableop_resource*
_output_shapes

:G*
dtype0�
dense_5425/MatMulMatMuldense_5424/Relu:activations:0(dense_5425/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5425/BiasAdd/ReadVariableOpReadVariableOp*dense_5425_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5425/BiasAddBiasAdddense_5425/MatMul:product:0)dense_5425/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_5425/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_5422/BiasAdd/ReadVariableOp!^dense_5422/MatMul/ReadVariableOp"^dense_5423/BiasAdd/ReadVariableOp!^dense_5423/MatMul/ReadVariableOp"^dense_5424/BiasAdd/ReadVariableOp!^dense_5424/MatMul/ReadVariableOp"^dense_5425/BiasAdd/ReadVariableOp!^dense_5425/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������G: : : : : : : : 2F
!dense_5422/BiasAdd/ReadVariableOp!dense_5422/BiasAdd/ReadVariableOp2D
 dense_5422/MatMul/ReadVariableOp dense_5422/MatMul/ReadVariableOp2F
!dense_5423/BiasAdd/ReadVariableOp!dense_5423/BiasAdd/ReadVariableOp2D
 dense_5423/MatMul/ReadVariableOp dense_5423/MatMul/ReadVariableOp2F
!dense_5424/BiasAdd/ReadVariableOp!dense_5424/BiasAdd/ReadVariableOp2D
 dense_5424/MatMul/ReadVariableOp dense_5424/MatMul/ReadVariableOp2F
!dense_5425/BiasAdd/ReadVariableOp!dense_5425/BiasAdd/ReadVariableOp2D
 dense_5425/MatMul/ReadVariableOp dense_5425/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�	
�
H__inference_dense_5425_layer_call_and_return_conditional_losses_69111748

inputs0
matmul_readvariableop_resource:G-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:G*
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
:���������G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�
�
-__inference_dense_5425_layer_call_fn_69112156

inputs
unknown:G
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
H__inference_dense_5425_layer_call_and_return_conditional_losses_69111748o
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
:���������G: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�	
�
2__inference_sequential_2110_layer_call_fn_69112000

inputs
unknown:GG
	unknown_0:G
	unknown_1:GG
	unknown_2:G
	unknown_3:GG
	unknown_4:G
	unknown_5:G
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
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111862o
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
#:���������G: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�

�
H__inference_dense_5422_layer_call_and_return_conditional_losses_69112107

inputs0
matmul_readvariableop_resource:GG-
biasadd_readvariableop_resource:G
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:GG*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:G*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������GP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Ga
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Gw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
_user_specified_nameinputs
�
�
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111927
dense_5422_input%
dense_5422_69111906:GG!
dense_5422_69111908:G%
dense_5423_69111911:GG!
dense_5423_69111913:G%
dense_5424_69111916:GG!
dense_5424_69111918:G%
dense_5425_69111921:G!
dense_5425_69111923:
identity��"dense_5422/StatefulPartitionedCall�"dense_5423/StatefulPartitionedCall�"dense_5424/StatefulPartitionedCall�"dense_5425/StatefulPartitionedCallj
dense_5422/CastCastdense_5422_input*

DstT0*

SrcT0*'
_output_shapes
:���������G�
"dense_5422/StatefulPartitionedCallStatefulPartitionedCalldense_5422/Cast:y:0dense_5422_69111906dense_5422_69111908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5422_layer_call_and_return_conditional_losses_69111698�
"dense_5423/StatefulPartitionedCallStatefulPartitionedCall+dense_5422/StatefulPartitionedCall:output:0dense_5423_69111911dense_5423_69111913*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5423_layer_call_and_return_conditional_losses_69111715�
"dense_5424/StatefulPartitionedCallStatefulPartitionedCall+dense_5423/StatefulPartitionedCall:output:0dense_5424_69111916dense_5424_69111918*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������G*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5424_layer_call_and_return_conditional_losses_69111732�
"dense_5425/StatefulPartitionedCallStatefulPartitionedCall+dense_5424/StatefulPartitionedCall:output:0dense_5425_69111921dense_5425_69111923*
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
H__inference_dense_5425_layer_call_and_return_conditional_losses_69111748z
IdentityIdentity+dense_5425/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5422/StatefulPartitionedCall#^dense_5423/StatefulPartitionedCall#^dense_5424/StatefulPartitionedCall#^dense_5425/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������G: : : : : : : : 2H
"dense_5422/StatefulPartitionedCall"dense_5422/StatefulPartitionedCall2H
"dense_5423/StatefulPartitionedCall"dense_5423/StatefulPartitionedCall2H
"dense_5424/StatefulPartitionedCall"dense_5424/StatefulPartitionedCall2H
"dense_5425/StatefulPartitionedCall"dense_5425/StatefulPartitionedCall:Y U
'
_output_shapes
:���������G
*
_user_specified_namedense_5422_input
�

�
H__inference_dense_5423_layer_call_and_return_conditional_losses_69112127

inputs0
matmul_readvariableop_resource:GG-
biasadd_readvariableop_resource:G
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:GG*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Gr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:G*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������GP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������Ga
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������Gw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������G
 
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
dense_5422_input9
"serving_default_dense_5422_input:0���������G>

dense_54250
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
2__inference_sequential_2110_layer_call_fn_69111774
2__inference_sequential_2110_layer_call_fn_69111979
2__inference_sequential_2110_layer_call_fn_69112000
2__inference_sequential_2110_layer_call_fn_69111902�
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
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69112032
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69112064
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111927
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111952�
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
#__inference__wrapped_model_69111679dense_5422_input"�
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
#:!GG2dense_5422/kernel
:G2dense_5422/bias
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
-__inference_dense_5422_layer_call_fn_69112096�
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
H__inference_dense_5422_layer_call_and_return_conditional_losses_69112107�
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
#:!GG2dense_5423/kernel
:G2dense_5423/bias
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
-__inference_dense_5423_layer_call_fn_69112116�
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
H__inference_dense_5423_layer_call_and_return_conditional_losses_69112127�
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
#:!GG2dense_5424/kernel
:G2dense_5424/bias
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
-__inference_dense_5424_layer_call_fn_69112136�
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
H__inference_dense_5424_layer_call_and_return_conditional_losses_69112147�
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
#:!G2dense_5425/kernel
:2dense_5425/bias
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
-__inference_dense_5425_layer_call_fn_69112156�
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
H__inference_dense_5425_layer_call_and_return_conditional_losses_69112166�
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
&__inference_signature_wrapper_69112087dense_5422_input"�
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
(:&GG2Adam/dense_5422/kernel/m
": G2Adam/dense_5422/bias/m
(:&GG2Adam/dense_5423/kernel/m
": G2Adam/dense_5423/bias/m
(:&GG2Adam/dense_5424/kernel/m
": G2Adam/dense_5424/bias/m
(:&G2Adam/dense_5425/kernel/m
": 2Adam/dense_5425/bias/m
(:&GG2Adam/dense_5422/kernel/v
": G2Adam/dense_5422/bias/v
(:&GG2Adam/dense_5423/kernel/v
": G2Adam/dense_5423/bias/v
(:&GG2Adam/dense_5424/kernel/v
": G2Adam/dense_5424/bias/v
(:&G2Adam/dense_5425/kernel/v
": 2Adam/dense_5425/bias/v�
#__inference__wrapped_model_69111679~&'9�6
/�,
*�'
dense_5422_input���������G
� "7�4
2

dense_5425$�!

dense_5425����������
H__inference_dense_5422_layer_call_and_return_conditional_losses_69112107\/�,
%�"
 �
inputs���������G
� "%�"
�
0���������G
� �
-__inference_dense_5422_layer_call_fn_69112096O/�,
%�"
 �
inputs���������G
� "����������G�
H__inference_dense_5423_layer_call_and_return_conditional_losses_69112127\/�,
%�"
 �
inputs���������G
� "%�"
�
0���������G
� �
-__inference_dense_5423_layer_call_fn_69112116O/�,
%�"
 �
inputs���������G
� "����������G�
H__inference_dense_5424_layer_call_and_return_conditional_losses_69112147\/�,
%�"
 �
inputs���������G
� "%�"
�
0���������G
� �
-__inference_dense_5424_layer_call_fn_69112136O/�,
%�"
 �
inputs���������G
� "����������G�
H__inference_dense_5425_layer_call_and_return_conditional_losses_69112166\&'/�,
%�"
 �
inputs���������G
� "%�"
�
0���������
� �
-__inference_dense_5425_layer_call_fn_69112156O&'/�,
%�"
 �
inputs���������G
� "�����������
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111927t&'A�>
7�4
*�'
dense_5422_input���������G
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69111952t&'A�>
7�4
*�'
dense_5422_input���������G
p

 
� "%�"
�
0���������
� �
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69112032j&'7�4
-�*
 �
inputs���������G
p 

 
� "%�"
�
0���������
� �
M__inference_sequential_2110_layer_call_and_return_conditional_losses_69112064j&'7�4
-�*
 �
inputs���������G
p

 
� "%�"
�
0���������
� �
2__inference_sequential_2110_layer_call_fn_69111774g&'A�>
7�4
*�'
dense_5422_input���������G
p 

 
� "�����������
2__inference_sequential_2110_layer_call_fn_69111902g&'A�>
7�4
*�'
dense_5422_input���������G
p

 
� "�����������
2__inference_sequential_2110_layer_call_fn_69111979]&'7�4
-�*
 �
inputs���������G
p 

 
� "�����������
2__inference_sequential_2110_layer_call_fn_69112000]&'7�4
-�*
 �
inputs���������G
p

 
� "�����������
&__inference_signature_wrapper_69112087�&'M�J
� 
C�@
>
dense_5422_input*�'
dense_5422_input���������G"7�4
2

dense_5425$�!

dense_5425���������