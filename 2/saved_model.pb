βε#
€ω
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Α
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018ϋ°
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	@*
dtype0

Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_22/bias/v
{
)Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/v

+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/v
{
)Adam/conv2d_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_21/kernel/v

+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_20/bias/v
{
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/v

+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/v
{
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_19/kernel/v

+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_18/bias/v
{
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_18/kernel/v

+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_17/bias/v
{
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_17/kernel/v

+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	@*
dtype0

Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_22/bias/m
{
)Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/m

+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/m
{
)Adam/conv2d_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_21/kernel/m

+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_20/bias/m
{
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/m

+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/m
{
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_19/kernel/m

+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_18/bias/m
{
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_18/kernel/m

+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_17/bias/m
{
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_17/kernel/m

+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*&
_output_shapes
: *
dtype0
h
StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar
a
StateVar/Read/ReadVariableOpReadVariableOpStateVar*
_output_shapes
:*
dtype0	
l

StateVar_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_1
e
StateVar_1/Read/ReadVariableOpReadVariableOp
StateVar_1*
_output_shapes
:*
dtype0	
l

StateVar_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_2
e
StateVar_2/Read/ReadVariableOpReadVariableOp
StateVar_2*
_output_shapes
:*
dtype0	
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	@*
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:@*
dtype0

conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0

conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0

conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:@*
dtype0

conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:@*
dtype0

conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
: *
dtype0

conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
©
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Β¨
value·¨B³¨ B«¨

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
¨
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
·
#layer-0
$layer-1
%layer-2
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
Θ
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op*

5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
Θ
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op*

D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
Θ
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op*

S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses* 
Θ
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias
 a_jit_compiled_convolution_op*

b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses* 
Θ
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias
 p_jit_compiled_convolution_op*

q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses* 
Θ
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

}kernel
~bias
 _jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
~
20
31
A2
B3
P4
Q5
_6
`7
n8
o9
}10
~11
12
13
14
15*
~
20
31
A2
B3
P4
Q5
_6
`7
n8
o9
}10
~11
12
13
14
15*
* 
΅
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
‘trace_0
’trace_1
£trace_2
€trace_3* 
:
₯trace_0
¦trace_1
§trace_2
¨trace_3* 
* 

	©iter
ͺbeta_1
«beta_2

¬decay
­learning_rate2m3mAmBmPmQm_m`mnmom}m~m	m	m	m	m2v3vAvBv Pv‘Qv’_v£`v€nv₯ov¦}v§~v¨	v©	vͺ	v«	v¬*

?serving_default* 

―	variables
°trainable_variables
±regularization_losses
²	keras_api
³__call__
+΄&call_and_return_all_conditional_losses* 

΅	variables
Άtrainable_variables
·regularization_losses
Έ	keras_api
Ή__call__
+Ί&call_and_return_all_conditional_losses* 
* 
* 
* 

»non_trainable_variables
Όlayers
½metrics
 Ύlayer_regularization_losses
Ώlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
:
ΐtrace_0
Αtrace_1
Βtrace_2
Γtrace_3* 
:
Δtrace_0
Εtrace_1
Ζtrace_2
Ηtrace_3* 
?
Θ	variables
Ιtrainable_variables
Κregularization_losses
Λ	keras_api
Μ__call__
+Ν&call_and_return_all_conditional_losses
Ξ_random_generator*
?
Ο	variables
Πtrainable_variables
Ρregularization_losses
?	keras_api
Σ__call__
+Τ&call_and_return_all_conditional_losses
Υ_random_generator*
?
Φ	variables
Χtrainable_variables
Ψregularization_losses
Ω	keras_api
Ϊ__call__
+Ϋ&call_and_return_all_conditional_losses
ά_random_generator*
* 
* 
* 

έnon_trainable_variables
ήlayers
ίmetrics
 ΰlayer_regularization_losses
αlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
:
βtrace_0
γtrace_1
δtrace_2
εtrace_3* 
:
ζtrace_0
ηtrace_1
θtrace_2
ιtrace_3* 

20
31*

20
31*
* 

κnon_trainable_variables
λlayers
μmetrics
 νlayer_regularization_losses
ξlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

οtrace_0* 

πtrace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ρnon_trainable_variables
ςlayers
σmetrics
 τlayer_regularization_losses
υlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

φtrace_0* 

χtrace_0* 

A0
B1*

A0
B1*
* 

ψnon_trainable_variables
ωlayers
ϊmetrics
 ϋlayer_regularization_losses
όlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

ύtrace_0* 

ώtrace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

?non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

P0
Q1*

P0
Q1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

_0
`1*

_0
`1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses* 

 trace_0* 

‘trace_0* 

n0
o1*

n0
o1*
* 

’non_trainable_variables
£layers
€metrics
 ₯layer_regularization_losses
¦layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

§trace_0* 

¨trace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

©non_trainable_variables
ͺlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 

?trace_0* 

―trace_0* 

}0
~1*

}0
~1*
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
΄layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*

΅trace_0* 

Άtrace_0* 
`Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

·non_trainable_variables
Έlayers
Ήmetrics
 Ίlayer_regularization_losses
»layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Όtrace_0* 

½trace_0* 
* 
* 
* 

Ύnon_trainable_variables
Ώlayers
ΐmetrics
 Αlayer_regularization_losses
Βlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Γtrace_0* 

Δtrace_0* 

0
1*

0
1*
* 

Εnon_trainable_variables
Ζlayers
Ηmetrics
 Θlayer_regularization_losses
Ιlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Κtrace_0* 

Λtrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Μnon_trainable_variables
Νlayers
Ξmetrics
 Οlayer_regularization_losses
Πlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ρtrace_0* 

?trace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*

Σ0
Τ1*
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
* 
* 
* 

Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
―	variables
°trainable_variables
±regularization_losses
³__call__
+΄&call_and_return_all_conditional_losses
'΄"call_and_return_conditional_losses* 

Ϊtrace_0* 

Ϋtrace_0* 
* 
* 
* 

άnon_trainable_variables
έlayers
ήmetrics
 ίlayer_regularization_losses
ΰlayer_metrics
΅	variables
Άtrainable_variables
·regularization_losses
Ή__call__
+Ί&call_and_return_all_conditional_losses
'Ί"call_and_return_conditional_losses* 

αtrace_0* 

βtrace_0* 
* 

0
1* 
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

γnon_trainable_variables
δlayers
εmetrics
 ζlayer_regularization_losses
ηlayer_metrics
Θ	variables
Ιtrainable_variables
Κregularization_losses
Μ__call__
+Ν&call_and_return_all_conditional_losses
'Ν"call_and_return_conditional_losses* 

θtrace_0
ιtrace_1* 

κtrace_0
λtrace_1* 

μ
_generator*
* 
* 
* 

νnon_trainable_variables
ξlayers
οmetrics
 πlayer_regularization_losses
ρlayer_metrics
Ο	variables
Πtrainable_variables
Ρregularization_losses
Σ__call__
+Τ&call_and_return_all_conditional_losses
'Τ"call_and_return_conditional_losses* 

ςtrace_0
σtrace_1* 

τtrace_0
υtrace_1* 

φ
_generator*
* 
* 
* 

χnon_trainable_variables
ψlayers
ωmetrics
 ϊlayer_regularization_losses
ϋlayer_metrics
Φ	variables
Χtrainable_variables
Ψregularization_losses
Ϊ__call__
+Ϋ&call_and_return_all_conditional_losses
'Ϋ"call_and_return_conditional_losses* 

όtrace_0
ύtrace_1* 

ώtrace_0
?trace_1* 


_generator*
* 

#0
$1
%2*
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
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*
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


_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 


_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 


_state_var*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
vp
VARIABLE_VALUE
StateVar_2Rlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE
StateVar_1Rlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEStateVarRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_sequential_inputPlaceholder*1
_output_shapes
:?????????*
dtype0*&
shape:?????????
β
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_57363
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpStateVar_2/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp+Adam/conv2d_21/kernel/m/Read/ReadVariableOp)Adam/conv2d_21/bias/m/Read/ReadVariableOp+Adam/conv2d_22/kernel/m/Read/ReadVariableOp)Adam/conv2d_22/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp+Adam/conv2d_21/kernel/v/Read/ReadVariableOp)Adam/conv2d_21/bias/v/Read/ReadVariableOp+Adam/conv2d_22/kernel/v/Read/ReadVariableOp)Adam/conv2d_22/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst*I
TinB
@2>				*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_59276
Π
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount
StateVar_2
StateVar_1StateVarAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/conv2d_21/kernel/mAdam/conv2d_21/bias/mAdam/conv2d_22/kernel/mAdam/conv2d_22/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/conv2d_21/kernel/vAdam/conv2d_21/bias/vAdam/conv2d_22/kernel/vAdam/conv2d_22/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*H
TinA
?2=*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_59466΅λ
·
Ν
map_while_cond_58663$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_58663___redundant_placeholder0;
7map_while_map_while_cond_58663___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
ΔΓ
¨
H__inference_sequential_11_layer_call_and_return_conditional_losses_58377

inputs.
 random_flip_13_map_while_input_6:	I
;random_rotation_13_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_8_stateful_uniform_rngreadandskip_resource:	
identity’random_flip_13/map/while’2random_rotation_13/stateful_uniform/RngReadAndSkip’-random_zoom_8/stateful_uniform/RngReadAndSkipN
random_flip_13/map/ShapeShapeinputs*
T0*
_output_shapes
:p
&random_flip_13/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(random_flip_13/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(random_flip_13/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 random_flip_13/map/strided_sliceStridedSlice!random_flip_13/map/Shape:output:0/random_flip_13/map/strided_slice/stack:output:01random_flip_13/map/strided_slice/stack_1:output:01random_flip_13/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
.random_flip_13/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????λ
 random_flip_13/map/TensorArrayV2TensorListReserve7random_flip_13/map/TensorArrayV2/element_shape:output:0)random_flip_13/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
Hrandom_flip_13/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
:random_flip_13/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsQrandom_flip_13/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?Z
random_flip_13/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
0random_flip_13/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????ο
"random_flip_13/map/TensorArrayV2_1TensorListReserve9random_flip_13/map/TensorArrayV2_1/element_shape:output:0)random_flip_13/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?g
%random_flip_13/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
random_flip_13/map/whileWhile.random_flip_13/map/while/loop_counter:output:0)random_flip_13/map/strided_slice:output:0!random_flip_13/map/Const:output:0+random_flip_13/map/TensorArrayV2_1:handle:0)random_flip_13/map/strided_slice:output:0Jrandom_flip_13/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0 random_flip_13_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( */
body'R%
#random_flip_13_map_while_body_58023*/
cond'R%
#random_flip_13_map_while_cond_58022*!
output_shapes
: : : : : : : 
Crandom_flip_13/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
5random_flip_13/map/TensorArrayV2Stack/TensorListStackTensorListStack!random_flip_13/map/while:output:3Lrandom_flip_13/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:?????????*
element_dtype0
random_rotation_13/ShapeShape>random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:p
&random_rotation_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(random_rotation_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(random_rotation_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 random_rotation_13/strided_sliceStridedSlice!random_rotation_13/Shape:output:0/random_rotation_13/strided_slice/stack:output:01random_rotation_13/strided_slice/stack_1:output:01random_rotation_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
(random_rotation_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????}
*random_rotation_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????t
*random_rotation_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"random_rotation_13/strided_slice_1StridedSlice!random_rotation_13/Shape:output:01random_rotation_13/strided_slice_1/stack:output:03random_rotation_13/strided_slice_1/stack_1:output:03random_rotation_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_13/CastCast+random_rotation_13/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: {
(random_rotation_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????}
*random_rotation_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????t
*random_rotation_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"random_rotation_13/strided_slice_2StridedSlice!random_rotation_13/Shape:output:01random_rotation_13/strided_slice_2/stack:output:03random_rotation_13/strided_slice_2/stack_1:output:03random_rotation_13/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
random_rotation_13/Cast_1Cast+random_rotation_13/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
)random_rotation_13/stateful_uniform/shapePack)random_rotation_13/strided_slice:output:0*
N*
T0*
_output_shapes
:l
'random_rotation_13/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *&_Δl
'random_rotation_13/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *&_Ds
)random_rotation_13/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ή
(random_rotation_13/stateful_uniform/ProdProd2random_rotation_13/stateful_uniform/shape:output:02random_rotation_13/stateful_uniform/Const:output:0*
T0*
_output_shapes
: l
*random_rotation_13/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*random_rotation_13/stateful_uniform/Cast_1Cast1random_rotation_13/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2random_rotation_13/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_rotation_13_stateful_uniform_rngreadandskip_resource3random_rotation_13/stateful_uniform/Cast/x:output:0.random_rotation_13/stateful_uniform/Cast_1:y:0*
_output_shapes
:
7random_rotation_13/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9random_rotation_13/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9random_rotation_13/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1random_rotation_13/stateful_uniform/strided_sliceStridedSlice:random_rotation_13/stateful_uniform/RngReadAndSkip:value:0@random_rotation_13/stateful_uniform/strided_slice/stack:output:0Brandom_rotation_13/stateful_uniform/strided_slice/stack_1:output:0Brandom_rotation_13/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+random_rotation_13/stateful_uniform/BitcastBitcast:random_rotation_13/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9random_rotation_13/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;random_rotation_13/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;random_rotation_13/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3random_rotation_13/stateful_uniform/strided_slice_1StridedSlice:random_rotation_13/stateful_uniform/RngReadAndSkip:value:0Brandom_rotation_13/stateful_uniform/strided_slice_1/stack:output:0Drandom_rotation_13/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_rotation_13/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-random_rotation_13/stateful_uniform/Bitcast_1Bitcast<random_rotation_13/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
@random_rotation_13/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :κ
<random_rotation_13/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_rotation_13/stateful_uniform/shape:output:06random_rotation_13/stateful_uniform/Bitcast_1:output:04random_rotation_13/stateful_uniform/Bitcast:output:0Irandom_rotation_13/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????³
'random_rotation_13/stateful_uniform/subSub0random_rotation_13/stateful_uniform/max:output:00random_rotation_13/stateful_uniform/min:output:0*
T0*
_output_shapes
: Π
'random_rotation_13/stateful_uniform/mulMulErandom_rotation_13/stateful_uniform/StatelessRandomUniformV2:output:0+random_rotation_13/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????Ή
#random_rotation_13/stateful_uniformAddV2+random_rotation_13/stateful_uniform/mul:z:00random_rotation_13/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????m
(random_rotation_13/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ? 
&random_rotation_13/rotation_matrix/subSubrandom_rotation_13/Cast_1:y:01random_rotation_13/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
&random_rotation_13/rotation_matrix/CosCos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????o
*random_rotation_13/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?€
(random_rotation_13/rotation_matrix/sub_1Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ΅
&random_rotation_13/rotation_matrix/mulMul*random_rotation_13/rotation_matrix/Cos:y:0,random_rotation_13/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????
&random_rotation_13/rotation_matrix/SinSin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????o
*random_rotation_13/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?’
(random_rotation_13/rotation_matrix/sub_2Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ·
(random_rotation_13/rotation_matrix/mul_1Mul*random_rotation_13/rotation_matrix/Sin:y:0,random_rotation_13/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????·
(random_rotation_13/rotation_matrix/sub_3Sub*random_rotation_13/rotation_matrix/mul:z:0,random_rotation_13/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????·
(random_rotation_13/rotation_matrix/sub_4Sub*random_rotation_13/rotation_matrix/sub:z:0,random_rotation_13/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????q
,random_rotation_13/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Θ
*random_rotation_13/rotation_matrix/truedivRealDiv,random_rotation_13/rotation_matrix/sub_4:z:05random_rotation_13/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????o
*random_rotation_13/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?’
(random_rotation_13/rotation_matrix/sub_5Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
(random_rotation_13/rotation_matrix/Sin_1Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????o
*random_rotation_13/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?€
(random_rotation_13/rotation_matrix/sub_6Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Ή
(random_rotation_13/rotation_matrix/mul_2Mul,random_rotation_13/rotation_matrix/Sin_1:y:0,random_rotation_13/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????
(random_rotation_13/rotation_matrix/Cos_1Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????o
*random_rotation_13/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?’
(random_rotation_13/rotation_matrix/sub_7Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Ή
(random_rotation_13/rotation_matrix/mul_3Mul,random_rotation_13/rotation_matrix/Cos_1:y:0,random_rotation_13/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????Ή
&random_rotation_13/rotation_matrix/addAddV2,random_rotation_13/rotation_matrix/mul_2:z:0,random_rotation_13/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????·
(random_rotation_13/rotation_matrix/sub_8Sub,random_rotation_13/rotation_matrix/sub_5:z:0*random_rotation_13/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????s
.random_rotation_13/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Μ
,random_rotation_13/rotation_matrix/truediv_1RealDiv,random_rotation_13/rotation_matrix/sub_8:z:07random_rotation_13/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????
(random_rotation_13/rotation_matrix/ShapeShape'random_rotation_13/stateful_uniform:z:0*
T0*
_output_shapes
:
6random_rotation_13/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8random_rotation_13/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8random_rotation_13/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0random_rotation_13/rotation_matrix/strided_sliceStridedSlice1random_rotation_13/rotation_matrix/Shape:output:0?random_rotation_13/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
(random_rotation_13/rotation_matrix/Cos_2Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
8random_rotation_13/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
2random_rotation_13/rotation_matrix/strided_slice_1StridedSlice,random_rotation_13/rotation_matrix/Cos_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
(random_rotation_13/rotation_matrix/Sin_2Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
8random_rotation_13/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
2random_rotation_13/rotation_matrix/strided_slice_2StridedSlice,random_rotation_13/rotation_matrix/Sin_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
&random_rotation_13/rotation_matrix/NegNeg;random_rotation_13/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????
8random_rotation_13/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ΅
2random_rotation_13/rotation_matrix/strided_slice_3StridedSlice.random_rotation_13/rotation_matrix/truediv:z:0Arandom_rotation_13/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
(random_rotation_13/rotation_matrix/Sin_3Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
8random_rotation_13/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
2random_rotation_13/rotation_matrix/strided_slice_4StridedSlice,random_rotation_13/rotation_matrix/Sin_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
(random_rotation_13/rotation_matrix/Cos_3Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
8random_rotation_13/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
2random_rotation_13/rotation_matrix/strided_slice_5StridedSlice,random_rotation_13/rotation_matrix/Cos_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
8random_rotation_13/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
:random_rotation_13/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ·
2random_rotation_13/rotation_matrix/strided_slice_6StridedSlice0random_rotation_13/rotation_matrix/truediv_1:z:0Arandom_rotation_13/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_masks
1random_rotation_13/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ά
/random_rotation_13/rotation_matrix/zeros/packedPack9random_rotation_13/rotation_matrix/strided_slice:output:0:random_rotation_13/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:s
.random_rotation_13/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Υ
(random_rotation_13/rotation_matrix/zerosFill8random_rotation_13/rotation_matrix/zeros/packed:output:07random_rotation_13/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????p
.random_rotation_13/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ή
)random_rotation_13/rotation_matrix/concatConcatV2;random_rotation_13/rotation_matrix/strided_slice_1:output:0*random_rotation_13/rotation_matrix/Neg:y:0;random_rotation_13/rotation_matrix/strided_slice_3:output:0;random_rotation_13/rotation_matrix/strided_slice_4:output:0;random_rotation_13/rotation_matrix/strided_slice_5:output:0;random_rotation_13/rotation_matrix/strided_slice_6:output:01random_rotation_13/rotation_matrix/zeros:output:07random_rotation_13/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
"random_rotation_13/transform/ShapeShape>random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:z
0random_rotation_13/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2random_rotation_13/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2random_rotation_13/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ξ
*random_rotation_13/transform/strided_sliceStridedSlice+random_rotation_13/transform/Shape:output:09random_rotation_13/transform/strided_slice/stack:output:0;random_rotation_13/transform/strided_slice/stack_1:output:0;random_rotation_13/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:l
'random_rotation_13/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ₯
7random_rotation_13/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3>random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:02random_rotation_13/rotation_matrix/concat:output:03random_rotation_13/transform/strided_slice:output:00random_rotation_13/transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
random_zoom_8/ShapeShapeLrandom_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:k
!random_zoom_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#random_zoom_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#random_zoom_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_8/strided_sliceStridedSlicerandom_zoom_8/Shape:output:0*random_zoom_8/strided_slice/stack:output:0,random_zoom_8/strided_slice/stack_1:output:0,random_zoom_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
#random_zoom_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????x
%random_zoom_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????o
%random_zoom_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_8/strided_slice_1StridedSlicerandom_zoom_8/Shape:output:0,random_zoom_8/strided_slice_1/stack:output:0.random_zoom_8/strided_slice_1/stack_1:output:0.random_zoom_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
random_zoom_8/CastCast&random_zoom_8/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: v
#random_zoom_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????x
%random_zoom_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????o
%random_zoom_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_8/strided_slice_2StridedSlicerandom_zoom_8/Shape:output:0,random_zoom_8/strided_slice_2/stack:output:0.random_zoom_8/strided_slice_2/stack_1:output:0.random_zoom_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
random_zoom_8/Cast_1Cast&random_zoom_8/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&random_zoom_8/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :±
$random_zoom_8/stateful_uniform/shapePack$random_zoom_8/strided_slice:output:0/random_zoom_8/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:g
"random_zoom_8/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *Y?g
"random_zoom_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33?n
$random_zoom_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ͺ
#random_zoom_8/stateful_uniform/ProdProd-random_zoom_8/stateful_uniform/shape:output:0-random_zoom_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
%random_zoom_8/stateful_uniform/Cast_1Cast,random_zoom_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ξ
-random_zoom_8/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_8_stateful_uniform_rngreadandskip_resource.random_zoom_8/stateful_uniform/Cast/x:output:0)random_zoom_8/stateful_uniform/Cast_1:y:0*
_output_shapes
:|
2random_zoom_8/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4random_zoom_8/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom_8/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ς
,random_zoom_8/stateful_uniform/strided_sliceStridedSlice5random_zoom_8/stateful_uniform/RngReadAndSkip:value:0;random_zoom_8/stateful_uniform/strided_slice/stack:output:0=random_zoom_8/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
&random_zoom_8/stateful_uniform/BitcastBitcast5random_zoom_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:θ
.random_zoom_8/stateful_uniform/strided_slice_1StridedSlice5random_zoom_8/stateful_uniform/RngReadAndSkip:value:0=random_zoom_8/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_8/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
(random_zoom_8/stateful_uniform/Bitcast_1Bitcast7random_zoom_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Υ
7random_zoom_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_8/stateful_uniform/shape:output:01random_zoom_8/stateful_uniform/Bitcast_1:output:0/random_zoom_8/stateful_uniform/Bitcast:output:0Drandom_zoom_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????€
"random_zoom_8/stateful_uniform/subSub+random_zoom_8/stateful_uniform/max:output:0+random_zoom_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: Ε
"random_zoom_8/stateful_uniform/mulMul@random_zoom_8/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_8/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:??????????
random_zoom_8/stateful_uniformAddV2&random_zoom_8/stateful_uniform/mul:z:0+random_zoom_8/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????[
random_zoom_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Η
random_zoom_8/concatConcatV2"random_zoom_8/stateful_uniform:z:0"random_zoom_8/stateful_uniform:z:0"random_zoom_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????l
random_zoom_8/zoom_matrix/ShapeShaperandom_zoom_8/concat:output:0*
T0*
_output_shapes
:w
-random_zoom_8/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/random_zoom_8/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_zoom_8/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Σ
'random_zoom_8/zoom_matrix/strided_sliceStridedSlice(random_zoom_8/zoom_matrix/Shape:output:06random_zoom_8/zoom_matrix/strided_slice/stack:output:08random_zoom_8/zoom_matrix/strided_slice/stack_1:output:08random_zoom_8/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_zoom_8/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom_8/zoom_matrix/subSubrandom_zoom_8/Cast_1:y:0(random_zoom_8/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_8/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
!random_zoom_8/zoom_matrix/truedivRealDiv!random_zoom_8/zoom_matrix/sub:z:0,random_zoom_8/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
/random_zoom_8/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
1random_zoom_8/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_8/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_8/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_8/concat:output:08random_zoom_8/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_8/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_8/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_8/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Έ
random_zoom_8/zoom_matrix/sub_1Sub*random_zoom_8/zoom_matrix/sub_1/x:output:02random_zoom_8/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????’
random_zoom_8/zoom_matrix/mulMul%random_zoom_8/zoom_matrix/truediv:z:0#random_zoom_8/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????f
!random_zoom_8/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom_8/zoom_matrix/sub_2Subrandom_zoom_8/Cast:y:0*random_zoom_8/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_8/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @€
#random_zoom_8/zoom_matrix/truediv_1RealDiv#random_zoom_8/zoom_matrix/sub_2:z:0.random_zoom_8/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
/random_zoom_8/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_8/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_8/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_8/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_8/concat:output:08random_zoom_8/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_8/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_8/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_8/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Έ
random_zoom_8/zoom_matrix/sub_3Sub*random_zoom_8/zoom_matrix/sub_3/x:output:02random_zoom_8/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????¦
random_zoom_8/zoom_matrix/mul_1Mul'random_zoom_8/zoom_matrix/truediv_1:z:0#random_zoom_8/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????
/random_zoom_8/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
1random_zoom_8/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_8/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_8/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_8/concat:output:08random_zoom_8/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_8/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_8/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_8/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Α
&random_zoom_8/zoom_matrix/zeros/packedPack0random_zoom_8/zoom_matrix/strided_slice:output:01random_zoom_8/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom_8/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ί
random_zoom_8/zoom_matrix/zerosFill/random_zoom_8/zoom_matrix/zeros/packed:output:0.random_zoom_8/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????l
*random_zoom_8/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ε
(random_zoom_8/zoom_matrix/zeros_1/packedPack0random_zoom_8/zoom_matrix/strided_slice:output:03random_zoom_8/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_8/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ΐ
!random_zoom_8/zoom_matrix/zeros_1Fill1random_zoom_8/zoom_matrix/zeros_1/packed:output:00random_zoom_8/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
/random_zoom_8/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_8/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_8/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_8/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_8/concat:output:08random_zoom_8/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_8/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_8/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_8/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ε
(random_zoom_8/zoom_matrix/zeros_2/packedPack0random_zoom_8/zoom_matrix/strided_slice:output:03random_zoom_8/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_8/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ΐ
!random_zoom_8/zoom_matrix/zeros_2Fill1random_zoom_8/zoom_matrix/zeros_2/packed:output:00random_zoom_8/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????g
%random_zoom_8/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ι
 random_zoom_8/zoom_matrix/concatConcatV22random_zoom_8/zoom_matrix/strided_slice_3:output:0(random_zoom_8/zoom_matrix/zeros:output:0!random_zoom_8/zoom_matrix/mul:z:0*random_zoom_8/zoom_matrix/zeros_1:output:02random_zoom_8/zoom_matrix/strided_slice_4:output:0#random_zoom_8/zoom_matrix/mul_1:z:0*random_zoom_8/zoom_matrix/zeros_2:output:0.random_zoom_8/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
random_zoom_8/transform/ShapeShapeLrandom_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:u
+random_zoom_8/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_8/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_8/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
%random_zoom_8/transform/strided_sliceStridedSlice&random_zoom_8/transform/Shape:output:04random_zoom_8/transform/strided_slice/stack:output:06random_zoom_8/transform/strided_slice/stack_1:output:06random_zoom_8/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
"random_zoom_8/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
2random_zoom_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Lrandom_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_8/zoom_matrix/concat:output:0.random_zoom_8/transform/strided_slice:output:0+random_zoom_8/transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR 
IdentityIdentityGrandom_zoom_8/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????Ζ
NoOpNoOp^random_flip_13/map/while3^random_rotation_13/stateful_uniform/RngReadAndSkip.^random_zoom_8/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : 24
random_flip_13/map/whilerandom_flip_13/map/while2h
2random_rotation_13/stateful_uniform/RngReadAndSkip2random_rotation_13/stateful_uniform/RngReadAndSkip2^
-random_zoom_8/stateful_uniform/RngReadAndSkip-random_zoom_8/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ΪG
Ν
H__inference_sequential_12_layer_call_and_return_conditional_losses_57122

inputs!
sequential_11_57067:	!
sequential_11_57069:	!
sequential_11_57071:	)
conv2d_17_57074: 
conv2d_17_57076: )
conv2d_18_57080: @
conv2d_18_57082:@)
conv2d_19_57086:@@
conv2d_19_57088:@)
conv2d_20_57092:@@
conv2d_20_57094:@)
conv2d_21_57098:@@
conv2d_21_57100:@)
conv2d_22_57104:@@
conv2d_22_57106:@ 
dense_6_57111:	@
dense_6_57113:@
dense_7_57116:@
dense_7_57118:
identity’!conv2d_17/StatefulPartitionedCall’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’!conv2d_22/StatefulPartitionedCall’dense_6/StatefulPartitionedCall’dense_7/StatefulPartitionedCall’%sequential_11/StatefulPartitionedCallΕ
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56145Ί
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_11_57067sequential_11_57069sequential_11_57071*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56631£
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall.sequential_11/StatefulPartitionedCall:output:0conv2d_17_57074conv2d_17_57076*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763σ
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_57080conv2d_18_57082*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781σ
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_57086conv2d_19_57088*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799σ
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_57092conv2d_20_57094*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817σ
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_57098conv2d_21_57100*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835σ
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_57104conv2d_22_57106*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853σ
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740έ
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_57111dense_6_57113*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_57116dense_7_57118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : 2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

?
Osequential_11_random_flip_13_map_while_stateless_random_flip_up_down_true_57647«
¦sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_reversev2_sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyQ
Msequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identity
Ssequential_11/random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
Nsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2¦sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_reversev2_sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_control_dependency\sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:α
Msequential_11/random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentityWsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"§
Msequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identityVsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
«

map_while_body_56464$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	’2map/while/stateful_uniform_full_int/RngReadAndSkip’4map/while/stateful_uniform_full_int_1/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ·
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ή
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Γ
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskπ
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Δ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::’
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?έ
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_56524*#
output_shapes
:*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_56523£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ώ
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ώ
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask§
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:«
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ν
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskϋ
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Γ
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Τ
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: τ
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_56573*#
output_shapes
:*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_56572
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:ξ
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:ιθ?Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: Ό
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Έ
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

Τ
-__inference_sequential_12_layer_call_fn_56938
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identity’StatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_56903o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:?????????
*
_user_specified_namesequential_input

g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58407

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
φ
`
D__inference_rescaling_layer_call_and_return_conditional_losses_56114

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:?????????d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:?????????Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

i
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56182

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_58467

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_18_layer_call_fn_58432

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ύ

'__inference_dense_7_layer_call_fn_58597

inputs
unknown:@
	unknown_0:
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs

Ζ
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58940

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *&_ΔY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *&_D`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ά
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:‘
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Φ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ψ
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ‘
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Κ
¦
Erandom_flip_13_map_while_stateless_random_flip_left_right_false_58083
random_flip_13_map_while_stateless_random_flip_left_right_identity_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyF
Brandom_flip_13_map_while_stateless_random_flip_left_right_identity
Brandom_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityrandom_flip_13_map_while_stateless_random_flip_left_right_identity_random_flip_13_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"
Brandom_flip_13_map_while_stateless_random_flip_left_right_identityKrandom_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Ό
θ
5map_while_stateless_random_flip_left_right_true_58723v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¨
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:­
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ύ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????ώώ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Α

'__inference_dense_6_layer_call_fn_58577

inputs
unknown:	@
	unknown_0:@
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ή
ή
Rsequential_11_random_flip_13_map_while_stateless_random_flip_left_right_true_57598±
¬sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_reversev2_sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyT
Psequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identity 
Vsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
Qsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2¬sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_reversev2_sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_control_dependency_sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:η
Psequential_11/random_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityZsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"­
Psequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identityYsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ύ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58397

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????ώώ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ιv
?
__inference__traced_save_59276
file_prefix/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop)
%savev2_statevar_2_read_readvariableop	)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_m_read_readvariableop4
0savev2_adam_conv2d_20_bias_m_read_readvariableop6
2savev2_adam_conv2d_21_kernel_m_read_readvariableop4
0savev2_adam_conv2d_21_bias_m_read_readvariableop6
2savev2_adam_conv2d_22_kernel_m_read_readvariableop4
0savev2_adam_conv2d_22_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop4
0savev2_adam_conv2d_19_bias_v_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop4
0savev2_adam_conv2d_20_bias_v_read_readvariableop6
2savev2_adam_conv2d_21_kernel_v_read_readvariableop4
0savev2_adam_conv2d_21_bias_v_read_readvariableop6
2savev2_adam_conv2d_22_kernel_v_read_readvariableop4
0savev2_adam_conv2d_22_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: "
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*Ό!
value²!B―!=B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHκ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*
valueB=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ώ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_2_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop2savev2_adam_conv2d_21_kernel_m_read_readvariableop0savev2_adam_conv2d_21_bias_m_read_readvariableop2savev2_adam_conv2d_22_kernel_m_read_readvariableop0savev2_adam_conv2d_22_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop2savev2_adam_conv2d_21_kernel_v_read_readvariableop0savev2_adam_conv2d_21_bias_v_read_readvariableop2savev2_adam_conv2d_22_kernel_v_read_readvariableop0savev2_adam_conv2d_22_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *K
dtypesA
?2=				
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*Π
_input_shapesΎ
»: : : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@:: : : : : : : : : :::: : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@:: : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @:  

_output_shapes
:@:,!(
&
_output_shapes
:@@: "

_output_shapes
:@:,#(
&
_output_shapes
:@@: $

_output_shapes
:@:,%(
&
_output_shapes
:@@: &

_output_shapes
:@:,'(
&
_output_shapes
:@@: (

_output_shapes
:@:%)!

_output_shapes
:	@: *

_output_shapes
:@:$+ 

_output_shapes

:@: ,

_output_shapes
::,-(
&
_output_shapes
: : .

_output_shapes
: :,/(
&
_output_shapes
: @: 0

_output_shapes
:@:,1(
&
_output_shapes
:@@: 2

_output_shapes
:@:,3(
&
_output_shapes
:@@: 4

_output_shapes
:@:,5(
&
_output_shapes
:@@: 6

_output_shapes
:@:,7(
&
_output_shapes
:@@: 8

_output_shapes
:@:%9!

_output_shapes
:	@: :

_output_shapes
:@:$; 

_output_shapes

:@: <

_output_shapes
::=

_output_shapes
: 
Η
F
*__inference_sequential_layer_call_fn_57962

inputs
identityΊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56117j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ρD
Ό
H__inference_sequential_12_layer_call_and_return_conditional_losses_56903

inputs)
conv2d_17_56764: 
conv2d_17_56766: )
conv2d_18_56782: @
conv2d_18_56784:@)
conv2d_19_56800:@@
conv2d_19_56802:@)
conv2d_20_56818:@@
conv2d_20_56820:@)
conv2d_21_56836:@@
conv2d_21_56838:@)
conv2d_22_56854:@@
conv2d_22_56856:@ 
dense_6_56880:	@
dense_6_56882:@
dense_7_56897:@
dense_7_56899:
identity’!conv2d_17/StatefulPartitionedCall’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’!conv2d_22/StatefulPartitionedCall’dense_6/StatefulPartitionedCall’dense_7/StatefulPartitionedCallΕ
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56117θ
sequential_11/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall&sequential_11/PartitionedCall:output:0conv2d_17_56764conv2d_17_56766*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763σ
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_56782conv2d_18_56784*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781σ
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_56800conv2d_19_56802*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799σ
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_56818conv2d_20_56820*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817σ
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_56836conv2d_21_56838*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835σ
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_56854conv2d_22_56856*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853σ
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740έ
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_56880dense_6_56882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_56897dense_7_56899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????β
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_21_layer_call_fn_58522

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
―
E
)__inference_flatten_3_layer_call_fn_58562

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
ξ
β
H__inference_sequential_11_layer_call_and_return_conditional_losses_56671
random_flip_13_input"
random_flip_13_56661:	&
random_rotation_13_56664:	!
random_zoom_8_56667:	
identity’&random_flip_13/StatefulPartitionedCall’*random_rotation_13/StatefulPartitionedCall’%random_zoom_8/StatefulPartitionedCall
&random_flip_13/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_13_inputrandom_flip_13_56661*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56606©
*random_rotation_13/StatefulPartitionedCallStatefulPartitionedCall/random_flip_13/StatefulPartitionedCall:output:0random_rotation_13_56664*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56435
%random_zoom_8/StatefulPartitionedCallStatefulPartitionedCall3random_rotation_13/StatefulPartitionedCall:output:0random_zoom_8_56667*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56304
IdentityIdentity.random_zoom_8/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????Δ
NoOpNoOp'^random_flip_13/StatefulPartitionedCall+^random_rotation_13/StatefulPartitionedCall&^random_zoom_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : 2P
&random_flip_13/StatefulPartitionedCall&random_flip_13/StatefulPartitionedCall2X
*random_rotation_13/StatefulPartitionedCall*random_rotation_13/StatefulPartitionedCall2N
%random_zoom_8/StatefulPartitionedCall%random_zoom_8/StatefulPartitionedCall:g c
1
_output_shapes
:?????????
.
_user_specified_namerandom_flip_13_input
ΰ

-__inference_sequential_12_layer_call_fn_57443

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@#
	unknown_8:@@
	unknown_9:@$

unknown_10:@@

unknown_11:@$

unknown_12:@@

unknown_13:@

unknown_14:	@

unknown_15:@

unknown_16:@

unknown_17:
identity’StatefulPartitionedCallΏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
κ

)__inference_conv2d_20_layer_call_fn_58476

inputs!
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_20_layer_call_fn_58492

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs


τ
B__inference_dense_6_layer_call_and_return_conditional_losses_56879

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58497

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
χ
W
-__inference_sequential_11_layer_call_fn_56194
random_flip_13_input
identityΛ
PartitionedCallPartitionedCallrandom_flip_13_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:g c
1
_output_shapes
:?????????
.
_user_specified_namerandom_flip_13_input
­
_
C__inference_resizing_layer_call_and_return_conditional_losses_58619

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58517

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs

ύ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_58457

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs

e
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56176

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Δ
~
.__inference_random_flip_13_layer_call_fn_58644

inputs
unknown:	
identity’StatefulPartitionedCallΨ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56606y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Τ
a
E__inference_sequential_layer_call_and_return_conditional_losses_56145

inputs
identityΑ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104ή
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs


τ
B__inference_dense_6_layer_call_and_return_conditional_losses_58588

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_58427

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ό
θ
5map_while_stateless_random_flip_left_right_true_56523v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¨
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:­
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
¦

I__inference_random_flip_13_layer_call_and_return_conditional_losses_58806

inputs
map_while_input_6:	
identity’	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         α
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Β
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_58664* 
condR
map_while_cond_58663*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Τ
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:?????????*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:?????????R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2
	map/while	map/while:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ζ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ν
I
-__inference_random_zoom_8_layer_call_fn_58945

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56188j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ώ
θ
6map_while_stateless_random_flip_left_right_false_56524u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityα
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ί
N
*__inference_sequential_layer_call_fn_56120
resizing_input
identityΒ
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56117j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:a ]
1
_output_shapes
:?????????
(
_user_specified_nameresizing_input

―
-__inference_sequential_11_layer_call_fn_58003

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identity’StatefulPartitionedCallο
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56631y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Θ
ή
Ssequential_11_random_flip_13_map_while_stateless_random_flip_left_right_false_57599°
«sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identity_sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyT
Psequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identityΉ
Psequential_11/random_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentity«sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identity_sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"­
Psequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identityYsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ά
2map_while_stateless_random_flip_up_down_true_56572p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:§
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
€
ά
3map_while_stateless_random_flip_up_down_false_56573o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityΨ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
»
½
-__inference_sequential_11_layer_call_fn_56651
random_flip_13_input
unknown:	
	unknown_0:	
	unknown_1:	
identity’StatefulPartitionedCallύ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_13_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56631y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
1
_output_shapes
:?????????
.
_user_specified_namerandom_flip_13_input
ψG
Χ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57318
sequential_input!
sequential_11_57263:	!
sequential_11_57265:	!
sequential_11_57267:	)
conv2d_17_57270: 
conv2d_17_57272: )
conv2d_18_57276: @
conv2d_18_57278:@)
conv2d_19_57282:@@
conv2d_19_57284:@)
conv2d_20_57288:@@
conv2d_20_57290:@)
conv2d_21_57294:@@
conv2d_21_57296:@)
conv2d_22_57300:@@
conv2d_22_57302:@ 
dense_6_57307:	@
dense_6_57309:@
dense_7_57312:@
dense_7_57314:
identity’!conv2d_17/StatefulPartitionedCall’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’!conv2d_22/StatefulPartitionedCall’dense_6/StatefulPartitionedCall’dense_7/StatefulPartitionedCall’%sequential_11/StatefulPartitionedCallΟ
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56145Ί
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_11_57263sequential_11_57265sequential_11_57267*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56631£
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall.sequential_11/StatefulPartitionedCall:output:0conv2d_17_57270conv2d_17_57272*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763σ
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_57276conv2d_18_57278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781σ
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_57282conv2d_19_57284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799σ
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_57288conv2d_20_57290*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817σ
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_57294conv2d_21_57296*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835σ
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_57300conv2d_22_57302*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853σ
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740έ
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_57307dense_6_57309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_57312dense_7_57314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : 2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall:c _
1
_output_shapes
:?????????
*
_user_specified_namesequential_input
€
ά
3map_while_stateless_random_flip_up_down_false_58773o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityΨ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ύ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ν
©
1sequential_11_random_flip_13_map_while_body_57539^
Zsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_loop_counterY
Usequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice6
2sequential_11_random_flip_13_map_while_placeholder8
4sequential_11_random_flip_13_map_while_placeholder_1]
Ysequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice_1_0
sequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0h
Zsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	3
/sequential_11_random_flip_13_map_while_identity5
1sequential_11_random_flip_13_map_while_identity_15
1sequential_11_random_flip_13_map_while_identity_25
1sequential_11_random_flip_13_map_while_identity_3[
Wsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice_1
sequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensorf
Xsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource:	’Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip’Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip­
Xsequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ι
Jsequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_02sequential_11_random_flip_13_map_while_placeholderasequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
Fsequential_11/random_flip_13/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Fsequential_11/random_flip_13/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Esequential_11/random_flip_13/map/while/stateful_uniform_full_int/ProdProdOsequential_11/random_flip_13/map/while/stateful_uniform_full_int/shape:output:0Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 
Gsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ο
Gsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Cast_1CastNsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ψ
Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipZsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Psequential_11/random_flip_13/map/while/stateful_uniform_full_int/Cast/x:output:0Ksequential_11/random_flip_13/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Tsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:  
Vsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Nsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_sliceStridedSliceWsequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0]sequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack:output:0_sequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0_sequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskέ
Hsequential_11/random_flip_13/map/while/stateful_uniform_full_int/BitcastBitcastWsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0 
Vsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:’
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:’
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Psequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceWsequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0_sequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:α
Jsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Bitcast_1BitcastYsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Dsequential_11/random_flip_13/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Τ
@sequential_11/random_flip_13/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/shape:output:0Ssequential_11/random_flip_13/map/while/stateful_uniform_full_int/Bitcast_1:output:0Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Bitcast:output:0Msequential_11/random_flip_13/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	{
1sequential_11/random_flip_13/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ν
,sequential_11/random_flip_13/map/while/stackPackIsequential_11/random_flip_13/map/while/stateful_uniform_full_int:output:0:sequential_11/random_flip_13/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:
:sequential_11/random_flip_13/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
<sequential_11/random_flip_13/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
<sequential_11/random_flip_13/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ί
4sequential_11/random_flip_13/map/while/strided_sliceStridedSlice5sequential_11/random_flip_13/map/while/stack:output:0Csequential_11/random_flip_13/map/while/strided_slice/stack:output:0Esequential_11/random_flip_13/map/while/strided_slice/stack_1:output:0Esequential_11/random_flip_13/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskΗ
Zsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/control_dependencyIdentityQsequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*]
_classS
QOloc:@sequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:©
fsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ©
dsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
dsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ώ
}sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter=sequential_11/random_flip_13/map/while/strided_slice:output:0* 
_output_shapes
::Ώ
}sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :·
ysequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2osequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: κ
dsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubmsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0msequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ϋ
dsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0hsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: γ
`sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2hsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0msequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Nsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?΄
Lsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/LessLessdsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Wsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
Gsequential_11/random_flip_13/map/while/stateless_random_flip_left_rightStatelessIfPsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Less:z:0csequential_11/random_flip_13/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *f
else_branchWRU
Ssequential_11_random_flip_13_map_while_stateless_random_flip_left_right_false_57599*#
output_shapes
:*e
then_branchVRT
Rsequential_11_random_flip_13_map_while_stateless_random_flip_left_right_true_57598έ
Psequential_11/random_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityPsequential_11/random_flip_13/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:
Hsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Gsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/ProdProdQsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/shape:output:0Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: 
Isequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Σ
Isequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Cast_1CastPsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Π
Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipZsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Rsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Cast/x:output:0Msequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Cast_1:y:0P^sequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
: 
Vsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ’
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:’
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
Psequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceYsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0_sequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskα
Jsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/BitcastBitcastYsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0’
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:€
Zsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:€
Zsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Rsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceYsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0csequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0csequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ε
Lsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast[sequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Fsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :ή
Bsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/shape:output:0Usequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Ssequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Bitcast:output:0Osequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	}
3sequential_11/random_flip_13/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R σ
.sequential_11/random_flip_13/map/while/stack_1PackKsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1:output:0<sequential_11/random_flip_13/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
<sequential_11/random_flip_13/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
>sequential_11/random_flip_13/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
>sequential_11/random_flip_13/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Δ
6sequential_11/random_flip_13/map/while/strided_slice_1StridedSlice7sequential_11/random_flip_13/map/while/stack_1:output:0Esequential_11/random_flip_13/map/while/strided_slice_1/stack:output:0Gsequential_11/random_flip_13/map/while/strided_slice_1/stack_1:output:0Gsequential_11/random_flip_13/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask?
Wsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/control_dependencyIdentityYsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*c
_classY
WUloc:@sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:¦
csequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ¦
asequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
asequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ύ
zsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?sequential_11/random_flip_13/map/while/strided_slice_1:output:0* 
_output_shapes
::Ό
zsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :¨
vsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2lsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: α
asequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubjsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0jsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ρ
asequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0esequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Ϊ
]sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2esequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0jsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Ksequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?«
Isequential_11/random_flip_13/map/while/stateless_random_flip_up_down/LessLessasequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Tsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: 
Dsequential_11/random_flip_13/map/while/stateless_random_flip_up_downStatelessIfMsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Less:z:0`sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *c
else_branchTRR
Psequential_11_random_flip_13_map_while_stateless_random_flip_up_down_false_57648*#
output_shapes
:*b
then_branchSRQ
Osequential_11_random_flip_13_map_while_stateless_random_flip_up_down_true_57647Χ
Msequential_11/random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentityMsequential_11/random_flip_13/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:β
Ksequential_11/random_flip_13/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4sequential_11_random_flip_13_map_while_placeholder_12sequential_11_random_flip_13_map_while_placeholderVsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:ιθ?n
,sequential_11/random_flip_13/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ώ
*sequential_11/random_flip_13/map/while/addAddV22sequential_11_random_flip_13_map_while_placeholder5sequential_11/random_flip_13/map/while/add/y:output:0*
T0*
_output_shapes
: p
.sequential_11/random_flip_13/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :λ
,sequential_11/random_flip_13/map/while/add_1AddV2Zsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_loop_counter7sequential_11/random_flip_13/map/while/add_1/y:output:0*
T0*
_output_shapes
: Ό
/sequential_11/random_flip_13/map/while/IdentityIdentity0sequential_11/random_flip_13/map/while/add_1:z:0,^sequential_11/random_flip_13/map/while/NoOp*
T0*
_output_shapes
: γ
1sequential_11/random_flip_13/map/while/Identity_1IdentityUsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice,^sequential_11/random_flip_13/map/while/NoOp*
T0*
_output_shapes
: Ό
1sequential_11/random_flip_13/map/while/Identity_2Identity.sequential_11/random_flip_13/map/while/add:z:0,^sequential_11/random_flip_13/map/while/NoOp*
T0*
_output_shapes
: ι
1sequential_11/random_flip_13/map/while/Identity_3Identity[sequential_11/random_flip_13/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^sequential_11/random_flip_13/map/while/NoOp*
T0*
_output_shapes
: 
+sequential_11/random_flip_13/map/while/NoOpNoOpP^sequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipR^sequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "k
/sequential_11_random_flip_13_map_while_identity8sequential_11/random_flip_13/map/while/Identity:output:0"o
1sequential_11_random_flip_13_map_while_identity_1:sequential_11/random_flip_13/map/while/Identity_1:output:0"o
1sequential_11_random_flip_13_map_while_identity_2:sequential_11/random_flip_13/map/while/Identity_2:output:0"o
1sequential_11_random_flip_13_map_while_identity_3:sequential_11/random_flip_13/map/while/Identity_3:output:0"΄
Wsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice_1Ysequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice_1_0"Ά
Xsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resourceZsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"?
sequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensorsequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2’
Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipOsequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip2¦
Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkipQsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?±
γ
#random_flip_13_map_while_body_58023B
>random_flip_13_map_while_random_flip_13_map_while_loop_counter=
9random_flip_13_map_while_random_flip_13_map_strided_slice(
$random_flip_13_map_while_placeholder*
&random_flip_13_map_while_placeholder_1A
=random_flip_13_map_while_random_flip_13_map_strided_slice_1_0}
yrandom_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0Z
Lrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	%
!random_flip_13_map_while_identity'
#random_flip_13_map_while_identity_1'
#random_flip_13_map_while_identity_2'
#random_flip_13_map_while_identity_3?
;random_flip_13_map_while_random_flip_13_map_strided_slice_1{
wrandom_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_13_map_tensorarrayunstack_tensorlistfromtensorX
Jrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource:	’Arandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip’Crandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip
Jrandom_flip_13/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
<random_flip_13/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemyrandom_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0$random_flip_13_map_while_placeholderSrandom_flip_13/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
8random_flip_13/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8random_flip_13/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ζ
7random_flip_13/map/while/stateful_uniform_full_int/ProdProdArandom_flip_13/map/while/stateful_uniform_full_int/shape:output:0Arandom_flip_13/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: {
9random_flip_13/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :³
9random_flip_13/map/while/stateful_uniform_full_int/Cast_1Cast@random_flip_13/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ΐ
Arandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipLrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Brandom_flip_13/map/while/stateful_uniform_full_int/Cast/x:output:0=random_flip_13/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Frandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Hrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Φ
@random_flip_13/map/while/stateful_uniform_full_int/strided_sliceStridedSliceIrandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Orandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Qrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Qrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΑ
:random_flip_13/map/while/stateful_uniform_full_int/BitcastBitcastIrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Hrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Jrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Μ
Brandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceIrandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Qrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Srandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Srandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ε
<random_flip_13/map/while/stateful_uniform_full_int/Bitcast_1BitcastKrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0x
6random_flip_13/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
2random_flip_13/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Arandom_flip_13/map/while/stateful_uniform_full_int/shape:output:0Erandom_flip_13/map/while/stateful_uniform_full_int/Bitcast_1:output:0Crandom_flip_13/map/while/stateful_uniform_full_int/Bitcast:output:0?random_flip_13/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	m
#random_flip_13/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Γ
random_flip_13/map/while/stackPack;random_flip_13/map/while/stateful_uniform_full_int:output:0,random_flip_13/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:}
,random_flip_13/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.random_flip_13/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.random_flip_13/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      τ
&random_flip_13/map/while/strided_sliceStridedSlice'random_flip_13/map/while/stack:output:05random_flip_13/map/while/strided_slice/stack:output:07random_flip_13/map/while/strided_slice/stack_1:output:07random_flip_13/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
Lrandom_flip_13/map/while/stateless_random_flip_left_right/control_dependencyIdentityCrandom_flip_13/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*O
_classE
CAloc:@random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Xrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Vrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Vrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?β
orandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter/random_flip_13/map/while/strided_slice:output:0* 
_output_shapes
::±
orandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ξ
krandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2arandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0urandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0yrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ΐ
Vrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub_random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0_random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Π
Vrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMultrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Zrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Ή
Rrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Zrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0_random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
@random_flip_13/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
>random_flip_13/map/while/stateless_random_flip_left_right/LessLessVrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Irandom_flip_13/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Ξ
9random_flip_13/map/while/stateless_random_flip_left_rightStatelessIfBrandom_flip_13/map/while/stateless_random_flip_left_right/Less:z:0Urandom_flip_13/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *X
else_branchIRG
Erandom_flip_13_map_while_stateless_random_flip_left_right_false_58083*#
output_shapes
:*W
then_branchHRF
Drandom_flip_13_map_while_stateless_random_flip_left_right_true_58082Α
Brandom_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityBrandom_flip_13/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:
:random_flip_13/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:random_flip_13/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: μ
9random_flip_13/map/while/stateful_uniform_full_int_1/ProdProdCrandom_flip_13/map/while/stateful_uniform_full_int_1/shape:output:0Crandom_flip_13/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: }
;random_flip_13/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :·
;random_flip_13/map/while/stateful_uniform_full_int_1/Cast_1CastBrandom_flip_13/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Crandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipLrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Drandom_flip_13/map/while/stateful_uniform_full_int_1/Cast/x:output:0?random_flip_13/map/while/stateful_uniform_full_int_1/Cast_1:y:0B^random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
Hrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ΰ
Brandom_flip_13/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceKrandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Qrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Srandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Srandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΕ
<random_flip_13/map/while/stateful_uniform_full_int_1/BitcastBitcastKrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Jrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Φ
Drandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceKrandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Srandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Urandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Urandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ι
>random_flip_13/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastMrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8random_flip_13/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :
4random_flip_13/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Crandom_flip_13/map/while/stateful_uniform_full_int_1/shape:output:0Grandom_flip_13/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Erandom_flip_13/map/while/stateful_uniform_full_int_1/Bitcast:output:0Arandom_flip_13/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	o
%random_flip_13/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R Ι
 random_flip_13/map/while/stack_1Pack=random_flip_13/map/while/stateful_uniform_full_int_1:output:0.random_flip_13/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
.random_flip_13/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
0random_flip_13/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
0random_flip_13/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ώ
(random_flip_13/map/while/strided_slice_1StridedSlice)random_flip_13/map/while/stack_1:output:07random_flip_13/map/while/strided_slice_1/stack:output:09random_flip_13/map/while/strided_slice_1/stack_1:output:09random_flip_13/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask¨
Irandom_flip_13/map/while/stateless_random_flip_up_down/control_dependencyIdentityKrandom_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*U
_classK
IGloc:@random_flip_13/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Urandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Srandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Srandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?α
lrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1random_flip_13/map/while/strided_slice_1:output:0* 
_output_shapes
::?
lrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ί
hrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2^random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0rrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0vrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0urandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ·
Srandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSub\random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0\random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Η
Srandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulqrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Wrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: °
Orandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Wrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0\random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
=random_flip_13/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
;random_flip_13/map/while/stateless_random_flip_up_down/LessLessSrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Frandom_flip_13/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: Ώ
6random_flip_13/map/while/stateless_random_flip_up_downStatelessIf?random_flip_13/map/while/stateless_random_flip_up_down/Less:z:0Rrandom_flip_13/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *U
else_branchFRD
Brandom_flip_13_map_while_stateless_random_flip_up_down_false_58132*#
output_shapes
:*T
then_branchERC
Arandom_flip_13_map_while_stateless_random_flip_up_down_true_58131»
?random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentity?random_flip_13/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:ͺ
=random_flip_13/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&random_flip_13_map_while_placeholder_1$random_flip_13_map_while_placeholderHrandom_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:ιθ?`
random_flip_13/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
random_flip_13/map/while/addAddV2$random_flip_13_map_while_placeholder'random_flip_13/map/while/add/y:output:0*
T0*
_output_shapes
: b
 random_flip_13/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :³
random_flip_13/map/while/add_1AddV2>random_flip_13_map_while_random_flip_13_map_while_loop_counter)random_flip_13/map/while/add_1/y:output:0*
T0*
_output_shapes
: 
!random_flip_13/map/while/IdentityIdentity"random_flip_13/map/while/add_1:z:0^random_flip_13/map/while/NoOp*
T0*
_output_shapes
: «
#random_flip_13/map/while/Identity_1Identity9random_flip_13_map_while_random_flip_13_map_strided_slice^random_flip_13/map/while/NoOp*
T0*
_output_shapes
: 
#random_flip_13/map/while/Identity_2Identity random_flip_13/map/while/add:z:0^random_flip_13/map/while/NoOp*
T0*
_output_shapes
: Ώ
#random_flip_13/map/while/Identity_3IdentityMrandom_flip_13/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_13/map/while/NoOp*
T0*
_output_shapes
: ι
random_flip_13/map/while/NoOpNoOpB^random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipD^random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "O
!random_flip_13_map_while_identity*random_flip_13/map/while/Identity:output:0"S
#random_flip_13_map_while_identity_1,random_flip_13/map/while/Identity_1:output:0"S
#random_flip_13_map_while_identity_2,random_flip_13/map/while/Identity_2:output:0"S
#random_flip_13_map_while_identity_3,random_flip_13/map/while/Identity_3:output:0"|
;random_flip_13_map_while_random_flip_13_map_strided_slice_1=random_flip_13_map_while_random_flip_13_map_strided_slice_1_0"
Jrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resourceLrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"τ
wrandom_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_13_map_tensorarrayunstack_tensorlistfromtensoryrandom_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2
Arandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipArandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip2
Crandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkipCrandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ώ
’
-__inference_sequential_12_layer_call_fn_57206
sequential_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@#
	unknown_8:@@
	unknown_9:@$

unknown_10:@@

unknown_11:@$

unknown_12:@@

unknown_13:@

unknown_14:	@

unknown_15:@

unknown_16:@

unknown_17:
identity’StatefulPartitionedCallΙ
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:?????????
*
_user_specified_namesequential_input
Ώ
θ
6map_while_stateless_random_flip_left_right_false_58724u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityα
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Ε
E
)__inference_rescaling_layer_call_fn_58624

