��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
�
false_negativesVarHandleOp*
_output_shapes
: * 

debug_namefalse_negatives/*
dtype0*
shape:�* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:�*
dtype0
�
false_positivesVarHandleOp*
_output_shapes
: * 

debug_namefalse_positives/*
dtype0*
shape:�* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:�*
dtype0
�
true_negativesVarHandleOp*
_output_shapes
: *

debug_nametrue_negatives/*
dtype0*
shape:�*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:�*
dtype0
�
true_positivesVarHandleOp*
_output_shapes
: *

debug_nametrue_positives/*
dtype0*
shape:�*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:�*
dtype0
�
intermediate_weightsVarHandleOp*
_output_shapes
: *%

debug_nameintermediate_weights/*
dtype0*
shape:*%
shared_nameintermediate_weights
y
(intermediate_weights/Read/ReadVariableOpReadVariableOpintermediate_weights*
_output_shapes
:*
dtype0
�
false_negatives_1VarHandleOp*
_output_shapes
: *"

debug_namefalse_negatives_1/*
dtype0*
shape:*"
shared_namefalse_negatives_1
s
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes
:*
dtype0
�
false_positives_1VarHandleOp*
_output_shapes
: *"

debug_namefalse_positives_1/*
dtype0*
shape:*"
shared_namefalse_positives_1
s
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes
:*
dtype0
�
true_positives_1VarHandleOp*
_output_shapes
: *!

debug_nametrue_positives_1/*
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
�
false_positives_2VarHandleOp*
_output_shapes
: *"

debug_namefalse_positives_2/*
dtype0*
shape:*"
shared_namefalse_positives_2
s
%false_positives_2/Read/ReadVariableOpReadVariableOpfalse_positives_2*
_output_shapes
:*
dtype0
�
true_positives_2VarHandleOp*
_output_shapes
: *!

debug_nametrue_positives_2/*
dtype0*
shape:*!
shared_nametrue_positives_2
q
$true_positives_2/Read/ReadVariableOpReadVariableOptrue_positives_2*
_output_shapes
:*
dtype0
�
false_negatives_2VarHandleOp*
_output_shapes
: *"

debug_namefalse_negatives_2/*
dtype0*
shape:*"
shared_namefalse_negatives_2
s
%false_negatives_2/Read/ReadVariableOpReadVariableOpfalse_negatives_2*
_output_shapes
:*
dtype0
�
true_positives_3VarHandleOp*
_output_shapes
: *!

debug_nametrue_positives_3/*
dtype0*
shape:*!
shared_nametrue_positives_3
q
$true_positives_3/Read/ReadVariableOpReadVariableOptrue_positives_3*
_output_shapes
:*
dtype0
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
AdamW/v/dense_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/v/dense_5/bias/*
dtype0*
shape:*%
shared_nameAdamW/v/dense_5/bias
y
(AdamW/v/dense_5/bias/Read/ReadVariableOpReadVariableOpAdamW/v/dense_5/bias*
_output_shapes
:*
dtype0
�
AdamW/m/dense_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/m/dense_5/bias/*
dtype0*
shape:*%
shared_nameAdamW/m/dense_5/bias
y
(AdamW/m/dense_5/bias/Read/ReadVariableOpReadVariableOpAdamW/m/dense_5/bias*
_output_shapes
:*
dtype0
�
AdamW/v/dense_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/v/dense_5/kernel/*
dtype0*
shape
:	*'
shared_nameAdamW/v/dense_5/kernel
�
*AdamW/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_5/kernel*
_output_shapes

:	*
dtype0
�
AdamW/m/dense_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/m/dense_5/kernel/*
dtype0*
shape
:	*'
shared_nameAdamW/m/dense_5/kernel
�
*AdamW/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_5/kernel*
_output_shapes

:	*
dtype0
�
AdamW/v/dense_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/v/dense_4/bias/*
dtype0*
shape:	*%
shared_nameAdamW/v/dense_4/bias
y
(AdamW/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdamW/v/dense_4/bias*
_output_shapes
:	*
dtype0
�
AdamW/m/dense_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/m/dense_4/bias/*
dtype0*
shape:	*%
shared_nameAdamW/m/dense_4/bias
y
(AdamW/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdamW/m/dense_4/bias*
_output_shapes
:	*
dtype0
�
AdamW/v/dense_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/v/dense_4/kernel/*
dtype0*
shape
:	*'
shared_nameAdamW/v/dense_4/kernel
�
*AdamW/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_4/kernel*
_output_shapes

:	*
dtype0
�
AdamW/m/dense_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/m/dense_4/kernel/*
dtype0*
shape
:	*'
shared_nameAdamW/m/dense_4/kernel
�
*AdamW/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_4/kernel*
_output_shapes

:	*
dtype0
�
 AdamW/v/batch_normalization/betaVarHandleOp*
_output_shapes
: *1

debug_name#!AdamW/v/batch_normalization/beta/*
dtype0*
shape:*1
shared_name" AdamW/v/batch_normalization/beta
�
4AdamW/v/batch_normalization/beta/Read/ReadVariableOpReadVariableOp AdamW/v/batch_normalization/beta*
_output_shapes
:*
dtype0
�
 AdamW/m/batch_normalization/betaVarHandleOp*
_output_shapes
: *1

debug_name#!AdamW/m/batch_normalization/beta/*
dtype0*
shape:*1
shared_name" AdamW/m/batch_normalization/beta
�
4AdamW/m/batch_normalization/beta/Read/ReadVariableOpReadVariableOp AdamW/m/batch_normalization/beta*
_output_shapes
:*
dtype0
�
!AdamW/v/batch_normalization/gammaVarHandleOp*
_output_shapes
: *2

debug_name$"AdamW/v/batch_normalization/gamma/*
dtype0*
shape:*2
shared_name#!AdamW/v/batch_normalization/gamma
�
5AdamW/v/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp!AdamW/v/batch_normalization/gamma*
_output_shapes
:*
dtype0
�
!AdamW/m/batch_normalization/gammaVarHandleOp*
_output_shapes
: *2

debug_name$"AdamW/m/batch_normalization/gamma/*
dtype0*
shape:*2
shared_name#!AdamW/m/batch_normalization/gamma
�
5AdamW/m/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp!AdamW/m/batch_normalization/gamma*
_output_shapes
:*
dtype0
�
AdamW/v/dense_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/v/dense_3/bias/*
dtype0*
shape:*%
shared_nameAdamW/v/dense_3/bias
y
(AdamW/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdamW/v/dense_3/bias*
_output_shapes
:*
dtype0
�
AdamW/m/dense_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/m/dense_3/bias/*
dtype0*
shape:*%
shared_nameAdamW/m/dense_3/bias
y
(AdamW/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdamW/m/dense_3/bias*
_output_shapes
:*
dtype0
�
AdamW/v/dense_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/v/dense_3/kernel/*
dtype0*
shape
:*'
shared_nameAdamW/v/dense_3/kernel
�
*AdamW/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_3/kernel*
_output_shapes

:*
dtype0
�
AdamW/m/dense_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/m/dense_3/kernel/*
dtype0*
shape
:*'
shared_nameAdamW/m/dense_3/kernel
�
*AdamW/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_3/kernel*
_output_shapes

:*
dtype0
�
AdamW/v/dense_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/v/dense_2/bias/*
dtype0*
shape:*%
shared_nameAdamW/v/dense_2/bias
y
(AdamW/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdamW/v/dense_2/bias*
_output_shapes
:*
dtype0
�
AdamW/m/dense_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/m/dense_2/bias/*
dtype0*
shape:*%
shared_nameAdamW/m/dense_2/bias
y
(AdamW/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdamW/m/dense_2/bias*
_output_shapes
:*
dtype0
�
AdamW/v/dense_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/v/dense_2/kernel/*
dtype0*
shape
:*'
shared_nameAdamW/v/dense_2/kernel
�
*AdamW/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_2/kernel*
_output_shapes

:*
dtype0
�
AdamW/m/dense_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/m/dense_2/kernel/*
dtype0*
shape
:*'
shared_nameAdamW/m/dense_2/kernel
�
*AdamW/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_2/kernel*
_output_shapes

:*
dtype0
�
AdamW/v/dense_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/v/dense_1/bias/*
dtype0*
shape:*%
shared_nameAdamW/v/dense_1/bias
y
(AdamW/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdamW/v/dense_1/bias*
_output_shapes
:*
dtype0
�
AdamW/m/dense_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/m/dense_1/bias/*
dtype0*
shape:*%
shared_nameAdamW/m/dense_1/bias
y
(AdamW/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdamW/m/dense_1/bias*
_output_shapes
:*
dtype0
�
AdamW/v/dense_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/v/dense_1/kernel/*
dtype0*
shape
:$*'
shared_nameAdamW/v/dense_1/kernel
�
*AdamW/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense_1/kernel*
_output_shapes

:$*
dtype0
�
AdamW/m/dense_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdamW/m/dense_1/kernel/*
dtype0*
shape
:$*'
shared_nameAdamW/m/dense_1/kernel
�
*AdamW/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense_1/kernel*
_output_shapes

:$*
dtype0
�
AdamW/v/dense/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdamW/v/dense/bias/*
dtype0*
shape:$*#
shared_nameAdamW/v/dense/bias
u
&AdamW/v/dense/bias/Read/ReadVariableOpReadVariableOpAdamW/v/dense/bias*
_output_shapes
:$*
dtype0
�
AdamW/m/dense/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdamW/m/dense/bias/*
dtype0*
shape:$*#
shared_nameAdamW/m/dense/bias
u
&AdamW/m/dense/bias/Read/ReadVariableOpReadVariableOpAdamW/m/dense/bias*
_output_shapes
:$*
dtype0
�
AdamW/v/dense/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/v/dense/kernel/*
dtype0*
shape
:$*%
shared_nameAdamW/v/dense/kernel
}
(AdamW/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdamW/v/dense/kernel*
_output_shapes

:$*
dtype0
�
AdamW/m/dense/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdamW/m/dense/kernel/*
dtype0*
shape
:$*%
shared_nameAdamW/m/dense/kernel
}
(AdamW/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdamW/m/dense/kernel*
_output_shapes

:$*
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
dense_5/biasVarHandleOp*
_output_shapes
: *

debug_namedense_5/bias/*
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
�
dense_5/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_5/kernel/*
dtype0*
shape
:	*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:	*
dtype0
�
dense_4/biasVarHandleOp*
_output_shapes
: *

debug_namedense_4/bias/*
dtype0*
shape:	*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:	*
dtype0
�
dense_4/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_4/kernel/*
dtype0*
shape
:	*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:	*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *4

debug_name&$batch_normalization/moving_variance/*
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *0

debug_name" batch_normalization/moving_mean/*
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *)

debug_namebatch_normalization/beta/*
dtype0*
shape:*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: **

debug_namebatch_normalization/gamma/*
dtype0*
shape:**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
�
dense_3/biasVarHandleOp*
_output_shapes
: *

debug_namedense_3/bias/*
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
�
dense_3/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_3/kernel/*
dtype0*
shape
:*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:*
dtype0
�
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
�
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
�
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
�
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape
:$*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:$*
dtype0
�

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:$*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:$*
dtype0
�
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape
:$*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:$*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1063696

NoOpNoOp
�f
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�e
value�eB�e B�e
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias*
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias*
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8axis
	9gamma
:beta
;moving_mean
<moving_variance*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias*
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias*
z
0
1
 2
!3
(4
)5
06
17
98
:9
;10
<11
C12
D13
K14
L15*
j
0
1
 2
!3
(4
)5
06
17
98
:9
C10
D11
K12
L13*
* 
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Rtrace_0
Strace_1* 

Ttrace_0
Utrace_1* 
* 
�
V
_variables
W_iterations
X_learning_rate
Y_index_dict
Z
_momentums
[_velocities
\_update_step_xla*

]serving_default* 

0
1*

0
1*
* 
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*
* 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*

(0
)1*
* 
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

qtrace_0* 

rtrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

00
11*

00
11*
* 
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

xtrace_0* 

ytrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
90
:1
;2
<3*

90
:1*
* 
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

;0
<1*
<
0
1
2
3
4
5
6
7*
4
�0
�1
�2
�3
�4
�5*
* 
* 
* 
* 
* 
* 
�
W0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13*
x
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13*
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
* 
* 
* 
* 
* 
* 
* 

;0
<1*
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
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
`
�	variables
�	keras_api
�
thresholds
�true_positives
�false_negatives*
`
�	variables
�	keras_api
�
thresholds
�true_positives
�false_positives*
�
�	variables
�	keras_api
�true_positives
�false_positives
�false_negatives
�intermediate_weights*
z
�	variables
�	keras_api
�true_positives
�true_negatives
�false_positives
�false_negatives*
_Y
VARIABLE_VALUEAdamW/m/dense/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdamW/v/dense/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdamW/m/dense/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdamW/v/dense/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdamW/m/dense_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdamW/v/dense_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdamW/m/dense_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdamW/v/dense_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdamW/m/dense_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/m/dense_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/v/dense_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/m/dense_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/v/dense_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!AdamW/m/batch_normalization/gamma2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!AdamW/v/batch_normalization/gamma2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE AdamW/m/batch_normalization/beta2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE AdamW/v/batch_normalization/beta2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_4/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_4/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/m/dense_4/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/v/dense_4/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/m/dense_5/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamW/v/dense_5/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/m/dense_5/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamW/v/dense_5/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
* 
ga
VARIABLE_VALUEtrue_positives_3=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_negatives_2>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
* 
ga
VARIABLE_VALUEtrue_positives_2=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_positives_2>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�	variables*
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/4/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEintermediate_weightsCkeras_api/metrics/4/intermediate_weights/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/5/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/5/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateAdamW/m/dense/kernelAdamW/v/dense/kernelAdamW/m/dense/biasAdamW/v/dense/biasAdamW/m/dense_1/kernelAdamW/v/dense_1/kernelAdamW/m/dense_1/biasAdamW/v/dense_1/biasAdamW/m/dense_2/kernelAdamW/v/dense_2/kernelAdamW/m/dense_2/biasAdamW/v/dense_2/biasAdamW/m/dense_3/kernelAdamW/v/dense_3/kernelAdamW/m/dense_3/biasAdamW/v/dense_3/bias!AdamW/m/batch_normalization/gamma!AdamW/v/batch_normalization/gamma AdamW/m/batch_normalization/beta AdamW/v/batch_normalization/betaAdamW/m/dense_4/kernelAdamW/v/dense_4/kernelAdamW/m/dense_4/biasAdamW/v/dense_4/biasAdamW/m/dense_5/kernelAdamW/v/dense_5/kernelAdamW/m/dense_5/biasAdamW/v/dense_5/biastotal_1count_1totalcounttrue_positives_3false_negatives_2true_positives_2false_positives_2true_positives_1false_positives_1false_negatives_1intermediate_weightstrue_positivestrue_negativesfalse_positivesfalse_negativesConst*K
TinD
B2@*
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
 __inference__traced_save_1064290
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateAdamW/m/dense/kernelAdamW/v/dense/kernelAdamW/m/dense/biasAdamW/v/dense/biasAdamW/m/dense_1/kernelAdamW/v/dense_1/kernelAdamW/m/dense_1/biasAdamW/v/dense_1/biasAdamW/m/dense_2/kernelAdamW/v/dense_2/kernelAdamW/m/dense_2/biasAdamW/v/dense_2/biasAdamW/m/dense_3/kernelAdamW/v/dense_3/kernelAdamW/m/dense_3/biasAdamW/v/dense_3/bias!AdamW/m/batch_normalization/gamma!AdamW/v/batch_normalization/gamma AdamW/m/batch_normalization/beta AdamW/v/batch_normalization/betaAdamW/m/dense_4/kernelAdamW/v/dense_4/kernelAdamW/m/dense_4/biasAdamW/v/dense_4/biasAdamW/m/dense_5/kernelAdamW/v/dense_5/kernelAdamW/m/dense_5/biasAdamW/v/dense_5/biastotal_1count_1totalcounttrue_positives_3false_negatives_2true_positives_2false_positives_2true_positives_1false_positives_1false_negatives_1intermediate_weightstrue_positivestrue_negativesfalse_positivesfalse_negatives*J
TinC
A2?*
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
#__inference__traced_restore_1064485��

�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063856

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_1_layer_call_and_return_conditional_losses_1063736

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������$
 
_user_specified_nameinputs
�

�
B__inference_dense_layer_call_and_return_conditional_losses_1063716

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������$a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������$S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063350

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
B__inference_dense_layer_call_and_return_conditional_losses_1063389

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������$a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������$S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_3_layer_call_and_return_conditional_losses_1063776

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_5_layer_call_fn_1063885

inputs
unknown:	
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1063478o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063881:'#
!
_user_specified_name	1063879:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�+
�
B__inference_model_layer_call_and_return_conditional_losses_1063528
input_1
dense_1063488:$
dense_1063490:$!
dense_1_1063493:$
dense_1_1063495:!
dense_2_1063498:
dense_2_1063500:!
dense_3_1063503:
dense_3_1063505:)
batch_normalization_1063508:)
batch_normalization_1063510:)
batch_normalization_1063512:)
batch_normalization_1063514:!
dense_4_1063517:	
dense_4_1063519:	!
dense_5_1063522:	
dense_5_1063524:
identity��+batch_normalization/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_1063488dense_1063490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1063389�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1063493dense_1_1063495*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1063405�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1063498dense_2_1063500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1063421�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_1063503dense_3_1063505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1063437�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0batch_normalization_1063508batch_normalization_1063510batch_normalization_1063512batch_normalization_1063514*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063350�
dense_4/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_4_1063517dense_4_1063519*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1063462�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_1063522dense_5_1063524*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1063478w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:'#
!
_user_specified_name	1063524:'#
!
_user_specified_name	1063522:'#
!
_user_specified_name	1063519:'#
!
_user_specified_name	1063517:'#
!
_user_specified_name	1063514:'#
!
_user_specified_name	1063512:'
#
!
_user_specified_name	1063510:'	#
!
_user_specified_name	1063508:'#
!
_user_specified_name	1063505:'#
!
_user_specified_name	1063503:'#
!
_user_specified_name	1063500:'#
!
_user_specified_name	1063498:'#
!
_user_specified_name	1063495:'#
!
_user_specified_name	1063493:'#
!
_user_specified_name	1063490:'#
!
_user_specified_name	1063488:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
D__inference_dense_2_layer_call_and_return_conditional_losses_1063756

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_1_layer_call_fn_1063725

inputs
unknown:$
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1063405o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������$: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063721:'#
!
_user_specified_name	1063719:O K
'
_output_shapes
:���������$
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_1063602
input_1
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1063528o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063598:'#
!
_user_specified_name	1063596:'#
!
_user_specified_name	1063594:'#
!
_user_specified_name	1063592:'#
!
_user_specified_name	1063590:'#
!
_user_specified_name	1063588:'
#
!
_user_specified_name	1063586:'	#
!
_user_specified_name	1063584:'#
!
_user_specified_name	1063582:'#
!
_user_specified_name	1063580:'#
!
_user_specified_name	1063578:'#
!
_user_specified_name	1063576:'#
!
_user_specified_name	1063574:'#
!
_user_specified_name	1063572:'#
!
_user_specified_name	1063570:'#
!
_user_specified_name	1063568:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
��
�%
#__inference__traced_restore_1064485
file_prefix/
assignvariableop_dense_kernel:$+
assignvariableop_1_dense_bias:$3
!assignvariableop_2_dense_1_kernel:$-
assignvariableop_3_dense_1_bias:3
!assignvariableop_4_dense_2_kernel:-
assignvariableop_5_dense_2_bias:3
!assignvariableop_6_dense_3_kernel:-
assignvariableop_7_dense_3_bias::
,assignvariableop_8_batch_normalization_gamma:9
+assignvariableop_9_batch_normalization_beta:A
3assignvariableop_10_batch_normalization_moving_mean:E
7assignvariableop_11_batch_normalization_moving_variance:4
"assignvariableop_12_dense_4_kernel:	.
 assignvariableop_13_dense_4_bias:	4
"assignvariableop_14_dense_5_kernel:	.
 assignvariableop_15_dense_5_bias:'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: :
(assignvariableop_18_adamw_m_dense_kernel:$:
(assignvariableop_19_adamw_v_dense_kernel:$4
&assignvariableop_20_adamw_m_dense_bias:$4
&assignvariableop_21_adamw_v_dense_bias:$<
*assignvariableop_22_adamw_m_dense_1_kernel:$<
*assignvariableop_23_adamw_v_dense_1_kernel:$6
(assignvariableop_24_adamw_m_dense_1_bias:6
(assignvariableop_25_adamw_v_dense_1_bias:<
*assignvariableop_26_adamw_m_dense_2_kernel:<
*assignvariableop_27_adamw_v_dense_2_kernel:6
(assignvariableop_28_adamw_m_dense_2_bias:6
(assignvariableop_29_adamw_v_dense_2_bias:<
*assignvariableop_30_adamw_m_dense_3_kernel:<
*assignvariableop_31_adamw_v_dense_3_kernel:6
(assignvariableop_32_adamw_m_dense_3_bias:6
(assignvariableop_33_adamw_v_dense_3_bias:C
5assignvariableop_34_adamw_m_batch_normalization_gamma:C
5assignvariableop_35_adamw_v_batch_normalization_gamma:B
4assignvariableop_36_adamw_m_batch_normalization_beta:B
4assignvariableop_37_adamw_v_batch_normalization_beta:<
*assignvariableop_38_adamw_m_dense_4_kernel:	<
*assignvariableop_39_adamw_v_dense_4_kernel:	6
(assignvariableop_40_adamw_m_dense_4_bias:	6
(assignvariableop_41_adamw_v_dense_4_bias:	<
*assignvariableop_42_adamw_m_dense_5_kernel:	<
*assignvariableop_43_adamw_v_dense_5_kernel:	6
(assignvariableop_44_adamw_m_dense_5_bias:6
(assignvariableop_45_adamw_v_dense_5_bias:%
assignvariableop_46_total_1: %
assignvariableop_47_count_1: #
assignvariableop_48_total: #
assignvariableop_49_count: 2
$assignvariableop_50_true_positives_3:3
%assignvariableop_51_false_negatives_2:2
$assignvariableop_52_true_positives_2:3
%assignvariableop_53_false_positives_2:2
$assignvariableop_54_true_positives_1:3
%assignvariableop_55_false_positives_1:3
%assignvariableop_56_false_negatives_1:6
(assignvariableop_57_intermediate_weights:1
"assignvariableop_58_true_positives:	�1
"assignvariableop_59_true_negatives:	�2
#assignvariableop_60_false_positives:	�2
#assignvariableop_61_false_negatives:	�
identity_63��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBCkeras_api/metrics/4/intermediate_weights/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*M
dtypesC
A2?	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp,assignvariableop_8_batch_normalization_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp+assignvariableop_9_batch_normalization_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp3assignvariableop_10_batch_normalization_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp7assignvariableop_11_batch_normalization_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_4_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_4_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_5_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_5_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adamw_m_dense_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adamw_v_dense_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adamw_m_dense_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp&assignvariableop_21_adamw_v_dense_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adamw_m_dense_1_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adamw_v_dense_1_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adamw_m_dense_1_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adamw_v_dense_1_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adamw_m_dense_2_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adamw_v_dense_2_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adamw_m_dense_2_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adamw_v_dense_2_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adamw_m_dense_3_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adamw_v_dense_3_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adamw_m_dense_3_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adamw_v_dense_3_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp5assignvariableop_34_adamw_m_batch_normalization_gammaIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp5assignvariableop_35_adamw_v_batch_normalization_gammaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adamw_m_batch_normalization_betaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adamw_v_batch_normalization_betaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adamw_m_dense_4_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adamw_v_dense_4_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adamw_m_dense_4_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adamw_v_dense_4_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adamw_m_dense_5_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adamw_v_dense_5_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adamw_m_dense_5_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adamw_v_dense_5_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_total_1Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_count_1Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpassignvariableop_48_totalIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_countIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp$assignvariableop_50_true_positives_3Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp%assignvariableop_51_false_negatives_2Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp$assignvariableop_52_true_positives_2Identity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp%assignvariableop_53_false_positives_2Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp$assignvariableop_54_true_positives_1Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp%assignvariableop_55_false_positives_1Identity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp%assignvariableop_56_false_negatives_1Identity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp(assignvariableop_57_intermediate_weightsIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp"assignvariableop_58_true_positivesIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp"assignvariableop_59_true_negativesIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp#assignvariableop_60_false_positivesIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp#assignvariableop_61_false_negativesIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_62Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_63IdentityIdentity_62:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_63Identity_63:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
~: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:/>+
)
_user_specified_namefalse_negatives:/=+
)
_user_specified_namefalse_positives:.<*
(
_user_specified_nametrue_negatives:.;*
(
_user_specified_nametrue_positives:4:0
.
_user_specified_nameintermediate_weights:19-
+
_user_specified_namefalse_negatives_1:18-
+
_user_specified_namefalse_positives_1:07,
*
_user_specified_nametrue_positives_1:16-
+
_user_specified_namefalse_positives_2:05,
*
_user_specified_nametrue_positives_2:14-
+
_user_specified_namefalse_negatives_2:03,
*
_user_specified_nametrue_positives_3:%2!

_user_specified_namecount:%1!

_user_specified_nametotal:'0#
!
_user_specified_name	count_1:'/#
!
_user_specified_name	total_1:4.0
.
_user_specified_nameAdamW/v/dense_5/bias:4-0
.
_user_specified_nameAdamW/m/dense_5/bias:6,2
0
_user_specified_nameAdamW/v/dense_5/kernel:6+2
0
_user_specified_nameAdamW/m/dense_5/kernel:4*0
.
_user_specified_nameAdamW/v/dense_4/bias:4)0
.
_user_specified_nameAdamW/m/dense_4/bias:6(2
0
_user_specified_nameAdamW/v/dense_4/kernel:6'2
0
_user_specified_nameAdamW/m/dense_4/kernel:@&<
:
_user_specified_name" AdamW/v/batch_normalization/beta:@%<
:
_user_specified_name" AdamW/m/batch_normalization/beta:A$=
;
_user_specified_name#!AdamW/v/batch_normalization/gamma:A#=
;
_user_specified_name#!AdamW/m/batch_normalization/gamma:4"0
.
_user_specified_nameAdamW/v/dense_3/bias:4!0
.
_user_specified_nameAdamW/m/dense_3/bias:6 2
0
_user_specified_nameAdamW/v/dense_3/kernel:62
0
_user_specified_nameAdamW/m/dense_3/kernel:40
.
_user_specified_nameAdamW/v/dense_2/bias:40
.
_user_specified_nameAdamW/m/dense_2/bias:62
0
_user_specified_nameAdamW/v/dense_2/kernel:62
0
_user_specified_nameAdamW/m/dense_2/kernel:40
.
_user_specified_nameAdamW/v/dense_1/bias:40
.
_user_specified_nameAdamW/m/dense_1/bias:62
0
_user_specified_nameAdamW/v/dense_1/kernel:62
0
_user_specified_nameAdamW/m/dense_1/kernel:2.
,
_user_specified_nameAdamW/v/dense/bias:2.
,
_user_specified_nameAdamW/m/dense/bias:40
.
_user_specified_nameAdamW/v/dense/kernel:40
.
_user_specified_nameAdamW/m/dense/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_5/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_4/kernel:C?
=
_user_specified_name%#batch_normalization/moving_variance:?;
9
_user_specified_name!batch_normalization/moving_mean:8
4
2
_user_specified_namebatch_normalization/beta:9	5
3
_user_specified_namebatch_normalization/gamma:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
5__inference_batch_normalization_layer_call_fn_1063802

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063350o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063798:'#
!
_user_specified_name	1063796:'#
!
_user_specified_name	1063794:'#
!
_user_specified_name	1063792:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_4_layer_call_and_return_conditional_losses_1063462

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������	a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������	S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063836

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_1_layer_call_and_return_conditional_losses_1063405

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������$
 
_user_specified_nameinputs
�X
�
"__inference__wrapped_model_1063296
input_1<
*model_dense_matmul_readvariableop_resource:$9
+model_dense_biasadd_readvariableop_resource:$>
,model_dense_1_matmul_readvariableop_resource:$;
-model_dense_1_biasadd_readvariableop_resource:>
,model_dense_2_matmul_readvariableop_resource:;
-model_dense_2_biasadd_readvariableop_resource:>
,model_dense_3_matmul_readvariableop_resource:;
-model_dense_3_biasadd_readvariableop_resource:I
;model_batch_normalization_batchnorm_readvariableop_resource:M
?model_batch_normalization_batchnorm_mul_readvariableop_resource:K
=model_batch_normalization_batchnorm_readvariableop_1_resource:K
=model_batch_normalization_batchnorm_readvariableop_2_resource:>
,model_dense_4_matmul_readvariableop_resource:	;
-model_dense_4_biasadd_readvariableop_resource:	>
,model_dense_5_matmul_readvariableop_resource:	;
-model_dense_5_biasadd_readvariableop_resource:
identity��2model/batch_normalization/batchnorm/ReadVariableOp�4model/batch_normalization/batchnorm/ReadVariableOp_1�4model/batch_normalization/batchnorm/ReadVariableOp_2�6model/batch_normalization/batchnorm/mul/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp�$model/dense_3/BiasAdd/ReadVariableOp�#model/dense_3/MatMul/ReadVariableOp�$model/dense_4/BiasAdd/ReadVariableOp�#model/dense_4/MatMul/ReadVariableOp�$model/dense_5/BiasAdd/ReadVariableOp�#model/dense_5/MatMul/ReadVariableOp�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0�
model/dense/MatMulMatMulinput_1)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������$�
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:����������
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model/dense_3/MatMulMatMul model/dense_2/Relu:activations:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
model/dense_3/ReluRelumodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:����������
2model/batch_normalization/batchnorm/ReadVariableOpReadVariableOp;model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0n
)model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
'model/batch_normalization/batchnorm/addAddV2:model/batch_normalization/batchnorm/ReadVariableOp:value:02model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
)model/batch_normalization/batchnorm/RsqrtRsqrt+model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:�
6model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
'model/batch_normalization/batchnorm/mulMul-model/batch_normalization/batchnorm/Rsqrt:y:0>model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
)model/batch_normalization/batchnorm/mul_1Mul model/dense_3/Relu:activations:0+model/batch_normalization/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
4model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
)model/batch_normalization/batchnorm/mul_2Mul<model/batch_normalization/batchnorm/ReadVariableOp_1:value:0+model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:�
4model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
'model/batch_normalization/batchnorm/subSub<model/batch_normalization/batchnorm/ReadVariableOp_2:value:0-model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
)model/batch_normalization/batchnorm/add_1AddV2-model/batch_normalization/batchnorm/mul_1:z:0+model/batch_normalization/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
model/dense_4/MatMulMatMul-model/batch_normalization/batchnorm/add_1:z:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0�
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	l
model/dense_4/ReluRelumodel/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������	�
#model/dense_5/MatMul/ReadVariableOpReadVariableOp,model_dense_5_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
model/dense_5/MatMulMatMul model/dense_4/Relu:activations:0+model/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_5/BiasAdd/ReadVariableOpReadVariableOp-model_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_5/BiasAddBiasAddmodel/dense_5/MatMul:product:0,model/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_5/SigmoidSigmoidmodel/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitymodel/dense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp3^model/batch_normalization/batchnorm/ReadVariableOp5^model/batch_normalization/batchnorm/ReadVariableOp_15^model/batch_normalization/batchnorm/ReadVariableOp_27^model/batch_normalization/batchnorm/mul/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp%^model/dense_5/BiasAdd/ReadVariableOp$^model/dense_5/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2l
4model/batch_normalization/batchnorm/ReadVariableOp_14model/batch_normalization/batchnorm/ReadVariableOp_12l
4model/batch_normalization/batchnorm/ReadVariableOp_24model/batch_normalization/batchnorm/ReadVariableOp_22h
2model/batch_normalization/batchnorm/ReadVariableOp2model/batch_normalization/batchnorm/ReadVariableOp2p
6model/batch_normalization/batchnorm/mul/ReadVariableOp6model/batch_normalization/batchnorm/mul/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2L
$model/dense_5/BiasAdd/ReadVariableOp$model/dense_5/BiasAdd/ReadVariableOp2J
#model/dense_5/MatMul/ReadVariableOp#model/dense_5/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�&
�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063330

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'__inference_dense_layer_call_fn_1063705

inputs
unknown:$
	unknown_0:$
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1063389o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063701:'#
!
_user_specified_name	1063699:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_3_layer_call_and_return_conditional_losses_1063437

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_2_layer_call_and_return_conditional_losses_1063421

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�7
 __inference__traced_save_1064290
file_prefix5
#read_disablecopyonread_dense_kernel:$1
#read_1_disablecopyonread_dense_bias:$9
'read_2_disablecopyonread_dense_1_kernel:$3
%read_3_disablecopyonread_dense_1_bias:9
'read_4_disablecopyonread_dense_2_kernel:3
%read_5_disablecopyonread_dense_2_bias:9
'read_6_disablecopyonread_dense_3_kernel:3
%read_7_disablecopyonread_dense_3_bias:@
2read_8_disablecopyonread_batch_normalization_gamma:?
1read_9_disablecopyonread_batch_normalization_beta:G
9read_10_disablecopyonread_batch_normalization_moving_mean:K
=read_11_disablecopyonread_batch_normalization_moving_variance::
(read_12_disablecopyonread_dense_4_kernel:	4
&read_13_disablecopyonread_dense_4_bias:	:
(read_14_disablecopyonread_dense_5_kernel:	4
&read_15_disablecopyonread_dense_5_bias:-
#read_16_disablecopyonread_iteration:	 1
'read_17_disablecopyonread_learning_rate: @
.read_18_disablecopyonread_adamw_m_dense_kernel:$@
.read_19_disablecopyonread_adamw_v_dense_kernel:$:
,read_20_disablecopyonread_adamw_m_dense_bias:$:
,read_21_disablecopyonread_adamw_v_dense_bias:$B
0read_22_disablecopyonread_adamw_m_dense_1_kernel:$B
0read_23_disablecopyonread_adamw_v_dense_1_kernel:$<
.read_24_disablecopyonread_adamw_m_dense_1_bias:<
.read_25_disablecopyonread_adamw_v_dense_1_bias:B
0read_26_disablecopyonread_adamw_m_dense_2_kernel:B
0read_27_disablecopyonread_adamw_v_dense_2_kernel:<
.read_28_disablecopyonread_adamw_m_dense_2_bias:<
.read_29_disablecopyonread_adamw_v_dense_2_bias:B
0read_30_disablecopyonread_adamw_m_dense_3_kernel:B
0read_31_disablecopyonread_adamw_v_dense_3_kernel:<
.read_32_disablecopyonread_adamw_m_dense_3_bias:<
.read_33_disablecopyonread_adamw_v_dense_3_bias:I
;read_34_disablecopyonread_adamw_m_batch_normalization_gamma:I
;read_35_disablecopyonread_adamw_v_batch_normalization_gamma:H
:read_36_disablecopyonread_adamw_m_batch_normalization_beta:H
:read_37_disablecopyonread_adamw_v_batch_normalization_beta:B
0read_38_disablecopyonread_adamw_m_dense_4_kernel:	B
0read_39_disablecopyonread_adamw_v_dense_4_kernel:	<
.read_40_disablecopyonread_adamw_m_dense_4_bias:	<
.read_41_disablecopyonread_adamw_v_dense_4_bias:	B
0read_42_disablecopyonread_adamw_m_dense_5_kernel:	B
0read_43_disablecopyonread_adamw_v_dense_5_kernel:	<
.read_44_disablecopyonread_adamw_m_dense_5_bias:<
.read_45_disablecopyonread_adamw_v_dense_5_bias:+
!read_46_disablecopyonread_total_1: +
!read_47_disablecopyonread_count_1: )
read_48_disablecopyonread_total: )
read_49_disablecopyonread_count: 8
*read_50_disablecopyonread_true_positives_3:9
+read_51_disablecopyonread_false_negatives_2:8
*read_52_disablecopyonread_true_positives_2:9
+read_53_disablecopyonread_false_positives_2:8
*read_54_disablecopyonread_true_positives_1:9
+read_55_disablecopyonread_false_positives_1:9
+read_56_disablecopyonread_false_negatives_1:<
.read_57_disablecopyonread_intermediate_weights:7
(read_58_disablecopyonread_true_positives:	�7
(read_59_disablecopyonread_true_negatives:	�8
)read_60_disablecopyonread_false_positives:	�8
)read_61_disablecopyonread_false_negatives:	�
savev2_const
identity_125��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:$*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:$a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:$w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:$*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:$_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:${
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:$*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:$c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:$y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnRead2read_8_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp2read_8_disablecopyonread_batch_normalization_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_9/DisableCopyOnReadDisableCopyOnRead1read_9_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp1read_9_disablecopyonread_batch_normalization_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead9read_10_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp9read_10_disablecopyonread_batch_normalization_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_11/DisableCopyOnReadDisableCopyOnRead=read_11_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp=read_11_disablecopyonread_batch_normalization_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_dense_4_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:	*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:	e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:	{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_dense_4_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	}
Read_14/DisableCopyOnReadDisableCopyOnRead(read_14_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp(read_14_disablecopyonread_dense_5_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:	*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:	e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:	{
Read_15/DisableCopyOnReadDisableCopyOnRead&read_15_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp&read_15_disablecopyonread_dense_5_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_16/DisableCopyOnReadDisableCopyOnRead#read_16_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp#read_16_disablecopyonread_iteration^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_learning_rate^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead.read_18_disablecopyonread_adamw_m_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp.read_18_disablecopyonread_adamw_m_dense_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:$*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:$e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:$�
Read_19/DisableCopyOnReadDisableCopyOnRead.read_19_disablecopyonread_adamw_v_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp.read_19_disablecopyonread_adamw_v_dense_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:$*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:$e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:$�
Read_20/DisableCopyOnReadDisableCopyOnRead,read_20_disablecopyonread_adamw_m_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp,read_20_disablecopyonread_adamw_m_dense_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:$*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:$a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:$�
Read_21/DisableCopyOnReadDisableCopyOnRead,read_21_disablecopyonread_adamw_v_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp,read_21_disablecopyonread_adamw_v_dense_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:$*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:$a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:$�
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adamw_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adamw_m_dense_1_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:$*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:$e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:$�
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adamw_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adamw_v_dense_1_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:$*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:$e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:$�
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adamw_m_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adamw_m_dense_1_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adamw_v_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adamw_v_dense_1_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adamw_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adamw_m_dense_2_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adamw_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adamw_v_dense_2_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adamw_m_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adamw_m_dense_2_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_29/DisableCopyOnReadDisableCopyOnRead.read_29_disablecopyonread_adamw_v_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp.read_29_disablecopyonread_adamw_v_dense_2_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_30/DisableCopyOnReadDisableCopyOnRead0read_30_disablecopyonread_adamw_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp0read_30_disablecopyonread_adamw_m_dense_3_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_31/DisableCopyOnReadDisableCopyOnRead0read_31_disablecopyonread_adamw_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp0read_31_disablecopyonread_adamw_v_dense_3_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_32/DisableCopyOnReadDisableCopyOnRead.read_32_disablecopyonread_adamw_m_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp.read_32_disablecopyonread_adamw_m_dense_3_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead.read_33_disablecopyonread_adamw_v_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp.read_33_disablecopyonread_adamw_v_dense_3_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_34/DisableCopyOnReadDisableCopyOnRead;read_34_disablecopyonread_adamw_m_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp;read_34_disablecopyonread_adamw_m_batch_normalization_gamma^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_35/DisableCopyOnReadDisableCopyOnRead;read_35_disablecopyonread_adamw_v_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp;read_35_disablecopyonread_adamw_v_batch_normalization_gamma^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_36/DisableCopyOnReadDisableCopyOnRead:read_36_disablecopyonread_adamw_m_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp:read_36_disablecopyonread_adamw_m_batch_normalization_beta^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead:read_37_disablecopyonread_adamw_v_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp:read_37_disablecopyonread_adamw_v_batch_normalization_beta^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_38/DisableCopyOnReadDisableCopyOnRead0read_38_disablecopyonread_adamw_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp0read_38_disablecopyonread_adamw_m_dense_4_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:	*
dtype0o
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:	e
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes

:	�
Read_39/DisableCopyOnReadDisableCopyOnRead0read_39_disablecopyonread_adamw_v_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp0read_39_disablecopyonread_adamw_v_dense_4_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:	*
dtype0o
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:	e
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes

:	�
Read_40/DisableCopyOnReadDisableCopyOnRead.read_40_disablecopyonread_adamw_m_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp.read_40_disablecopyonread_adamw_m_dense_4_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
Read_41/DisableCopyOnReadDisableCopyOnRead.read_41_disablecopyonread_adamw_v_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp.read_41_disablecopyonread_adamw_v_dense_4_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
Read_42/DisableCopyOnReadDisableCopyOnRead0read_42_disablecopyonread_adamw_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp0read_42_disablecopyonread_adamw_m_dense_5_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:	*
dtype0o
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:	e
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes

:	�
Read_43/DisableCopyOnReadDisableCopyOnRead0read_43_disablecopyonread_adamw_v_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp0read_43_disablecopyonread_adamw_v_dense_5_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:	*
dtype0o
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:	e
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes

:	�
Read_44/DisableCopyOnReadDisableCopyOnRead.read_44_disablecopyonread_adamw_m_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp.read_44_disablecopyonread_adamw_m_dense_5_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_45/DisableCopyOnReadDisableCopyOnRead.read_45_disablecopyonread_adamw_v_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp.read_45_disablecopyonread_adamw_v_dense_5_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_46/DisableCopyOnReadDisableCopyOnRead!read_46_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp!read_46_disablecopyonread_total_1^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_47/DisableCopyOnReadDisableCopyOnRead!read_47_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp!read_47_disablecopyonread_count_1^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_48/DisableCopyOnReadDisableCopyOnReadread_48_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOpread_48_disablecopyonread_total^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_49/DisableCopyOnReadDisableCopyOnReadread_49_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOpread_49_disablecopyonread_count^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_50/DisableCopyOnReadDisableCopyOnRead*read_50_disablecopyonread_true_positives_3"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp*read_50_disablecopyonread_true_positives_3^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead+read_51_disablecopyonread_false_negatives_2"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp+read_51_disablecopyonread_false_negatives_2^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_52/DisableCopyOnReadDisableCopyOnRead*read_52_disablecopyonread_true_positives_2"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp*read_52_disablecopyonread_true_positives_2^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_53/DisableCopyOnReadDisableCopyOnRead+read_53_disablecopyonread_false_positives_2"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp+read_53_disablecopyonread_false_positives_2^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_54/DisableCopyOnReadDisableCopyOnRead*read_54_disablecopyonread_true_positives_1"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp*read_54_disablecopyonread_true_positives_1^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead+read_55_disablecopyonread_false_positives_1"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp+read_55_disablecopyonread_false_positives_1^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead+read_56_disablecopyonread_false_negatives_1"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp+read_56_disablecopyonread_false_negatives_1^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead.read_57_disablecopyonread_intermediate_weights"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp.read_57_disablecopyonread_intermediate_weights^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_58/DisableCopyOnReadDisableCopyOnRead(read_58_disablecopyonread_true_positives"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp(read_58_disablecopyonread_true_positives^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_59/DisableCopyOnReadDisableCopyOnRead(read_59_disablecopyonread_true_negatives"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp(read_59_disablecopyonread_true_negatives^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_60/DisableCopyOnReadDisableCopyOnRead)read_60_disablecopyonread_false_positives"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp)read_60_disablecopyonread_false_positives^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_61/DisableCopyOnReadDisableCopyOnRead)read_61_disablecopyonread_false_negatives"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp)read_61_disablecopyonread_false_negatives^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBCkeras_api/metrics/4/intermediate_weights/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *M
dtypesC
A2?	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_124Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_125IdentityIdentity_124:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_125Identity_125:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=?9

_output_shapes
: 

_user_specified_nameConst:/>+
)
_user_specified_namefalse_negatives:/=+
)
_user_specified_namefalse_positives:.<*
(
_user_specified_nametrue_negatives:.;*
(
_user_specified_nametrue_positives:4:0
.
_user_specified_nameintermediate_weights:19-
+
_user_specified_namefalse_negatives_1:18-
+
_user_specified_namefalse_positives_1:07,
*
_user_specified_nametrue_positives_1:16-
+
_user_specified_namefalse_positives_2:05,
*
_user_specified_nametrue_positives_2:14-
+
_user_specified_namefalse_negatives_2:03,
*
_user_specified_nametrue_positives_3:%2!

_user_specified_namecount:%1!

_user_specified_nametotal:'0#
!
_user_specified_name	count_1:'/#
!
_user_specified_name	total_1:4.0
.
_user_specified_nameAdamW/v/dense_5/bias:4-0
.
_user_specified_nameAdamW/m/dense_5/bias:6,2
0
_user_specified_nameAdamW/v/dense_5/kernel:6+2
0
_user_specified_nameAdamW/m/dense_5/kernel:4*0
.
_user_specified_nameAdamW/v/dense_4/bias:4)0
.
_user_specified_nameAdamW/m/dense_4/bias:6(2
0
_user_specified_nameAdamW/v/dense_4/kernel:6'2
0
_user_specified_nameAdamW/m/dense_4/kernel:@&<
:
_user_specified_name" AdamW/v/batch_normalization/beta:@%<
:
_user_specified_name" AdamW/m/batch_normalization/beta:A$=
;
_user_specified_name#!AdamW/v/batch_normalization/gamma:A#=
;
_user_specified_name#!AdamW/m/batch_normalization/gamma:4"0
.
_user_specified_nameAdamW/v/dense_3/bias:4!0
.
_user_specified_nameAdamW/m/dense_3/bias:6 2
0
_user_specified_nameAdamW/v/dense_3/kernel:62
0
_user_specified_nameAdamW/m/dense_3/kernel:40
.
_user_specified_nameAdamW/v/dense_2/bias:40
.
_user_specified_nameAdamW/m/dense_2/bias:62
0
_user_specified_nameAdamW/v/dense_2/kernel:62
0
_user_specified_nameAdamW/m/dense_2/kernel:40
.
_user_specified_nameAdamW/v/dense_1/bias:40
.
_user_specified_nameAdamW/m/dense_1/bias:62
0
_user_specified_nameAdamW/v/dense_1/kernel:62
0
_user_specified_nameAdamW/m/dense_1/kernel:2.
,
_user_specified_nameAdamW/v/dense/bias:2.
,
_user_specified_nameAdamW/m/dense/bias:40
.
_user_specified_nameAdamW/v/dense/kernel:40
.
_user_specified_nameAdamW/m/dense/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_5/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_4/kernel:C?
=
_user_specified_name%#batch_normalization/moving_variance:?;
9
_user_specified_name!batch_normalization/moving_mean:8
4
2
_user_specified_namebatch_normalization/beta:9	5
3
_user_specified_namebatch_normalization/gamma:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
%__inference_signature_wrapper_1063696
input_1
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1063296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063692:'#
!
_user_specified_name	1063690:'#
!
_user_specified_name	1063688:'#
!
_user_specified_name	1063686:'#
!
_user_specified_name	1063684:'#
!
_user_specified_name	1063682:'
#
!
_user_specified_name	1063680:'	#
!
_user_specified_name	1063678:'#
!
_user_specified_name	1063676:'#
!
_user_specified_name	1063674:'#
!
_user_specified_name	1063672:'#
!
_user_specified_name	1063670:'#
!
_user_specified_name	1063668:'#
!
_user_specified_name	1063666:'#
!
_user_specified_name	1063664:'#
!
_user_specified_name	1063662:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
5__inference_batch_normalization_layer_call_fn_1063789

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063330o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063785:'#
!
_user_specified_name	1063783:'#
!
_user_specified_name	1063781:'#
!
_user_specified_name	1063779:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_3_layer_call_fn_1063765

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1063437o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063761:'#
!
_user_specified_name	1063759:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_5_layer_call_and_return_conditional_losses_1063896

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
)__inference_dense_2_layer_call_fn_1063745

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1063421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063741:'#
!
_user_specified_name	1063739:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_4_layer_call_and_return_conditional_losses_1063876

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������	a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������	S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_5_layer_call_and_return_conditional_losses_1063478

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_1063565
input_1
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1063485o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063561:'#
!
_user_specified_name	1063559:'#
!
_user_specified_name	1063557:'#
!
_user_specified_name	1063555:'#
!
_user_specified_name	1063553:'#
!
_user_specified_name	1063551:'
#
!
_user_specified_name	1063549:'	#
!
_user_specified_name	1063547:'#
!
_user_specified_name	1063545:'#
!
_user_specified_name	1063543:'#
!
_user_specified_name	1063541:'#
!
_user_specified_name	1063539:'#
!
_user_specified_name	1063537:'#
!
_user_specified_name	1063535:'#
!
_user_specified_name	1063533:'#
!
_user_specified_name	1063531:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
)__inference_dense_4_layer_call_fn_1063865

inputs
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1063462o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1063861:'#
!
_user_specified_name	1063859:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�+
�
B__inference_model_layer_call_and_return_conditional_losses_1063485
input_1
dense_1063390:$
dense_1063392:$!
dense_1_1063406:$
dense_1_1063408:!
dense_2_1063422:
dense_2_1063424:!
dense_3_1063438:
dense_3_1063440:)
batch_normalization_1063443:)
batch_normalization_1063445:)
batch_normalization_1063447:)
batch_normalization_1063449:!
dense_4_1063463:	
dense_4_1063465:	!
dense_5_1063479:	
dense_5_1063481:
identity��+batch_normalization/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_1063390dense_1063392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1063389�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1063406dense_1_1063408*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1063405�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1063422dense_2_1063424*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1063421�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_1063438dense_3_1063440*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1063437�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0batch_normalization_1063443batch_normalization_1063445batch_normalization_1063447batch_normalization_1063449*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063330�
dense_4/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0dense_4_1063463dense_4_1063465*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1063462�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_1063479dense_5_1063481*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1063478w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:'#
!
_user_specified_name	1063481:'#
!
_user_specified_name	1063479:'#
!
_user_specified_name	1063465:'#
!
_user_specified_name	1063463:'#
!
_user_specified_name	1063449:'#
!
_user_specified_name	1063447:'
#
!
_user_specified_name	1063445:'	#
!
_user_specified_name	1063443:'#
!
_user_specified_name	1063440:'#
!
_user_specified_name	1063438:'#
!
_user_specified_name	1063424:'#
!
_user_specified_name	1063422:'#
!
_user_specified_name	1063408:'#
!
_user_specified_name	1063406:'#
!
_user_specified_name	1063392:'#
!
_user_specified_name	1063390:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������;
dense_50
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8axis
	9gamma
:beta
;moving_mean
<moving_variance"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias"
_tf_keras_layer
�
0
1
 2
!3
(4
)5
06
17
98
:9
;10
<11
C12
D13
K14
L15"
trackable_list_wrapper
�
0
1
 2
!3
(4
)5
06
17
98
:9
C10
D11
K12
L13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Rtrace_0
Strace_12�
'__inference_model_layer_call_fn_1063565
'__inference_model_layer_call_fn_1063602�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zRtrace_0zStrace_1
�
Ttrace_0
Utrace_12�
B__inference_model_layer_call_and_return_conditional_losses_1063485
B__inference_model_layer_call_and_return_conditional_losses_1063528�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0zUtrace_1
�B�
"__inference__wrapped_model_1063296input_1"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
V
_variables
W_iterations
X_learning_rate
Y_index_dict
Z
_momentums
[_velocities
\_update_step_xla"
experimentalOptimizer
,
]serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ctrace_02�
'__inference_dense_layer_call_fn_1063705�
���
FullArgSpec
args�

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
annotations� *
 zctrace_0
�
dtrace_02�
B__inference_dense_layer_call_and_return_conditional_losses_1063716�
���
FullArgSpec
args�

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
annotations� *
 zdtrace_0
:$2dense/kernel
:$2
dense/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
jtrace_02�
)__inference_dense_1_layer_call_fn_1063725�
���
FullArgSpec
args�

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
annotations� *
 zjtrace_0
�
ktrace_02�
D__inference_dense_1_layer_call_and_return_conditional_losses_1063736�
���
FullArgSpec
args�

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
annotations� *
 zktrace_0
 :$2dense_1/kernel
:2dense_1/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
qtrace_02�
)__inference_dense_2_layer_call_fn_1063745�
���
FullArgSpec
args�

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
annotations� *
 zqtrace_0
�
rtrace_02�
D__inference_dense_2_layer_call_and_return_conditional_losses_1063756�
���
FullArgSpec
args�

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
annotations� *
 zrtrace_0
 :2dense_2/kernel
:2dense_2/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
xtrace_02�
)__inference_dense_3_layer_call_fn_1063765�
���
FullArgSpec
args�

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
annotations� *
 zxtrace_0
�
ytrace_02�
D__inference_dense_3_layer_call_and_return_conditional_losses_1063776�
���
FullArgSpec
args�

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
annotations� *
 zytrace_0
 :2dense_3/kernel
:2dense_3/bias
<
90
:1
;2
<3"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
�trace_12�
5__inference_batch_normalization_layer_call_fn_1063789
5__inference_batch_normalization_layer_call_fn_1063802�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063836
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063856�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_4_layer_call_fn_1063865�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_4_layer_call_and_return_conditional_losses_1063876�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 :	2dense_4/kernel
:	2dense_4/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_5_layer_call_fn_1063885�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_5_layer_call_and_return_conditional_losses_1063896�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 :	2dense_5/kernel
:2dense_5/bias
.
;0
<1"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_model_layer_call_fn_1063565input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_layer_call_fn_1063602input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1063485input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_layer_call_and_return_conditional_losses_1063528input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
W0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
%__inference_signature_wrapper_1063696input_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_1
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
�B�
'__inference_dense_layer_call_fn_1063705inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
B__inference_dense_layer_call_and_return_conditional_losses_1063716inputs"�
���
FullArgSpec
args�

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
�B�
)__inference_dense_1_layer_call_fn_1063725inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_dense_1_layer_call_and_return_conditional_losses_1063736inputs"�
���
FullArgSpec
args�

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
�B�
)__inference_dense_2_layer_call_fn_1063745inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_dense_2_layer_call_and_return_conditional_losses_1063756inputs"�
���
FullArgSpec
args�

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
�B�
)__inference_dense_3_layer_call_fn_1063765inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_dense_3_layer_call_and_return_conditional_losses_1063776inputs"�
���
FullArgSpec
args�

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
annotations� *
 
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_batch_normalization_layer_call_fn_1063789inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_layer_call_fn_1063802inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063836inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063856inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
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
�B�
)__inference_dense_4_layer_call_fn_1063865inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_dense_4_layer_call_and_return_conditional_losses_1063876inputs"�
���
FullArgSpec
args�

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
�B�
)__inference_dense_5_layer_call_fn_1063885inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_dense_5_layer_call_and_return_conditional_losses_1063896inputs"�
���
FullArgSpec
args�

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
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
v
�	variables
�	keras_api
�
thresholds
�true_positives
�false_negatives"
_tf_keras_metric
v
�	variables
�	keras_api
�
thresholds
�true_positives
�false_positives"
_tf_keras_metric
�
�	variables
�	keras_api
�true_positives
�false_positives
�false_negatives
�intermediate_weights"
_tf_keras_metric
�
�	variables
�	keras_api
�true_positives
�true_negatives
�false_positives
�false_negatives"
_tf_keras_metric
$:"$2AdamW/m/dense/kernel
$:"$2AdamW/v/dense/kernel
:$2AdamW/m/dense/bias
:$2AdamW/v/dense/bias
&:$$2AdamW/m/dense_1/kernel
&:$$2AdamW/v/dense_1/kernel
 :2AdamW/m/dense_1/bias
 :2AdamW/v/dense_1/bias
&:$2AdamW/m/dense_2/kernel
&:$2AdamW/v/dense_2/kernel
 :2AdamW/m/dense_2/bias
 :2AdamW/v/dense_2/bias
&:$2AdamW/m/dense_3/kernel
&:$2AdamW/v/dense_3/kernel
 :2AdamW/m/dense_3/bias
 :2AdamW/v/dense_3/bias
-:+2!AdamW/m/batch_normalization/gamma
-:+2!AdamW/v/batch_normalization/gamma
,:*2 AdamW/m/batch_normalization/beta
,:*2 AdamW/v/batch_normalization/beta
&:$	2AdamW/m/dense_4/kernel
&:$	2AdamW/v/dense_4/kernel
 :	2AdamW/m/dense_4/bias
 :	2AdamW/v/dense_4/bias
&:$	2AdamW/m/dense_5/kernel
&:$	2AdamW/v/dense_5/kernel
 :2AdamW/m/dense_5/bias
 :2AdamW/v/dense_5/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
@
�0
�1
�2
�3"
trackable_list_wrapper
.
�	variables"
_generic_user_object
: (2true_positives
: (2false_positives
: (2false_negatives
$:" (2intermediate_weights
@
�0
�1
�2
�3"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:� (2true_positives
:� (2true_negatives
 :� (2false_positives
 :� (2false_negatives�
"__inference__wrapped_model_1063296w !()01<9;:CDKL0�-
&�#
!�
input_1���������
� "1�.
,
dense_5!�
dense_5����������
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063836m;<9:7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1063856m<9;:7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
5__inference_batch_normalization_layer_call_fn_1063789b;<9:7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
5__inference_batch_normalization_layer_call_fn_1063802b<9;:7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
D__inference_dense_1_layer_call_and_return_conditional_losses_1063736c !/�,
%�"
 �
inputs���������$
� ",�)
"�
tensor_0���������
� �
)__inference_dense_1_layer_call_fn_1063725X !/�,
%�"
 �
inputs���������$
� "!�
unknown����������
D__inference_dense_2_layer_call_and_return_conditional_losses_1063756c()/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
)__inference_dense_2_layer_call_fn_1063745X()/�,
%�"
 �
inputs���������
� "!�
unknown����������
D__inference_dense_3_layer_call_and_return_conditional_losses_1063776c01/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
)__inference_dense_3_layer_call_fn_1063765X01/�,
%�"
 �
inputs���������
� "!�
unknown����������
D__inference_dense_4_layer_call_and_return_conditional_losses_1063876cCD/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������	
� �
)__inference_dense_4_layer_call_fn_1063865XCD/�,
%�"
 �
inputs���������
� "!�
unknown���������	�
D__inference_dense_5_layer_call_and_return_conditional_losses_1063896cKL/�,
%�"
 �
inputs���������	
� ",�)
"�
tensor_0���������
� �
)__inference_dense_5_layer_call_fn_1063885XKL/�,
%�"
 �
inputs���������	
� "!�
unknown����������
B__inference_dense_layer_call_and_return_conditional_losses_1063716c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������$
� �
'__inference_dense_layer_call_fn_1063705X/�,
%�"
 �
inputs���������
� "!�
unknown���������$�
B__inference_model_layer_call_and_return_conditional_losses_1063485z !()01;<9:CDKL8�5
.�+
!�
input_1���������
p

 
� ",�)
"�
tensor_0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_1063528z !()01<9;:CDKL8�5
.�+
!�
input_1���������
p 

 
� ",�)
"�
tensor_0���������
� �
'__inference_model_layer_call_fn_1063565o !()01;<9:CDKL8�5
.�+
!�
input_1���������
p

 
� "!�
unknown����������
'__inference_model_layer_call_fn_1063602o !()01<9;:CDKL8�5
.�+
!�
input_1���������
p 

 
� "!�
unknown����������
%__inference_signature_wrapper_1063696� !()01<9;:CDKL;�8
� 
1�.
,
input_1!�
input_1���������"1�.
,
dense_5!�
dense_5���������