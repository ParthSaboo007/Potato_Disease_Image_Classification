ве#
§щ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
В
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
Т
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.12v2.9.0-18-gd8ce9f9c3018ы∞
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
Ж
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
З
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_6/kernel/v
А
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	А@*
dtype0
В
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
Т
Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/v
Л
+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*&
_output_shapes
:@@*
dtype0
В
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
Т
Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_21/kernel/v
Л
+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
:@@*
dtype0
В
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
Т
Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/v
Л
+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
:@@*
dtype0
В
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
Т
Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_19/kernel/v
Л
+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*&
_output_shapes
:@@*
dtype0
В
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
Т
Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_18/kernel/v
Л
+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
: @*
dtype0
В
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
Т
Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_17/kernel/v
Л
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
Ж
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
З
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_6/kernel/m
А
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	А@*
dtype0
В
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
Т
Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/m
Л
+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*&
_output_shapes
:@@*
dtype0
В
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
Т
Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_21/kernel/m
Л
+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
:@@*
dtype0
В
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
Т
Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/m
Л
+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
:@@*
dtype0
В
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
Т
Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_19/kernel/m
Л
+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*&
_output_shapes
:@@*
dtype0
В
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
Т
Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_18/kernel/m
Л
+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
: @*
dtype0
В
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
Т
Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_17/kernel/m
Л
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
shape:	А@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	А@*
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
Д
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
Д
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
Д
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
Д
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
Д
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
Д
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
И©
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¬®
valueЈ®B≥® BЂ®
А
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
®
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
Ј
#layer-0
$layer-1
%layer-2
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
»
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias
 4_jit_compiled_convolution_op*
О
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
»
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op*
О
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
»
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op*
О
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses* 
»
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias
 a_jit_compiled_convolution_op*
О
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses* 
»
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias
 p_jit_compiled_convolution_op*
О
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses* 
»
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

}kernel
~bias
 _jit_compiled_convolution_op*
Ф
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses* 
Ф
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses* 
Ѓ
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses
Тkernel
	Уbias*
Ѓ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
Ъkernel
	Ыbias*
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
Т12
У13
Ъ14
Ы15*
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
Т12
У13
Ъ14
Ы15*
* 
µ
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
°trace_0
Ґtrace_1
£trace_2
§trace_3* 
:
•trace_0
¶trace_1
Іtrace_2
®trace_3* 
* 
С
	©iter
™beta_1
Ђbeta_2

ђdecay
≠learning_rate2mН3mОAmПBmРPmСQmТ_mУ`mФnmХomЦ}mЧ~mШ	ТmЩ	УmЪ	ЪmЫ	ЫmЬ2vЭ3vЮAvЯBv†Pv°QvҐ_v£`v§nv•ov¶}vІ~v®	Тv©	Уv™	ЪvЂ	Ыvђ*

Ѓserving_default* 
Ф
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses* 
Ф
µ	variables
ґtrainable_variables
Јregularization_losses
Є	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses* 
* 
* 
* 
Ц
їnon_trainable_variables
Љlayers
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
:
јtrace_0
Ѕtrace_1
¬trace_2
√trace_3* 
:
ƒtrace_0
≈trace_1
∆trace_2
«trace_3* 
Ѓ
»	variables
…trainable_variables
 regularization_losses
Ћ	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses
ќ_random_generator*
Ѓ
ѕ	variables
–trainable_variables
—regularization_losses
“	keras_api
”__call__
+‘&call_and_return_all_conditional_losses
’_random_generator*
Ѓ
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses
№_random_generator*
* 
* 
* 
Ш
Ёnon_trainable_variables
ёlayers
яmetrics
 аlayer_regularization_losses
бlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
:
вtrace_0
гtrace_1
дtrace_2
еtrace_3* 
:
жtrace_0
зtrace_1
иtrace_2
йtrace_3* 

20
31*

20
31*
* 
Ш
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

пtrace_0* 

рtrace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

цtrace_0* 

чtrace_0* 

A0
B1*

A0
B1*
* 
Ш
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

эtrace_0* 

юtrace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
€non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

Дtrace_0* 

Еtrace_0* 

P0
Q1*

P0
Q1*
* 
Ш
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

Лtrace_0* 

Мtrace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

Тtrace_0* 

Уtrace_0* 

_0
`1*

_0
`1*
* 
Ш
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

Щtrace_0* 

Ъtrace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses* 

†trace_0* 

°trace_0* 

n0
o1*

n0
o1*
* 
Ш
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

Іtrace_0* 

®trace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 

Ѓtrace_0* 

ѓtrace_0* 

}0
~1*

}0
~1*
* 
Ш
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*

µtrace_0* 

ґtrace_0* 
`Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses* 

Љtrace_0* 

љtrace_0* 
* 
* 
* 
Ь
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses* 

√trace_0* 

ƒtrace_0* 

Т0
У1*

Т0
У1*
* 
Ю
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses*

 trace_0* 

Ћtrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ъ0
Ы1*

Ъ0
Ы1*
* 
Ю
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses*

—trace_0* 

“trace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
В
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
”0
‘1*
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
Ь
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses* 

Џtrace_0* 

џtrace_0* 
* 
* 
* 
Ь
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
µ	variables
ґtrainable_variables
Јregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses* 

бtrace_0* 

вtrace_0* 
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
Ь
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
»	variables
…trainable_variables
 regularization_losses
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses* 

иtrace_0
йtrace_1* 

кtrace_0
лtrace_1* 

м
_generator*
* 
* 
* 
Ь
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
ѕ	variables
–trainable_variables
—regularization_losses
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses* 

тtrace_0
уtrace_1* 

фtrace_0
хtrace_1* 

ц
_generator*
* 
* 
* 
Ь
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses* 

ьtrace_0
эtrace_1* 

юtrace_0
€trace_1* 

А
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
Б	variables
В	keras_api

Гtotal

Дcount*
M
Е	variables
Ж	keras_api

Зtotal

Иcount
Й
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
К
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
Л
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
М
_state_var*

Г0
Д1*

Б	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

З0
И1*

Е	variables*
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
Г}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ч
 serving_default_sequential_inputPlaceholder*1
_output_shapes
:€€€€€€€€€АА*
dtype0*&
shape:€€€€€€€€€АА
в
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_57363
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Е
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
GPU 2J 8В *'
f"R 
__inference__traced_save_59276
–
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_59466µл
Ј
Ќ
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
ƒ√
®
H__inference_sequential_11_layer_call_and_return_conditional_losses_58377

inputs.
 random_flip_13_map_while_input_6:	I
;random_rotation_13_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_8_stateful_uniform_rngreadandskip_resource:	
identityИҐrandom_flip_13/map/whileҐ2random_rotation_13/stateful_uniform/RngReadAndSkipҐ-random_zoom_8/stateful_uniform/RngReadAndSkipN
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
valueB:∞
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
€€€€€€€€€л
 random_flip_13/map/TensorArrayV2TensorListReserve7random_flip_13/map/TensorArrayV2/element_shape:output:0)random_flip_13/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Э
Hrandom_flip_13/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         €
:random_flip_13/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsQrandom_flip_13/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Z
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
€€€€€€€€€п
"random_flip_13/map/TensorArrayV2_1TensorListReserve9random_flip_13/map/TensorArrayV2_1/element_shape:output:0)random_flip_13/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
%random_flip_13/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Э
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
: : : : : : : Ш
Crandom_flip_13/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Б
5random_flip_13/map/TensorArrayV2Stack/TensorListStackTensorListStack!random_flip_13/map/while:output:3Lrandom_flip_13/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:€€€€€€€€€АА*
element_dtype0Ж
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
valueB:∞
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
э€€€€€€€€}
*random_rotation_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€t
*random_rotation_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
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
ю€€€€€€€€}
*random_rotation_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€t
*random_rotation_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
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
: К
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
 *&_ƒl
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
valueB: є
(random_rotation_13/stateful_uniform/ProdProd2random_rotation_13/stateful_uniform/shape:output:02random_rotation_13/stateful_uniform/Const:output:0*
T0*
_output_shapes
: l
*random_rotation_13/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Х
*random_rotation_13/stateful_uniform/Cast_1Cast1random_rotation_13/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: В
2random_rotation_13/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_rotation_13_stateful_uniform_rngreadandskip_resource3random_rotation_13/stateful_uniform/Cast/x:output:0.random_rotation_13/stateful_uniform/Cast_1:y:0*
_output_shapes
:Б
7random_rotation_13/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Г
9random_rotation_13/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Г
9random_rotation_13/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
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

type0Г
9random_rotation_13/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Е
;random_rotation_13/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;random_rotation_13/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Б
3random_rotation_13/stateful_uniform/strided_slice_1StridedSlice:random_rotation_13/stateful_uniform/RngReadAndSkip:value:0Brandom_rotation_13/stateful_uniform/strided_slice_1/stack:output:0Drandom_rotation_13/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_rotation_13/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:І
-random_rotation_13/stateful_uniform/Bitcast_1Bitcast<random_rotation_13/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0В
@random_rotation_13/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :к
<random_rotation_13/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_rotation_13/stateful_uniform/shape:output:06random_rotation_13/stateful_uniform/Bitcast_1:output:04random_rotation_13/stateful_uniform/Bitcast:output:0Irandom_rotation_13/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€≥
'random_rotation_13/stateful_uniform/subSub0random_rotation_13/stateful_uniform/max:output:00random_rotation_13/stateful_uniform/min:output:0*
T0*
_output_shapes
: –
'random_rotation_13/stateful_uniform/mulMulErandom_rotation_13/stateful_uniform/StatelessRandomUniformV2:output:0+random_rotation_13/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€є
#random_rotation_13/stateful_uniformAddV2+random_rotation_13/stateful_uniform/mul:z:00random_rotation_13/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€m
(random_rotation_13/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?†
&random_rotation_13/rotation_matrix/subSubrandom_rotation_13/Cast_1:y:01random_rotation_13/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: Д
&random_rotation_13/rotation_matrix/CosCos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€o
*random_rotation_13/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?§
(random_rotation_13/rotation_matrix/sub_1Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: µ
&random_rotation_13/rotation_matrix/mulMul*random_rotation_13/rotation_matrix/Cos:y:0,random_rotation_13/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€Д
&random_rotation_13/rotation_matrix/SinSin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€o
*random_rotation_13/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ґ
(random_rotation_13/rotation_matrix/sub_2Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: Ј
(random_rotation_13/rotation_matrix/mul_1Mul*random_rotation_13/rotation_matrix/Sin:y:0,random_rotation_13/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ј
(random_rotation_13/rotation_matrix/sub_3Sub*random_rotation_13/rotation_matrix/mul:z:0,random_rotation_13/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ј
(random_rotation_13/rotation_matrix/sub_4Sub*random_rotation_13/rotation_matrix/sub:z:0,random_rotation_13/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€q
,random_rotation_13/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @»
*random_rotation_13/rotation_matrix/truedivRealDiv,random_rotation_13/rotation_matrix/sub_4:z:05random_rotation_13/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€o
*random_rotation_13/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ґ
(random_rotation_13/rotation_matrix/sub_5Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: Ж
(random_rotation_13/rotation_matrix/Sin_1Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€o
*random_rotation_13/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?§
(random_rotation_13/rotation_matrix/sub_6Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: є
(random_rotation_13/rotation_matrix/mul_2Mul,random_rotation_13/rotation_matrix/Sin_1:y:0,random_rotation_13/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ж
(random_rotation_13/rotation_matrix/Cos_1Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€o
*random_rotation_13/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ґ
(random_rotation_13/rotation_matrix/sub_7Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: є
(random_rotation_13/rotation_matrix/mul_3Mul,random_rotation_13/rotation_matrix/Cos_1:y:0,random_rotation_13/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€є
&random_rotation_13/rotation_matrix/addAddV2,random_rotation_13/rotation_matrix/mul_2:z:0,random_rotation_13/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ј
(random_rotation_13/rotation_matrix/sub_8Sub,random_rotation_13/rotation_matrix/sub_5:z:0*random_rotation_13/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€s
.random_rotation_13/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ћ
,random_rotation_13/rotation_matrix/truediv_1RealDiv,random_rotation_13/rotation_matrix/sub_8:z:07random_rotation_13/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€
(random_rotation_13/rotation_matrix/ShapeShape'random_rotation_13/stateful_uniform:z:0*
T0*
_output_shapes
:А
6random_rotation_13/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8random_rotation_13/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation_13/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
0random_rotation_13/rotation_matrix/strided_sliceStridedSlice1random_rotation_13/rotation_matrix/Shape:output:0?random_rotation_13/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЖ
(random_rotation_13/rotation_matrix/Cos_2Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Й
8random_rotation_13/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≥
2random_rotation_13/rotation_matrix/strided_slice_1StridedSlice,random_rotation_13/rotation_matrix/Cos_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЖ
(random_rotation_13/rotation_matrix/Sin_2Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Й
8random_rotation_13/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≥
2random_rotation_13/rotation_matrix/strided_slice_2StridedSlice,random_rotation_13/rotation_matrix/Sin_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЬ
&random_rotation_13/rotation_matrix/NegNeg;random_rotation_13/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€Й
8random_rotation_13/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      µ
2random_rotation_13/rotation_matrix/strided_slice_3StridedSlice.random_rotation_13/rotation_matrix/truediv:z:0Arandom_rotation_13/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЖ
(random_rotation_13/rotation_matrix/Sin_3Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Й
8random_rotation_13/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≥
2random_rotation_13/rotation_matrix/strided_slice_4StridedSlice,random_rotation_13/rotation_matrix/Sin_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЖ
(random_rotation_13/rotation_matrix/Cos_3Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Й
8random_rotation_13/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≥
2random_rotation_13/rotation_matrix/strided_slice_5StridedSlice,random_rotation_13/rotation_matrix/Cos_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЙ
8random_rotation_13/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Л
:random_rotation_13/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ј
2random_rotation_13/rotation_matrix/strided_slice_6StridedSlice0random_rotation_13/rotation_matrix/truediv_1:z:0Arandom_rotation_13/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_masks
1random_rotation_13/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :№
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
 *    ’
(random_rotation_13/rotation_matrix/zerosFill8random_rotation_13/rotation_matrix/zeros/packed:output:07random_rotation_13/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
.random_rotation_13/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :є
)random_rotation_13/rotation_matrix/concatConcatV2;random_rotation_13/rotation_matrix/strided_slice_1:output:0*random_rotation_13/rotation_matrix/Neg:y:0;random_rotation_13/rotation_matrix/strided_slice_3:output:0;random_rotation_13/rotation_matrix/strided_slice_4:output:0;random_rotation_13/rotation_matrix/strided_slice_5:output:0;random_rotation_13/rotation_matrix/strided_slice_6:output:01random_rotation_13/rotation_matrix/zeros:output:07random_rotation_13/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Р
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
valueB:ќ
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
 *    •
7random_rotation_13/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3>random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:02random_rotation_13/rotation_matrix/concat:output:03random_rotation_13/transform/strided_slice:output:00random_rotation_13/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARП
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
valueB:Ч
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
э€€€€€€€€x
%random_zoom_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€o
%random_zoom_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
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
ю€€€€€€€€x
%random_zoom_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€o
%random_zoom_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
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
 *ЪЩY?g
"random_zoom_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33У?n
$random_zoom_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ™
#random_zoom_8/stateful_uniform/ProdProd-random_zoom_8/stateful_uniform/shape:output:0-random_zoom_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Л
%random_zoom_8/stateful_uniform/Cast_1Cast,random_zoom_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: о
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
valueB:т
,random_zoom_8/stateful_uniform/strided_sliceStridedSlice5random_zoom_8/stateful_uniform/RngReadAndSkip:value:0;random_zoom_8/stateful_uniform/strided_slice/stack:output:0=random_zoom_8/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЩ
&random_zoom_8/stateful_uniform/BitcastBitcast5random_zoom_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
.random_zoom_8/stateful_uniform/strided_slice_1StridedSlice5random_zoom_8/stateful_uniform/RngReadAndSkip:value:0=random_zoom_8/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_8/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Э
(random_zoom_8/stateful_uniform/Bitcast_1Bitcast7random_zoom_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :’
7random_zoom_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_8/stateful_uniform/shape:output:01random_zoom_8/stateful_uniform/Bitcast_1:output:0/random_zoom_8/stateful_uniform/Bitcast:output:0Drandom_zoom_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€§
"random_zoom_8/stateful_uniform/subSub+random_zoom_8/stateful_uniform/max:output:0+random_zoom_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: ≈
"random_zoom_8/stateful_uniform/mulMul@random_zoom_8/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_8/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
random_zoom_8/stateful_uniformAddV2&random_zoom_8/stateful_uniform/mul:z:0+random_zoom_8/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
random_zoom_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :«
random_zoom_8/concatConcatV2"random_zoom_8/stateful_uniform:z:0"random_zoom_8/stateful_uniform:z:0"random_zoom_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€l
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
valueB:”
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
 *  А?Й
random_zoom_8/zoom_matrix/subSubrandom_zoom_8/Cast_1:y:0(random_zoom_8/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_8/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
!random_zoom_8/zoom_matrix/truedivRealDiv!random_zoom_8/zoom_matrix/sub:z:0,random_zoom_8/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: Д
/random_zoom_8/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ж
1random_zoom_8/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_8/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_8/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_8/concat:output:08random_zoom_8/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_8/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_8/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_8/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Є
random_zoom_8/zoom_matrix/sub_1Sub*random_zoom_8/zoom_matrix/sub_1/x:output:02random_zoom_8/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
random_zoom_8/zoom_matrix/mulMul%random_zoom_8/zoom_matrix/truediv:z:0#random_zoom_8/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
!random_zoom_8/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
random_zoom_8/zoom_matrix/sub_2Subrandom_zoom_8/Cast:y:0*random_zoom_8/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_8/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
#random_zoom_8/zoom_matrix/truediv_1RealDiv#random_zoom_8/zoom_matrix/sub_2:z:0.random_zoom_8/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: Д
/random_zoom_8/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_8/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_8/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_8/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_8/concat:output:08random_zoom_8/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_8/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_8/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_8/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Є
random_zoom_8/zoom_matrix/sub_3Sub*random_zoom_8/zoom_matrix/sub_3/x:output:02random_zoom_8/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€¶
random_zoom_8/zoom_matrix/mul_1Mul'random_zoom_8/zoom_matrix/truediv_1:z:0#random_zoom_8/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
/random_zoom_8/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ж
1random_zoom_8/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_8/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_8/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_8/concat:output:08random_zoom_8/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_8/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_8/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_8/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
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
 *    Ї
random_zoom_8/zoom_matrix/zerosFill/random_zoom_8/zoom_matrix/zeros/packed:output:0.random_zoom_8/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
*random_zoom_8/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≈
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
 *    ј
!random_zoom_8/zoom_matrix/zeros_1Fill1random_zoom_8/zoom_matrix/zeros_1/packed:output:00random_zoom_8/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Д
/random_zoom_8/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_8/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_8/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_8/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_8/concat:output:08random_zoom_8/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_8/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_8/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_8/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≈
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
 *    ј
!random_zoom_8/zoom_matrix/zeros_2Fill1random_zoom_8/zoom_matrix/zeros_2/packed:output:00random_zoom_8/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€g
%random_zoom_8/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :…
 random_zoom_8/zoom_matrix/concatConcatV22random_zoom_8/zoom_matrix/strided_slice_3:output:0(random_zoom_8/zoom_matrix/zeros:output:0!random_zoom_8/zoom_matrix/mul:z:0*random_zoom_8/zoom_matrix/zeros_1:output:02random_zoom_8/zoom_matrix/strided_slice_4:output:0#random_zoom_8/zoom_matrix/mul_1:z:0*random_zoom_8/zoom_matrix/zeros_2:output:0.random_zoom_8/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Щ
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
valueB:µ
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
 *    Ы
2random_zoom_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Lrandom_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_8/zoom_matrix/concat:output:0.random_zoom_8/transform/strided_slice:output:0+random_zoom_8/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR†
IdentityIdentityGrandom_zoom_8/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА∆
NoOpNoOp^random_flip_13/map/while3^random_rotation_13/stateful_uniform/RngReadAndSkip.^random_zoom_8/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 24
random_flip_13/map/whilerandom_flip_13/map/while2h
2random_rotation_13/stateful_uniform/RngReadAndSkip2random_rotation_13/stateful_uniform/RngReadAndSkip2^
-random_zoom_8/stateful_uniform/RngReadAndSkip-random_zoom_8/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ЏG
Ќ
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
dense_6_57111:	А@
dense_6_57113:@
dense_7_57116:@
dense_7_57118:
identityИҐ!conv2d_17/StatefulPartitionedCallҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallҐ%sequential_11/StatefulPartitionedCall≈
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56145Ї
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_11_57067sequential_11_57069sequential_11_57071*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
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
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763у
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680Ь
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_57080conv2d_18_57082*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781у
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692Ь
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_57086conv2d_19_57088*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799у
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704Ь
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_57092conv2d_20_57094*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817у
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716Ь
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_57098conv2d_21_57100*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835у
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728Ь
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_57104conv2d_22_57106*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853у
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740Ё
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866Е
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_57111dense_6_57113*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_57116dense_7_57118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€К
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : 2F
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
:€€€€€€€€€АА
 
_user_specified_nameinputs
Т
“
Osequential_11_random_flip_13_map_while_stateless_random_flip_up_down_true_57647Ђ
¶sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_reversev2_sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyQ
Msequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identityЭ
Ssequential_11/random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: С
Nsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2¶sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_reversev2_sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_control_dependency\sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААб
Msequential_11/random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentityWsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:АА"І
Msequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identityVsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
ЂФ
К
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
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	ИҐ2map/while/stateful_uniform_full_int/RngReadAndSkipҐ4map/while/stateful_uniform_full_int_1/RngReadAndSkipР
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ј
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
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
valueB: є
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Х
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Д
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Б
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Г
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Г
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
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

type0Г
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Б
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:І
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :√
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ц
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
shrink_axis_maskр
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААМ
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB М
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    М
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ƒ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::Ґ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: У
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: М
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Г
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_56524*#
output_shapes
:АА*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_56523£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:ААu
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: њ
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: њ
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Г
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskІ
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Е
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ќ
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R Ь
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
valueB"      ≥
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskы
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:ААЙ
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB Й
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Й
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?√
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::Я
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ф
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: К
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ъ
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Г
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?‘
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ф
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_56573*#
output_shapes
:АА*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_56572Э
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:ААо
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:йи“Q
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
: Т
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: Љ
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Є
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
Г
‘
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

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИҐStatefulPartitionedCallҐ
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
:€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_56903o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
У
g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58407

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ц
`
D__inference_rescaling_layer_call_and_return_conditional_losses_56114

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ы
i
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56182

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_58467

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_18_layer_call_fn_58432

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Њ
Ф
'__inference_dense_7_layer_call_fn_58597

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ША
∆
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58940

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
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
valueB:—
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
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
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
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
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
 *&_ƒY
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
valueB: А
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
: ґ
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
valueB:ђ
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
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€Y
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
valueB:°
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
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
valueB"      ‘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
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
valueB"      ‘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
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
valueB"      ÷
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
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
valueB"      ‘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
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
valueB"      ‘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

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
valueB"      Ў
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

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
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
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
valueB:п
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
 *    °
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
 