inputs
identityΉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58527

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Χ
N
2__inference_random_rotation_13_layer_call_fn_58811

inputs
identityΒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56182j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

d
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_58956

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Τ
a
E__inference_sequential_layer_call_and_return_conditional_losses_56117

inputs
identityΑ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104ή
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

ά
2map_while_stateless_random_flip_up_down_true_58772p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:§
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

Ζ
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56435

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *&_ΔY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *&_D`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ά
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:‘
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Φ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ψ
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ‘
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
E
Ζ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57259
sequential_input)
conv2d_17_57211: 
conv2d_17_57213: )
conv2d_18_57217: @
conv2d_18_57219:@)
conv2d_19_57223:@@
conv2d_19_57225:@)
conv2d_20_57229:@@
conv2d_20_57231:@)
conv2d_21_57235:@@
conv2d_21_57237:@)
conv2d_22_57241:@@
conv2d_22_57243:@ 
dense_6_57248:	@
dense_6_57250:@
dense_7_57253:@
dense_7_57255:
identity’!conv2d_17/StatefulPartitionedCall’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’!conv2d_22/StatefulPartitionedCall’dense_6/StatefulPartitionedCall’dense_7/StatefulPartitionedCallΟ
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56117θ
sequential_11/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall&sequential_11/PartitionedCall:output:0conv2d_17_57211conv2d_17_57213*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763σ
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_57217conv2d_18_57219*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781σ
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_57223conv2d_19_57225*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799σ
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_57229conv2d_20_57231*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817σ
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_57235conv2d_21_57237*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835σ
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_57241conv2d_22_57243*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853σ
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740έ
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_57248dense_6_57250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_57253dense_7_57255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????β
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:c _
1
_output_shapes
:?????????
*
_user_specified_namesequential_input
·
Ν
map_while_cond_56463$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_56463___redundant_placeholder0;
7map_while_map_while_cond_56463___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:


¦
Drandom_flip_13_map_while_stateless_random_flip_left_right_true_58082
random_flip_13_map_while_stateless_random_flip_left_right_reversev2_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyF
Brandom_flip_13_map_while_stateless_random_flip_left_right_identity
Hrandom_flip_13/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ε
Crandom_flip_13/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2random_flip_13_map_while_stateless_random_flip_left_right_reversev2_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyQrandom_flip_13/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Λ
Brandom_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityLrandom_flip_13/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"
Brandom_flip_13_map_while_stateless_random_flip_left_right_identityKrandom_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Σ
ν
H__inference_sequential_12_layer_call_and_return_conditional_losses_57957

inputs<
.sequential_11_random_flip_13_map_while_input_6:	W
Isequential_11_random_rotation_13_stateful_uniform_rngreadandskip_resource:	R
Dsequential_11_random_zoom_8_stateful_uniform_rngreadandskip_resource:	B
(conv2d_17_conv2d_readvariableop_resource: 7
)conv2d_17_biasadd_readvariableop_resource: B
(conv2d_18_conv2d_readvariableop_resource: @7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@@7
)conv2d_20_biasadd_readvariableop_resource:@B
(conv2d_21_conv2d_readvariableop_resource:@@7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@9
&dense_6_matmul_readvariableop_resource:	@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity’ conv2d_17/BiasAdd/ReadVariableOp’conv2d_17/Conv2D/ReadVariableOp’ conv2d_18/BiasAdd/ReadVariableOp’conv2d_18/Conv2D/ReadVariableOp’ conv2d_19/BiasAdd/ReadVariableOp’conv2d_19/Conv2D/ReadVariableOp’ conv2d_20/BiasAdd/ReadVariableOp’conv2d_20/Conv2D/ReadVariableOp’ conv2d_21/BiasAdd/ReadVariableOp’conv2d_21/Conv2D/ReadVariableOp’ conv2d_22/BiasAdd/ReadVariableOp’conv2d_22/Conv2D/ReadVariableOp’dense_6/BiasAdd/ReadVariableOp’dense_6/MatMul/ReadVariableOp’dense_7/BiasAdd/ReadVariableOp’dense_7/MatMul/ReadVariableOp’&sequential_11/random_flip_13/map/while’@sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip’;sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkipp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Γ
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:?????????£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????r
&sequential_11/random_flip_13/map/ShapeShapesequential/rescaling/add:z:0*
T0*
_output_shapes
:~
4sequential_11/random_flip_13/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6sequential_11/random_flip_13/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6sequential_11/random_flip_13/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:φ
.sequential_11/random_flip_13/map/strided_sliceStridedSlice/sequential_11/random_flip_13/map/Shape:output:0=sequential_11/random_flip_13/map/strided_slice/stack:output:0?sequential_11/random_flip_13/map/strided_slice/stack_1:output:0?sequential_11/random_flip_13/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<sequential_11/random_flip_13/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????
.sequential_11/random_flip_13/map/TensorArrayV2TensorListReserveEsequential_11/random_flip_13/map/TensorArrayV2/element_shape:output:07sequential_11/random_flip_13/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?«
Vsequential_11/random_flip_13/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ±
Hsequential_11/random_flip_13/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/rescaling/add:z:0_sequential_11/random_flip_13/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?h
&sequential_11/random_flip_13/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
>sequential_11/random_flip_13/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????
0sequential_11/random_flip_13/map/TensorArrayV2_1TensorListReserveGsequential_11/random_flip_13/map/TensorArrayV2_1/element_shape:output:07sequential_11/random_flip_13/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?u
3sequential_11/random_flip_13/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ©
&sequential_11/random_flip_13/map/whileWhile<sequential_11/random_flip_13/map/while/loop_counter:output:07sequential_11/random_flip_13/map/strided_slice:output:0/sequential_11/random_flip_13/map/Const:output:09sequential_11/random_flip_13/map/TensorArrayV2_1:handle:07sequential_11/random_flip_13/map/strided_slice:output:0Xsequential_11/random_flip_13/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0.sequential_11_random_flip_13_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *=
body5R3
1sequential_11_random_flip_13_map_while_body_57539*=
cond5R3
1sequential_11_random_flip_13_map_while_cond_57538*!
output_shapes
: : : : : : : ¦
Qsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         «
Csequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStackTensorListStack/sequential_11/random_flip_13/map/while:output:3Zsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:?????????*
element_dtype0’
&sequential_11/random_rotation_13/ShapeShapeLsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:~
4sequential_11/random_rotation_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6sequential_11/random_rotation_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6sequential_11/random_rotation_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:φ
.sequential_11/random_rotation_13/strided_sliceStridedSlice/sequential_11/random_rotation_13/Shape:output:0=sequential_11/random_rotation_13/strided_slice/stack:output:0?sequential_11/random_rotation_13/strided_slice/stack_1:output:0?sequential_11/random_rotation_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
6sequential_11/random_rotation_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????
8sequential_11/random_rotation_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????
8sequential_11/random_rotation_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
0sequential_11/random_rotation_13/strided_slice_1StridedSlice/sequential_11/random_rotation_13/Shape:output:0?sequential_11/random_rotation_13/strided_slice_1/stack:output:0Asequential_11/random_rotation_13/strided_slice_1/stack_1:output:0Asequential_11/random_rotation_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%sequential_11/random_rotation_13/CastCast9sequential_11/random_rotation_13/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
6sequential_11/random_rotation_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????
8sequential_11/random_rotation_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????
8sequential_11/random_rotation_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
0sequential_11/random_rotation_13/strided_slice_2StridedSlice/sequential_11/random_rotation_13/Shape:output:0?sequential_11/random_rotation_13/strided_slice_2/stack:output:0Asequential_11/random_rotation_13/strided_slice_2/stack_1:output:0Asequential_11/random_rotation_13/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
'sequential_11/random_rotation_13/Cast_1Cast9sequential_11/random_rotation_13/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ¦
7sequential_11/random_rotation_13/stateful_uniform/shapePack7sequential_11/random_rotation_13/strided_slice:output:0*
N*
T0*
_output_shapes
:z
5sequential_11/random_rotation_13/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *&_Δz
5sequential_11/random_rotation_13/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *&_D
7sequential_11/random_rotation_13/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: γ
6sequential_11/random_rotation_13/stateful_uniform/ProdProd@sequential_11/random_rotation_13/stateful_uniform/shape:output:0@sequential_11/random_rotation_13/stateful_uniform/Const:output:0*
T0*
_output_shapes
: z
8sequential_11/random_rotation_13/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :±
8sequential_11/random_rotation_13/stateful_uniform/Cast_1Cast?sequential_11/random_rotation_13/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ί
@sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkipRngReadAndSkipIsequential_11_random_rotation_13_stateful_uniform_rngreadandskip_resourceAsequential_11/random_rotation_13/stateful_uniform/Cast/x:output:0<sequential_11/random_rotation_13/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Esequential_11/random_rotation_13/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Gsequential_11/random_rotation_13/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Gsequential_11/random_rotation_13/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
?sequential_11/random_rotation_13/stateful_uniform/strided_sliceStridedSliceHsequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip:value:0Nsequential_11/random_rotation_13/stateful_uniform/strided_slice/stack:output:0Psequential_11/random_rotation_13/stateful_uniform/strided_slice/stack_1:output:0Psequential_11/random_rotation_13/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΏ
9sequential_11/random_rotation_13/stateful_uniform/BitcastBitcastHsequential_11/random_rotation_13/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Gsequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Isequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
Asequential_11/random_rotation_13/stateful_uniform/strided_slice_1StridedSliceHsequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip:value:0Psequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack:output:0Rsequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack_1:output:0Rsequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Γ
;sequential_11/random_rotation_13/stateful_uniform/Bitcast_1BitcastJsequential_11/random_rotation_13/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Nsequential_11/random_rotation_13/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :°
Jsequential_11/random_rotation_13/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2@sequential_11/random_rotation_13/stateful_uniform/shape:output:0Dsequential_11/random_rotation_13/stateful_uniform/Bitcast_1:output:0Bsequential_11/random_rotation_13/stateful_uniform/Bitcast:output:0Wsequential_11/random_rotation_13/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????έ
5sequential_11/random_rotation_13/stateful_uniform/subSub>sequential_11/random_rotation_13/stateful_uniform/max:output:0>sequential_11/random_rotation_13/stateful_uniform/min:output:0*
T0*
_output_shapes
: ϊ
5sequential_11/random_rotation_13/stateful_uniform/mulMulSsequential_11/random_rotation_13/stateful_uniform/StatelessRandomUniformV2:output:09sequential_11/random_rotation_13/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????γ
1sequential_11/random_rotation_13/stateful_uniformAddV29sequential_11/random_rotation_13/stateful_uniform/mul:z:0>sequential_11/random_rotation_13/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????{
6sequential_11/random_rotation_13/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
4sequential_11/random_rotation_13/rotation_matrix/subSub+sequential_11/random_rotation_13/Cast_1:y:0?sequential_11/random_rotation_13/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
:  
4sequential_11/random_rotation_13/rotation_matrix/CosCos5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????}
8sequential_11/random_rotation_13/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ξ
6sequential_11/random_rotation_13/rotation_matrix/sub_1Sub+sequential_11/random_rotation_13/Cast_1:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ί
4sequential_11/random_rotation_13/rotation_matrix/mulMul8sequential_11/random_rotation_13/rotation_matrix/Cos:y:0:sequential_11/random_rotation_13/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:????????? 
4sequential_11/random_rotation_13/rotation_matrix/SinSin5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????}
8sequential_11/random_rotation_13/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Μ
6sequential_11/random_rotation_13/rotation_matrix/sub_2Sub)sequential_11/random_rotation_13/Cast:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: α
6sequential_11/random_rotation_13/rotation_matrix/mul_1Mul8sequential_11/random_rotation_13/rotation_matrix/Sin:y:0:sequential_11/random_rotation_13/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????α
6sequential_11/random_rotation_13/rotation_matrix/sub_3Sub8sequential_11/random_rotation_13/rotation_matrix/mul:z:0:sequential_11/random_rotation_13/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????α
6sequential_11/random_rotation_13/rotation_matrix/sub_4Sub8sequential_11/random_rotation_13/rotation_matrix/sub:z:0:sequential_11/random_rotation_13/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????
:sequential_11/random_rotation_13/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ς
8sequential_11/random_rotation_13/rotation_matrix/truedivRealDiv:sequential_11/random_rotation_13/rotation_matrix/sub_4:z:0Csequential_11/random_rotation_13/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????}
8sequential_11/random_rotation_13/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Μ
6sequential_11/random_rotation_13/rotation_matrix/sub_5Sub)sequential_11/random_rotation_13/Cast:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: ’
6sequential_11/random_rotation_13/rotation_matrix/Sin_1Sin5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????}
8sequential_11/random_rotation_13/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ξ
6sequential_11/random_rotation_13/rotation_matrix/sub_6Sub+sequential_11/random_rotation_13/Cast_1:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: γ
6sequential_11/random_rotation_13/rotation_matrix/mul_2Mul:sequential_11/random_rotation_13/rotation_matrix/Sin_1:y:0:sequential_11/random_rotation_13/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????’
6sequential_11/random_rotation_13/rotation_matrix/Cos_1Cos5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????}
8sequential_11/random_rotation_13/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Μ
6sequential_11/random_rotation_13/rotation_matrix/sub_7Sub)sequential_11/random_rotation_13/Cast:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: γ
6sequential_11/random_rotation_13/rotation_matrix/mul_3Mul:sequential_11/random_rotation_13/rotation_matrix/Cos_1:y:0:sequential_11/random_rotation_13/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????γ
4sequential_11/random_rotation_13/rotation_matrix/addAddV2:sequential_11/random_rotation_13/rotation_matrix/mul_2:z:0:sequential_11/random_rotation_13/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????α
6sequential_11/random_rotation_13/rotation_matrix/sub_8Sub:sequential_11/random_rotation_13/rotation_matrix/sub_5:z:08sequential_11/random_rotation_13/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????
<sequential_11/random_rotation_13/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @φ
:sequential_11/random_rotation_13/rotation_matrix/truediv_1RealDiv:sequential_11/random_rotation_13/rotation_matrix/sub_8:z:0Esequential_11/random_rotation_13/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????
6sequential_11/random_rotation_13/rotation_matrix/ShapeShape5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*
_output_shapes
:
Dsequential_11/random_rotation_13/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ζ
>sequential_11/random_rotation_13/rotation_matrix/strided_sliceStridedSlice?sequential_11/random_rotation_13/rotation_matrix/Shape:output:0Msequential_11/random_rotation_13/rotation_matrix/strided_slice/stack:output:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice/stack_1:output:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask’
6sequential_11/random_rotation_13/rotation_matrix/Cos_2Cos5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ω
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_1StridedSlice:sequential_11/random_rotation_13/rotation_matrix/Cos_2:y:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask’
6sequential_11/random_rotation_13/rotation_matrix/Sin_2Sin5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ω
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_2StridedSlice:sequential_11/random_rotation_13/rotation_matrix/Sin_2:y:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskΈ
4sequential_11/random_rotation_13/rotation_matrix/NegNegIsequential_11/random_rotation_13/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ϋ
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_3StridedSlice<sequential_11/random_rotation_13/rotation_matrix/truediv:z:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask’
6sequential_11/random_rotation_13/rotation_matrix/Sin_3Sin5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ω
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_4StridedSlice:sequential_11/random_rotation_13/rotation_matrix/Sin_3:y:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask’
6sequential_11/random_rotation_13/rotation_matrix/Cos_3Cos5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ω
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_5StridedSlice:sequential_11/random_rotation_13/rotation_matrix/Cos_3:y:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ύ
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_6StridedSlice>sequential_11/random_rotation_13/rotation_matrix/truediv_1:z:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
?sequential_11/random_rotation_13/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
=sequential_11/random_rotation_13/rotation_matrix/zeros/packedPackGsequential_11/random_rotation_13/rotation_matrix/strided_slice:output:0Hsequential_11/random_rotation_13/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
<sequential_11/random_rotation_13/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
6sequential_11/random_rotation_13/rotation_matrix/zerosFillFsequential_11/random_rotation_13/rotation_matrix/zeros/packed:output:0Esequential_11/random_rotation_13/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????~
<sequential_11/random_rotation_13/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :·
7sequential_11/random_rotation_13/rotation_matrix/concatConcatV2Isequential_11/random_rotation_13/rotation_matrix/strided_slice_1:output:08sequential_11/random_rotation_13/rotation_matrix/Neg:y:0Isequential_11/random_rotation_13/rotation_matrix/strided_slice_3:output:0Isequential_11/random_rotation_13/rotation_matrix/strided_slice_4:output:0Isequential_11/random_rotation_13/rotation_matrix/strided_slice_5:output:0Isequential_11/random_rotation_13/rotation_matrix/strided_slice_6:output:0?sequential_11/random_rotation_13/rotation_matrix/zeros:output:0Esequential_11/random_rotation_13/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????¬
0sequential_11/random_rotation_13/transform/ShapeShapeLsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
>sequential_11/random_rotation_13/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
@sequential_11/random_rotation_13/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_11/random_rotation_13/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
8sequential_11/random_rotation_13/transform/strided_sliceStridedSlice9sequential_11/random_rotation_13/transform/Shape:output:0Gsequential_11/random_rotation_13/transform/strided_slice/stack:output:0Isequential_11/random_rotation_13/transform/strided_slice/stack_1:output:0Isequential_11/random_rotation_13/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:z
5sequential_11/random_rotation_13/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    λ
Esequential_11/random_rotation_13/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Lsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:0@sequential_11/random_rotation_13/rotation_matrix/concat:output:0Asequential_11/random_rotation_13/transform/strided_slice:output:0>sequential_11/random_rotation_13/transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR«
!sequential_11/random_zoom_8/ShapeShapeZsequential_11/random_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:y
/sequential_11/random_zoom_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_11/random_zoom_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_11/random_zoom_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:έ
)sequential_11/random_zoom_8/strided_sliceStridedSlice*sequential_11/random_zoom_8/Shape:output:08sequential_11/random_zoom_8/strided_slice/stack:output:0:sequential_11/random_zoom_8/strided_slice/stack_1:output:0:sequential_11/random_zoom_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
1sequential_11/random_zoom_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????
3sequential_11/random_zoom_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????}
3sequential_11/random_zoom_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_11/random_zoom_8/strided_slice_1StridedSlice*sequential_11/random_zoom_8/Shape:output:0:sequential_11/random_zoom_8/strided_slice_1/stack:output:0<sequential_11/random_zoom_8/strided_slice_1/stack_1:output:0<sequential_11/random_zoom_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
 sequential_11/random_zoom_8/CastCast4sequential_11/random_zoom_8/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
1sequential_11/random_zoom_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????
3sequential_11/random_zoom_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????}
3sequential_11/random_zoom_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_11/random_zoom_8/strided_slice_2StridedSlice*sequential_11/random_zoom_8/Shape:output:0:sequential_11/random_zoom_8/strided_slice_2/stack:output:0<sequential_11/random_zoom_8/strided_slice_2/stack_1:output:0<sequential_11/random_zoom_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
"sequential_11/random_zoom_8/Cast_1Cast4sequential_11/random_zoom_8/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: v
4sequential_11/random_zoom_8/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ϋ
2sequential_11/random_zoom_8/stateful_uniform/shapePack2sequential_11/random_zoom_8/strided_slice:output:0=sequential_11/random_zoom_8/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:u
0sequential_11/random_zoom_8/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *Y?u
0sequential_11/random_zoom_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33?|
2sequential_11/random_zoom_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Τ
1sequential_11/random_zoom_8/stateful_uniform/ProdProd;sequential_11/random_zoom_8/stateful_uniform/shape:output:0;sequential_11/random_zoom_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: u
3sequential_11/random_zoom_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :§
3sequential_11/random_zoom_8/stateful_uniform/Cast_1Cast:sequential_11/random_zoom_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¦
;sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkipRngReadAndSkipDsequential_11_random_zoom_8_stateful_uniform_rngreadandskip_resource<sequential_11/random_zoom_8/stateful_uniform/Cast/x:output:07sequential_11/random_zoom_8/stateful_uniform/Cast_1:y:0*
_output_shapes
:
@sequential_11/random_zoom_8/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_11/random_zoom_8/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_11/random_zoom_8/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
:sequential_11/random_zoom_8/stateful_uniform/strided_sliceStridedSliceCsequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip:value:0Isequential_11/random_zoom_8/stateful_uniform/strided_slice/stack:output:0Ksequential_11/random_zoom_8/stateful_uniform/strided_slice/stack_1:output:0Ksequential_11/random_zoom_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask΅
4sequential_11/random_zoom_8/stateful_uniform/BitcastBitcastCsequential_11/random_zoom_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Bsequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Dsequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential_11/random_zoom_8/stateful_uniform/strided_slice_1StridedSliceCsequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip:value:0Ksequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack:output:0Msequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack_1:output:0Msequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ή
6sequential_11/random_zoom_8/stateful_uniform/Bitcast_1BitcastEsequential_11/random_zoom_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Isequential_11/random_zoom_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Esequential_11/random_zoom_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2;sequential_11/random_zoom_8/stateful_uniform/shape:output:0?sequential_11/random_zoom_8/stateful_uniform/Bitcast_1:output:0=sequential_11/random_zoom_8/stateful_uniform/Bitcast:output:0Rsequential_11/random_zoom_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????Ξ
0sequential_11/random_zoom_8/stateful_uniform/subSub9sequential_11/random_zoom_8/stateful_uniform/max:output:09sequential_11/random_zoom_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: ο
0sequential_11/random_zoom_8/stateful_uniform/mulMulNsequential_11/random_zoom_8/stateful_uniform/StatelessRandomUniformV2:output:04sequential_11/random_zoom_8/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????Ψ
,sequential_11/random_zoom_8/stateful_uniformAddV24sequential_11/random_zoom_8/stateful_uniform/mul:z:09sequential_11/random_zoom_8/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????i
'sequential_11/random_zoom_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_11/random_zoom_8/concatConcatV20sequential_11/random_zoom_8/stateful_uniform:z:00sequential_11/random_zoom_8/stateful_uniform:z:00sequential_11/random_zoom_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
-sequential_11/random_zoom_8/zoom_matrix/ShapeShape+sequential_11/random_zoom_8/concat:output:0*
T0*
_output_shapes
:
;sequential_11/random_zoom_8/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=sequential_11/random_zoom_8/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=sequential_11/random_zoom_8/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_11/random_zoom_8/zoom_matrix/strided_sliceStridedSlice6sequential_11/random_zoom_8/zoom_matrix/Shape:output:0Dsequential_11/random_zoom_8/zoom_matrix/strided_slice/stack:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice/stack_1:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-sequential_11/random_zoom_8/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?³
+sequential_11/random_zoom_8/zoom_matrix/subSub&sequential_11/random_zoom_8/Cast_1:y:06sequential_11/random_zoom_8/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: v
1sequential_11/random_zoom_8/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Θ
/sequential_11/random_zoom_8/zoom_matrix/truedivRealDiv/sequential_11/random_zoom_8/zoom_matrix/sub:z:0:sequential_11/random_zoom_8/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
=sequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ή
7sequential_11/random_zoom_8/zoom_matrix/strided_slice_1StridedSlice+sequential_11/random_zoom_8/concat:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack_1:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskt
/sequential_11/random_zoom_8/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?β
-sequential_11/random_zoom_8/zoom_matrix/sub_1Sub8sequential_11/random_zoom_8/zoom_matrix/sub_1/x:output:0@sequential_11/random_zoom_8/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????Μ
+sequential_11/random_zoom_8/zoom_matrix/mulMul3sequential_11/random_zoom_8/zoom_matrix/truediv:z:01sequential_11/random_zoom_8/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????t
/sequential_11/random_zoom_8/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?΅
-sequential_11/random_zoom_8/zoom_matrix/sub_2Sub$sequential_11/random_zoom_8/Cast:y:08sequential_11/random_zoom_8/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: x
3sequential_11/random_zoom_8/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ξ
1sequential_11/random_zoom_8/zoom_matrix/truediv_1RealDiv1sequential_11/random_zoom_8/zoom_matrix/sub_2:z:0<sequential_11/random_zoom_8/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
=sequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ή
7sequential_11/random_zoom_8/zoom_matrix/strided_slice_2StridedSlice+sequential_11/random_zoom_8/concat:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack_1:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskt
/sequential_11/random_zoom_8/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?β
-sequential_11/random_zoom_8/zoom_matrix/sub_3Sub8sequential_11/random_zoom_8/zoom_matrix/sub_3/x:output:0@sequential_11/random_zoom_8/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????Π
-sequential_11/random_zoom_8/zoom_matrix/mul_1Mul5sequential_11/random_zoom_8/zoom_matrix/truediv_1:z:01sequential_11/random_zoom_8/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????
=sequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ή
7sequential_11/random_zoom_8/zoom_matrix/strided_slice_3StridedSlice+sequential_11/random_zoom_8/concat:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack_1:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
6sequential_11/random_zoom_8/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :λ
4sequential_11/random_zoom_8/zoom_matrix/zeros/packedPack>sequential_11/random_zoom_8/zoom_matrix/strided_slice:output:0?sequential_11/random_zoom_8/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:x
3sequential_11/random_zoom_8/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    δ
-sequential_11/random_zoom_8/zoom_matrix/zerosFill=sequential_11/random_zoom_8/zoom_matrix/zeros/packed:output:0<sequential_11/random_zoom_8/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????z
8sequential_11/random_zoom_8/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ο
6sequential_11/random_zoom_8/zoom_matrix/zeros_1/packedPack>sequential_11/random_zoom_8/zoom_matrix/strided_slice:output:0Asequential_11/random_zoom_8/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:z
5sequential_11/random_zoom_8/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    κ
/sequential_11/random_zoom_8/zoom_matrix/zeros_1Fill?sequential_11/random_zoom_8/zoom_matrix/zeros_1/packed:output:0>sequential_11/random_zoom_8/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
=sequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ή
7sequential_11/random_zoom_8/zoom_matrix/strided_slice_4StridedSlice+sequential_11/random_zoom_8/concat:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack_1:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskz
8sequential_11/random_zoom_8/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ο
6sequential_11/random_zoom_8/zoom_matrix/zeros_2/packedPack>sequential_11/random_zoom_8/zoom_matrix/strided_slice:output:0Asequential_11/random_zoom_8/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:z
5sequential_11/random_zoom_8/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    κ
/sequential_11/random_zoom_8/zoom_matrix/zeros_2Fill?sequential_11/random_zoom_8/zoom_matrix/zeros_2/packed:output:0>sequential_11/random_zoom_8/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????u
3sequential_11/random_zoom_8/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Η
.sequential_11/random_zoom_8/zoom_matrix/concatConcatV2@sequential_11/random_zoom_8/zoom_matrix/strided_slice_3:output:06sequential_11/random_zoom_8/zoom_matrix/zeros:output:0/sequential_11/random_zoom_8/zoom_matrix/mul:z:08sequential_11/random_zoom_8/zoom_matrix/zeros_1:output:0@sequential_11/random_zoom_8/zoom_matrix/strided_slice_4:output:01sequential_11/random_zoom_8/zoom_matrix/mul_1:z:08sequential_11/random_zoom_8/zoom_matrix/zeros_2:output:0<sequential_11/random_zoom_8/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????΅
+sequential_11/random_zoom_8/transform/ShapeShapeZsequential_11/random_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:
9sequential_11/random_zoom_8/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
;sequential_11/random_zoom_8/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;sequential_11/random_zoom_8/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ϋ
3sequential_11/random_zoom_8/transform/strided_sliceStridedSlice4sequential_11/random_zoom_8/transform/Shape:output:0Bsequential_11/random_zoom_8/transform/strided_slice/stack:output:0Dsequential_11/random_zoom_8/transform/strided_slice/stack_1:output:0Dsequential_11/random_zoom_8/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:u
0sequential_11/random_zoom_8/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    α
@sequential_11/random_zoom_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Zsequential_11/random_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:07sequential_11/random_zoom_8/zoom_matrix/concat:output:0<sequential_11/random_zoom_8/transform/strided_slice:output:09sequential_11/random_zoom_8/transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_17/Conv2DConv2DUsequential_11/random_zoom_8/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides

 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ n
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ ?
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides

conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ι
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@l
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@?
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides

conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@l
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@?
max_pooling2d_19/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_20/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_20/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_21/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_22/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_22/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   
flatten_3/ReshapeReshape!max_pooling2d_22/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:?????????
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp'^sequential_11/random_flip_13/map/whileA^sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip<^sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : 2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2P
&sequential_11/random_flip_13/map/while&sequential_11/random_flip_13/map/while2
@sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip@sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip2z
;sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip;sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ν

2__inference_random_rotation_13_layer_call_fn_58818

inputs
unknown:	
identity’StatefulPartitionedCallά
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56435y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
κ

)__inference_conv2d_21_layer_call_fn_58506

inputs!
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
	
a
E__inference_sequential_layer_call_and_return_conditional_losses_57987

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ­
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:?????????
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????c
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
ί
N
*__inference_sequential_layer_call_fn_56153
resizing_input
identityΒ
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56145j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:a ]
1
_output_shapes
:?????????
(
_user_specified_nameresizing_input

i
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58822

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

e
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58648

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
φ
`
D__inference_rescaling_layer_call_and_return_conditional_losses_58632

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:?????????d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:?????????Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
‘
γ
1sequential_11_random_flip_13_map_while_cond_57538^
Zsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_loop_counterY
Usequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice6
2sequential_11_random_flip_13_map_while_placeholder8
4sequential_11_random_flip_13_map_while_placeholder_1^
Zsequential_11_random_flip_13_map_while_less_sequential_11_random_flip_13_map_strided_sliceu
qsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_cond_57538___redundant_placeholder0u
qsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_cond_57538___redundant_placeholder13
/sequential_11_random_flip_13_map_while_identity
δ
+sequential_11/random_flip_13/map/while/LessLess2sequential_11_random_flip_13_map_while_placeholderZsequential_11_random_flip_13_map_while_less_sequential_11_random_flip_13_map_strided_slice*
T0*
_output_shapes
: 
-sequential_11/random_flip_13/map/while/Less_1LessZsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_loop_counterUsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice*
T0*
_output_shapes
: »
1sequential_11/random_flip_13/map/while/LogicalAnd
LogicalAnd1sequential_11/random_flip_13/map/while/Less_1:z:0/sequential_11/random_flip_13/map/while/Less:z:0*
_output_shapes
: 
/sequential_11/random_flip_13/map/while/IdentityIdentity5sequential_11/random_flip_13/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "k
/sequential_11_random_flip_13_map_while_identity8sequential_11/random_flip_13/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
«

map_while_body_58664$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	’2map/while/stateful_uniform_full_int/RngReadAndSkip’4map/while/stateful_uniform_full_int_1/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ·
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ή
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Γ
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskπ
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Δ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::’
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?έ
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_58724*#
output_shapes
:*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_58723£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ώ
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ώ
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask§
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:«
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ν
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskϋ
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Γ
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Τ
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: τ
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_58773*#
output_shapes
:*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_58772
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:ξ
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:ιθ?Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: Ό
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Έ
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ύ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
n
Α
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_59058

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *Y?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ά
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Λ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ο
%
!__inference__traced_restore_59466
file_prefix;
!assignvariableop_conv2d_17_kernel: /
!assignvariableop_1_conv2d_17_bias: =
#assignvariableop_2_conv2d_18_kernel: @/
!assignvariableop_3_conv2d_18_bias:@=
#assignvariableop_4_conv2d_19_kernel:@@/
!assignvariableop_5_conv2d_19_bias:@=
#assignvariableop_6_conv2d_20_kernel:@@/
!assignvariableop_7_conv2d_20_bias:@=
#assignvariableop_8_conv2d_21_kernel:@@/
!assignvariableop_9_conv2d_21_bias:@>
$assignvariableop_10_conv2d_22_kernel:@@0
"assignvariableop_11_conv2d_22_bias:@5
"assignvariableop_12_dense_6_kernel:	@.
 assignvariableop_13_dense_6_bias:@4