¶
Erandom_flip_13_map_while_stateless_random_flip_left_right_false_58083Ф
Пrandom_flip_13_map_while_stateless_random_flip_left_right_identity_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyF
Brandom_flip_13_map_while_stateless_random_flip_left_right_identityП
Brandom_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityПrandom_flip_13_map_while_stateless_random_flip_left_right_identity_random_flip_13_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:АА"С
Brandom_flip_13_map_while_stateless_random_flip_left_right_identityKrandom_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
Љ
и
5map_while_stateless_random_flip_left_right_true_58723v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityГ
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:®
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:АА≠
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:АА"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
Р
э
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
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
:€€€€€€€€€юю Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€юю w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ѕ
Х
'__inference_dense_6_layer_call_fn_58577

inputs
unknown:	А@
	unknown_0:@
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
є
ё
Rsequential_11_random_flip_13_map_while_stateless_random_flip_left_right_true_57598±
ђsequential_11_random_flip_13_map_while_stateless_random_flip_left_right_reversev2_sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyT
Psequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identity†
Vsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Э
Qsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2ђsequential_11_random_flip_13_map_while_stateless_random_flip_left_right_reversev2_sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_control_dependency_sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААз
Psequential_11/random_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityZsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:АА"≠
Psequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identityYsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
Р
э
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58397

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
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
:€€€€€€€€€юю Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€юю w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
йv
Ѓ
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

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: У"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*Љ!
value≤!Bѓ!=B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHк
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*П
valueЕBВ=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B њ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_2_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop2savev2_adam_conv2d_21_kernel_m_read_readvariableop0savev2_adam_conv2d_21_bias_m_read_readvariableop2savev2_adam_conv2d_22_kernel_m_read_readvariableop0savev2_adam_conv2d_22_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop2savev2_adam_conv2d_21_kernel_v_read_readvariableop0savev2_adam_conv2d_21_bias_v_read_readvariableop2savev2_adam_conv2d_22_kernel_v_read_readvariableop0savev2_adam_conv2d_22_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *K
dtypesA
?2=				Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*–
_input_shapesЊ
ї: : : : @:@:@@:@:@@:@:@@:@:@@:@:	А@:@:@:: : : : : : : : : :::: : : @:@:@@:@:@@:@:@@:@:@@:@:	А@:@:@:: : : @:@:@@:@:@@:@:@@:@:@@:@:	А@:@:@:: 2(
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
:	А@: 
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
:	А@: *
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
:	А@: :
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
«
F
*__inference_sequential_layer_call_fn_57962

inputs
identityЇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56117j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
сD
Љ
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
dense_6_56880:	А@
dense_6_56882:@
dense_7_56897:@
dense_7_56899:
identityИҐ!conv2d_17/StatefulPartitionedCallҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCall≈
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56117и
sequential_11/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191Ы
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall&sequential_11/PartitionedCall:output:0conv2d_17_56764conv2d_17_56766*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763у
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680Ь
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_56782conv2d_18_56784*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781у
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692Ь
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_56800conv2d_19_56802*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799у
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704Ь
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_56818conv2d_20_56820*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817у
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716Ь
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_56836conv2d_21_56838*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835у
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728Ь
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_56854conv2d_22_56856*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853у
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740Ё
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866Е
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_56880dense_6_56882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_56897dense_7_56899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€в
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2F
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
:€€€€€€€€€АА
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_21_layer_call_fn_58522

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѓ
E
)__inference_flatten_3_layer_call_fn_58562

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
о
в
H__inference_sequential_11_layer_call_and_return_conditional_losses_56671
random_flip_13_input"
random_flip_13_56661:	&
random_rotation_13_56664:	!
random_zoom_8_56667:	
identityИҐ&random_flip_13/StatefulPartitionedCallҐ*random_rotation_13/StatefulPartitionedCallҐ%random_zoom_8/StatefulPartitionedCallВ
&random_flip_13/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_13_inputrandom_flip_13_56661*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
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
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56435Ю
%random_zoom_8/StatefulPartitionedCallStatefulPartitionedCall3random_rotation_13/StatefulPartitionedCall:output:0random_zoom_8_56667*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56304З
IdentityIdentity.random_zoom_8/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААƒ
NoOpNoOp'^random_flip_13/StatefulPartitionedCall+^random_rotation_13/StatefulPartitionedCall&^random_zoom_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 2P
&random_flip_13/StatefulPartitionedCall&random_flip_13/StatefulPartitionedCall2X
*random_rotation_13/StatefulPartitionedCall*random_rotation_13/StatefulPartitionedCall2N
%random_zoom_8/StatefulPartitionedCall%random_zoom_8/StatefulPartitionedCall:g c
1
_output_shapes
:€€€€€€€€€АА
.
_user_specified_namerandom_flip_13_input
а
Ш
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

unknown_14:	А@

unknown_15:@

unknown_16:@

unknown_17:
identityИҐStatefulPartitionedCallњ
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
:€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
к
Ю
)__inference_conv2d_20_layer_call_fn_58476

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_20_layer_call_fn_58492

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Э

ф
B__inference_dense_6_layer_call_and_return_conditional_losses_56879

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58497

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ч
W
-__inference_sequential_11_layer_call_fn_56194
random_flip_13_input
identityЋ
PartitionedCallPartitionedCallrandom_flip_13_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:g c
1
_output_shapes
:€€€€€€€€€АА
.
_user_specified_namerandom_flip_13_input
≠
_
C__inference_resizing_layer_call_and_return_conditional_losses_58619

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58517

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_19_layer_call_and_return_conditional_losses_58457

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
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
:€€€€€€€€€<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
Ч
e
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56176

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ƒ
~
.__inference_random_flip_13_layer_call_fn_58644

inputs
unknown:	
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56606y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
‘
a
E__inference_sequential_layer_call_and_return_conditional_losses_56145

inputs
identityЅ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Э