"assignvariableop_14_dense_7_kernel:@.
 assignvariableop_15_dense_7_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: #
assignvariableop_23_total: #
assignvariableop_24_count: ,
assignvariableop_25_statevar_2:	,
assignvariableop_26_statevar_1:	*
assignvariableop_27_statevar:	E
+assignvariableop_28_adam_conv2d_17_kernel_m: 7
)assignvariableop_29_adam_conv2d_17_bias_m: E
+assignvariableop_30_adam_conv2d_18_kernel_m: @7
)assignvariableop_31_adam_conv2d_18_bias_m:@E
+assignvariableop_32_adam_conv2d_19_kernel_m:@@7
)assignvariableop_33_adam_conv2d_19_bias_m:@E
+assignvariableop_34_adam_conv2d_20_kernel_m:@@7
)assignvariableop_35_adam_conv2d_20_bias_m:@E
+assignvariableop_36_adam_conv2d_21_kernel_m:@@7
)assignvariableop_37_adam_conv2d_21_bias_m:@E
+assignvariableop_38_adam_conv2d_22_kernel_m:@@7
)assignvariableop_39_adam_conv2d_22_bias_m:@<
)assignvariableop_40_adam_dense_6_kernel_m:	@5
'assignvariableop_41_adam_dense_6_bias_m:@;
)assignvariableop_42_adam_dense_7_kernel_m:@5
'assignvariableop_43_adam_dense_7_bias_m:E
+assignvariableop_44_adam_conv2d_17_kernel_v: 7
)assignvariableop_45_adam_conv2d_17_bias_v: E
+assignvariableop_46_adam_conv2d_18_kernel_v: @7
)assignvariableop_47_adam_conv2d_18_bias_v:@E
+assignvariableop_48_adam_conv2d_19_kernel_v:@@7
)assignvariableop_49_adam_conv2d_19_bias_v:@E
+assignvariableop_50_adam_conv2d_20_kernel_v:@@7
)assignvariableop_51_adam_conv2d_20_bias_v:@E
+assignvariableop_52_adam_conv2d_21_kernel_v:@@7
)assignvariableop_53_adam_conv2d_21_bias_v:@E
+assignvariableop_54_adam_conv2d_22_kernel_v:@@7
)assignvariableop_55_adam_conv2d_22_bias_v:@<
)assignvariableop_56_adam_dense_6_kernel_v:	@5
'assignvariableop_57_adam_dense_6_bias_v:@;
)assignvariableop_58_adam_dense_7_kernel_v:@5
'assignvariableop_59_adam_dense_7_bias_v:
identity_61’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_45’AssignVariableOp_46’AssignVariableOp_47’AssignVariableOp_48’AssignVariableOp_49’AssignVariableOp_5’AssignVariableOp_50’AssignVariableOp_51’AssignVariableOp_52’AssignVariableOp_53’AssignVariableOp_54’AssignVariableOp_55’AssignVariableOp_56’AssignVariableOp_57’AssignVariableOp_58’AssignVariableOp_59’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*Ό!
value²!B―!=B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHν
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*
valueB=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesχ
τ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*K
dtypesA
?2=				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_18_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_18_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_19_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_19_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_20_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_20_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_21_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_21_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_22_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_22_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_statevar_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_statevar_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_statevarIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_17_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_17_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_18_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_18_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_19_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_19_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_20_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_20_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_21_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_21_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_22_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_22_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_6_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_6_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_7_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_7_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_conv2d_17_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_conv2d_17_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_18_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_conv2d_18_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_conv2d_19_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_conv2d_19_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_conv2d_20_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_conv2d_20_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_21_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_21_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_conv2d_22_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_conv2d_22_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_dense_6_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_dense_6_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_7_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_7_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 χ