ф
B__inference_dense_6_layer_call_and_return_conditional_losses_58588

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_18_layer_call_and_return_conditional_losses_58427

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
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
:€€€€€€€€€}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Љ
и
5map_while_stateless_random_flip_left_right_true_56523v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityГ
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:®
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:АА≠
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:АА"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
¶
Х
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58806

inputs
map_while_input_6:	
identityИҐ	map/while?
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
valueB:е
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
€€€€€€€€€Њ
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         б
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“K
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
€€€€€€€€€¬
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
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
: : : : : : : Й
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ‘
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:€€€€€€€€€АА*
element_dtype0И
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААR
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2
	map/while	map/while:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
∆
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ќ
I
-__inference_random_zoom_8_layer_call_fn_58945

inputs
identityљ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56188j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
њ
и
6map_while_stateless_random_flip_left_right_false_56524u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityб
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:АА"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
У
g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
я
N
*__inference_sequential_layer_call_fn_56120
resizing_input
identity¬
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56117j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:a ]
1
_output_shapes
:€€€€€€€€€АА
(
_user_specified_nameresizing_input
С
ѓ
-__inference_sequential_11_layer_call_fn_58003

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56631y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
»
ё
Ssequential_11_random_flip_13_map_while_stateless_random_flip_left_right_false_57599∞
Ђsequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identity_sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyT
Psequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identityє
Psequential_11/random_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityЂsequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identity_sequential_11_random_flip_13_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:АА"≠
Psequential_11_random_flip_13_map_while_stateless_random_flip_left_right_identityYsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
Х
№
2map_while_stateless_random_flip_up_down_true_56572p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityА
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ь
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААІ
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:АА"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
§
№
3map_while_stateless_random_flip_up_down_false_56573o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityЎ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:АА"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
ї
љ
-__inference_sequential_11_layer_call_fn_56651
random_flip_13_input
unknown:	
	unknown_0:	
	unknown_1:	
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_13_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56631y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
1
_output_shapes
:€€€€€€€€€АА
.
_user_specified_namerandom_flip_13_input
шG
„
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
dense_6_57307:	А@
dense_6_57309:@
dense_7_57312:@
dense_7_57314:
identityИҐ!conv2d_17/StatefulPartitionedCallҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallҐ%sequential_11/StatefulPartitionedCallѕ
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56145Ї
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_11_57263sequential_11_57265sequential_11_57267*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
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
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763у
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680Ь
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_57276conv2d_18_57278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781у
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692Ь
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_57282conv2d_19_57284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799у
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704Ь
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_57288conv2d_20_57290*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817у
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716Ь
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_57294conv2d_21_57296*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835у
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728Ь
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_57300conv2d_22_57302*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853у
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740Ё
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866Е
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_57307dense_6_57309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_57312dense_7_57314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€К
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : 2F
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
:€€€€€€€€€АА
*
_user_specified_namesequential_input
§
№
3map_while_stateless_random_flip_up_down_false_58773o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityЎ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:АА"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
Д
э
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
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
:€€€€€€€€€}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЗЌ
©
1sequential_11_random_flip_13_map_while_body_57539^
Zsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_loop_counterY
Usequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice6
2sequential_11_random_flip_13_map_while_placeholder8
4sequential_11_random_flip_13_map_while_placeholder_1]
Ysequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice_1_0Ъ
Хsequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0h
Zsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	3
/sequential_11_random_flip_13_map_while_identity5
1sequential_11_random_flip_13_map_while_identity_15
1sequential_11_random_flip_13_map_while_identity_25
1sequential_11_random_flip_13_map_while_identity_3[
Wsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice_1Ш
Уsequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensorf
Xsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource:	ИҐOsequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipҐQsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip≠
Xsequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         …
Jsequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemХsequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_02sequential_11_random_flip_13_map_while_placeholderasequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0Р
Fsequential_11/random_flip_13/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:Р
Fsequential_11/random_flip_13/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Р
Esequential_11/random_flip_13/map/while/stateful_uniform_full_int/ProdProdOsequential_11/random_flip_13/map/while/stateful_uniform_full_int/shape:output:0Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: Й
Gsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :ѕ
Gsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Cast_1CastNsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ш
Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipZsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Psequential_11/random_flip_13/map/while/stateful_uniform_full_int/Cast/x:output:0Ksequential_11/random_flip_13/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Ю
Tsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: †
Vsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:†
Vsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
Nsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_sliceStridedSliceWsequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0]sequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack:output:0_sequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0_sequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЁ
Hsequential_11/random_flip_13/map/while/stateful_uniform_full_int/BitcastBitcastWsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0†
Vsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ґ
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ґ
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
Psequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceWsequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0_sequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:б
Jsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Bitcast_1BitcastYsequential_11/random_flip_13/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Ж
Dsequential_11/random_flip_13/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :‘
@sequential_11/random_flip_13/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/shape:output:0Ssequential_11/random_flip_13/map/while/stateful_uniform_full_int/Bitcast_1:output:0Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int/Bitcast:output:0Msequential_11/random_flip_13/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	{
1sequential_11/random_flip_13/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R н
,sequential_11/random_flip_13/map/while/stackPackIsequential_11/random_flip_13/map/while/stateful_uniform_full_int:output:0:sequential_11/random_flip_13/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:Л
:sequential_11/random_flip_13/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Н
<sequential_11/random_flip_13/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Н
<sequential_11/random_flip_13/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
4sequential_11/random_flip_13/map/while/strided_sliceStridedSlice5sequential_11/random_flip_13/map/while/stack:output:0Csequential_11/random_flip_13/map/while/strided_slice/stack:output:0Esequential_11/random_flip_13/map/while/strided_slice/stack_1:output:0Esequential_11/random_flip_13/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask«
Zsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/control_dependencyIdentityQsequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*]
_classS
QOloc:@sequential_11/random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:АА©
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
 *  А?ю
}sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter=sequential_11/random_flip_13/map/while/strided_slice:output:0* 
_output_shapes
::њ
}sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ј
ysequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2osequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0Гsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Зsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Жsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: к
dsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubmsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0msequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ы
dsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulВsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0hsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: г
`sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2hsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0msequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: У
Nsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?і
Lsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/LessLessdsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Wsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Ф
Gsequential_11/random_flip_13/map/while/stateless_random_flip_left_rightStatelessIfPsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Less:z:0csequential_11/random_flip_13/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *f
else_branchWRU
Ssequential_11_random_flip_13_map_while_stateless_random_flip_left_right_false_57599*#
output_shapes
:АА*e
then_branchVRT
Rsequential_11_random_flip_13_map_while_stateless_random_flip_left_right_true_57598Ё
Psequential_11/random_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityPsequential_11/random_flip_13/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:ААТ
Hsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:Т
Hsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ц
Gsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/ProdProdQsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/shape:output:0Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: Л
Isequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :”
Isequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Cast_1CastPsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: –
Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipZsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Rsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Cast/x:output:0Msequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Cast_1:y:0P^sequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:†
Vsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ґ
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ґ
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
Psequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceYsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0_sequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskб
Jsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/BitcastBitcastYsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ґ
Xsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:§
Zsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:§
Zsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
Rsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceYsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0asequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0csequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0csequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:е
Lsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast[sequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0И
Fsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :ё
Bsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Qsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/shape:output:0Usequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Ssequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/Bitcast:output:0Osequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	}
3sequential_11/random_flip_13/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R у
.sequential_11/random_flip_13/map/while/stack_1PackKsequential_11/random_flip_13/map/while/stateful_uniform_full_int_1:output:0<sequential_11/random_flip_13/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:Н
<sequential_11/random_flip_13/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        П
>sequential_11/random_flip_13/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       П
>sequential_11/random_flip_13/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ƒ
6sequential_11/random_flip_13/map/while/strided_slice_1StridedSlice7sequential_11/random_flip_13/map/while/stack_1:output:0Esequential_11/random_flip_13/map/while/strided_slice_1/stack:output:0Gsequential_11/random_flip_13/map/while/strided_slice_1/stack_1:output:0Gsequential_11/random_flip_13/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask“
Wsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/control_dependencyIdentityYsequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*c
_classY
WUloc:@sequential_11/random_flip_13/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:АА¶
csequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
asequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ¶
asequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?э
zsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?sequential_11/random_flip_13/map/while/strided_slice_1:output:0* 
_output_shapes
::Љ
zsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :®
vsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2lsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0Аsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Дsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Гsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: б
asequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubjsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0jsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: с
asequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0esequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Џ
]sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2esequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0jsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Р
Ksequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ђ
Isequential_11/random_flip_13/map/while/stateless_random_flip_up_down/LessLessasequential_11/random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Tsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: Е
Dsequential_11/random_flip_13/map/while/stateless_random_flip_up_downStatelessIfMsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Less:z:0`sequential_11/random_flip_13/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *c
else_branchTRR
Psequential_11_random_flip_13_map_while_stateless_random_flip_up_down_false_57648*#
output_shapes
:АА*b
then_branchSRQ
Osequential_11_random_flip_13_map_while_stateless_random_flip_up_down_true_57647„
Msequential_11/random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentityMsequential_11/random_flip_13/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:ААв
Ksequential_11/random_flip_13/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4sequential_11_random_flip_13_map_while_placeholder_12sequential_11_random_flip_13_map_while_placeholderVsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:йи“n
,sequential_11/random_flip_13/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :њ
*sequential_11/random_flip_13/map/while/addAddV22sequential_11_random_flip_13_map_while_placeholder5sequential_11/random_flip_13/map/while/add/y:output:0*
T0*
_output_shapes
: p
.sequential_11/random_flip_13/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :л
,sequential_11/random_flip_13/map/while/add_1AddV2Zsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_loop_counter7sequential_11/random_flip_13/map/while/add_1/y:output:0*
T0*
_output_shapes
: Љ
/sequential_11/random_flip_13/map/while/IdentityIdentity0sequential_11/random_flip_13/map/while/add_1:z:0,^sequential_11/random_flip_13/map/while/NoOp*
T0*
_output_shapes
: г
1sequential_11/random_flip_13/map/while/Identity_1IdentityUsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice,^sequential_11/random_flip_13/map/while/NoOp*
T0*
_output_shapes
: Љ
1sequential_11/random_flip_13/map/while/Identity_2Identity.sequential_11/random_flip_13/map/while/add:z:0,^sequential_11/random_flip_13/map/while/NoOp*
T0*
_output_shapes
: й
1sequential_11/random_flip_13/map/while/Identity_3Identity[sequential_11/random_flip_13/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^sequential_11/random_flip_13/map/while/NoOp*
T0*
_output_shapes
: У
+sequential_11/random_flip_13/map/while/NoOpNoOpP^sequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipR^sequential_11/random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "k
/sequential_11_random_flip_13_map_while_identity8sequential_11/random_flip_13/map/while/Identity:output:0"o
1sequential_11_random_flip_13_map_while_identity_1:sequential_11/random_flip_13/map/while/Identity_1:output:0"o
1sequential_11_random_flip_13_map_while_identity_2:sequential_11/random_flip_13/map/while/Identity_2:output:0"o
1sequential_11_random_flip_13_map_while_identity_3:sequential_11/random_flip_13/map/while/Identity_3:output:0"і
Wsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice_1Ysequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice_1_0"ґ
Xsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resourceZsequential_11_random_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Ѓ
Уsequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensorХsequential_11_random_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_sequential_11_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2Ґ
Osequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipOsequential_11/random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip2¶
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
“±
г
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
Jrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource:	ИҐArandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipҐCrandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkipЯ
Jrandom_flip_13/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         В
<random_flip_13/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemyrandom_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0$random_flip_13_map_while_placeholderSrandom_flip_13/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0В
8random_flip_13/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:В
8random_flip_13/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ж
7random_flip_13/map/while/stateful_uniform_full_int/ProdProdArandom_flip_13/map/while/stateful_uniform_full_int/shape:output:0Arandom_flip_13/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: {
9random_flip_13/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :≥
9random_flip_13/map/while/stateful_uniform_full_int/Cast_1Cast@random_flip_13/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ј
Arandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipLrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Brandom_flip_13/map/while/stateful_uniform_full_int/Cast/x:output:0=random_flip_13/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Р
Frandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Т
Hrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Т
Hrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
@random_flip_13/map/while/stateful_uniform_full_int/strided_sliceStridedSliceIrandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Orandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Qrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Qrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЅ
:random_flip_13/map/while/stateful_uniform_full_int/BitcastBitcastIrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Т
Hrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ф
Jrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ф
Jrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ћ
Brandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceIrandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Qrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Srandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Srandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:≈
<random_flip_13/map/while/stateful_uniform_full_int/Bitcast_1BitcastKrandom_flip_13/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0x
6random_flip_13/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :О
2random_flip_13/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Arandom_flip_13/map/while/stateful_uniform_full_int/shape:output:0Erandom_flip_13/map/while/stateful_uniform_full_int/Bitcast_1:output:0Crandom_flip_13/map/while/stateful_uniform_full_int/Bitcast:output:0?random_flip_13/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	m
#random_flip_13/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R √
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
valueB"      ф
&random_flip_13/map/while/strided_sliceStridedSlice'random_flip_13/map/while/stack:output:05random_flip_13/map/while/strided_slice/stack:output:07random_flip_13/map/while/strided_slice/stack_1:output:07random_flip_13/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЭ
Lrandom_flip_13/map/while/stateless_random_flip_left_right/control_dependencyIdentityCrandom_flip_13/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*O
_classE
CAloc:@random_flip_13/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААЫ
Xrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB Ы
Vrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Ы
Vrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?в
orandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter/random_flip_13/map/while/strided_slice:output:0* 
_output_shapes
::±
orandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :о
krandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2arandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0urandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0yrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ј
Vrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub_random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0_random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: –
Vrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMultrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Zrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: є
Rrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Zrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0_random_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Е
@random_flip_13/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?К
>random_flip_13/map/while/stateless_random_flip_left_right/LessLessVrandom_flip_13/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Irandom_flip_13/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: ќ
9random_flip_13/map/while/stateless_random_flip_left_rightStatelessIfBrandom_flip_13/map/while/stateless_random_flip_left_right/Less:z:0Urandom_flip_13/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *X
else_branchIRG
Erandom_flip_13_map_while_stateless_random_flip_left_right_false_58083*#
output_shapes
:АА*W
then_branchHRF
Drandom_flip_13_map_while_stateless_random_flip_left_right_true_58082Ѕ
Brandom_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityBrandom_flip_13/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:ААД
:random_flip_13/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:Д
:random_flip_13/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: м
9random_flip_13/map/while/stateful_uniform_full_int_1/ProdProdCrandom_flip_13/map/while/stateful_uniform_full_int_1/shape:output:0Crandom_flip_13/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: }
;random_flip_13/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ј
;random_flip_13/map/while/stateful_uniform_full_int_1/Cast_1CastBrandom_flip_13/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: К
Crandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipLrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Drandom_flip_13/map/while/stateful_uniform_full_int_1/Cast/x:output:0?random_flip_13/map/while/stateful_uniform_full_int_1/Cast_1:y:0B^random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Т
Hrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ф
Jrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ф
Jrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
Brandom_flip_13/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceKrandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Qrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Srandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Srandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask≈
<random_flip_13/map/while/stateful_uniform_full_int_1/BitcastBitcastKrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ф
Jrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц
Lrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц
Lrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
Drandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceKrandom_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Srandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Urandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Urandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:…
>random_flip_13/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastMrandom_flip_13/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8random_flip_13/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ш
4random_flip_13/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Crandom_flip_13/map/while/stateful_uniform_full_int_1/shape:output:0Grandom_flip_13/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Erandom_flip_13/map/while/stateful_uniform_full_int_1/Bitcast:output:0Arandom_flip_13/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	o
%random_flip_13/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R …
 random_flip_13/map/while/stack_1Pack=random_flip_13/map/while/stateful_uniform_full_int_1:output:0.random_flip_13/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
.random_flip_13/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0random_flip_13/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0random_flip_13/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ю
(random_flip_13/map/while/strided_slice_1StridedSlice)random_flip_13/map/while/stack_1:output:07random_flip_13/map/while/strided_slice_1/stack:output:09random_flip_13/map/while/strided_slice_1/stack_1:output:09random_flip_13/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask®
Irandom_flip_13/map/while/stateless_random_flip_up_down/control_dependencyIdentityKrandom_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*U
_classK
IGloc:@random_flip_13/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:ААШ
Urandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB Ш
Srandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Ш
Srandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
lrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1random_flip_13/map/while/strided_slice_1:output:0* 
_output_shapes
::Ѓ
lrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :я
hrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2^random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0rrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0vrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0urandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: Ј
Srandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSub\random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0\random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: «
Srandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulqrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Wrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ∞
Orandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Wrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0\random_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: В
=random_flip_13/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Б
;random_flip_13/map/while/stateless_random_flip_up_down/LessLessSrandom_flip_13/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Frandom_flip_13/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: њ
6random_flip_13/map/while/stateless_random_flip_up_downStatelessIf?random_flip_13/map/while/stateless_random_flip_up_down/Less:z:0Rrandom_flip_13/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *U
else_branchFRD
Brandom_flip_13_map_while_stateless_random_flip_up_down_false_58132*#
output_shapes
:АА*T
then_branchERC
Arandom_flip_13_map_while_stateless_random_flip_up_down_true_58131ї
?random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentity?random_flip_13/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:АА™
=random_flip_13/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&random_flip_13_map_while_placeholder_1$random_flip_13_map_while_placeholderHrandom_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:йи“`
random_flip_13/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Х
random_flip_13/map/while/addAddV2$random_flip_13_map_while_placeholder'random_flip_13/map/while/add/y:output:0*
T0*
_output_shapes
: b
 random_flip_13/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :≥
random_flip_13/map/while/add_1AddV2>random_flip_13_map_while_random_flip_13_map_while_loop_counter)random_flip_13/map/while/add_1/y:output:0*
T0*
_output_shapes
: Т
!random_flip_13/map/while/IdentityIdentity"random_flip_13/map/while/add_1:z:0^random_flip_13/map/while/NoOp*
T0*
_output_shapes
: Ђ
#random_flip_13/map/while/Identity_1Identity9random_flip_13_map_while_random_flip_13_map_strided_slice^random_flip_13/map/while/NoOp*
T0*
_output_shapes
: Т
#random_flip_13/map/while/Identity_2Identity random_flip_13/map/while/add:z:0^random_flip_13/map/while/NoOp*
T0*
_output_shapes
: њ
#random_flip_13/map/while/Identity_3IdentityMrandom_flip_13/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_13/map/while/NoOp*
T0*
_output_shapes
: й
random_flip_13/map/while/NoOpNoOpB^random_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipD^random_flip_13/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "O
!random_flip_13_map_while_identity*random_flip_13/map/while/Identity:output:0"S
#random_flip_13_map_while_identity_1,random_flip_13/map/while/Identity_1:output:0"S
#random_flip_13_map_while_identity_2,random_flip_13/map/while/Identity_2:output:0"S
#random_flip_13_map_while_identity_3,random_flip_13/map/while/Identity_3:output:0"|
;random_flip_13_map_while_random_flip_13_map_strided_slice_1=random_flip_13_map_while_random_flip_13_map_strided_slice_1_0"Ъ
Jrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resourceLrandom_flip_13_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"ф
wrandom_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_13_map_tensorarrayunstack_tensorlistfromtensoryrandom_flip_13_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_13_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2Ж
Arandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkipArandom_flip_13/map/while/stateful_uniform_full_int/RngReadAndSkip2К
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
ю
Ґ
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

unknown_14:	А@

unknown_15:@

unknown_16:@

unknown_17:
identityИҐStatefulPartitionedCall…
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
:€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
њ
и
6map_while_stateless_random_flip_left_right_false_58724u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityб
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:АА"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
≈
E
)__inference_rescaling_layer_call_fn_58624

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58527

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
„
N
2__inference_random_rotation_13_layer_call_fn_58811

inputs
identity¬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56182j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ц
d
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_58956

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
‘
a
E__inference_sequential_layer_call_and_return_conditional_losses_56117

inputs
identityЅ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Х
№
2map_while_stateless_random_flip_up_down_true_58772p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityА
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ь
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААІ
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:АА"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
ША
∆
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56435

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
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
valueB:—
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
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
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
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
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
 *&_ƒY
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
valueB: А
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
: ґ
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
valueB:ђ
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
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€Y
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
valueB:°
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
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
valueB"      ‘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
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
valueB"      ‘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
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
valueB"      ÷
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
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
valueB"      ‘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
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
valueB"      ‘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

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
valueB"      Ў
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

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
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
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
valueB:п
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
 *    °
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ПE
∆
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
dense_6_57248:	А@
dense_6_57250:@
dense_7_57253:@
dense_7_57255:
identityИҐ!conv2d_17/StatefulPartitionedCallҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallѕ
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56117и
sequential_11/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191Ы
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall&sequential_11/PartitionedCall:output:0conv2d_17_57211conv2d_17_57213*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763у
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680Ь
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_57217conv2d_18_57219*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781у
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_56692Ь
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_57223conv2d_19_57225*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799у
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704Ь
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_57229conv2d_20_57231*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817у
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716Ь
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_57235conv2d_21_57237*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835у
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_56728Ь
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_57241conv2d_22_57243*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853у
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740Ё
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_56866Е
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_57248dense_6_57250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_56879Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_57253dense_7_57255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_56896w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€в
NoOpNoOp"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2F
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
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Ј
Ќ
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
Г

¶
Drandom_flip_13_map_while_stateless_random_flip_left_right_true_58082Х
Рrandom_flip_13_map_while_stateless_random_flip_left_right_reversev2_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyF
Brandom_flip_13_map_while_stateless_random_flip_left_right_identityТ
Hrandom_flip_13/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:е
Crandom_flip_13/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2Рrandom_flip_13_map_while_stateless_random_flip_left_right_reversev2_random_flip_13_map_while_stateless_random_flip_left_right_control_dependencyQrandom_flip_13/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААЋ
Brandom_flip_13/map/while/stateless_random_flip_left_right/IdentityIdentityLrandom_flip_13/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:АА"С
Brandom_flip_13_map_while_stateless_random_flip_left_right_identityKrandom_flip_13/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
П”
н
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
&dense_6_matmul_readvariableop_resource:	А@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identityИҐ conv2d_17/BiasAdd/ReadVariableOpҐconv2d_17/Conv2D/ReadVariableOpҐ conv2d_18/BiasAdd/ReadVariableOpҐconv2d_18/Conv2D/ReadVariableOpҐ conv2d_19/BiasAdd/ReadVariableOpҐconv2d_19/Conv2D/ReadVariableOpҐ conv2d_20/BiasAdd/ReadVariableOpҐconv2d_20/Conv2D/ReadVariableOpҐ conv2d_21/BiasAdd/ReadVariableOpҐconv2d_21/Conv2D/ReadVariableOpҐ conv2d_22/BiasAdd/ReadVariableOpҐconv2d_22/Conv2D/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOpҐ&sequential_11/random_flip_13/map/whileҐ@sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkipҐ;sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkipp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      √
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААr
&sequential_11/random_flip_13/map/ShapeShapesequential/rescaling/add:z:0*
T0*
_output_shapes
:~
4sequential_11/random_flip_13/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6sequential_11/random_flip_13/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6sequential_11/random_flip_13/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.sequential_11/random_flip_13/map/strided_sliceStridedSlice/sequential_11/random_flip_13/map/Shape:output:0=sequential_11/random_flip_13/map/strided_slice/stack:output:0?sequential_11/random_flip_13/map/strided_slice/stack_1:output:0?sequential_11/random_flip_13/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЗ
<sequential_11/random_flip_13/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Х
.sequential_11/random_flip_13/map/TensorArrayV2TensorListReserveEsequential_11/random_flip_13/map/TensorArrayV2/element_shape:output:07sequential_11/random_flip_13/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ђ
Vsequential_11/random_flip_13/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ±
Hsequential_11/random_flip_13/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/rescaling/add:z:0_sequential_11/random_flip_13/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“h
&sequential_11/random_flip_13/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : Й
>sequential_11/random_flip_13/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Щ
0sequential_11/random_flip_13/map/TensorArrayV2_1TensorListReserveGsequential_11/random_flip_13/map/TensorArrayV2_1/element_shape:output:07sequential_11/random_flip_13/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“u
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
: : : : : : : ¶
Qsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ђ
Csequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStackTensorListStack/sequential_11/random_flip_13/map/while:output:3Zsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:€€€€€€€€€АА*
element_dtype0Ґ
&sequential_11/random_rotation_13/ShapeShapeLsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:~
4sequential_11/random_rotation_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6sequential_11/random_rotation_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6sequential_11/random_rotation_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.sequential_11/random_rotation_13/strided_sliceStridedSlice/sequential_11/random_rotation_13/Shape:output:0=sequential_11/random_rotation_13/strided_slice/stack:output:0?sequential_11/random_rotation_13/strided_slice/stack_1:output:0?sequential_11/random_rotation_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЙ
6sequential_11/random_rotation_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€Л
8sequential_11/random_rotation_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€В
8sequential_11/random_rotation_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
0sequential_11/random_rotation_13/strided_slice_1StridedSlice/sequential_11/random_rotation_13/Shape:output:0?sequential_11/random_rotation_13/strided_slice_1/stack:output:0Asequential_11/random_rotation_13/strided_slice_1/stack_1:output:0Asequential_11/random_rotation_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskШ
%sequential_11/random_rotation_13/CastCast9sequential_11/random_rotation_13/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Й
6sequential_11/random_rotation_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Л
8sequential_11/random_rotation_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€В
8sequential_11/random_rotation_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
0sequential_11/random_rotation_13/strided_slice_2StridedSlice/sequential_11/random_rotation_13/Shape:output:0?sequential_11/random_rotation_13/strided_slice_2/stack:output:0Asequential_11/random_rotation_13/strided_slice_2/stack_1:output:0Asequential_11/random_rotation_13/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЪ
'sequential_11/random_rotation_13/Cast_1Cast9sequential_11/random_rotation_13/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
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
 *&_ƒz
5sequential_11/random_rotation_13/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *&_DБ
7sequential_11/random_rotation_13/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: г
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
: Ї
@sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkipRngReadAndSkipIsequential_11_random_rotation_13_stateful_uniform_rngreadandskip_resourceAsequential_11/random_rotation_13/stateful_uniform/Cast/x:output:0<sequential_11/random_rotation_13/stateful_uniform/Cast_1:y:0*
_output_shapes
:П
Esequential_11/random_rotation_13/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: С
Gsequential_11/random_rotation_13/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:С
Gsequential_11/random_rotation_13/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
?sequential_11/random_rotation_13/stateful_uniform/strided_sliceStridedSliceHsequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip:value:0Nsequential_11/random_rotation_13/stateful_uniform/strided_slice/stack:output:0Psequential_11/random_rotation_13/stateful_uniform/strided_slice/stack_1:output:0Psequential_11/random_rotation_13/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskњ
9sequential_11/random_rotation_13/stateful_uniform/BitcastBitcastHsequential_11/random_rotation_13/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0С
Gsequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:У
Isequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:У
Isequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
Asequential_11/random_rotation_13/stateful_uniform/strided_slice_1StridedSliceHsequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip:value:0Psequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack:output:0Rsequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack_1:output:0Rsequential_11/random_rotation_13/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:√
;sequential_11/random_rotation_13/stateful_uniform/Bitcast_1BitcastJsequential_11/random_rotation_13/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Р
Nsequential_11/random_rotation_13/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :∞
Jsequential_11/random_rotation_13/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2@sequential_11/random_rotation_13/stateful_uniform/shape:output:0Dsequential_11/random_rotation_13/stateful_uniform/Bitcast_1:output:0Bsequential_11/random_rotation_13/stateful_uniform/Bitcast:output:0Wsequential_11/random_rotation_13/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€Ё
5sequential_11/random_rotation_13/stateful_uniform/subSub>sequential_11/random_rotation_13/stateful_uniform/max:output:0>sequential_11/random_rotation_13/stateful_uniform/min:output:0*
T0*
_output_shapes
: ъ
5sequential_11/random_rotation_13/stateful_uniform/mulMulSsequential_11/random_rotation_13/stateful_uniform/StatelessRandomUniformV2:output:09sequential_11/random_rotation_13/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€г
1sequential_11/random_rotation_13/stateful_uniformAddV29sequential_11/random_rotation_13/stateful_uniform/mul:z:0>sequential_11/random_rotation_13/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€{
6sequential_11/random_rotation_13/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А? 
4sequential_11/random_rotation_13/rotation_matrix/subSub+sequential_11/random_rotation_13/Cast_1:y:0?sequential_11/random_rotation_13/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: †
4sequential_11/random_rotation_13/rotation_matrix/CosCos5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€}
8sequential_11/random_rotation_13/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ќ
6sequential_11/random_rotation_13/rotation_matrix/sub_1Sub+sequential_11/random_rotation_13/Cast_1:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: я
4sequential_11/random_rotation_13/rotation_matrix/mulMul8sequential_11/random_rotation_13/rotation_matrix/Cos:y:0:sequential_11/random_rotation_13/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€†
4sequential_11/random_rotation_13/rotation_matrix/SinSin5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€}
8sequential_11/random_rotation_13/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ћ
6sequential_11/random_rotation_13/rotation_matrix/sub_2Sub)sequential_11/random_rotation_13/Cast:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: б
6sequential_11/random_rotation_13/rotation_matrix/mul_1Mul8sequential_11/random_rotation_13/rotation_matrix/Sin:y:0:sequential_11/random_rotation_13/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€б
6sequential_11/random_rotation_13/rotation_matrix/sub_3Sub8sequential_11/random_rotation_13/rotation_matrix/mul:z:0:sequential_11/random_rotation_13/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€б
6sequential_11/random_rotation_13/rotation_matrix/sub_4Sub8sequential_11/random_rotation_13/rotation_matrix/sub:z:0:sequential_11/random_rotation_13/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€
:sequential_11/random_rotation_13/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @т
8sequential_11/random_rotation_13/rotation_matrix/truedivRealDiv:sequential_11/random_rotation_13/rotation_matrix/sub_4:z:0Csequential_11/random_rotation_13/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€}
8sequential_11/random_rotation_13/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ћ
6sequential_11/random_rotation_13/rotation_matrix/sub_5Sub)sequential_11/random_rotation_13/Cast:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: Ґ
6sequential_11/random_rotation_13/rotation_matrix/Sin_1Sin5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€}
8sequential_11/random_rotation_13/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ќ
6sequential_11/random_rotation_13/rotation_matrix/sub_6Sub+sequential_11/random_rotation_13/Cast_1:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: г
6sequential_11/random_rotation_13/rotation_matrix/mul_2Mul:sequential_11/random_rotation_13/rotation_matrix/Sin_1:y:0:sequential_11/random_rotation_13/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ґ
6sequential_11/random_rotation_13/rotation_matrix/Cos_1Cos5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€}
8sequential_11/random_rotation_13/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ћ
6sequential_11/random_rotation_13/rotation_matrix/sub_7Sub)sequential_11/random_rotation_13/Cast:y:0Asequential_11/random_rotation_13/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: г
6sequential_11/random_rotation_13/rotation_matrix/mul_3Mul:sequential_11/random_rotation_13/rotation_matrix/Cos_1:y:0:sequential_11/random_rotation_13/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€г
4sequential_11/random_rotation_13/rotation_matrix/addAddV2:sequential_11/random_rotation_13/rotation_matrix/mul_2:z:0:sequential_11/random_rotation_13/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€б
6sequential_11/random_rotation_13/rotation_matrix/sub_8Sub:sequential_11/random_rotation_13/rotation_matrix/sub_5:z:08sequential_11/random_rotation_13/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€Б
<sequential_11/random_rotation_13/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ц
:sequential_11/random_rotation_13/rotation_matrix/truediv_1RealDiv:sequential_11/random_rotation_13/rotation_matrix/sub_8:z:0Esequential_11/random_rotation_13/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€Ы
6sequential_11/random_rotation_13/rotation_matrix/ShapeShape5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*
_output_shapes
:О
Dsequential_11/random_rotation_13/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Р
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Р
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∆
>sequential_11/random_rotation_13/rotation_matrix/strided_sliceStridedSlice?sequential_11/random_rotation_13/rotation_matrix/Shape:output:0Msequential_11/random_rotation_13/rotation_matrix/strided_slice/stack:output:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice/stack_1:output:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskҐ
6sequential_11/random_rotation_13/rotation_matrix/Cos_2Cos5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ч
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      щ
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_1StridedSlice:sequential_11/random_rotation_13/rotation_matrix/Cos_2:y:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskҐ
6sequential_11/random_rotation_13/rotation_matrix/Sin_2Sin5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ч
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      щ
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_2StridedSlice:sequential_11/random_rotation_13/rotation_matrix/Sin_2:y:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЄ
4sequential_11/random_rotation_13/rotation_matrix/NegNegIsequential_11/random_rotation_13/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ч
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_3StridedSlice<sequential_11/random_rotation_13/rotation_matrix/truediv:z:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskҐ
6sequential_11/random_rotation_13/rotation_matrix/Sin_3Sin5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ч
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      щ
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_4StridedSlice:sequential_11/random_rotation_13/rotation_matrix/Sin_3:y:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskҐ
6sequential_11/random_rotation_13/rotation_matrix/Cos_3Cos5sequential_11/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ч
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      щ
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_5StridedSlice:sequential_11/random_rotation_13/rotation_matrix/Cos_3:y:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЧ
Fsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Щ
Hsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
@sequential_11/random_rotation_13/rotation_matrix/strided_slice_6StridedSlice>sequential_11/random_rotation_13/rotation_matrix/truediv_1:z:0Osequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack_1:output:0Qsequential_11/random_rotation_13/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskБ
?sequential_11/random_rotation_13/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ж
=sequential_11/random_rotation_13/rotation_matrix/zeros/packedPackGsequential_11/random_rotation_13/rotation_matrix/strided_slice:output:0Hsequential_11/random_rotation_13/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Б
<sequential_11/random_rotation_13/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    €
6sequential_11/random_rotation_13/rotation_matrix/zerosFillFsequential_11/random_rotation_13/rotation_matrix/zeros/packed:output:0Esequential_11/random_rotation_13/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
<sequential_11/random_rotation_13/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
7sequential_11/random_rotation_13/rotation_matrix/concatConcatV2Isequential_11/random_rotation_13/rotation_matrix/strided_slice_1:output:08sequential_11/random_rotation_13/rotation_matrix/Neg:y:0Isequential_11/random_rotation_13/rotation_matrix/strided_slice_3:output:0Isequential_11/random_rotation_13/rotation_matrix/strided_slice_4:output:0Isequential_11/random_rotation_13/rotation_matrix/strided_slice_5:output:0Isequential_11/random_rotation_13/rotation_matrix/strided_slice_6:output:0?sequential_11/random_rotation_13/rotation_matrix/zeros:output:0Esequential_11/random_rotation_13/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€ђ
0sequential_11/random_rotation_13/transform/ShapeShapeLsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:И
>sequential_11/random_rotation_13/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:К
@sequential_11/random_rotation_13/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:К
@sequential_11/random_rotation_13/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
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
 *    л
Esequential_11/random_rotation_13/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Lsequential_11/random_flip_13/map/TensorArrayV2Stack/TensorListStack:tensor:0@sequential_11/random_rotation_13/rotation_matrix/concat:output:0Asequential_11/random_rotation_13/transform/strided_slice:output:0>sequential_11/random_rotation_13/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARЂ
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
valueB:Ё
)sequential_11/random_zoom_8/strided_sliceStridedSlice*sequential_11/random_zoom_8/Shape:output:08sequential_11/random_zoom_8/strided_slice/stack:output:0:sequential_11/random_zoom_8/strided_slice/stack_1:output:0:sequential_11/random_zoom_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskД
1sequential_11/random_zoom_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€Ж
3sequential_11/random_zoom_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€}
3sequential_11/random_zoom_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
+sequential_11/random_zoom_8/strided_slice_1StridedSlice*sequential_11/random_zoom_8/Shape:output:0:sequential_11/random_zoom_8/strided_slice_1/stack:output:0<sequential_11/random_zoom_8/strided_slice_1/stack_1:output:0<sequential_11/random_zoom_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
 sequential_11/random_zoom_8/CastCast4sequential_11/random_zoom_8/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Д
1sequential_11/random_zoom_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Ж
3sequential_11/random_zoom_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€}
3sequential_11/random_zoom_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
+sequential_11/random_zoom_8/strided_slice_2StridedSlice*sequential_11/random_zoom_8/Shape:output:0:sequential_11/random_zoom_8/strided_slice_2/stack:output:0<sequential_11/random_zoom_8/strided_slice_2/stack_1:output:0<sequential_11/random_zoom_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
"sequential_11/random_zoom_8/Cast_1Cast4sequential_11/random_zoom_8/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: v
4sequential_11/random_zoom_8/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :џ
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
 *ЪЩY?u
0sequential_11/random_zoom_8/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33У?|
2sequential_11/random_zoom_8/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ‘
1sequential_11/random_zoom_8/stateful_uniform/ProdProd;sequential_11/random_zoom_8/stateful_uniform/shape:output:0;sequential_11/random_zoom_8/stateful_uniform/Const:output:0*
T0*
_output_shapes
: u
3sequential_11/random_zoom_8/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :І
3sequential_11/random_zoom_8/stateful_uniform/Cast_1Cast:sequential_11/random_zoom_8/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
;sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkipRngReadAndSkipDsequential_11_random_zoom_8_stateful_uniform_rngreadandskip_resource<sequential_11/random_zoom_8/stateful_uniform/Cast/x:output:07sequential_11/random_zoom_8/stateful_uniform/Cast_1:y:0*
_output_shapes
:К
@sequential_11/random_zoom_8/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: М
Bsequential_11/random_zoom_8/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
Bsequential_11/random_zoom_8/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
:sequential_11/random_zoom_8/stateful_uniform/strided_sliceStridedSliceCsequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip:value:0Isequential_11/random_zoom_8/stateful_uniform/strided_slice/stack:output:0Ksequential_11/random_zoom_8/stateful_uniform/strided_slice/stack_1:output:0Ksequential_11/random_zoom_8/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskµ
4sequential_11/random_zoom_8/stateful_uniform/BitcastBitcastCsequential_11/random_zoom_8/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0М
Bsequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:О
Dsequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:О
Dsequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
<sequential_11/random_zoom_8/stateful_uniform/strided_slice_1StridedSliceCsequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip:value:0Ksequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack:output:0Msequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack_1:output:0Msequential_11/random_zoom_8/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:є
6sequential_11/random_zoom_8/stateful_uniform/Bitcast_1BitcastEsequential_11/random_zoom_8/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Л
Isequential_11/random_zoom_8/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
Esequential_11/random_zoom_8/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2;sequential_11/random_zoom_8/stateful_uniform/shape:output:0?sequential_11/random_zoom_8/stateful_uniform/Bitcast_1:output:0=sequential_11/random_zoom_8/stateful_uniform/Bitcast:output:0Rsequential_11/random_zoom_8/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€ќ
0sequential_11/random_zoom_8/stateful_uniform/subSub9sequential_11/random_zoom_8/stateful_uniform/max:output:09sequential_11/random_zoom_8/stateful_uniform/min:output:0*
T0*
_output_shapes
: п
0sequential_11/random_zoom_8/stateful_uniform/mulMulNsequential_11/random_zoom_8/stateful_uniform/StatelessRandomUniformV2:output:04sequential_11/random_zoom_8/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ў
,sequential_11/random_zoom_8/stateful_uniformAddV24sequential_11/random_zoom_8/stateful_uniform/mul:z:09sequential_11/random_zoom_8/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€i
'sequential_11/random_zoom_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :€
"sequential_11/random_zoom_8/concatConcatV20sequential_11/random_zoom_8/stateful_uniform:z:00sequential_11/random_zoom_8/stateful_uniform:z:00sequential_11/random_zoom_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€И
-sequential_11/random_zoom_8/zoom_matrix/ShapeShape+sequential_11/random_zoom_8/concat:output:0*
T0*
_output_shapes
:Е
;sequential_11/random_zoom_8/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=sequential_11/random_zoom_8/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=sequential_11/random_zoom_8/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
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
 *  А?≥
+sequential_11/random_zoom_8/zoom_matrix/subSub&sequential_11/random_zoom_8/Cast_1:y:06sequential_11/random_zoom_8/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: v
1sequential_11/random_zoom_8/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @»
/sequential_11/random_zoom_8/zoom_matrix/truedivRealDiv/sequential_11/random_zoom_8/zoom_matrix/sub:z:0:sequential_11/random_zoom_8/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: Т
=sequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ф
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ф
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ё
7sequential_11/random_zoom_8/zoom_matrix/strided_slice_1StridedSlice+sequential_11/random_zoom_8/concat:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack_1:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskt
/sequential_11/random_zoom_8/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?в
-sequential_11/random_zoom_8/zoom_matrix/sub_1Sub8sequential_11/random_zoom_8/zoom_matrix/sub_1/x:output:0@sequential_11/random_zoom_8/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ћ
+sequential_11/random_zoom_8/zoom_matrix/mulMul3sequential_11/random_zoom_8/zoom_matrix/truediv:z:01sequential_11/random_zoom_8/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€t
/sequential_11/random_zoom_8/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?µ
-sequential_11/random_zoom_8/zoom_matrix/sub_2Sub$sequential_11/random_zoom_8/Cast:y:08sequential_11/random_zoom_8/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: x
3sequential_11/random_zoom_8/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ќ
1sequential_11/random_zoom_8/zoom_matrix/truediv_1RealDiv1sequential_11/random_zoom_8/zoom_matrix/sub_2:z:0<sequential_11/random_zoom_8/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: Т
=sequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ф
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ф
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ё
7sequential_11/random_zoom_8/zoom_matrix/strided_slice_2StridedSlice+sequential_11/random_zoom_8/concat:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack_1:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskt
/sequential_11/random_zoom_8/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?в
-sequential_11/random_zoom_8/zoom_matrix/sub_3Sub8sequential_11/random_zoom_8/zoom_matrix/sub_3/x:output:0@sequential_11/random_zoom_8/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€–
-sequential_11/random_zoom_8/zoom_matrix/mul_1Mul5sequential_11/random_zoom_8/zoom_matrix/truediv_1:z:01sequential_11/random_zoom_8/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Т
=sequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ф
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ф
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ё
7sequential_11/random_zoom_8/zoom_matrix/strided_slice_3StridedSlice+sequential_11/random_zoom_8/concat:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack_1:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
6sequential_11/random_zoom_8/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :л
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
 *    д
-sequential_11/random_zoom_8/zoom_matrix/zerosFill=sequential_11/random_zoom_8/zoom_matrix/zeros/packed:output:0<sequential_11/random_zoom_8/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€z
8sequential_11/random_zoom_8/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :п
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
 *    к
/sequential_11/random_zoom_8/zoom_matrix/zeros_1Fill?sequential_11/random_zoom_8/zoom_matrix/zeros_1/packed:output:0>sequential_11/random_zoom_8/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Т
=sequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ф
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ф
?sequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ё
7sequential_11/random_zoom_8/zoom_matrix/strided_slice_4StridedSlice+sequential_11/random_zoom_8/concat:output:0Fsequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack_1:output:0Hsequential_11/random_zoom_8/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskz
8sequential_11/random_zoom_8/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :п
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
 *    к
/sequential_11/random_zoom_8/zoom_matrix/zeros_2Fill?sequential_11/random_zoom_8/zoom_matrix/zeros_2/packed:output:0>sequential_11/random_zoom_8/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€u
3sequential_11/random_zoom_8/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :«
.sequential_11/random_zoom_8/zoom_matrix/concatConcatV2@sequential_11/random_zoom_8/zoom_matrix/strided_slice_3:output:06sequential_11/random_zoom_8/zoom_matrix/zeros:output:0/sequential_11/random_zoom_8/zoom_matrix/mul:z:08sequential_11/random_zoom_8/zoom_matrix/zeros_1:output:0@sequential_11/random_zoom_8/zoom_matrix/strided_slice_4:output:01sequential_11/random_zoom_8/zoom_matrix/mul_1:z:08sequential_11/random_zoom_8/zoom_matrix/zeros_2:output:0<sequential_11/random_zoom_8/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€µ
+sequential_11/random_zoom_8/transform/ShapeShapeZsequential_11/random_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:Г
9sequential_11/random_zoom_8/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:Е
;sequential_11/random_zoom_8/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;sequential_11/random_zoom_8/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
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
 *    б
@sequential_11/random_zoom_8/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Zsequential_11/random_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:07sequential_11/random_zoom_8/zoom_matrix/concat:output:0<sequential_11/random_zoom_8/transform/strided_slice:output:09sequential_11/random_zoom_8/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARР
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0€
conv2d_17/Conv2DConv2DUsequential_11/random_zoom_8/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
Ж
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Э
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю n
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю Ѓ
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Р
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0…
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
Ж
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@l
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@Ѓ
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
Р
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0…
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
Ж
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@l
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@Ѓ
max_pooling2d_19/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Р
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0…
conv2d_20/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ж
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_20/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Р
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0…
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ж
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_21/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Р
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0…
conv2d_22/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ж
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_22/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   М
flatten_3/ReshapeReshape!max_pooling2d_22/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Н
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@В
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0О
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Д
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Н
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
NoOpNoOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp'^sequential_11/random_flip_13/map/whileA^sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip<^sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : 2D
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
&sequential_11/random_flip_13/map/while&sequential_11/random_flip_13/map/while2Д
@sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip@sequential_11/random_rotation_13/stateful_uniform/RngReadAndSkip2z
;sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip;sequential_11/random_zoom_8/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ќ
В
2__inference_random_rotation_13_layer_call_fn_58818

inputs
unknown:	
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56435y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
к
Ю
)__inference_conv2d_21_layer_call_fn_58506

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Й	
a
E__inference_sequential_layer_call_and_return_conditional_losses_57987

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ≠
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_20_layer_call_and_return_conditional_losses_56817

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
я
N
*__inference_sequential_layer_call_fn_56153
resizing_input
identity¬
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56145j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:a ]
1
_output_shapes
:€€€€€€€€€АА
(
_user_specified_nameresizing_input
Ы
i
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58822

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_56716

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ч
e
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58648

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ц
`
D__inference_rescaling_layer_call_and_return_conditional_losses_58632

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
°
г
1sequential_11_random_flip_13_map_while_cond_57538^
Zsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_loop_counterY
Usequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice6
2sequential_11_random_flip_13_map_while_placeholder8
4sequential_11_random_flip_13_map_while_placeholder_1^
Zsequential_11_random_flip_13_map_while_less_sequential_11_random_flip_13_map_strided_sliceu
qsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_cond_57538___redundant_placeholder0u
qsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_cond_57538___redundant_placeholder13
/sequential_11_random_flip_13_map_while_identity
д
+sequential_11/random_flip_13/map/while/LessLess2sequential_11_random_flip_13_map_while_placeholderZsequential_11_random_flip_13_map_while_less_sequential_11_random_flip_13_map_strided_slice*
T0*
_output_shapes
: Й
-sequential_11/random_flip_13/map/while/Less_1LessZsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_while_loop_counterUsequential_11_random_flip_13_map_while_sequential_11_random_flip_13_map_strided_slice*
T0*
_output_shapes
: ї
1sequential_11/random_flip_13/map/while/LogicalAnd
LogicalAnd1sequential_11/random_flip_13/map/while/Less_1:z:0/sequential_11/random_flip_13/map/while/Less:z:0*
_output_shapes
: У
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
ЂФ
К
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
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	ИҐ2map/while/stateful_uniform_full_int/RngReadAndSkipҐ4map/while/stateful_uniform_full_int_1/RngReadAndSkipР
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ј
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
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
valueB: є
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Х
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Д
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Б
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Г
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Г
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
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

type0Г
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Б
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:І
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :√
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ц
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
shrink_axis_maskр
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААМ
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB М
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    М
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ƒ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::Ґ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: У
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: М
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Г
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_58724*#
output_shapes
:АА*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_58723£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:ААu
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: њ
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: њ
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Г
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskІ
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Е
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ќ
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R Ь
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
valueB"      ≥
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskы
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:ААЙ
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB Й
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Й
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?√
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::Я
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ф
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: К
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ъ
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Г
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?‘
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ф
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_58773*#
output_shapes
:АА*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_58772Э
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:ААо
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:йи“Q
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
: Т
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: Љ
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Є
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
Д
э
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Лn
Ѕ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_59058

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
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
valueB:—
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
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
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
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
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
value	B :З
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
 *ЪЩY?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33У?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
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
: ґ
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
valueB:ђ
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
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€P
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
valueB:Н
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
 *  А?_
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
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
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
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
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
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
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
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
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
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
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
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
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
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
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
valueB:п
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
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Зп
Ю%
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
"assignvariableop_12_dense_6_kernel:	А@.
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
)assignvariableop_40_adam_dense_6_kernel_m:	А@5
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
)assignvariableop_56_adam_dense_6_kernel_v:	А@5
'assignvariableop_57_adam_dense_6_bias_v:@;
)assignvariableop_58_adam_dense_7_kernel_v:@5
'assignvariableop_59_adam_dense_7_bias_v:
identity_61ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ц"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*Љ!
value≤!Bѓ!=B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHн
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*П
valueЕBВ=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B “
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesч
ф:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*K
dtypesA
?2=				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_18_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_18_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_19_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_19_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_20_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_20_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_21_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_21_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_22_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_22_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:П
AssignVariableOp_25AssignVariableOpassignvariableop_25_statevar_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:П
AssignVariableOp_26AssignVariableOpassignvariableop_26_statevar_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:Н
AssignVariableOp_27AssignVariableOpassignvariableop_27_statevarIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_17_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_17_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_18_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_18_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_19_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_19_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_20_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_20_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_21_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_21_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_22_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_22_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_6_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_6_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_7_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_7_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_conv2d_17_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_conv2d_17_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_18_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_conv2d_18_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_conv2d_19_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_conv2d_19_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_conv2d_20_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_conv2d_20_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_21_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_21_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_conv2d_22_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_conv2d_22_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_dense_6_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_dense_6_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_7_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_7_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ч