Identity_60Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_61IdentityIdentity_60:output:0^NoOp_1*
T0*
_output_shapes
: δ

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_61Identity_61:output:0*
_input_shapes|
z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Έ
L
0__inference_max_pooling2d_17_layer_call_fn_58402

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

d
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56188

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

d
H__inference_sequential_11_layer_call_and_return_conditional_losses_58007

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58557

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58547

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs

ύ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Β
}
-__inference_random_zoom_8_layer_call_fn_58952

inputs
unknown:	
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56304y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
¦

I__inference_random_flip_13_layer_call_and_return_conditional_losses_56606

inputs
map_while_input_6:	
identity’	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         α
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Β
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_56464* 
condR
map_while_cond_56463*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Τ
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:?????????*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:?????????R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2
	map/while	map/while:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

r
H__inference_sequential_11_layer_call_and_return_conditional_losses_56658
random_flip_13_input
identityΫ
random_flip_13/PartitionedCallPartitionedCallrandom_flip_13_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56176φ
"random_rotation_13/PartitionedCallPartitionedCall'random_flip_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56182π
random_zoom_8/PartitionedCallPartitionedCall+random_rotation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56188x
IdentityIdentity&random_zoom_8/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:g c
1
_output_shapes
:?????????
.
_user_specified_namerandom_flip_13_input
Ο
J
.__inference_random_flip_13_layer_call_fn_58637