Identity_60Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_61IdentityIdentity_60:output:0^NoOp_1*
T0*
_output_shapes
: д

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_61Identity_61:output:0*Н
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
Є
L
0__inference_max_pooling2d_17_layer_call_fn_58402

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_56680Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ц
d
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56188

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ц
d
H__inference_sequential_11_layer_call_and_return_conditional_losses_58007

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58557

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58547

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_21_layer_call_and_return_conditional_losses_56835

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
¬
}
-__inference_random_zoom_8_layer_call_fn_58952

inputs
unknown:	
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56304y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
¶
Х
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56606

inputs
map_while_input_6:	
identityИҐ	map/while?
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
valueB:е
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
€€€€€€€€€Њ
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         б
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“K
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
€€€€€€€€€¬
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
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
: : : : : : : Й
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ‘
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:€€€€€€€€€АА*
element_dtype0И
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААR
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2
	map/while	map/while:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ь
r
H__inference_sequential_11_layer_call_and_return_conditional_losses_56658
random_flip_13_input
identityџ
random_flip_13/PartitionedCallPartitionedCallrandom_flip_13_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56176ц
"random_rotation_13/PartitionedCallPartitionedCall'random_flip_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56182р
random_zoom_8/PartitionedCallPartitionedCall+random_rotation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56188x
IdentityIdentity&random_zoom_8/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:g c
1
_output_shapes
:€€€€€€€€€АА
.
_user_specified_namerandom_flip_13_input
ѕ
J
.__inference_random_flip_13_layer_call_fn_58637

inputs
identityЊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56176j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
вq
ъ
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
4sequential_12_dense_6_matmul_readvariableop_resource:	А@C
5sequential_12_dense_6_biasadd_readvariableop_resource:@F
4sequential_12_dense_7_matmul_readvariableop_resource:@C
5sequential_12_dense_7_biasadd_readvariableop_resource:
identityИҐ.sequential_12/conv2d_17/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_17/Conv2D/ReadVariableOpҐ.sequential_12/conv2d_18/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_18/Conv2D/ReadVariableOpҐ.sequential_12/conv2d_19/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_19/Conv2D/ReadVariableOpҐ.sequential_12/conv2d_20/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_20/Conv2D/ReadVariableOpҐ.sequential_12/conv2d_21/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_21/Conv2D/ReadVariableOpҐ.sequential_12/conv2d_22/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_22/Conv2D/ReadVariableOpҐ,sequential_12/dense_6/BiasAdd/ReadVariableOpҐ+sequential_12/dense_6/MatMul/ReadVariableOpҐ,sequential_12/dense_7/BiasAdd/ReadVariableOpҐ+sequential_12/dense_7/MatMul/ReadVariableOp~
-sequential_12/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      й
7sequential_12/sequential/resizing/resize/ResizeBilinearResizeBilinearsequential_input6sequential_12/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(n
)sequential_12/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;p
+sequential_12/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    з
&sequential_12/sequential/rescaling/mulMulHsequential_12/sequential/resizing/resize/ResizeBilinear:resized_images:02sequential_12/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААЌ
&sequential_12/sequential/rescaling/addAddV2*sequential_12/sequential/rescaling/mul:z:04sequential_12/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААђ
-sequential_12/conv2d_17/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0р
sequential_12/conv2d_17/Conv2DConv2D*sequential_12/sequential/rescaling/add:z:05sequential_12/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
Ґ
.sequential_12/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0«
sequential_12/conv2d_17/BiasAddBiasAdd'sequential_12/conv2d_17/Conv2D:output:06sequential_12/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю К
sequential_12/conv2d_17/ReluRelu(sequential_12/conv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю  
&sequential_12/max_pooling2d_17/MaxPoolMaxPool*sequential_12/conv2d_17/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
ђ
-sequential_12/conv2d_18/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0у
sequential_12/conv2d_18/Conv2DConv2D/sequential_12/max_pooling2d_17/MaxPool:output:05sequential_12/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
Ґ
.sequential_12/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
sequential_12/conv2d_18/BiasAddBiasAdd'sequential_12/conv2d_18/Conv2D:output:06sequential_12/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@И
sequential_12/conv2d_18/ReluRelu(sequential_12/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@ 
&sequential_12/max_pooling2d_18/MaxPoolMaxPool*sequential_12/conv2d_18/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
ђ
-sequential_12/conv2d_19/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
sequential_12/conv2d_19/Conv2DConv2D/sequential_12/max_pooling2d_18/MaxPool:output:05sequential_12/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
Ґ
.sequential_12/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
sequential_12/conv2d_19/BiasAddBiasAdd'sequential_12/conv2d_19/Conv2D:output:06sequential_12/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@И
sequential_12/conv2d_19/ReluRelu(sequential_12/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@ 
&sequential_12/max_pooling2d_19/MaxPoolMaxPool*sequential_12/conv2d_19/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
ђ
-sequential_12/conv2d_20/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
sequential_12/conv2d_20/Conv2DConv2D/sequential_12/max_pooling2d_19/MaxPool:output:05sequential_12/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ґ
.sequential_12/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
sequential_12/conv2d_20/BiasAddBiasAdd'sequential_12/conv2d_20/Conv2D:output:06sequential_12/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@И
sequential_12/conv2d_20/ReluRelu(sequential_12/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@ 
&sequential_12/max_pooling2d_20/MaxPoolMaxPool*sequential_12/conv2d_20/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
ђ
-sequential_12/conv2d_21/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
sequential_12/conv2d_21/Conv2DConv2D/sequential_12/max_pooling2d_20/MaxPool:output:05sequential_12/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ґ
.sequential_12/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
sequential_12/conv2d_21/BiasAddBiasAdd'sequential_12/conv2d_21/Conv2D:output:06sequential_12/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@И
sequential_12/conv2d_21/ReluRelu(sequential_12/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@ 
&sequential_12/max_pooling2d_21/MaxPoolMaxPool*sequential_12/conv2d_21/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
ђ
-sequential_12/conv2d_22/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
sequential_12/conv2d_22/Conv2DConv2D/sequential_12/max_pooling2d_21/MaxPool:output:05sequential_12/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ґ
.sequential_12/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
sequential_12/conv2d_22/BiasAddBiasAdd'sequential_12/conv2d_22/Conv2D:output:06sequential_12/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@И
sequential_12/conv2d_22/ReluRelu(sequential_12/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@ 
&sequential_12/max_pooling2d_22/MaxPoolMaxPool*sequential_12/conv2d_22/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
n
sequential_12/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ґ
sequential_12/flatten_3/ReshapeReshape/sequential_12/max_pooling2d_22/MaxPool:output:0&sequential_12/flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А°
+sequential_12/dense_6/MatMul/ReadVariableOpReadVariableOp4sequential_12_dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Ј
sequential_12/dense_6/MatMulMatMul(sequential_12/flatten_3/Reshape:output:03sequential_12/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Ю
,sequential_12/dense_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_12_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Є
sequential_12/dense_6/BiasAddBiasAdd&sequential_12/dense_6/MatMul:product:04sequential_12/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@|
sequential_12/dense_6/ReluRelu&sequential_12/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@†
+sequential_12/dense_7/MatMul/ReadVariableOpReadVariableOp4sequential_12_dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ј
sequential_12/dense_7/MatMulMatMul(sequential_12/dense_6/Relu:activations:03sequential_12/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_12/dense_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_12_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
sequential_12/dense_7/BiasAddBiasAdd&sequential_12/dense_7/MatMul:product:04sequential_12/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
sequential_12/dense_7/SoftmaxSoftmax&sequential_12/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
IdentityIdentity'sequential_12/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∆
NoOpNoOp/^sequential_12/conv2d_17/BiasAdd/ReadVariableOp.^sequential_12/conv2d_17/Conv2D/ReadVariableOp/^sequential_12/conv2d_18/BiasAdd/ReadVariableOp.^sequential_12/conv2d_18/Conv2D/ReadVariableOp/^sequential_12/conv2d_19/BiasAdd/ReadVariableOp.^sequential_12/conv2d_19/Conv2D/ReadVariableOp/^sequential_12/conv2d_20/BiasAdd/ReadVariableOp.^sequential_12/conv2d_20/Conv2D/ReadVariableOp/^sequential_12/conv2d_21/BiasAdd/ReadVariableOp.^sequential_12/conv2d_21/Conv2D/ReadVariableOp/^sequential_12/conv2d_22/BiasAdd/ReadVariableOp.^sequential_12/conv2d_22/Conv2D/ReadVariableOp-^sequential_12/dense_6/BiasAdd/ReadVariableOp,^sequential_12/dense_6/MatMul/ReadVariableOp-^sequential_12/dense_7/BiasAdd/ReadVariableOp,^sequential_12/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2`
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
:€€€€€€€€€АА
*
_user_specified_namesequential_input
т
Ю
)__inference_conv2d_17_layer_call_fn_58386

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_56763y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€юю `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_20_layer_call_and_return_conditional_losses_58487

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√
D
(__inference_resizing_layer_call_fn_58613

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
м
i
E__inference_sequential_layer_call_and_return_conditional_losses_56159
resizing_input
identity…
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:a ]
1
_output_shapes
:€€€€€€€€€АА
(
_user_specified_nameresizing_input
к
Ю
)__inference_conv2d_18_layer_call_fn_58416

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_56781w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
к
Ю
)__inference_conv2d_19_layer_call_fn_58446

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€<<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
«
F
*__inference_sequential_layer_call_fn_57967

inputs
identityЇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_56145j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ƒ
‘
H__inference_sequential_11_layer_call_and_return_conditional_losses_56631

inputs"
random_flip_13_56621:	&
random_rotation_13_56624:	!
random_zoom_8_56627:	
identityИҐ&random_flip_13/StatefulPartitionedCallҐ*random_rotation_13/StatefulPartitionedCallҐ%random_zoom_8/StatefulPartitionedCallф
&random_flip_13/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_13_56621*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
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
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56435Ю
%random_zoom_8/StatefulPartitionedCallStatefulPartitionedCall3random_rotation_13/StatefulPartitionedCall:output:0random_zoom_8_56627*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56304З
IdentityIdentity.random_zoom_8/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААƒ
NoOpNoOp'^random_flip_13/StatefulPartitionedCall+^random_rotation_13/StatefulPartitionedCall&^random_zoom_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 2P
&random_flip_13/StatefulPartitionedCall&random_flip_13/StatefulPartitionedCall2X
*random_rotation_13/StatefulPartitionedCall*random_rotation_13/StatefulPartitionedCall2N
%random_zoom_8/StatefulPartitionedCall%random_zoom_8/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_22_layer_call_fn_58552

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_56740Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
—
 
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

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИҐStatefulPartitionedCallъ
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
:€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_56091o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Д
э
D__inference_conv2d_19_layer_call_and_return_conditional_losses_56799

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
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
:€€€€€€€€€<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
Ю

у
B__inference_dense_7_layer_call_and_return_conditional_losses_58608

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ь
Я
#random_flip_13_map_while_cond_58022B
>random_flip_13_map_while_random_flip_13_map_while_loop_counter=
9random_flip_13_map_while_random_flip_13_map_strided_slice(
$random_flip_13_map_while_placeholder*
&random_flip_13_map_while_placeholder_1B
>random_flip_13_map_while_less_random_flip_13_map_strided_sliceY
Urandom_flip_13_map_while_random_flip_13_map_while_cond_58022___redundant_placeholder0Y
Urandom_flip_13_map_while_random_flip_13_map_while_cond_58022___redundant_placeholder1%
!random_flip_13_map_while_identity
ђ
random_flip_13/map/while/LessLess$random_flip_13_map_while_placeholder>random_flip_13_map_while_less_random_flip_13_map_strided_slice*
T0*
_output_shapes
: √
random_flip_13/map/while/Less_1Less>random_flip_13_map_while_random_flip_13_map_while_loop_counter9random_flip_13_map_while_random_flip_13_map_strided_slice*
T0*
_output_shapes
: С
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
т
d
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191

inputs
identityЌ
random_flip_13/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_random_flip_13_layer_call_and_return_conditional_losses_56176ц
"random_rotation_13/PartitionedCallPartitionedCall'random_flip_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_56182р
random_zoom_8/PartitionedCallPartitionedCall+random_rotation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56188x
IdentityIdentity&random_zoom_8/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
м
i
E__inference_sequential_layer_call_and_return_conditional_losses_56165
resizing_input
identity…
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_56104ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_56114t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:a ]
1
_output_shapes
:€€€€€€€€€АА
(
_user_specified_nameresizing_input
∆
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_58568

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Й	
a
E__inference_sequential_layer_call_and_return_conditional_losses_57977

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ≠
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ќ
I
-__inference_sequential_11_layer_call_fn_57992

inputs
identityљ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56191j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
№	
Ъ
Arandom_flip_13_map_while_stateless_random_flip_up_down_true_58131П
Кrandom_flip_13_map_while_stateless_random_flip_up_down_reversev2_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyC
?random_flip_13_map_while_stateless_random_flip_up_down_identityП
Erandom_flip_13/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ў
@random_flip_13/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2Кrandom_flip_13_map_while_stateless_random_flip_up_down_reversev2_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyNrandom_flip_13/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:АА≈
?random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentityIrandom_flip_13/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:АА"Л
?random_flip_13_map_while_stateless_random_flip_up_down_identityHrandom_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
Лn
Ѕ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_56304

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
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
valueB:—
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
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
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
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
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
value	B :З
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
 *ЪЩY?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33У?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
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
: ґ
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
valueB:ђ
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
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€P
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
valueB:Н
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
 *  А?_
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
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
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
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
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
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
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
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
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
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
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
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
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
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
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
valueB:п
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
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
к
Ю
)__inference_conv2d_22_layer_call_fn_58536

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_56853w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_19_layer_call_fn_58462

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_56704Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_58437

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѓ
Ъ
Brandom_flip_13_map_while_stateless_random_flip_up_down_false_58132О
Йrandom_flip_13_map_while_stateless_random_flip_up_down_identity_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyC
?random_flip_13_map_while_stateless_random_flip_up_down_identityЖ
?random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentityЙrandom_flip_13_map_while_stateless_random_flip_up_down_identity_random_flip_13_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:АА"Л
?random_flip_13_map_while_stateless_random_flip_up_down_identityHrandom_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
е
 
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

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИҐStatefulPartitionedCallШ
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
:€€€€€€€€€*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_56903o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
љ[
Ў
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
&dense_6_matmul_readvariableop_resource:	А@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identityИҐ conv2d_17/BiasAdd/ReadVariableOpҐconv2d_17/Conv2D/ReadVariableOpҐ conv2d_18/BiasAdd/ReadVariableOpҐconv2d_18/Conv2D/ReadVariableOpҐ conv2d_19/BiasAdd/ReadVariableOpҐconv2d_19/Conv2D/ReadVariableOpҐ conv2d_20/BiasAdd/ReadVariableOpҐconv2d_20/Conv2D/ReadVariableOpҐ conv2d_21/BiasAdd/ReadVariableOpҐconv2d_21/Conv2D/ReadVariableOpҐ conv2d_22/BiasAdd/ReadVariableOpҐconv2d_22/Conv2D/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      √
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААР
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0∆
conv2d_17/Conv2DConv2Dsequential/rescaling/add:z:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
Ж
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Э
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю n
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю Ѓ
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Р
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0…
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
Ж
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@l
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@Ѓ
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
Р
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0…
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@*
paddingVALID*
strides
Ж
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€<<@l
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€<<@Ѓ
max_pooling2d_19/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Р
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0…
conv2d_20/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ж
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_20/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Р
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0…
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ж
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_21/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Р
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0…
conv2d_22/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ж
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_22/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   М
flatten_3/ReshapeReshape!max_pooling2d_22/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Н
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@В
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0О
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Д
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Н
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ж
NoOpNoOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€АА: : : : : : : : : : : : : : : : 2D
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
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ю

у
B__inference_dense_7_layer_call_and_return_conditional_losses_56896

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≠
“
Psequential_11_random_flip_13_map_while_stateless_random_flip_up_down_false_57648™
•sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identity_sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_control_dependencyQ
Msequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identity∞
Msequential_11/random_flip_13/map/while/stateless_random_flip_up_down/IdentityIdentity•sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identity_sequential_11_random_flip_13_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:АА"І
Msequential_11_random_flip_13_map_while_stateless_random_flip_up_down_identityVsequential_11/random_flip_13/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
≠
_
C__inference_resizing_layer_call_and_return_conditional_losses_56104

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs"њL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*∆
serving_default≤
W
sequential_inputC
"serving_default_sequential_input:0€€€€€€€€€АА;
dense_70
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:јЬ
Ъ
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
ƒ
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_sequential
—
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
Ё
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
•
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
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
•
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
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
•
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
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
•
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
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
•
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
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
Ђ
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
√
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses
Тkernel
	Уbias"
_tf_keras_layer
√
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
Ъkernel
	Ыbias"
_tf_keras_layer
Ъ
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
Т12
У13
Ъ14
Ы15"
trackable_list_wrapper
Ъ
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
Т12
У13
Ъ14
Ы15"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
т
°trace_0
Ґtrace_1
£trace_2
§trace_32€
-__inference_sequential_12_layer_call_fn_56938
-__inference_sequential_12_layer_call_fn_57400
-__inference_sequential_12_layer_call_fn_57443
-__inference_sequential_12_layer_call_fn_57206ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z°trace_0zҐtrace_1z£trace_2z§trace_3
ё
•trace_0
¶trace_1
Іtrace_2
®trace_32л
H__inference_sequential_12_layer_call_and_return_conditional_losses_57517
H__inference_sequential_12_layer_call_and_return_conditional_losses_57957
H__inference_sequential_12_layer_call_and_return_conditional_losses_57259
H__inference_sequential_12_layer_call_and_return_conditional_losses_57318ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z•trace_0z¶trace_1zІtrace_2z®trace_3
‘B—
 __inference__wrapped_model_56091sequential_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†
	©iter
™beta_1
Ђbeta_2

ђdecay
≠learning_rate2mН3mОAmПBmРPmСQmТ_mУ`mФnmХomЦ}mЧ~mШ	ТmЩ	УmЪ	ЪmЫ	ЫmЬ2vЭ3vЮAvЯBv†Pv°QvҐ_v£`v§nv•ov¶}vІ~v®	Тv©	Уv™	ЪvЂ	Ыvђ"
	optimizer
-
Ѓserving_default"
signature_map
Ђ
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
µ	variables
ґtrainable_variables
Јregularization_losses
Є	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
їnon_trainable_variables
Љlayers
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
ж
јtrace_0
Ѕtrace_1
¬trace_2
√trace_32у
*__inference_sequential_layer_call_fn_56120
*__inference_sequential_layer_call_fn_57962
*__inference_sequential_layer_call_fn_57967
*__inference_sequential_layer_call_fn_56153ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zјtrace_0zЅtrace_1z¬trace_2z√trace_3
“
ƒtrace_0
≈trace_1
∆trace_2
«trace_32я
E__inference_sequential_layer_call_and_return_conditional_losses_57977
E__inference_sequential_layer_call_and_return_conditional_losses_57987
E__inference_sequential_layer_call_and_return_conditional_losses_56159
E__inference_sequential_layer_call_and_return_conditional_losses_56165ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zƒtrace_0z≈trace_1z∆trace_2z«trace_3
√
»	variables
…trainable_variables
 regularization_losses
Ћ	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses
ќ_random_generator"
_tf_keras_layer
√
ѕ	variables
–trainable_variables
—regularization_losses
“	keras_api
”__call__
+‘&call_and_return_all_conditional_losses
’_random_generator"
_tf_keras_layer
√
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses
№_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ёnon_trainable_variables
ёlayers
яmetrics
 аlayer_regularization_losses
бlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
т
вtrace_0
гtrace_1
дtrace_2
еtrace_32€
-__inference_sequential_11_layer_call_fn_56194
-__inference_sequential_11_layer_call_fn_57992
-__inference_sequential_11_layer_call_fn_58003
-__inference_sequential_11_layer_call_fn_56651ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zвtrace_0zгtrace_1zдtrace_2zеtrace_3
ё
жtrace_0
зtrace_1
иtrace_2
йtrace_32л
H__inference_sequential_11_layer_call_and_return_conditional_losses_58007
H__inference_sequential_11_layer_call_and_return_conditional_losses_58377
H__inference_sequential_11_layer_call_and_return_conditional_losses_56658
H__inference_sequential_11_layer_call_and_return_conditional_losses_56671ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zжtrace_0zзtrace_1zиtrace_2zйtrace_3
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
≤
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
п
пtrace_02–
)__inference_conv2d_17_layer_call_fn_58386Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zпtrace_0
К
рtrace_02л
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58397Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zрtrace_0
*:( 2conv2d_17/kernel
: 2conv2d_17/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
ц
цtrace_02„
0__inference_max_pooling2d_17_layer_call_fn_58402Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zцtrace_0
С
чtrace_02т
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58407Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zчtrace_0
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
≤
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
п
эtrace_02–
)__inference_conv2d_18_layer_call_fn_58416Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zэtrace_0
К
юtrace_02л
D__inference_conv2d_18_layer_call_and_return_conditional_losses_58427Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zюtrace_0
*:( @2conv2d_18/kernel
:@2conv2d_18/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
€non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
ц
Дtrace_02„
0__inference_max_pooling2d_18_layer_call_fn_58432Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0
С
Еtrace_02т
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_58437Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЕtrace_0
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
≤
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
п
Лtrace_02–
)__inference_conv2d_19_layer_call_fn_58446Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЛtrace_0
К
Мtrace_02л
D__inference_conv2d_19_layer_call_and_return_conditional_losses_58457Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zМtrace_0
*:(@@2conv2d_19/kernel
:@2conv2d_19/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
ц
Тtrace_02„
0__inference_max_pooling2d_19_layer_call_fn_58462Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0
С
Уtrace_02т
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_58467Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zУtrace_0
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
≤
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
п
Щtrace_02–
)__inference_conv2d_20_layer_call_fn_58476Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0
К
Ъtrace_02л
D__inference_conv2d_20_layer_call_and_return_conditional_losses_58487Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЪtrace_0
*:(@@2conv2d_20/kernel
:@2conv2d_20/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
ц
†trace_02„
0__inference_max_pooling2d_20_layer_call_fn_58492Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0
С
°trace_02т
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58497Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z°trace_0
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
≤
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
п
Іtrace_02–
)__inference_conv2d_21_layer_call_fn_58506Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zІtrace_0
К
®trace_02л
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58517Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0
*:(@@2conv2d_21/kernel
:@2conv2d_21/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
ц
Ѓtrace_02„
0__inference_max_pooling2d_21_layer_call_fn_58522Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЃtrace_0
С
ѓtrace_02т
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58527Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0
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
≤
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
п
µtrace_02–
)__inference_conv2d_22_layer_call_fn_58536Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zµtrace_0
К
ґtrace_02л
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58547Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0
*:(@@2conv2d_22/kernel
:@2conv2d_22/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
ц
Љtrace_02„
0__inference_max_pooling2d_22_layer_call_fn_58552Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЉtrace_0
С
љtrace_02т
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58557Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
п
√trace_02–
)__inference_flatten_3_layer_call_fn_58562Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z√trace_0
К
ƒtrace_02л
D__inference_flatten_3_layer_call_and_return_conditional_losses_58568Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0
0
Т0
У1"
trackable_list_wrapper
0
Т0
У1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
н
 trace_02ќ
'__inference_dense_6_layer_call_fn_58577Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z trace_0
И
Ћtrace_02й
B__inference_dense_6_layer_call_and_return_conditional_losses_58588Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0
!:	А@2dense_6/kernel
:@2dense_6/bias
0
Ъ0
Ы1"
trackable_list_wrapper
0
Ъ0
Ы1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
н
—trace_02ќ
'__inference_dense_7_layer_call_fn_58597Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z—trace_0
И
“trace_02й
B__inference_dense_7_layer_call_and_return_conditional_losses_58608Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z“trace_0
 :@2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper
Ю
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
”0
‘1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЙBЖ
-__inference_sequential_12_layer_call_fn_56938sequential_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€Bь
-__inference_sequential_12_layer_call_fn_57400inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€Bь
-__inference_sequential_12_layer_call_fn_57443inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЙBЖ
-__inference_sequential_12_layer_call_fn_57206sequential_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЪBЧ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57517inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЪBЧ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57957inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
§B°
H__inference_sequential_12_layer_call_and_return_conditional_losses_57259sequential_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
§B°
H__inference_sequential_12_layer_call_and_return_conditional_losses_57318sequential_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
”B–
#__inference_signature_wrapper_57363sequential_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
о
Џtrace_02ѕ
(__inference_resizing_layer_call_fn_58613Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0
Й
џtrace_02к
C__inference_resizing_layer_call_and_return_conditional_losses_58619Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zџtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
µ	variables
ґtrainable_variables
Јregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
п
бtrace_02–
)__inference_rescaling_layer_call_fn_58624Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zбtrace_0
К
вtrace_02л
D__inference_rescaling_layer_call_and_return_conditional_losses_58632Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zвtrace_0
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
ДBБ
*__inference_sequential_layer_call_fn_56120resizing_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ьBщ
*__inference_sequential_layer_call_fn_57962inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ьBщ
*__inference_sequential_layer_call_fn_57967inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ДBБ
*__inference_sequential_layer_call_fn_56153resizing_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЧBФ
E__inference_sequential_layer_call_and_return_conditional_losses_57977inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЧBФ
E__inference_sequential_layer_call_and_return_conditional_losses_57987inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЯBЬ
E__inference_sequential_layer_call_and_return_conditional_losses_56159resizing_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЯBЬ
E__inference_sequential_layer_call_and_return_conditional_losses_56165resizing_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
»	variables
…trainable_variables
 regularization_losses
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
“
иtrace_0
йtrace_12Ч
.__inference_random_flip_13_layer_call_fn_58637
.__inference_random_flip_13_layer_call_fn_58644і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zиtrace_0zйtrace_1
И
кtrace_0
лtrace_12Ќ
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58648
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58806і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zкtrace_0zлtrace_1
/
м
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
ѕ	variables
–trainable_variables
—regularization_losses
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses"
_generic_user_object
Џ
тtrace_0
уtrace_12Я
2__inference_random_rotation_13_layer_call_fn_58811
2__inference_random_rotation_13_layer_call_fn_58818і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zтtrace_0zуtrace_1
Р
фtrace_0
хtrace_12’
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58822
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58940і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zфtrace_0zхtrace_1
/
ц
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
–
ьtrace_0
эtrace_12Х
-__inference_random_zoom_8_layer_call_fn_58945
-__inference_random_zoom_8_layer_call_fn_58952і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zьtrace_0zэtrace_1
Ж
юtrace_0
€trace_12Ћ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_58956
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_59058і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zюtrace_0z€trace_1
/
А
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
НBК
-__inference_sequential_11_layer_call_fn_56194random_flip_13_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€Bь
-__inference_sequential_11_layer_call_fn_57992inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
€Bь
-__inference_sequential_11_layer_call_fn_58003inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
НBК
-__inference_sequential_11_layer_call_fn_56651random_flip_13_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЪBЧ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58007inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЪBЧ
H__inference_sequential_11_layer_call_and_return_conditional_losses_58377inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®B•
H__inference_sequential_11_layer_call_and_return_conditional_losses_56658random_flip_13_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®B•
H__inference_sequential_11_layer_call_and_return_conditional_losses_56671random_flip_13_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
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
ЁBЏ
)__inference_conv2d_17_layer_call_fn_58386inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58397inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
0__inference_max_pooling2d_17_layer_call_fn_58402inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58407inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_18_layer_call_fn_58416inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_18_layer_call_and_return_conditional_losses_58427inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
0__inference_max_pooling2d_18_layer_call_fn_58432inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_58437inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_19_layer_call_fn_58446inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_19_layer_call_and_return_conditional_losses_58457inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
0__inference_max_pooling2d_19_layer_call_fn_58462inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_58467inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_20_layer_call_fn_58476inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_20_layer_call_and_return_conditional_losses_58487inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
0__inference_max_pooling2d_20_layer_call_fn_58492inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58497inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_21_layer_call_fn_58506inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58517inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
0__inference_max_pooling2d_21_layer_call_fn_58522inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58527inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_22_layer_call_fn_58536inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58547inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
0__inference_max_pooling2d_22_layer_call_fn_58552inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58557inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_flatten_3_layer_call_fn_58562inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_flatten_3_layer_call_and_return_conditional_losses_58568inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
џBЎ
'__inference_dense_6_layer_call_fn_58577inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_6_layer_call_and_return_conditional_losses_58588inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
џBЎ
'__inference_dense_7_layer_call_fn_58597inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_7_layer_call_and_return_conditional_losses_58608inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Б	variables
В	keras_api

Гtotal

Дcount"
_tf_keras_metric
c
Е	variables
Ж	keras_api

Зtotal

Иcount
Й
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
№Bў
(__inference_resizing_layer_call_fn_58613inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_resizing_layer_call_and_return_conditional_losses_58619inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_rescaling_layer_call_fn_58624inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_rescaling_layer_call_and_return_conditional_losses_58632inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
фBс
.__inference_random_flip_13_layer_call_fn_58637inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
фBс
.__inference_random_flip_13_layer_call_fn_58644inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ПBМ
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58648inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ПBМ
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58806inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
/
К
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
шBх
2__inference_random_rotation_13_layer_call_fn_58811inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
шBх
2__inference_random_rotation_13_layer_call_fn_58818inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
УBР
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58822inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
УBР
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58940inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
/
Л
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
уBр
-__inference_random_zoom_8_layer_call_fn_58945inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
уBр
-__inference_random_zoom_8_layer_call_fn_58952inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ОBЛ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_58956inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ОBЛ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_59058inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
/
М
_state_var"
_generic_user_object
0
Г0
Д1"
trackable_list_wrapper
.
Б	variables"
_generic_user_object
:  (2total
:  (2count
0
З0
И1"
trackable_list_wrapper
.
Е	variables"
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
&:$	А@2Adam/dense_6/kernel/m
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
&:$	А@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
%:#@2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v≥
 __inference__wrapped_model_56091О23ABPQ_`no}~ТУЪЫCҐ@
9Ґ6
4К1
sequential_input€€€€€€€€€АА
™ "1™.
,
dense_7!К
dense_7€€€€€€€€€Є
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58397p239Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€юю 
Ъ Р
)__inference_conv2d_17_layer_call_fn_58386c239Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€юю і
D__inference_conv2d_18_layer_call_and_return_conditional_losses_58427lAB7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€}}@
Ъ М
)__inference_conv2d_18_layer_call_fn_58416_AB7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€}}@і
D__inference_conv2d_19_layer_call_and_return_conditional_losses_58457lPQ7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€>>@
™ "-Ґ*
#К 
0€€€€€€€€€<<@
Ъ М
)__inference_conv2d_19_layer_call_fn_58446_PQ7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€>>@
™ " К€€€€€€€€€<<@і
D__inference_conv2d_20_layer_call_and_return_conditional_losses_58487l_`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ М
)__inference_conv2d_20_layer_call_fn_58476__`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@і
D__inference_conv2d_21_layer_call_and_return_conditional_losses_58517lno7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ М
)__inference_conv2d_21_layer_call_fn_58506_no7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@і
D__inference_conv2d_22_layer_call_and_return_conditional_losses_58547l}~7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ М
)__inference_conv2d_22_layer_call_fn_58536_}~7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@•
B__inference_dense_6_layer_call_and_return_conditional_losses_58588_ТУ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€@
Ъ }
'__inference_dense_6_layer_call_fn_58577RТУ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€@§
B__inference_dense_7_layer_call_and_return_conditional_losses_58608^ЪЫ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
'__inference_dense_7_layer_call_fn_58597QЪЫ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€©
D__inference_flatten_3_layer_call_and_return_conditional_losses_58568a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Б
)__inference_flatten_3_layer_call_fn_58562T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "К€€€€€€€€€Ао
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58407ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_17_layer_call_fn_58402СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_58437ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_18_layer_call_fn_58432СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_58467ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_19_layer_call_fn_58462СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_58497ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_20_layer_call_fn_58492СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_58527ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_21_layer_call_fn_58522СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_58557ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_22_layer_call_fn_58552СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€љ
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58648p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Ѕ
I__inference_random_flip_13_layer_call_and_return_conditional_losses_58806tК=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Х
.__inference_random_flip_13_layer_call_fn_58637c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ ""К€€€€€€€€€ААЩ
.__inference_random_flip_13_layer_call_fn_58644gК=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ ""К€€€€€€€€€ААЅ
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58822p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ≈
M__inference_random_rotation_13_layer_call_and_return_conditional_losses_58940tЛ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Щ
2__inference_random_rotation_13_layer_call_fn_58811c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ ""К€€€€€€€€€ААЭ
2__inference_random_rotation_13_layer_call_fn_58818gЛ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ ""К€€€€€€€€€ААЉ
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_58956p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ј
H__inference_random_zoom_8_layer_call_and_return_conditional_losses_59058tМ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Ф
-__inference_random_zoom_8_layer_call_fn_58945c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ ""К€€€€€€€€€ААШ
-__inference_random_zoom_8_layer_call_fn_58952gМ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ ""К€€€€€€€€€ААі
D__inference_rescaling_layer_call_and_return_conditional_losses_58632l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ М
)__inference_rescaling_layer_call_fn_58624_9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€АА≥
C__inference_resizing_layer_call_and_return_conditional_losses_58619l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Л
(__inference_resizing_layer_call_fn_58613_9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€ААѕ
H__inference_sequential_11_layer_call_and_return_conditional_losses_56658ВOҐL
EҐB
8К5
random_flip_13_input€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ „
H__inference_sequential_11_layer_call_and_return_conditional_losses_56671ККЛМOҐL
EҐB
8К5
random_flip_13_input€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ј
H__inference_sequential_11_layer_call_and_return_conditional_losses_58007tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ »
H__inference_sequential_11_layer_call_and_return_conditional_losses_58377|КЛМAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ¶
-__inference_sequential_11_layer_call_fn_56194uOҐL
EҐB
8К5
random_flip_13_input€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААЃ
-__inference_sequential_11_layer_call_fn_56651}КЛМOҐL
EҐB
8К5
random_flip_13_input€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€ААШ
-__inference_sequential_11_layer_call_fn_57992gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€АА†
-__inference_sequential_11_layer_call_fn_58003oКЛМAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€АА„
H__inference_sequential_12_layer_call_and_return_conditional_losses_57259К23ABPQ_`no}~ТУЪЫKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ё
H__inference_sequential_12_layer_call_and_return_conditional_losses_57318РКЛМ23ABPQ_`no}~ТУЪЫKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ќ
H__inference_sequential_12_layer_call_and_return_conditional_losses_57517А23ABPQ_`no}~ТУЪЫAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ”
H__inference_sequential_12_layer_call_and_return_conditional_losses_57957ЖКЛМ23ABPQ_`no}~ТУЪЫAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ѓ
-__inference_sequential_12_layer_call_fn_56938}23ABPQ_`no}~ТУЪЫKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p 

 
™ "К€€€€€€€€€µ
-__inference_sequential_12_layer_call_fn_57206ГКЛМ23ABPQ_`no}~ТУЪЫKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p

 
™ "К€€€€€€€€€§
-__inference_sequential_12_layer_call_fn_57400s23ABPQ_`no}~ТУЪЫAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "К€€€€€€€€€™
-__inference_sequential_12_layer_call_fn_57443yКЛМ23ABPQ_`no}~ТУЪЫAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "К€€€€€€€€€≈
E__inference_sequential_layer_call_and_return_conditional_losses_56159|IҐF
?Ґ<
2К/
resizing_input€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ≈
E__inference_sequential_layer_call_and_return_conditional_losses_56165|IҐF
?Ґ<
2К/
resizing_input€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ љ
E__inference_sequential_layer_call_and_return_conditional_losses_57977tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ љ
E__inference_sequential_layer_call_and_return_conditional_losses_57987tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Э
*__inference_sequential_layer_call_fn_56120oIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААЭ
*__inference_sequential_layer_call_fn_56153oIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€ААХ
*__inference_sequential_layer_call_fn_57962gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААХ
*__inference_sequential_layer_call_fn_57967gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€АА 
#__inference_signature_wrapper_57363Ґ23ABPQ_`no}~ТУЪЫWҐT
Ґ 
M™J
H
sequential_input4К1
sequential_input€€€€€€€€€АА"1™.
,
dense_7!К
dense_7€€€€€€€€€