inputs
identityΎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56176j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
βq
ϊ
 __inference__wrapped_model_56091
sequential_inputP
6sequential_12_conv2d_17_conv2d_readvariableop_resource: E
7sequential_12_conv2d_17_biasadd_readvariableop_resource: P
6sequential_12_conv2d_18_conv2d_readvariableop_resource: @E
7sequential_12_conv2d_18_biasadd_readvariableop_resource:@P
6sequential_12_conv2d_19_conv2d_readvariableop_resource:@@E
7sequential_12_conv2d_19_biasadd_readvariableop_resource:@P
6sequential_12_conv2d_20_conv2d_readvariableop_resource:@@E
7sequential_12_conv2d_20_biasadd_readvariableop_resource:@P
6sequential_12_conv2d_21_conv2d_readvariableop_resource:@@E
7sequential_12_conv2d_21_biasadd_readvariableop_resource:@P
6sequential_12_conv2d_22_conv2d_readvariableop_resource:@@E
7sequential_12_conv2d_22_biasadd_readvariableop_resource:@G
4sequential_12_dense_6_matmul_readvariableop_resource:	@C
5sequential_12_dense_6_biasadd_readvariableop_resource:@F
4sequential_12_dense_7_matmul_readvariableop_resource:@C
5sequential_12_dense_7_biasadd_readvariableop_resource:
identity’.sequential_12/conv2d_17/BiasAdd/ReadVariableOp’-sequential_12/conv2d_17/Conv2D/ReadVariableOp’.sequential_12/conv2d_18/BiasAdd/ReadVariableOp’-sequential_12/conv2d_18/Conv2D/ReadVariableOp’.sequential_12/conv2d_19/BiasAdd/ReadVariableOp’-sequential_12/conv2d_19/Conv2D/ReadVariableOp’.sequential_12/conv2d_20/BiasAdd/ReadVariableOp’-sequential_12/conv2d_20/Conv2D/ReadVariableOp’.sequential_12/conv2d_21/BiasAdd/ReadVariableOp’-sequential_12/conv2d_21/Conv2D/ReadVariableOp’.sequential_12/conv2d_22/BiasAdd/ReadVariableOp’-sequential_12/conv2d_22/Conv2D/ReadVariableOp’,sequential_12/dense_6/BiasAdd/ReadVariableOp’+sequential_12/dense_6/MatMul/ReadVariableOp’,sequential_12/dense_7/BiasAdd/ReadVariableOp’+sequential_12/dense_7/MatMul/ReadVariableOp~
-sequential_12/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ι
7sequential_12/sequential/resizing/resize/ResizeBilinearResizeBilinearsequential_input6sequential_12/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(n
)sequential_12/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;p
+sequential_12/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    η
&sequential_12/sequential/rescaling/mulMulHsequential_12/sequential/resizing/resize/ResizeBilinear:resized_images:02sequential_12/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:?????????Ν
&sequential_12/sequential/rescaling/addAddV2*sequential_12/sequential/rescaling/mul:z:04sequential_12/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????¬
-sequential_12/conv2d_17/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0π
sequential_12/conv2d_17/Conv2DConv2D*sequential_12/sequential/rescaling/add:z:05sequential_12/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides
’
.sequential_12/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Η
sequential_12/conv2d_17/BiasAddBiasAdd'sequential_12/conv2d_17/Conv2D:output:06sequential_12/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ 
sequential_12/conv2d_17/ReluRelu(sequential_12/conv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ Κ
&sequential_12/max_pooling2d_17/MaxPoolMaxPool*sequential_12/conv2d_17/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
¬
-sequential_12/conv2d_18/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0σ
sequential_12/conv2d_18/Conv2DConv2D/sequential_12/max_pooling2d_17/MaxPool:output:05sequential_12/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
’
.sequential_12/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ε
sequential_12/conv2d_18/BiasAddBiasAdd'sequential_12/conv2d_18/Conv2D:output:06sequential_12/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@
sequential_12/conv2d_18/ReluRelu(sequential_12/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@Κ
&sequential_12/max_pooling2d_18/MaxPoolMaxPool*sequential_12/conv2d_18/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides
¬
-sequential_12/conv2d_19/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0σ
sequential_12/conv2d_19/Conv2DConv2D/sequential_12/max_pooling2d_18/MaxPool:output:05sequential_12/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
’
.sequential_12/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ε
sequential_12/conv2d_19/BiasAddBiasAdd'sequential_12/conv2d_19/Conv2D:output:06sequential_12/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@
sequential_12/conv2d_19/ReluRelu(sequential_12/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@Κ
&sequential_12/max_pooling2d_19/MaxPoolMaxPool*sequential_12/conv2d_19/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
¬
-sequential_12/conv2d_20/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0σ
sequential_12/conv2d_20/Conv2DConv2D/sequential_12/max_pooling2d_19/MaxPool:output:05sequential_12/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
’
.sequential_12/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ε
sequential_12/conv2d_20/BiasAddBiasAdd'sequential_12/conv2d_20/Conv2D:output:06sequential_12/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
sequential_12/conv2d_20/ReluRelu(sequential_12/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@Κ
&sequential_12/max_pooling2d_20/MaxPoolMaxPool*sequential_12/conv2d_20/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
¬
-sequential_12/conv2d_21/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0σ
sequential_12/conv2d_21/Conv2DConv2D/sequential_12/max_pooling2d_20/MaxPool:output:05sequential_12/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
’
.sequential_12/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ε
sequential_12/conv2d_21/BiasAddBiasAdd'sequential_12/conv2d_21/Conv2D:output:06sequential_12/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
sequential_12/conv2d_21/ReluRelu(sequential_12/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@Κ
&sequential_12/max_pooling2d_21/MaxPoolMaxPool*sequential_12/conv2d_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
¬
-sequential_12/conv2d_22/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0σ
sequential_12/conv2d_22/Conv2DConv2D/sequential_12/max_pooling2d_21/MaxPool:output:05sequential_12/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
’
.sequential_12/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ε
sequential_12/conv2d_22/BiasAddBiasAdd'sequential_12/conv2d_22/Conv2D:output:06sequential_12/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
sequential_12/conv2d_22/ReluRelu(sequential_12/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@Κ
&sequential_12/max_pooling2d_22/MaxPoolMaxPool*sequential_12/conv2d_22/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
n
sequential_12/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   Ά
sequential_12/flatten_3/ReshapeReshape/sequential_12/max_pooling2d_22/MaxPool:output:0&sequential_12/flatten_3/Const:output:0*
T0*(
_output_shapes
:?????????‘
+sequential_12/dense_6/MatMul/ReadVariableOpReadVariableOp4sequential_12_dense_6_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0·
sequential_12/dense_6/MatMulMatMul(sequential_12/flatten_3/Reshape:output:03sequential_12/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@
,sequential_12/dense_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_12_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Έ
sequential_12/dense_6/BiasAddBiasAdd&sequential_12/dense_6/MatMul:product:04sequential_12/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@|
sequential_12/dense_6/ReluRelu&sequential_12/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@ 
+sequential_12/dense_7/MatMul/ReadVariableOpReadVariableOp4sequential_12_dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0·
sequential_12/dense_7/MatMulMatMul(sequential_12/dense_6/Relu:activations:03sequential_12/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
,sequential_12/dense_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_12_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Έ
sequential_12/dense_7/BiasAddBiasAdd&sequential_12/dense_7/MatMul:product:04sequential_12/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
sequential_12/dense_7/SoftmaxSoftmax&sequential_12/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_12/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Ζ
NoOpNoOp/^sequential_12/conv2d_17/BiasAdd/ReadVariableOp.^sequential_12/conv2d_17/Conv2D/ReadVariableOp/^sequential_12/conv2d_18/BiasAdd/ReadVariableOp.^sequential_12/conv2d_18/Conv2D/ReadVariableOp/^sequential_12/conv2d_19/BiasAdd/ReadVariableOp.^sequential_12/conv2d_19/Conv2D/ReadVariableOp/^sequential_12/conv2d_20/BiasAdd/ReadVariableOp.^sequential_12/conv2d_20/Conv2D/ReadVariableOp/^sequential_12/conv2d_21/BiasAdd/ReadVariableOp.^sequential_12/conv2d_21/Conv2D/ReadVariableOp/^sequential_12/conv2d_22/BiasAdd/ReadVariableOp.^sequential_12/conv2d_22/Conv2D/ReadVariableOp-^sequential_12/dense_6/BiasAdd/ReadVariableOp,^sequential_12/dense_6/MatMul/ReadVariableOp-^sequential_12/dense_7/BiasAdd/ReadVariableOp,^sequential_12/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 2`
.sequential_12/conv2d_17/BiasAdd/ReadVariableOp.sequential_12/conv2d_17/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_17/Conv2D/ReadVariableOp-sequential_12/conv2d_17/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_18/BiasAdd/ReadVariableOp.sequential_12/conv2d_18/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_18/Conv2D/ReadVariableOp-sequential_12/conv2d_18/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_19/BiasAdd/ReadVariableOp.sequential_12/conv2d_19/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_19/Conv2D/ReadVariableOp-sequential_12/conv2d_19/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_20/BiasAdd/ReadVariableOp.sequential_12/conv2d_20/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_20/Conv2D/ReadVariableOp-sequential_12/conv2d_20/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_21/BiasAdd/ReadVariableOp.sequential_12/conv2d_21/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_21/Conv2D/ReadVariableOp-sequential_12/conv2d_21/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_22/BiasAdd/ReadVariableOp.sequential_12/conv2d_22/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_22/Conv2D/ReadVariableOp-sequential_12/conv2d_22/Conv2D/ReadVariableOp2\
,sequential_12/dense_6/BiasAdd/ReadVariableOp,sequential_12/dense_6/BiasAdd/ReadVariableOp2Z
+sequential_12/dense_6/MatMul/ReadVariableOp+sequential_12/dense_6/MatMul/ReadVariableOp2\
,sequential_12/dense_7/BiasAdd/ReadVariableOp,sequential_12/dense_7/BiasAdd/ReadVariableOp2Z
+sequential_12/dense_7/MatMul/ReadVariableOp+sequential_12/dense_7/MatMul/ReadVariableOp:c _
1
_output_shapes
:?????????
*
_user_specified_namesequential_input
ς

)__inference_conv2d_17_layer_call_fn_58386

inputs!
unknown: 
	unknown_0: 
identity’StatefulPartitionedCallγ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ώώ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_58487

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Γ
D
(__inference_resizing_layer_call_fn_58613

inputs
identityΈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
μ
i
E__inference_sequential_layer_call_and_return_conditional_losses_56159
resizing_input
identityΙ
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104ή
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:a ]
1
_output_shapes
:?????????
(
_user_specified_nameresizing_input
κ

)__inference_conv2d_18_layer_call_fn_58416

inputs!
unknown: @
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
κ

)__inference_conv2d_19_layer_call_fn_58446

inputs!
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
Η
F
*__inference_sequential_layer_call_fn_57967

inputs
identityΊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56145j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Δ
Τ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56631

inputs"
random_flip_13_56621:	&
random_rotation_13_56624:	!
random_zoom_8_56627:	
identity’&random_flip_13/StatefulPartitionedCall’*random_rotation_13/StatefulPartitionedCall’%random_zoom_8/StatefulPartitionedCallτ
&random_flip_13/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_13_56621*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56606©
*random_rotation_13/StatefulPartitionedCallStatefulPartitionedCall/random_flip_13/StatefulPartitionedCall:output:0random_rotation_13_56624*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56435
%random_zoom_8/StatefulPartitionedCallStatefulPartitionedCall3random_rotation_13/StatefulPartitionedCall:output:0random_zoom_8_56627*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56304
IdentityIdentity.random_zoom_8/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????Δ
NoOpNoOp'^random_flip_13/StatefulPartitionedCall+^random_rotation_13/StatefulPartitionedCall&^random_zoom_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : 2P
&random_flip_13/StatefulPartitionedCall&random_flip_13/StatefulPartitionedCall2X
*random_rotation_13/StatefulPartitionedCall*random_rotation_13/StatefulPartitionedCall2N
%random_zoom_8/StatefulPartitionedCall%random_zoom_8/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_22_layer_call_fn_58552

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ρ
Κ
#__inference_signature_wrapper_57363
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identity’StatefulPartitionedCallϊ
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_56091o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:?????????
*
_user_specified_namesequential_input

ύ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs


σ
B__inference_dense_7_layer_call_and_return_conditional_losses_58608

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ό

#random_flip_13_map_while_cond_58022B
>random_flip_13_map_while_random_flip_13_map_while_loop_counter=
9random_flip_13_map_while_random_flip_13_map_strided_slice(
$random_flip_13_map_while_placeholder*
&random_flip_13_map_while_placeholder_1B
>random_flip_13_map_while_less_random_flip_13_map_strided_sliceY
Urandom_flip_13_map_while_random_flip_13_map_while_cond_58022___redundant_placeholder0Y
Urandom_flip_13_map_while_random_flip_13_map_while_cond_58022___redundant_placeholder1%
!random_flip_13_map_while_identity
¬
random_flip_13/map/while/LessLess$random_flip_13_map_while_placeholder>random_flip_13_map_while_less_random_flip_13_map_strided_slice*
T0*
_output_shapes
: Γ
random_flip_13/map/while/Less_1Less>random_flip_13_map_while_random_flip_13_map_while_loop_counter9random_flip_13_map_while_random_flip_13_map_strided_slice*
T0*
_output_shapes
: 
#random_flip_13/map/while/LogicalAnd
LogicalAnd#random_flip_13/map/while/Less_1:z:0!random_flip_13/map/while/Less:z:0*
_output_shapes
: w
!random_flip_13/map/while/IdentityIdentity'random_flip_13/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "O
!random_flip_13_map_while_identity*random_flip_13/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
ς
d
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191

inputs
identityΝ
random_flip_13/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56176φ
"random_rotation_13/PartitionedCallPartitionedCall'random_flip_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56182π
random_zoom_8/PartitionedCallPartitionedCall+random_rotation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56188x
IdentityIdentity&random_zoom_8/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
μ
i
E__inference_sequential_layer_call_and_return_conditional_losses_56165
resizing_input
identityΙ
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104ή
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:a ]
1
_output_shapes
:?????????
(
_user_specified_nameresizing_input
Ζ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_58568

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
	
a
E__inference_sequential_layer_call_and_return_conditional_losses_57977

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ­
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:?????????
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????c
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ν
I
-__inference_sequential_11_layer_call_fn_57992

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ά	

Arandom_flip_13_map_while_stateless_random_flip_up_down_true_58131
random_flip_13_map_while_stateless_random_flip_up_down_reversev2_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyC
?random_flip_13_map_while_stateless_random_flip_up_down_identity
Erandom_flip_13/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ω
@random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2random_flip_13_map_while_stateless_random_flip_up_down_reversev2_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyNrandom_flip_13/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ε
?random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentityIrandom_flip_13/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"
?random_flip_13_map_while_stateless_random_flip_up_down_identityHrandom_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
n
Α
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56304

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *Y?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ά
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Λ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
κ

)__inference_conv2d_22_layer_call_fn_58536

inputs!
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_19_layer_call_fn_58462

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_58437

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
―

Brandom_flip_13_map_while_stateless_random_flip_up_down_false_58132
random_flip_13_map_while_stateless_random_flip_up_down_identity_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyC
?random_flip_13_map_while_stateless_random_flip_up_down_identity
?random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentityrandom_flip_13_map_while_stateless_random_flip_up_down_identity_random_flip_13_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"
?random_flip_13_map_while_stateless_random_flip_up_down_identityHrandom_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ε
Κ
-__inference_sequential_12_layer_call_fn_57400

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_56903o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
½[
Ψ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57517

inputsB
(conv2d_17_conv2d_readvariableop_resource: 7
)conv2d_17_biasadd_readvariableop_resource: B
(conv2d_18_conv2d_readvariableop_resource: @7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@@7
)conv2d_20_biasadd_readvariableop_resource:@B
(conv2d_21_conv2d_readvariableop_resource:@@7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@9
&dense_6_matmul_readvariableop_resource:	@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity’ conv2d_17/BiasAdd/ReadVariableOp’conv2d_17/Conv2D/ReadVariableOp’ conv2d_18/BiasAdd/ReadVariableOp’conv2d_18/Conv2D/ReadVariableOp’ conv2d_19/BiasAdd/ReadVariableOp’conv2d_19/Conv2D/ReadVariableOp’ conv2d_20/BiasAdd/ReadVariableOp’conv2d_20/Conv2D/ReadVariableOp’ conv2d_21/BiasAdd/ReadVariableOp’conv2d_21/Conv2D/ReadVariableOp’ conv2d_22/BiasAdd/ReadVariableOp’conv2d_22/Conv2D/ReadVariableOp’dense_6/BiasAdd/ReadVariableOp’dense_6/MatMul/ReadVariableOp’dense_7/BiasAdd/ReadVariableOp’dense_7/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Γ
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:?????????£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ζ
conv2d_17/Conv2DConv2Dsequential/rescaling/add:z:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides

 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ n
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ ?
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides

conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ι
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@l
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@?
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides

conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@l
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@?
max_pooling2d_19/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_20/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_20/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_21/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_22/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_22/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   
flatten_3/ReshapeReshape!max_pooling2d_22/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:?????????
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????ζ
NoOpNoOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs


σ
B__inference_dense_7_layer_call_and_return_conditional_losses_56896

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
­
?
Psequential_11_random_flip_13_map_while_stateless_random_flip_up_down_false_57648ͺ
₯sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identity_sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyQ
Msequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identity°
Msequential_11/random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentity₯sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identity_sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"§
Msequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identityVsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
­
_
C__inference_resizing_layer_call_and_return_conditional_losses_56104

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs"ΏL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ζ
serving_default²
W
sequential_inputC
"serving_default_sequential_input:0?????????;
dense_70
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ΐ

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Δ
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ρ
#layer-0
$layer-1
%layer-2
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_sequential
έ
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op"
_tf_keras_layer
₯
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op"
_tf_keras_layer
₯
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op"
_tf_keras_layer
₯
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias
 a_jit_compiled_convolution_op"
_tf_keras_layer
₯
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias
 p_jit_compiled_convolution_op"
_tf_keras_layer
₯
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

}kernel
~bias
 _jit_compiled_convolution_op"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer

20
31
A2
B3
P4
Q5
_6
`7
n8
o9
}10
~11
12
13
14
15"
trackable_list_wrapper

20
31
A2
B3
P4
Q5
_6
`7
n8
o9
}10
~11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
Ο
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ς
‘trace_0
’trace_1
£trace_2
€trace_32?
-__inference_sequential_12_layer_call_fn_56938
-__inference_sequential_12_layer_call_fn_57400
-__inference_sequential_12_layer_call_fn_57443
-__inference_sequential_12_layer_call_fn_57206ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 z‘trace_0z’trace_1z£trace_2z€trace_3
ή
₯trace_0
¦trace_1
§trace_2
¨trace_32λ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57517
H__inference_sequential_12_layer_call_and_return_conditional_losses_57957
H__inference_sequential_12_layer_call_and_return_conditional_losses_57259
H__inference_sequential_12_layer_call_and_return_conditional_losses_57318ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 z₯trace_0z¦trace_1z§trace_2z¨trace_3
ΤBΡ
 __inference__wrapped_model_56091sequential_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 
	©iter
ͺbeta_1
«beta_2

¬decay
­learning_rate2m3mAmBmPmQm_m`mnmom}m~m	m	m	m	m2v3vAvBv Pv‘Qv’_v£`v€nv₯ov¦}v§~v¨	v©	vͺ	v«	v¬"
	optimizer
-
?serving_default"
signature_map
«
―	variables
°trainable_variables
±regularization_losses
²	keras_api
³__call__
+΄&call_and_return_all_conditional_losses"
_tf_keras_layer
«
΅	variables
Άtrainable_variables
·regularization_losses
Έ	keras_api
Ή__call__
+Ί&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
»non_trainable_variables
Όlayers
½metrics
 Ύlayer_regularization_losses
Ώlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
ζ
ΐtrace_0
Αtrace_1
Βtrace_2
Γtrace_32σ
*__inference_sequential_layer_call_fn_56120
*__inference_sequential_layer_call_fn_57962
*__inference_sequential_layer_call_fn_57967
*__inference_sequential_layer_call_fn_56153ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zΐtrace_0zΑtrace_1zΒtrace_2zΓtrace_3
?
Δtrace_0
Εtrace_1
Ζtrace_2
Ηtrace_32ί
E__inference_sequential_layer_call_and_return_conditional_losses_57977
E__inference_sequential_layer_call_and_return_conditional_losses_57987
E__inference_sequential_layer_call_and_return_conditional_losses_56159
E__inference_sequential_layer_call_and_return_conditional_losses_56165ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zΔtrace_0zΕtrace_1zΖtrace_2zΗtrace_3
Γ
Θ	variables
Ιtrainable_variables
Κregularization_losses
Λ	keras_api
Μ__call__
+Ν&call_and_return_all_conditional_losses
Ξ_random_generator"
_tf_keras_layer
Γ
Ο	variables
Πtrainable_variables
Ρregularization_losses
?	keras_api
Σ__call__
+Τ&call_and_return_all_conditional_losses
Υ_random_generator"
_tf_keras_layer
Γ
Φ	variables
Χtrainable_variables
Ψregularization_losses
Ω	keras_api
Ϊ__call__
+Ϋ&call_and_return_all_conditional_losses
ά_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
έnon_trainable_variables
ήlayers
ίmetrics
 ΰlayer_regularization_losses
αlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
ς
βtrace_0
γtrace_1
δtrace_2
εtrace_32?
-__inference_sequential_11_layer_call_fn_56194
-__inference_sequential_11_layer_call_fn_57992
-__inference_sequential_11_layer_call_fn_58003
-__inference_sequential_11_layer_call_fn_56651ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zβtrace_0zγtrace_1zδtrace_2zεtrace_3
ή
ζtrace_0
ηtrace_1
θtrace_2
ιtrace_32λ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58007
H__inference_sequential_11_layer_call_and_return_conditional_losses_58377
H__inference_sequential_11_layer_call_and_return_conditional_losses_56658
H__inference_sequential_11_layer_call_and_return_conditional_losses_56671ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zζtrace_0zηtrace_1zθtrace_2zιtrace_3
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
²
κnon_trainable_variables
λlayers
μmetrics
 νlayer_regularization_losses
ξlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
ο
οtrace_02Π
)__inference_conv2d_17_layer_call_fn_58386’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zοtrace_0

πtrace_02λ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58397’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zπtrace_0
*:( 2conv2d_17/kernel
: 2conv2d_17/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ρnon_trainable_variables
ςlayers
σmetrics
 τlayer_regularization_losses
υlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
φ
φtrace_02Χ
0__inference_max_pooling2d_17_layer_call_fn_58402’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zφtrace_0

χtrace_02ς
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58407’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zχtrace_0
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ψnon_trainable_variables
ωlayers
ϊmetrics
 ϋlayer_regularization_losses
όlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
ο
ύtrace_02Π
)__inference_conv2d_18_layer_call_fn_58416’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zύtrace_0

ώtrace_02λ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_58427’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zώtrace_0
*:( @2conv2d_18/kernel
:@2conv2d_18/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
?non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
φ
trace_02Χ
0__inference_max_pooling2d_18_layer_call_fn_58432’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02ς
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_58437’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
ο
trace_02Π
)__inference_conv2d_19_layer_call_fn_58446’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02λ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_58457’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
*:(@@2conv2d_19/kernel
:@2conv2d_19/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
φ
trace_02Χ
0__inference_max_pooling2d_19_layer_call_fn_58462’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02ς
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_58467’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
ο
trace_02Π
)__inference_conv2d_20_layer_call_fn_58476’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02λ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_58487’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
*:(@@2conv2d_20/kernel
:@2conv2d_20/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
φ
 trace_02Χ
0__inference_max_pooling2d_20_layer_call_fn_58492’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z trace_0

‘trace_02ς
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58497’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z‘trace_0
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
’non_trainable_variables
£layers
€metrics
 ₯layer_regularization_losses
¦layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
ο
§trace_02Π
)__inference_conv2d_21_layer_call_fn_58506’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z§trace_0

¨trace_02λ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58517’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z¨trace_0
*:(@@2conv2d_21/kernel
:@2conv2d_21/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
©non_trainable_variables
ͺlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
φ
?trace_02Χ
0__inference_max_pooling2d_21_layer_call_fn_58522’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z?trace_0

―trace_02ς
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58527’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z―trace_0
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
΄layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
ο
΅trace_02Π
)__inference_conv2d_22_layer_call_fn_58536’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z΅trace_0

Άtrace_02λ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58547’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΆtrace_0
*:(@@2conv2d_22/kernel
:@2conv2d_22/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
·non_trainable_variables
Έlayers
Ήmetrics
 Ίlayer_regularization_losses
»layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
φ
Όtrace_02Χ
0__inference_max_pooling2d_22_layer_call_fn_58552’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΌtrace_0

½trace_02ς
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58557’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z½trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Ύnon_trainable_variables
Ώlayers
ΐmetrics
 Αlayer_regularization_losses
Βlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ο
Γtrace_02Π
)__inference_flatten_3_layer_call_fn_58562’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΓtrace_0

Δtrace_02λ
D__inference_flatten_3_layer_call_and_return_conditional_losses_58568’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΔtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Εnon_trainable_variables
Ζlayers
Ηmetrics
 Θlayer_regularization_losses
Ιlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ν
Κtrace_02Ξ
'__inference_dense_6_layer_call_fn_58577’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΚtrace_0

Λtrace_02ι
B__inference_dense_6_layer_call_and_return_conditional_losses_58588’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΛtrace_0
!:	@2dense_6/kernel
:@2dense_6/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Μnon_trainable_variables
Νlayers
Ξmetrics
 Οlayer_regularization_losses
Πlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ν
Ρtrace_02Ξ
'__inference_dense_7_layer_call_fn_58597’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΡtrace_0

?trace_02ι
B__inference_dense_7_layer_call_and_return_conditional_losses_58608’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z?trace_0
 :@2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
0
Σ0
Τ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_12_layer_call_fn_56938sequential_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?Bό
-__inference_sequential_12_layer_call_fn_57400inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?Bό
-__inference_sequential_12_layer_call_fn_57443inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
-__inference_sequential_12_layer_call_fn_57206sequential_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_sequential_12_layer_call_and_return_conditional_losses_57517inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_sequential_12_layer_call_and_return_conditional_losses_57957inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
€B‘
H__inference_sequential_12_layer_call_and_return_conditional_losses_57259sequential_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
€B‘
H__inference_sequential_12_layer_call_and_return_conditional_losses_57318sequential_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ΣBΠ
#__inference_signature_wrapper_57363sequential_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
―	variables
°trainable_variables
±regularization_losses
³__call__
+΄&call_and_return_all_conditional_losses
'΄"call_and_return_conditional_losses"
_generic_user_object
ξ
Ϊtrace_02Ο
(__inference_resizing_layer_call_fn_58613’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΪtrace_0

Ϋtrace_02κ
C__inference_resizing_layer_call_and_return_conditional_losses_58619’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΫtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
άnon_trainable_variables
έlayers
ήmetrics
 ίlayer_regularization_losses
ΰlayer_metrics
΅	variables
Άtrainable_variables
·regularization_losses
Ή__call__
+Ί&call_and_return_all_conditional_losses
'Ί"call_and_return_conditional_losses"
_generic_user_object
ο
αtrace_02Π
)__inference_rescaling_layer_call_fn_58624’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zαtrace_0

βtrace_02λ
D__inference_rescaling_layer_call_and_return_conditional_losses_58632’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zβtrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
*__inference_sequential_layer_call_fn_56120resizing_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
όBω
*__inference_sequential_layer_call_fn_57962inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
όBω
*__inference_sequential_layer_call_fn_57967inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
*__inference_sequential_layer_call_fn_56153resizing_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_57977inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_57987inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_56159resizing_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_56165resizing_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
γnon_trainable_variables
δlayers
εmetrics
 ζlayer_regularization_losses
ηlayer_metrics
Θ	variables
Ιtrainable_variables
Κregularization_losses
Μ__call__
+Ν&call_and_return_all_conditional_losses
'Ν"call_and_return_conditional_losses"
_generic_user_object
?
θtrace_0
ιtrace_12
.__inference_random_flip_13_layer_call_fn_58637
.__inference_random_flip_13_layer_call_fn_58644΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zθtrace_0zιtrace_1

κtrace_0
λtrace_12Ν
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58648
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58806΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zκtrace_0zλtrace_1
/
μ
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
νnon_trainable_variables
ξlayers
οmetrics
 πlayer_regularization_losses
ρlayer_metrics
Ο	variables
Πtrainable_variables
Ρregularization_losses
Σ__call__
+Τ&call_and_return_all_conditional_losses
'Τ"call_and_return_conditional_losses"
_generic_user_object
Ϊ
ςtrace_0
σtrace_12
2__inference_random_rotation_13_layer_call_fn_58811
2__inference_random_rotation_13_layer_call_fn_58818΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zςtrace_0zσtrace_1

τtrace_0
υtrace_12Υ
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58822
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58940΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zτtrace_0zυtrace_1
/
φ
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
χnon_trainable_variables
ψlayers
ωmetrics
 ϊlayer_regularization_losses
ϋlayer_metrics
Φ	variables
Χtrainable_variables
Ψregularization_losses
Ϊ__call__
+Ϋ&call_and_return_all_conditional_losses
'Ϋ"call_and_return_conditional_losses"
_generic_user_object
Π
όtrace_0
ύtrace_12
-__inference_random_zoom_8_layer_call_fn_58945
-__inference_random_zoom_8_layer_call_fn_58952΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zόtrace_0zύtrace_1

ώtrace_0
?trace_12Λ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_58956
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_59058΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zώtrace_0z?trace_1
/

_generator"
_generic_user_object
 "
trackable_list_wrapper
5
#0
$1
%2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_11_layer_call_fn_56194random_flip_13_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?Bό
-__inference_sequential_11_layer_call_fn_57992inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?Bό
-__inference_sequential_11_layer_call_fn_58003inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
-__inference_sequential_11_layer_call_fn_56651random_flip_13_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_sequential_11_layer_call_and_return_conditional_losses_58007inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_sequential_11_layer_call_and_return_conditional_losses_58377inputs"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
¨B₯
H__inference_sequential_11_layer_call_and_return_conditional_losses_56658random_flip_13_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
¨B₯
H__inference_sequential_11_layer_call_and_return_conditional_losses_56671random_flip_13_input"ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
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
έBΪ
)__inference_conv2d_17_layer_call_fn_58386inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58397inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_17_layer_call_fn_58402inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58407inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_18_layer_call_fn_58416inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_58427inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_18_layer_call_fn_58432inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_58437inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_19_layer_call_fn_58446inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_58457inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_19_layer_call_fn_58462inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_58467inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_20_layer_call_fn_58476inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_58487inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_20_layer_call_fn_58492inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58497inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_21_layer_call_fn_58506inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58517inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_21_layer_call_fn_58522inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58527inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_conv2d_22_layer_call_fn_58536inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58547inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
δBα
0__inference_max_pooling2d_22_layer_call_fn_58552inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58557inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_flatten_3_layer_call_fn_58562inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_flatten_3_layer_call_and_return_conditional_losses_58568inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
ΫBΨ
'__inference_dense_6_layer_call_fn_58577inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
B__inference_dense_6_layer_call_and_return_conditional_losses_58588inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
ΫBΨ
'__inference_dense_7_layer_call_fn_58597inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
B__inference_dense_7_layer_call_and_return_conditional_losses_58608inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
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
άBΩ
(__inference_resizing_layer_call_fn_58613inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
χBτ
C__inference_resizing_layer_call_and_return_conditional_losses_58619inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
έBΪ
)__inference_rescaling_layer_call_fn_58624inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_rescaling_layer_call_and_return_conditional_losses_58632inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
τBρ
.__inference_random_flip_13_layer_call_fn_58637inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
τBρ
.__inference_random_flip_13_layer_call_fn_58644inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58648inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58806inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
/

_state_var"
_generic_user_object
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
ψBυ
2__inference_random_rotation_13_layer_call_fn_58811inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ψBυ
2__inference_random_rotation_13_layer_call_fn_58818inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58822inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58940inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
/

_state_var"
_generic_user_object
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
σBπ
-__inference_random_zoom_8_layer_call_fn_58945inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
σBπ
-__inference_random_zoom_8_layer_call_fn_58952inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_58956inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_59058inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
/

_state_var"
_generic_user_object
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
:	2StateVar
:	2StateVar
:	2StateVar
/:- 2Adam/conv2d_17/kernel/m
!: 2Adam/conv2d_17/bias/m
/:- @2Adam/conv2d_18/kernel/m
!:@2Adam/conv2d_18/bias/m
/:-@@2Adam/conv2d_19/kernel/m
!:@2Adam/conv2d_19/bias/m
/:-@@2Adam/conv2d_20/kernel/m
!:@2Adam/conv2d_20/bias/m
/:-@@2Adam/conv2d_21/kernel/m
!:@2Adam/conv2d_21/bias/m
/:-@@2Adam/conv2d_22/kernel/m
!:@2Adam/conv2d_22/bias/m
&:$	@2Adam/dense_6/kernel/m
:@2Adam/dense_6/bias/m
%:#@2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
/:- 2Adam/conv2d_17/kernel/v
!: 2Adam/conv2d_17/bias/v
/:- @2Adam/conv2d_18/kernel/v
!:@2Adam/conv2d_18/bias/v
/:-@@2Adam/conv2d_19/kernel/v
!:@2Adam/conv2d_19/bias/v
/:-@@2Adam/conv2d_20/kernel/v
!:@2Adam/conv2d_20/bias/v
/:-@@2Adam/conv2d_21/kernel/v
!:@2Adam/conv2d_21/bias/v
/:-@@2Adam/conv2d_22/kernel/v
!:@2Adam/conv2d_22/bias/v
&:$	@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
%:#@2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v³
 __inference__wrapped_model_5609123ABPQ_`no}~C’@
9’6
41
sequential_input?????????
ͺ "1ͺ.
,
dense_7!
dense_7?????????Έ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58397p239’6
/’,
*'
inputs?????????
ͺ "/’,
%"
0?????????ώώ 
 
)__inference_conv2d_17_layer_call_fn_58386c239’6
/’,
*'
inputs?????????
ͺ ""?????????ώώ ΄
D__inference_conv2d_18_layer_call_and_return_conditional_losses_58427lAB7’4
-’*
(%
inputs????????? 
ͺ "-’*
# 
0?????????}}@
 
)__inference_conv2d_18_layer_call_fn_58416_AB7’4
-’*
(%
inputs????????? 
ͺ " ?????????}}@΄
D__inference_conv2d_19_layer_call_and_return_conditional_losses_58457lPQ7’4
-’*
(%
inputs?????????>>@
ͺ "-’*
# 
0?????????<<@
 
)__inference_conv2d_19_layer_call_fn_58446_PQ7’4
-’*
(%
inputs?????????>>@
ͺ " ?????????<<@΄
D__inference_conv2d_20_layer_call_and_return_conditional_losses_58487l_`7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
0?????????@
 
)__inference_conv2d_20_layer_call_fn_58476__`7’4
-’*
(%
inputs?????????@
ͺ " ?????????@΄
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58517lno7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
0?????????@
 
)__inference_conv2d_21_layer_call_fn_58506_no7’4
-’*
(%
inputs?????????@
ͺ " ?????????@΄
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58547l}~7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
0?????????@
 
)__inference_conv2d_22_layer_call_fn_58536_}~7’4
-’*
(%
inputs?????????@
ͺ " ?????????@₯
B__inference_dense_6_layer_call_and_return_conditional_losses_58588_0’-
&’#
!
inputs?????????
ͺ "%’"

0?????????@
 }
'__inference_dense_6_layer_call_fn_58577R0’-
&’#
!
inputs?????????
ͺ "?????????@€
B__inference_dense_7_layer_call_and_return_conditional_losses_58608^/’,
%’"
 
inputs?????????@
ͺ "%’"

0?????????
 |
'__inference_dense_7_layer_call_fn_58597Q/’,
%’"
 
inputs?????????@
ͺ "?????????©
D__inference_flatten_3_layer_call_and_return_conditional_losses_58568a7’4
-’*
(%
inputs?????????@
ͺ "&’#

0?????????
 
)__inference_flatten_3_layer_call_fn_58562T7’4
-’*
(%
inputs?????????@
ͺ "?????????ξ
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58407R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_17_layer_call_fn_58402R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_58437R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_18_layer_call_fn_58432R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_58467R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_19_layer_call_fn_58462R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58497R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_20_layer_call_fn_58492R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58527R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_21_layer_call_fn_58522R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58557R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_22_layer_call_fn_58552R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????½
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58648p=’:
3’0
*'
inputs?????????
p 
ͺ "/’,
%"
0?????????
 Α
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58806t=’:
3’0
*'
inputs?????????
p
ͺ "/’,
%"
0?????????
 
.__inference_random_flip_13_layer_call_fn_58637c=’:
3’0
*'
inputs?????????
p 
ͺ ""?????????
.__inference_random_flip_13_layer_call_fn_58644g=’:
3’0
*'
inputs?????????
p
ͺ ""?????????Α
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58822p=’:
3’0
*'
inputs?????????
p 
ͺ "/’,
%"
0?????????
 Ε
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58940t=’:
3’0
*'
inputs?????????
p
ͺ "/’,
%"
0?????????
 
2__inference_random_rotation_13_layer_call_fn_58811c=’:
3’0
*'
inputs?????????
p 
ͺ ""?????????
2__inference_random_rotation_13_layer_call_fn_58818g=’:
3’0
*'
inputs?????????
p
ͺ ""?????????Ό
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_58956p=’:
3’0
*'
inputs?????????
p 
ͺ "/’,
%"
0?????????
 ΐ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_59058t=’:
3’0
*'
inputs?????????
p
ͺ "/’,
%"
0?????????
 
-__inference_random_zoom_8_layer_call_fn_58945c=’:
3’0
*'
inputs?????????
p 
ͺ ""?????????
-__inference_random_zoom_8_layer_call_fn_58952g=’:
3’0
*'
inputs?????????
p
ͺ ""?????????΄
D__inference_rescaling_layer_call_and_return_conditional_losses_58632l9’6
/’,
*'
inputs?????????
ͺ "/’,
%"
0?????????
 
)__inference_rescaling_layer_call_fn_58624_9’6
/’,
*'
inputs?????????
ͺ ""?????????³
C__inference_resizing_layer_call_and_return_conditional_losses_58619l9’6
/’,
*'
inputs?????????
ͺ "/’,
%"
0?????????
 
(__inference_resizing_layer_call_fn_58613_9’6
/’,
*'
inputs?????????
ͺ ""?????????Ο
H__inference_sequential_11_layer_call_and_return_conditional_losses_56658O’L
E’B
85
random_flip_13_input?????????
p 

 
ͺ "/’,
%"
0?????????
 Χ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56671O’L
E’B
85
random_flip_13_input?????????
p

 
ͺ "/’,
%"
0?????????
 ΐ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58007tA’>
7’4
*'
inputs?????????
p 

 
ͺ "/’,
%"
0?????????
 Θ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58377|A’>
7’4
*'
inputs?????????
p

 
ͺ "/’,
%"
0?????????
 ¦
-__inference_sequential_11_layer_call_fn_56194uO’L
E’B
85
random_flip_13_input?????????
p 

 
ͺ ""??????????
-__inference_sequential_11_layer_call_fn_56651}O’L
E’B
85
random_flip_13_input?????????
p

 
ͺ ""?????????
-__inference_sequential_11_layer_call_fn_57992gA’>
7’4
*'
inputs?????????
p 

 
ͺ ""????????? 
-__inference_sequential_11_layer_call_fn_58003oA’>
7’4
*'
inputs?????????
p

 
ͺ ""?????????Χ
H__inference_sequential_12_layer_call_and_return_conditional_losses_5725923ABPQ_`no}~K’H
A’>
41
sequential_input?????????
p 

 
ͺ "%’"

0?????????
 έ
H__inference_sequential_12_layer_call_and_return_conditional_losses_5731823ABPQ_`no}~K’H
A’>
41
sequential_input?????????
p

 
ͺ "%’"

0?????????
 Ν
H__inference_sequential_12_layer_call_and_return_conditional_losses_5751723ABPQ_`no}~A’>
7’4
*'
inputs?????????
p 

 
ͺ "%’"

0?????????
 Σ
H__inference_sequential_12_layer_call_and_return_conditional_losses_5795723ABPQ_`no}~A’>
7’4
*'
inputs?????????
p

 
ͺ "%’"

0?????????
 ?
-__inference_sequential_12_layer_call_fn_56938}23ABPQ_`no}~K’H
A’>
41
sequential_input?????????
p 

 
ͺ "?????????΅
-__inference_sequential_12_layer_call_fn_5720623ABPQ_`no}~K’H
A’>
41
sequential_input?????????
p

 
ͺ "?????????€
-__inference_sequential_12_layer_call_fn_57400s23ABPQ_`no}~A’>
7’4
*'
inputs?????????
p 

 
ͺ "?????????ͺ
-__inference_sequential_12_layer_call_fn_57443y23ABPQ_`no}~A’>
7’4
*'
inputs?????????
p

 
ͺ "?????????Ε
E__inference_sequential_layer_call_and_return_conditional_losses_56159|I’F
?’<
2/
resizing_input?????????
p 

 
ͺ "/’,
%"
0?????????
 Ε
E__inference_sequential_layer_call_and_return_conditional_losses_56165|I’F
?’<
2/
resizing_input?????????
p

 
ͺ "/’,
%"
0?????????
 ½
E__inference_sequential_layer_call_and_return_conditional_losses_57977tA’>
7’4
*'
inputs?????????
p 

 
ͺ "/’,
%"
0?????????
 ½
E__inference_sequential_layer_call_and_return_conditional_losses_57987tA’>
7’4
*'
inputs?????????
p

 
ͺ "/’,
%"
0?????????
 
*__inference_sequential_layer_call_fn_56120oI’F
?’<
2/
resizing_input?????????
p 

 
ͺ ""?????????
*__inference_sequential_layer_call_fn_56153oI’F
?’<
2/
resizing_input?????????
p

 
ͺ ""?????????
*__inference_sequential_layer_call_fn_57962gA’>
7’4
*'
inputs?????????
p 

 
ͺ ""?????????
*__inference_sequential_layer_call_fn_57967gA’>
7’4
*'
inputs?????????
p

 
ͺ ""?????????Κ
#__inference_signature_wrapper_57363’23ABPQ_`no}~W’T
’ 
MͺJ
H
sequential_input41
sequential_input?????????"1ͺ.
,
dense_7!
dense_7?????????