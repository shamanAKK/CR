¦;
Ê
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
delete_old_dirsbool(
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
«
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8öø8
~
conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv1d_7/kernel
w
#conv1d_7/kernel/Read/ReadVariableOpReadVariableOpconv1d_7/kernel*"
_output_shapes
: @*
dtype0
r
conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_7/bias
k
!conv1d_7/bias/Read/ReadVariableOpReadVariableOpconv1d_7/bias*
_output_shapes
:@*
dtype0
~
conv1d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv1d_8/kernel
w
#conv1d_8/kernel/Read/ReadVariableOpReadVariableOpconv1d_8/kernel*"
_output_shapes
:@ *
dtype0
r
conv1d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_8/bias
k
!conv1d_8/bias/Read/ReadVariableOpReadVariableOpconv1d_8/bias*
_output_shapes
: *
dtype0
z
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_30/kernel
s
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes

: @*
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:@*
dtype0
z
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_31/kernel
s
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes

:@ *
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
_output_shapes
: *
dtype0
z
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_32/kernel
s
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel*
_output_shapes

: *
dtype0
r
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_32/bias
k
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes
:*
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
Ö
=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*N
shared_name?=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel
Ï
Qbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/Read/ReadVariableOpReadVariableOp=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel*
_output_shapes

:*
dtype0
ê
Gbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*X
shared_nameIGbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel
ã
[bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOpGbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel*
_output_shapes

:*
dtype0
Î
;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*L
shared_name=;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias
Ç
Obidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/Read/ReadVariableOpReadVariableOp;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias*
_output_shapes
:*
dtype0
Ø
>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*O
shared_name@>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel
Ñ
Rbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/Read/ReadVariableOpReadVariableOp>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel*
_output_shapes

:*
dtype0
ì
Hbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*Y
shared_nameJHbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel
å
\bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOpHbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel*
_output_shapes

:*
dtype0
Ð
<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*M
shared_name><bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias
É
Pbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/Read/ReadVariableOpReadVariableOp<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias*
_output_shapes
:*
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

Adam/conv1d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_7/kernel/m

*Adam/conv1d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/kernel/m*"
_output_shapes
: @*
dtype0

Adam/conv1d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_7/bias/m
y
(Adam/conv1d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/bias/m*
_output_shapes
:@*
dtype0

Adam/conv1d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv1d_8/kernel/m

*Adam/conv1d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/m*"
_output_shapes
:@ *
dtype0

Adam/conv1d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_8/bias/m
y
(Adam/conv1d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/m*
_output_shapes
: *
dtype0

Adam/dense_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*'
shared_nameAdam/dense_30/kernel/m

*Adam/dense_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/m*
_output_shapes

: @*
dtype0

Adam/dense_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_30/bias/m
y
(Adam/dense_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_31/kernel/m

*Adam/dense_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/m*
_output_shapes

:@ *
dtype0

Adam/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_31/bias/m
y
(Adam/dense_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/m*
_output_shapes
: *
dtype0

Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_32/kernel/m

*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/m
y
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes
:*
dtype0
ä
DAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*U
shared_nameFDAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/m
Ý
XAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/m/Read/ReadVariableOpReadVariableOpDAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/m*
_output_shapes

:*
dtype0
ø
NAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*_
shared_namePNAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/m
ñ
bAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpNAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/m*
_output_shapes

:*
dtype0
Ü
BAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*S
shared_nameDBAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/m
Õ
VAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/m/Read/ReadVariableOpReadVariableOpBAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/m*
_output_shapes
:*
dtype0
æ
EAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*V
shared_nameGEAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/m
ß
YAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpReadVariableOpEAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/m*
_output_shapes

:*
dtype0
ú
OAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*`
shared_nameQOAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/m
ó
cAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpOAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/m*
_output_shapes

:*
dtype0
Þ
CAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/m
×
WAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/m/Read/ReadVariableOpReadVariableOpCAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/m*
_output_shapes
:*
dtype0

Adam/conv1d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_7/kernel/v

*Adam/conv1d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/kernel/v*"
_output_shapes
: @*
dtype0

Adam/conv1d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_7/bias/v
y
(Adam/conv1d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/bias/v*
_output_shapes
:@*
dtype0

Adam/conv1d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv1d_8/kernel/v

*Adam/conv1d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/v*"
_output_shapes
:@ *
dtype0

Adam/conv1d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_8/bias/v
y
(Adam/conv1d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/v*
_output_shapes
: *
dtype0

Adam/dense_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*'
shared_nameAdam/dense_30/kernel/v

*Adam/dense_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/v*
_output_shapes

: @*
dtype0

Adam/dense_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_30/bias/v
y
(Adam/dense_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_31/kernel/v

*Adam/dense_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/v*
_output_shapes

:@ *
dtype0

Adam/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_31/bias/v
y
(Adam/dense_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/v*
_output_shapes
: *
dtype0

Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_32/kernel/v

*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/v
y
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes
:*
dtype0
ä
DAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*U
shared_nameFDAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/v
Ý
XAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/v/Read/ReadVariableOpReadVariableOpDAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/v*
_output_shapes

:*
dtype0
ø
NAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*_
shared_namePNAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/v
ñ
bAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpNAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/v*
_output_shapes

:*
dtype0
Ü
BAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*S
shared_nameDBAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/v
Õ
VAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/v/Read/ReadVariableOpReadVariableOpBAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/v*
_output_shapes
:*
dtype0
æ
EAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*V
shared_nameGEAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/v
ß
YAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpReadVariableOpEAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/v*
_output_shapes

:*
dtype0
ú
OAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*`
shared_nameQOAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/v
ó
cAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpOAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/v*
_output_shapes

:*
dtype0
Þ
CAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/v
×
WAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/v/Read/ReadVariableOpReadVariableOpCAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
¸_
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ó^
valueé^Bæ^ Bß^
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
y
forward_layer
backward_layer
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
h

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api

6iter

7beta_1

8beta_2
	9decay
:learning_ratemmm m¡$m¢%m£*m¤+m¥0m¦1m§;m¨<m©=mª>m«?m¬@m­v®v¯v°v±$v²%v³*v´+vµ0v¶1v·;v¸<v¹=vº>v»?v¼@v½
v
;0
<1
=2
>3
?4
@5
6
7
8
9
$10
%11
*12
+13
014
115
v
;0
<1
=2
>3
?4
@5
6
7
8
9
$10
%11
*12
+13
014
115
 
­
Ametrics
		variables
Bnon_trainable_variables

Clayers
Dlayer_regularization_losses

trainable_variables
regularization_losses
Elayer_metrics
 
l
Fcell
G
state_spec
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
l
Lcell
M
state_spec
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
*
;0
<1
=2
>3
?4
@5
*
;0
<1
=2
>3
?4
@5
 
­
Rmetrics
	variables
Snon_trainable_variables

Tlayers
Ulayer_regularization_losses
trainable_variables
regularization_losses
Vlayer_metrics
[Y
VARIABLE_VALUEconv1d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Wmetrics
	variables
Xnon_trainable_variables

Ylayers
Zlayer_regularization_losses
trainable_variables
regularization_losses
[layer_metrics
[Y
VARIABLE_VALUEconv1d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
\metrics
	variables
]non_trainable_variables

^layers
_layer_regularization_losses
trainable_variables
regularization_losses
`layer_metrics
 
 
 
­
ametrics
 	variables
bnon_trainable_variables

clayers
dlayer_regularization_losses
!trainable_variables
"regularization_losses
elayer_metrics
[Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
­
fmetrics
&	variables
gnon_trainable_variables

hlayers
ilayer_regularization_losses
'trainable_variables
(regularization_losses
jlayer_metrics
[Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_31/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
­
kmetrics
,	variables
lnon_trainable_variables

mlayers
nlayer_regularization_losses
-trainable_variables
.regularization_losses
olayer_metrics
[Y
VARIABLE_VALUEdense_32/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_32/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
­
pmetrics
2	variables
qnon_trainable_variables

rlayers
slayer_regularization_losses
3trainable_variables
4regularization_losses
tlayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEGbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEHbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 
1
0
1
2
3
4
5
6
 
 
~

;kernel
<recurrent_kernel
=bias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
 

;0
<1
=2

;0
<1
=2
 
º
{metrics
H	variables
|non_trainable_variables

}states

~layers
layer_regularization_losses
Itrainable_variables
Jregularization_losses
layer_metrics


>kernel
?recurrent_kernel
@bias
	variables
trainable_variables
regularization_losses
	keras_api
 

>0
?1
@2

>0
?1
@2
 
¿
metrics
N	variables
non_trainable_variables
states
layers
 layer_regularization_losses
Otrainable_variables
Pregularization_losses
layer_metrics
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api

;0
<1
=2

;0
<1
=2
 
²
metrics
w	variables
non_trainable_variables
layers
 layer_regularization_losses
xtrainable_variables
yregularization_losses
layer_metrics
 
 
 

F0
 
 

>0
?1
@2

>0
?1
@2
 
µ
metrics
	variables
non_trainable_variables
layers
 layer_regularization_losses
trainable_variables
regularization_losses
layer_metrics
 
 
 

L0
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables
 
 
 
 
 
 
 
 
 
 
~|
VARIABLE_VALUEAdam/conv1d_7/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_7/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_32/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_32/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
§¤
VARIABLE_VALUENAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEBAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
¨¥
VARIABLE_VALUEOAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_7/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_7/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_32/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_32/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
§¤
VARIABLE_VALUENAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEBAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
¨¥
VARIABLE_VALUEOAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_11Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_11=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/biasGbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/biasHbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernelconv1d_7/kernelconv1d_7/biasconv1d_8/kernelconv1d_8/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/biasdense_32/kerneldense_32/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1305247
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_7/kernel/Read/ReadVariableOp!conv1d_7/bias/Read/ReadVariableOp#conv1d_8/kernel/Read/ReadVariableOp!conv1d_8/bias/Read/ReadVariableOp#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOp#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpQbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/Read/ReadVariableOp[bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpObidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/Read/ReadVariableOpRbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/Read/ReadVariableOp\bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOpPbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv1d_7/kernel/m/Read/ReadVariableOp(Adam/conv1d_7/bias/m/Read/ReadVariableOp*Adam/conv1d_8/kernel/m/Read/ReadVariableOp(Adam/conv1d_8/bias/m/Read/ReadVariableOp*Adam/dense_30/kernel/m/Read/ReadVariableOp(Adam/dense_30/bias/m/Read/ReadVariableOp*Adam/dense_31/kernel/m/Read/ReadVariableOp(Adam/dense_31/bias/m/Read/ReadVariableOp*Adam/dense_32/kernel/m/Read/ReadVariableOp(Adam/dense_32/bias/m/Read/ReadVariableOpXAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/m/Read/ReadVariableOpbAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/m/Read/ReadVariableOpVAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/m/Read/ReadVariableOpYAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpcAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOpWAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/m/Read/ReadVariableOp*Adam/conv1d_7/kernel/v/Read/ReadVariableOp(Adam/conv1d_7/bias/v/Read/ReadVariableOp*Adam/conv1d_8/kernel/v/Read/ReadVariableOp(Adam/conv1d_8/bias/v/Read/ReadVariableOp*Adam/dense_30/kernel/v/Read/ReadVariableOp(Adam/dense_30/bias/v/Read/ReadVariableOp*Adam/dense_31/kernel/v/Read/ReadVariableOp(Adam/dense_31/bias/v/Read/ReadVariableOp*Adam/dense_32/kernel/v/Read/ReadVariableOp(Adam/dense_32/bias/v/Read/ReadVariableOpXAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/v/Read/ReadVariableOpbAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/v/Read/ReadVariableOpVAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/v/Read/ReadVariableOpYAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpcAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOpWAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1308190

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_7/kernelconv1d_7/biasconv1d_8/kernelconv1d_8/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/biasdense_32/kerneldense_32/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernelGbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernelHbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/biastotalcounttotal_1count_1Adam/conv1d_7/kernel/mAdam/conv1d_7/bias/mAdam/conv1d_8/kernel/mAdam/conv1d_8/bias/mAdam/dense_30/kernel/mAdam/dense_30/bias/mAdam/dense_31/kernel/mAdam/dense_31/bias/mAdam/dense_32/kernel/mAdam/dense_32/bias/mDAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/mNAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/mBAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/mEAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/mOAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/mCAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/mAdam/conv1d_7/kernel/vAdam/conv1d_7/bias/vAdam/conv1d_8/kernel/vAdam/conv1d_8/bias/vAdam/dense_30/kernel/vAdam/dense_30/bias/vAdam/dense_31/kernel/vAdam/dense_31/bias/vAdam/dense_32/kernel/vAdam/dense_32/bias/vDAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/vNAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/vBAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/vEAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/vOAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/vCAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/v*E
Tin>
<2:*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1308371¡Ù6
ÏF
Æ
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307064
inputs_0B
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOp»
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMulÂ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/BiasAddÉ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOp·
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMul_1³
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/add
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1306998*
condR
while_cond_1306997*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
»I
ß
(backward_simple_rnn_2_while_body_1306285H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2G
Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0
backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:]
Obackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:b
Pbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:(
$backward_simple_rnn_2_while_identity*
&backward_simple_rnn_2_while_identity_1*
&backward_simple_rnn_2_while_identity_2*
&backward_simple_rnn_2_while_identity_3*
&backward_simple_rnn_2_while_identity_4E
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:[
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpï
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2O
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeà
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_2_while_placeholderVbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02E
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp½
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMulFbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02F
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¹
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAdd>backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0Lbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02G
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp¦
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMul)backward_simple_rnn_2_while_placeholder_2Mbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1£
1backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2>backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0@backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/while/simple_rnn_cell_4/addÙ
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanh5backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhÒ
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_2_while_placeholder_1'backward_simple_rnn_2_while_placeholder6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02B
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
!backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!backward_simple_rnn_2/while/add/yÁ
backward_simple_rnn_2/while/addAddV2'backward_simple_rnn_2_while_placeholder*backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2!
backward_simple_rnn_2/while/add
#backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#backward_simple_rnn_2/while/add_1/yä
!backward_simple_rnn_2/while/add_1AddV2Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counter,backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!backward_simple_rnn_2/while/add_1Ã
$backward_simple_rnn_2/while/IdentityIdentity%backward_simple_rnn_2/while/add_1:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identityì
&backward_simple_rnn_2/while/Identity_1IdentityJbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_1Å
&backward_simple_rnn_2/while/Identity_2Identity#backward_simple_rnn_2/while/add:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_2ò
&backward_simple_rnn_2/while/Identity_3IdentityPbackward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_3é
&backward_simple_rnn_2/while/Identity_4Identity6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0!^backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&backward_simple_rnn_2/while/Identity_4Û
 backward_simple_rnn_2/while/NoOpNoOpE^backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpD^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpF^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 backward_simple_rnn_2/while/NoOp"
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0"Y
&backward_simple_rnn_2_while_identity_1/backward_simple_rnn_2/while/Identity_1:output:0"Y
&backward_simple_rnn_2_while_identity_2/backward_simple_rnn_2/while/Identity_2:output:0"Y
&backward_simple_rnn_2_while_identity_3/backward_simple_rnn_2/while/Identity_3:output:0"Y
&backward_simple_rnn_2_while_identity_4/backward_simple_rnn_2/while/Identity_4:output:0" 
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resourceObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcePbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resourceNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpDbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpCbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpEbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
õ

Fsequential_10_bidirectional_3_backward_simple_rnn_2_while_cond_1302477
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_loop_counter
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_maximum_iterationsI
Esequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholderK
Gsequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholder_1K
Gsequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholder_2
sequential_10_bidirectional_3_backward_simple_rnn_2_while_less_sequential_10_bidirectional_3_backward_simple_rnn_2_strided_slice_1
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_cond_1302477___redundant_placeholder0
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_cond_1302477___redundant_placeholder1
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_cond_1302477___redundant_placeholder2
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_cond_1302477___redundant_placeholder3F
Bsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity
õ
>sequential_10/bidirectional_3/backward_simple_rnn_2/while/LessLessEsequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholdersequential_10_bidirectional_3_backward_simple_rnn_2_while_less_sequential_10_bidirectional_3_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2@
>sequential_10/bidirectional_3/backward_simple_rnn_2/while/Lessù
Bsequential_10/bidirectional_3/backward_simple_rnn_2/while/IdentityIdentityBsequential_10/bidirectional_3/backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2D
Bsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity"
Bsequential_10_bidirectional_3_backward_simple_rnn_2_while_identityKsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

å
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1304201

inputs.
forward_simple_rnn_2_1304182:*
forward_simple_rnn_2_1304184:.
forward_simple_rnn_2_1304186:/
backward_simple_rnn_2_1304189:+
backward_simple_rnn_2_1304191:/
backward_simple_rnn_2_1304193:
identity¢-backward_simple_rnn_2/StatefulPartitionedCall¢,forward_simple_rnn_2/StatefulPartitionedCall
,forward_simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCallinputsforward_simple_rnn_2_1304182forward_simple_rnn_2_1304184forward_simple_rnn_2_1304186*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_13041512.
,forward_simple_rnn_2/StatefulPartitionedCall
-backward_simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_simple_rnn_2_1304189backward_simple_rnn_2_1304191backward_simple_rnn_2_1304193*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_13040212/
-backward_simple_rnn_2/StatefulPartitionedCallj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis³
	ReverseV2	ReverseV26backward_simple_rnn_2/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisÅ
concatConcatV25forward_simple_rnn_2/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
concatw
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity­
NoOpNoOp.^backward_simple_rnn_2/StatefulPartitionedCall-^forward_simple_rnn_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2^
-backward_simple_rnn_2/StatefulPartitionedCall-backward_simple_rnn_2/StatefulPartitionedCall2\
,forward_simple_rnn_2/StatefulPartitionedCall,forward_simple_rnn_2/StatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
¾
'forward_simple_rnn_2_while_cond_1306614F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2H
Dforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306614___redundant_placeholder0_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306614___redundant_placeholder1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306614___redundant_placeholder2_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306614___redundant_placeholder3'
#forward_simple_rnn_2_while_identity
Ù
forward_simple_rnn_2/while/LessLess&forward_simple_rnn_2_while_placeholderDforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2!
forward_simple_rnn_2/while/Less
#forward_simple_rnn_2/while/IdentityIdentity#forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identity"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
â
¾
'forward_simple_rnn_2_while_cond_1306178F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2H
Dforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306178___redundant_placeholder0_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306178___redundant_placeholder1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306178___redundant_placeholder2_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306178___redundant_placeholder3'
#forward_simple_rnn_2_while_identity
Ù
forward_simple_rnn_2/while/LessLess&forward_simple_rnn_2_while_placeholderDforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2!
forward_simple_rnn_2/while/Less
#forward_simple_rnn_2/while/IdentityIdentity#forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identity"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
í
©
/__inference_sequential_10_layer_call_fn_1304654
input_11
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: @
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_13046192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_11
ó

*__inference_dense_31_layer_call_fn_1306881

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_13045952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
i
Ë
Esequential_10_bidirectional_3_forward_simple_rnn_2_while_body_1302372
~sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_loop_counter
sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_maximum_iterationsH
Dsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholderJ
Fsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholder_1J
Fsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholder_2
}sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_strided_slice_1_0¾
¹sequential_10_bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0}
ksequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:z
lsequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:
msequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:E
Asequential_10_bidirectional_3_forward_simple_rnn_2_while_identityG
Csequential_10_bidirectional_3_forward_simple_rnn_2_while_identity_1G
Csequential_10_bidirectional_3_forward_simple_rnn_2_while_identity_2G
Csequential_10_bidirectional_3_forward_simple_rnn_2_while_identity_3G
Csequential_10_bidirectional_3_forward_simple_rnn_2_while_identity_4
{sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_strided_slice_1¼
·sequential_10_bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor{
isequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:x
jsequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:}
ksequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢asequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢`sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢bsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp©
jsequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2l
jsequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape
\sequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem¹sequential_10_bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0Dsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholderssequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02^
\sequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemð
`sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpksequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02b
`sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp±
Qsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulcsequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0hsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2S
Qsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulï
asequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOplsequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02c
asequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp­
Rsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAdd[sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0isequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
Rsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddö
bsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpmsequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02d
bsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
Ssequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMulFsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholder_2jsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Ssequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1
Nsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2[sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0]sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/add°
Osequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanhRsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Osequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanhã
]sequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemFsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholder_1Dsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholderSsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02_
]sequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemÂ
>sequential_10/bidirectional_3/forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_10/bidirectional_3/forward_simple_rnn_2/while/add/yµ
<sequential_10/bidirectional_3/forward_simple_rnn_2/while/addAddV2Dsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholderGsequential_10/bidirectional_3/forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2>
<sequential_10/bidirectional_3/forward_simple_rnn_2/while/addÆ
@sequential_10/bidirectional_3/forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@sequential_10/bidirectional_3/forward_simple_rnn_2/while/add_1/yõ
>sequential_10/bidirectional_3/forward_simple_rnn_2/while/add_1AddV2~sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_loop_counterIsequential_10/bidirectional_3/forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2@
>sequential_10/bidirectional_3/forward_simple_rnn_2/while/add_1·
Asequential_10/bidirectional_3/forward_simple_rnn_2/while/IdentityIdentityBsequential_10/bidirectional_3/forward_simple_rnn_2/while/add_1:z:0>^sequential_10/bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2C
Asequential_10/bidirectional_3/forward_simple_rnn_2/while/Identityþ
Csequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_1Identitysequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_maximum_iterations>^sequential_10/bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2E
Csequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_1¹
Csequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_2Identity@sequential_10/bidirectional_3/forward_simple_rnn_2/while/add:z:0>^sequential_10/bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2E
Csequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_2æ
Csequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_3Identitymsequential_10/bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_10/bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2E
Csequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_3Ý
Csequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_4IdentitySsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0>^sequential_10/bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Csequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_4ì
=sequential_10/bidirectional_3/forward_simple_rnn_2/while/NoOpNoOpb^sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpa^sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpc^sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2?
=sequential_10/bidirectional_3/forward_simple_rnn_2/while/NoOp"
Asequential_10_bidirectional_3_forward_simple_rnn_2_while_identityJsequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity:output:0"
Csequential_10_bidirectional_3_forward_simple_rnn_2_while_identity_1Lsequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_1:output:0"
Csequential_10_bidirectional_3_forward_simple_rnn_2_while_identity_2Lsequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_2:output:0"
Csequential_10_bidirectional_3_forward_simple_rnn_2_while_identity_3Lsequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_3:output:0"
Csequential_10_bidirectional_3_forward_simple_rnn_2_while_identity_4Lsequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity_4:output:0"ü
{sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_strided_slice_1}sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_strided_slice_1_0"Ú
jsequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resourcelsequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"Ü
ksequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resourcemsequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"Ø
isequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resourceksequential_10_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"ö
·sequential_10_bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor¹sequential_10_bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2Æ
asequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpasequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2Ä
`sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp`sequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2È
bsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpbsequential_10/bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¨
ë
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1307917

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityg

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ÿ
¯
while_cond_1302825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1302825___redundant_placeholder05
1while_while_cond_1302825___redundant_placeholder15
1while_while_cond_1302825___redundant_placeholder25
1while_while_cond_1302825___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

ö
E__inference_dense_30_layer_call_and_return_conditional_losses_1306872

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÿ
Ñ
(backward_simple_rnn_2_while_cond_1306720H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2J
Fbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306720___redundant_placeholder0a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306720___redundant_placeholder1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306720___redundant_placeholder2a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306720___redundant_placeholder3(
$backward_simple_rnn_2_while_identity
Þ
 backward_simple_rnn_2/while/LessLess'backward_simple_rnn_2_while_placeholderFbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2"
 backward_simple_rnn_2/while/Less
$backward_simple_rnn_2/while/IdentityIdentity$backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identity"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ê
H
,__inference_flatten_10_layer_call_fn_1306846

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_13045652
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

ö
E__inference_dense_30_layer_call_and_return_conditional_losses_1304578

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ú	

1__inference_bidirectional_3_layer_call_fn_1305868
inputs_0
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_13038832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ÿ
¯
while_cond_1306997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1306997___redundant_placeholder05
1while_while_cond_1306997___redundant_placeholder15
1while_while_cond_1306997___redundant_placeholder25
1while_while_cond_1306997___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ø

Û
3__inference_simple_rnn_cell_3_layer_call_fn_1307900

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_13027632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ãÇ
À
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306791

inputsW
Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:T
Fforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:Y
Gforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:X
Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:U
Gbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:Z
Hbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢backward_simple_rnn_2/while¢=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢forward_simple_rnn_2/whilen
forward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape
(forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(forward_simple_rnn_2/strided_slice/stack¢
*forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_1¢
*forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_2à
"forward_simple_rnn_2/strided_sliceStridedSlice#forward_simple_rnn_2/Shape:output:01forward_simple_rnn_2/strided_slice/stack:output:03forward_simple_rnn_2/strided_slice/stack_1:output:03forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"forward_simple_rnn_2/strided_slice
#forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#forward_simple_rnn_2/zeros/packed/1×
!forward_simple_rnn_2/zeros/packedPack+forward_simple_rnn_2/strided_slice:output:0,forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!forward_simple_rnn_2/zeros/packed
 forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 forward_simple_rnn_2/zeros/ConstÉ
forward_simple_rnn_2/zerosFill*forward_simple_rnn_2/zeros/packed:output:0)forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
forward_simple_rnn_2/zeros
#forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#forward_simple_rnn_2/transpose/perm¹
forward_simple_rnn_2/transpose	Transposeinputs,forward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
forward_simple_rnn_2/transpose
forward_simple_rnn_2/Shape_1Shape"forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape_1¢
*forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_1/stack¦
,forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_1¦
,forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_2ì
$forward_simple_rnn_2/strided_slice_1StridedSlice%forward_simple_rnn_2/Shape_1:output:03forward_simple_rnn_2/strided_slice_1/stack:output:05forward_simple_rnn_2/strided_slice_1/stack_1:output:05forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_1¯
0forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/TensorArrayV2/element_shape
"forward_simple_rnn_2/TensorArrayV2TensorListReserve9forward_simple_rnn_2/TensorArrayV2/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"forward_simple_rnn_2/TensorArrayV2é
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_2/transpose:y:0Sforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¢
*forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_2/stack¦
,forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_1¦
,forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_2ú
$forward_simple_rnn_2/strided_slice_2StridedSlice"forward_simple_rnn_2/transpose:y:03forward_simple_rnn_2/strided_slice_2/stack:output:05forward_simple_rnn_2/strided_slice_2/stack_1:output:05forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_2
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp
-forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMul-forward_simple_rnn_2/strided_slice_2:output:0Dforward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/simple_rnn_cell_3/MatMul
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAdd7forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0Eforward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02@
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMul#forward_simple_rnn_2/zeros:output:0Fforward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1
*forward_simple_rnn_2/simple_rnn_cell_3/addAddV27forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:09forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/simple_rnn_cell_3/addÄ
+forward_simple_rnn_2/simple_rnn_cell_3/TanhTanh.forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+forward_simple_rnn_2/simple_rnn_cell_3/Tanh¹
2forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2forward_simple_rnn_2/TensorArrayV2_1/element_shape
$forward_simple_rnn_2/TensorArrayV2_1TensorListReserve;forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$forward_simple_rnn_2/TensorArrayV2_1x
forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
forward_simple_rnn_2/time©
-forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/while/maximum_iterations
'forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'forward_simple_rnn_2/while/loop_counter
forward_simple_rnn_2/whileWhile0forward_simple_rnn_2/while/loop_counter:output:06forward_simple_rnn_2/while/maximum_iterations:output:0"forward_simple_rnn_2/time:output:0-forward_simple_rnn_2/TensorArrayV2_1:handle:0#forward_simple_rnn_2/zeros:output:0-forward_simple_rnn_2/strided_slice_1:output:0Lforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourceFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'forward_simple_rnn_2_while_body_1306615*3
cond+R)
'forward_simple_rnn_2_while_cond_1306614*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
forward_simple_rnn_2/whileß
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape¼
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_2/while:output:3Nforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack«
*forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/strided_slice_3/stack¦
,forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,forward_simple_rnn_2/strided_slice_3/stack_1¦
,forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_3/stack_2
$forward_simple_rnn_2/strided_slice_3StridedSlice@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_2/strided_slice_3/stack:output:05forward_simple_rnn_2/strided_slice_3/stack_1:output:05forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_3£
%forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%forward_simple_rnn_2/transpose_1/permù
 forward_simple_rnn_2/transpose_1	Transpose@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 forward_simple_rnn_2/transpose_1p
backward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape 
)backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)backward_simple_rnn_2/strided_slice/stack¤
+backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_1¤
+backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_2æ
#backward_simple_rnn_2/strided_sliceStridedSlice$backward_simple_rnn_2/Shape:output:02backward_simple_rnn_2/strided_slice/stack:output:04backward_simple_rnn_2/strided_slice/stack_1:output:04backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#backward_simple_rnn_2/strided_slice
$backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$backward_simple_rnn_2/zeros/packed/1Û
"backward_simple_rnn_2/zeros/packedPack,backward_simple_rnn_2/strided_slice:output:0-backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"backward_simple_rnn_2/zeros/packed
!backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!backward_simple_rnn_2/zeros/ConstÍ
backward_simple_rnn_2/zerosFill+backward_simple_rnn_2/zeros/packed:output:0*backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
backward_simple_rnn_2/zeros¡
$backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$backward_simple_rnn_2/transpose/perm¼
backward_simple_rnn_2/transpose	Transposeinputs-backward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/transpose
backward_simple_rnn_2/Shape_1Shape#backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape_1¤
+backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_1/stack¨
-backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_1¨
-backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_2ò
%backward_simple_rnn_2/strided_slice_1StridedSlice&backward_simple_rnn_2/Shape_1:output:04backward_simple_rnn_2/strided_slice_1/stack:output:06backward_simple_rnn_2/strided_slice_1/stack_1:output:06backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_1±
1backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/TensorArrayV2/element_shape
#backward_simple_rnn_2/TensorArrayV2TensorListReserve:backward_simple_rnn_2/TensorArrayV2/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#backward_simple_rnn_2/TensorArrayV2
$backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2&
$backward_simple_rnn_2/ReverseV2/axisÙ
backward_simple_rnn_2/ReverseV2	ReverseV2#backward_simple_rnn_2/transpose:y:0-backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/ReverseV2ë
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÕ
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_2/ReverseV2:output:0Tbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¤
+backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_2/stack¨
-backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_1¨
-backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_2
%backward_simple_rnn_2/strided_slice_2StridedSlice#backward_simple_rnn_2/transpose:y:04backward_simple_rnn_2/strided_slice_2/stack:output:06backward_simple_rnn_2/strided_slice_2/stack_1:output:06backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_2
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02?
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp
.backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMul.backward_simple_rnn_2/strided_slice_2:output:0Ebackward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/simple_rnn_cell_4/MatMul
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¡
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAdd8backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0Fbackward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02A
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMul$backward_simple_rnn_2/zeros:output:0Gbackward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1
+backward_simple_rnn_2/simple_rnn_cell_4/addAddV28backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0:backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/simple_rnn_cell_4/addÇ
,backward_simple_rnn_2/simple_rnn_cell_4/TanhTanh/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,backward_simple_rnn_2/simple_rnn_cell_4/Tanh»
3backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3backward_simple_rnn_2/TensorArrayV2_1/element_shape
%backward_simple_rnn_2/TensorArrayV2_1TensorListReserve<backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%backward_simple_rnn_2/TensorArrayV2_1z
backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
backward_simple_rnn_2/time«
.backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/while/maximum_iterations
(backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(backward_simple_rnn_2/while/loop_counter
backward_simple_rnn_2/whileWhile1backward_simple_rnn_2/while/loop_counter:output:07backward_simple_rnn_2/while/maximum_iterations:output:0#backward_simple_rnn_2/time:output:0.backward_simple_rnn_2/TensorArrayV2_1:handle:0$backward_simple_rnn_2/zeros:output:0.backward_simple_rnn_2/strided_slice_1:output:0Mbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourceHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *4
body,R*
(backward_simple_rnn_2_while_body_1306721*4
cond,R*
(backward_simple_rnn_2_while_cond_1306720*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
backward_simple_rnn_2/whileá
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_2/while:output:3Obackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack­
+backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/strided_slice_3/stack¨
-backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-backward_simple_rnn_2/strided_slice_3/stack_1¨
-backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_3/stack_2
%backward_simple_rnn_2/strided_slice_3StridedSliceAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_2/strided_slice_3/stack:output:06backward_simple_rnn_2/strided_slice_3/stack_1:output:06backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_3¥
&backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&backward_simple_rnn_2/transpose_1/permý
!backward_simple_rnn_2/transpose_1	TransposeAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!backward_simple_rnn_2/transpose_1j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2%backward_simple_rnn_2/transpose_1:y:0ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	ReverseV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis«
concatConcatV2$forward_simple_rnn_2/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
concatn
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp?^backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>^backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp@^backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp^backward_simple_rnn_2/while>^forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=^forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp?^forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp^forward_simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2:
backward_simple_rnn_2/whilebackward_simple_rnn_2/while2~
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp28
forward_simple_rnn_2/whileforward_simple_rnn_2/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­j
ì
Fsequential_10_bidirectional_3_backward_simple_rnn_2_while_body_1302478
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_loop_counter
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_maximum_iterationsI
Esequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholderK
Gsequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholder_1K
Gsequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholder_2
sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_strided_slice_1_0À
»sequential_10_bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0~
lsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:{
msequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:
nsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:F
Bsequential_10_bidirectional_3_backward_simple_rnn_2_while_identityH
Dsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity_1H
Dsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity_2H
Dsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity_3H
Dsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity_4
}sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_strided_slice_1¾
¹sequential_10_bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor|
jsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:y
ksequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:~
lsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢bsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢asequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢csequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp«
ksequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2m
ksequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape
]sequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem»sequential_10_bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0Esequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholdertsequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02_
]sequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemó
asequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOplsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02c
asequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpµ
Rsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMuldsequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0isequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
Rsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulò
bsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpmsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02d
bsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp±
Ssequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAdd\sequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0jsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Ssequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddù
csequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpnsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02e
csequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Tsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMulGsequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholder_2ksequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1
Osequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2\sequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0^sequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Osequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/add³
Psequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanhSsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
Psequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanhè
^sequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemGsequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholder_1Esequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholderTsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02`
^sequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemÄ
?sequential_10/bidirectional_3/backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_10/bidirectional_3/backward_simple_rnn_2/while/add/y¹
=sequential_10/bidirectional_3/backward_simple_rnn_2/while/addAddV2Esequential_10_bidirectional_3_backward_simple_rnn_2_while_placeholderHsequential_10/bidirectional_3/backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2?
=sequential_10/bidirectional_3/backward_simple_rnn_2/while/addÈ
Asequential_10/bidirectional_3/backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_10/bidirectional_3/backward_simple_rnn_2/while/add_1/yû
?sequential_10/bidirectional_3/backward_simple_rnn_2/while/add_1AddV2sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_loop_counterJsequential_10/bidirectional_3/backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2A
?sequential_10/bidirectional_3/backward_simple_rnn_2/while/add_1»
Bsequential_10/bidirectional_3/backward_simple_rnn_2/while/IdentityIdentityCsequential_10/bidirectional_3/backward_simple_rnn_2/while/add_1:z:0?^sequential_10/bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2D
Bsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity
Dsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_1Identitysequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_while_maximum_iterations?^sequential_10/bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2F
Dsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_1½
Dsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_2IdentityAsequential_10/bidirectional_3/backward_simple_rnn_2/while/add:z:0?^sequential_10/bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2F
Dsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_2ê
Dsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_3Identitynsequential_10/bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_10/bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2F
Dsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_3á
Dsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_4IdentityTsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0?^sequential_10/bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2F
Dsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_4ñ
>sequential_10/bidirectional_3/backward_simple_rnn_2/while/NoOpNoOpc^sequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpb^sequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpd^sequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2@
>sequential_10/bidirectional_3/backward_simple_rnn_2/while/NoOp"
Bsequential_10_bidirectional_3_backward_simple_rnn_2_while_identityKsequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity:output:0"
Dsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity_1Msequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_1:output:0"
Dsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity_2Msequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_2:output:0"
Dsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity_3Msequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_3:output:0"
Dsequential_10_bidirectional_3_backward_simple_rnn_2_while_identity_4Msequential_10/bidirectional_3/backward_simple_rnn_2/while/Identity_4:output:0"
}sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_strided_slice_1sequential_10_bidirectional_3_backward_simple_rnn_2_while_sequential_10_bidirectional_3_backward_simple_rnn_2_strided_slice_1_0"Ü
ksequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resourcemsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"Þ
lsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcensequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"Ú
jsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resourcelsequential_10_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"ú
¹sequential_10_bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor»sequential_10_bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_10_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2È
bsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpbsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2Æ
asequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpasequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2Ê
csequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpcsequential_10/bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¤=
¨
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1303411

inputs+
simple_rnn_cell_4_1303336:'
simple_rnn_cell_4_1303338:+
simple_rnn_cell_4_1303340:
identity¢)simple_rnn_cell_4/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2
ReverseV2/axis
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeý
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_1303336simple_rnn_cell_4_1303338simple_rnn_cell_4_1303340*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_13032832+
)simple_rnn_cell_4/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_1303336simple_rnn_cell_4_1303338simple_rnn_cell_4_1303340*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1303348*
condR
while_cond_1303347*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷Z
Á
8bidirectional_3_backward_simple_rnn_2_while_body_1305734h
dbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_loop_countern
jbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_maximum_iterations;
7bidirectional_3_backward_simple_rnn_2_while_placeholder=
9bidirectional_3_backward_simple_rnn_2_while_placeholder_1=
9bidirectional_3_backward_simple_rnn_2_while_placeholder_2g
cbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_strided_slice_1_0¤
bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0p
^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:m
_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:r
`bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:8
4bidirectional_3_backward_simple_rnn_2_while_identity:
6bidirectional_3_backward_simple_rnn_2_while_identity_1:
6bidirectional_3_backward_simple_rnn_2_while_identity_2:
6bidirectional_3_backward_simple_rnn_2_while_identity_3:
6bidirectional_3_backward_simple_rnn_2_while_identity_4e
abidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_strided_slice_1¢
bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorn
\bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:k
]bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:p
^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢Tbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Sbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Ubidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
]bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2_
]bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape¸
Obidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_07bidirectional_3_backward_simple_rnn_2_while_placeholderfbidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02Q
Obidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemÉ
Sbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02U
Sbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpý
Dbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMulVbidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0[bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2F
Dbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulÈ
Tbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02V
Tbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpù
Ebidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAddNbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0\bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2G
Ebidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddÏ
Ubidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp`bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02W
Ubidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpæ
Fbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMul9bidirectional_3_backward_simple_rnn_2_while_placeholder_2]bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2H
Fbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1ã
Abidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2Nbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0Pbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Abidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/add
Bbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanhEbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
Bbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh¢
Pbidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9bidirectional_3_backward_simple_rnn_2_while_placeholder_17bidirectional_3_backward_simple_rnn_2_while_placeholderFbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02R
Pbidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem¨
1bidirectional_3/backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :23
1bidirectional_3/backward_simple_rnn_2/while/add/y
/bidirectional_3/backward_simple_rnn_2/while/addAddV27bidirectional_3_backward_simple_rnn_2_while_placeholder:bidirectional_3/backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 21
/bidirectional_3/backward_simple_rnn_2/while/add¬
3bidirectional_3/backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :25
3bidirectional_3/backward_simple_rnn_2/while/add_1/y´
1bidirectional_3/backward_simple_rnn_2/while/add_1AddV2dbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_loop_counter<bidirectional_3/backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 23
1bidirectional_3/backward_simple_rnn_2/while/add_1
4bidirectional_3/backward_simple_rnn_2/while/IdentityIdentity5bidirectional_3/backward_simple_rnn_2/while/add_1:z:01^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 26
4bidirectional_3/backward_simple_rnn_2/while/Identity¼
6bidirectional_3/backward_simple_rnn_2/while/Identity_1Identityjbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_maximum_iterations1^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 28
6bidirectional_3/backward_simple_rnn_2/while/Identity_1
6bidirectional_3/backward_simple_rnn_2/while/Identity_2Identity3bidirectional_3/backward_simple_rnn_2/while/add:z:01^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 28
6bidirectional_3/backward_simple_rnn_2/while/Identity_2²
6bidirectional_3/backward_simple_rnn_2/while/Identity_3Identity`bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 28
6bidirectional_3/backward_simple_rnn_2/while/Identity_3©
6bidirectional_3/backward_simple_rnn_2/while/Identity_4IdentityFbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:01^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6bidirectional_3/backward_simple_rnn_2/while/Identity_4«
0bidirectional_3/backward_simple_rnn_2/while/NoOpNoOpU^bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpT^bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpV^bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 22
0bidirectional_3/backward_simple_rnn_2/while/NoOp"È
abidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_strided_slice_1cbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_strided_slice_1_0"u
4bidirectional_3_backward_simple_rnn_2_while_identity=bidirectional_3/backward_simple_rnn_2/while/Identity:output:0"y
6bidirectional_3_backward_simple_rnn_2_while_identity_1?bidirectional_3/backward_simple_rnn_2/while/Identity_1:output:0"y
6bidirectional_3_backward_simple_rnn_2_while_identity_2?bidirectional_3/backward_simple_rnn_2/while/Identity_2:output:0"y
6bidirectional_3_backward_simple_rnn_2_while_identity_3?bidirectional_3/backward_simple_rnn_2/while/Identity_3:output:0"y
6bidirectional_3_backward_simple_rnn_2_while_identity_4?bidirectional_3/backward_simple_rnn_2/while/Identity_4:output:0"À
]bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"Â
^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource`bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"¾
\bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"Â
bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2¬
Tbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpTbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2ª
Sbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpSbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2®
Ubidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpUbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
²
î
7bidirectional_3_forward_simple_rnn_2_while_cond_1305362f
bbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_loop_counterl
hbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_maximum_iterations:
6bidirectional_3_forward_simple_rnn_2_while_placeholder<
8bidirectional_3_forward_simple_rnn_2_while_placeholder_1<
8bidirectional_3_forward_simple_rnn_2_while_placeholder_2h
dbidirectional_3_forward_simple_rnn_2_while_less_bidirectional_3_forward_simple_rnn_2_strided_slice_1
{bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_cond_1305362___redundant_placeholder0
{bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_cond_1305362___redundant_placeholder1
{bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_cond_1305362___redundant_placeholder2
{bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_cond_1305362___redundant_placeholder37
3bidirectional_3_forward_simple_rnn_2_while_identity
©
/bidirectional_3/forward_simple_rnn_2/while/LessLess6bidirectional_3_forward_simple_rnn_2_while_placeholderdbidirectional_3_forward_simple_rnn_2_while_less_bidirectional_3_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 21
/bidirectional_3/forward_simple_rnn_2/while/LessÌ
3bidirectional_3/forward_simple_rnn_2/while/IdentityIdentity3bidirectional_3/forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 25
3bidirectional_3/forward_simple_rnn_2/while/Identity"s
3bidirectional_3_forward_simple_rnn_2_while_identity<bidirectional_3/forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÿ
¯
while_cond_1307695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1307695___redundant_placeholder05
1while_while_cond_1307695___redundant_placeholder15
1while_while_cond_1307695___redundant_placeholder25
1while_while_cond_1307695___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÿ
¯
while_cond_1303954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1303954___redundant_placeholder05
1while_while_cond_1303954___redundant_placeholder15
1while_while_cond_1303954___redundant_placeholder25
1while_while_cond_1303954___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
â
¾
'forward_simple_rnn_2_while_cond_1306396F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2H
Dforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306396___redundant_placeholder0_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306396___redundant_placeholder1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306396___redundant_placeholder2_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1306396___redundant_placeholder3'
#forward_simple_rnn_2_while_identity
Ù
forward_simple_rnn_2/while/LessLess&forward_simple_rnn_2_while_placeholderDforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2!
forward_simple_rnn_2/while/Less
#forward_simple_rnn_2/while/IdentityIdentity#forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identity"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ê#
Ø
while_body_1303348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
!while_simple_rnn_cell_4_1303370_0:/
!while_simple_rnn_cell_4_1303372_0:3
!while_simple_rnn_cell_4_1303374_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_4_1303370:-
while_simple_rnn_cell_4_1303372:1
while_simple_rnn_cell_4_1303374:¢/while/simple_rnn_cell_4/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÙ
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_4_1303370_0!while_simple_rnn_cell_4_1303372_0!while_simple_rnn_cell_4_1303374_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_130328321
/while/simple_rnn_cell_4/StatefulPartitionedCallü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3©
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_4_1303370!while_simple_rnn_cell_4_1303370_0"D
while_simple_rnn_cell_4_1303372!while_simple_rnn_cell_4_1303372_0"D
while_simple_rnn_cell_4_1303374!while_simple_rnn_cell_4_1303374_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ð(

J__inference_sequential_10_layer_call_and_return_conditional_losses_1304619

inputs)
bidirectional_3_1304502:%
bidirectional_3_1304504:)
bidirectional_3_1304506:)
bidirectional_3_1304508:%
bidirectional_3_1304510:)
bidirectional_3_1304512:&
conv1d_7_1304532: @
conv1d_7_1304534:@&
conv1d_8_1304554:@ 
conv1d_8_1304556: "
dense_30_1304579: @
dense_30_1304581:@"
dense_31_1304596:@ 
dense_31_1304598: "
dense_32_1304613: 
dense_32_1304615:
identity¢'bidirectional_3/StatefulPartitionedCall¢ conv1d_7/StatefulPartitionedCall¢ conv1d_8/StatefulPartitionedCall¢ dense_30/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCall¢ dense_32/StatefulPartitionedCallª
'bidirectional_3/StatefulPartitionedCallStatefulPartitionedCallinputsbidirectional_3_1304502bidirectional_3_1304504bidirectional_3_1304506bidirectional_3_1304508bidirectional_3_1304510bidirectional_3_1304512*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_13045012)
'bidirectional_3/StatefulPartitionedCallÅ
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_3/StatefulPartitionedCall:output:0conv1d_7_1304532conv1d_7_1304534*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_13045312"
 conv1d_7/StatefulPartitionedCall¾
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0conv1d_8_1304554conv1d_8_1304556*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_13045532"
 conv1d_8/StatefulPartitionedCallþ
flatten_10/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_13045652
flatten_10/PartitionedCall´
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_30_1304579dense_30_1304581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_13045782"
 dense_30/StatefulPartitionedCallº
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_1304596dense_31_1304598*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_13045952"
 dense_31/StatefulPartitionedCallº
 dense_32/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_32_1304613dense_32_1304615*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_13046122"
 dense_32/StatefulPartitionedCall
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity§
NoOpNoOp(^bidirectional_3/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^conv1d_8/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2R
'bidirectional_3/StatefulPartitionedCall'bidirectional_3/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
¯
while_cond_1307213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1307213___redundant_placeholder05
1while_while_cond_1307213___redundant_placeholder15
1while_while_cond_1307213___redundant_placeholder25
1while_while_cond_1307213___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¬

E__inference_conv1d_8_layer_call_and_return_conditional_losses_1304553

inputsA
+conv1d_expanddims_1_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d/ExpandDims_1¶
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¢
é
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_1303283

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityg

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates

ö
E__inference_dense_32_layer_call_and_return_conditional_losses_1306912

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¤=
¨
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1303239

inputs+
simple_rnn_cell_4_1303164:'
simple_rnn_cell_4_1303166:+
simple_rnn_cell_4_1303168:
identity¢)simple_rnn_cell_4/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2
ReverseV2/axis
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeý
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_1303164simple_rnn_cell_4_1303166simple_rnn_cell_4_1303168*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_13031632+
)simple_rnn_cell_4/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_1303164simple_rnn_cell_4_1303166simple_rnn_cell_4_1303168*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1303176*
condR
while_cond_1303175*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
À
6__inference_forward_simple_rnn_2_layer_call_fn_1306956

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_13041512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥H
À
'forward_simple_rnn_2_while_body_1306615F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2E
Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0
}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:\
Nforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:a
Oforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:'
#forward_simple_rnn_2_while_identity)
%forward_simple_rnn_2_while_identity_1)
%forward_simple_rnn_2_while_identity_2)
%forward_simple_rnn_2_while_identity_3)
%forward_simple_rnn_2_while_identity_4C
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:Z
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpí
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_2_while_placeholderUforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02D
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¹
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulEforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02E
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpµ
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAdd=forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0Kforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02F
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMul(forward_simple_rnn_2_while_placeholder_2Lforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1
0forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2=forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0?forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/while/simple_rnn_cell_3/addÖ
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanh4forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhÍ
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_2_while_placeholder_1&forward_simple_rnn_2_while_placeholder5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02A
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
 forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 forward_simple_rnn_2/while/add/y½
forward_simple_rnn_2/while/addAddV2&forward_simple_rnn_2_while_placeholder)forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2 
forward_simple_rnn_2/while/add
"forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"forward_simple_rnn_2/while/add_1/yß
 forward_simple_rnn_2/while/add_1AddV2Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counter+forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 forward_simple_rnn_2/while/add_1¿
#forward_simple_rnn_2/while/IdentityIdentity$forward_simple_rnn_2/while/add_1:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identityç
%forward_simple_rnn_2/while/Identity_1IdentityHforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_1Á
%forward_simple_rnn_2/while/Identity_2Identity"forward_simple_rnn_2/while/add:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_2î
%forward_simple_rnn_2/while/Identity_3IdentityOforward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_3å
%forward_simple_rnn_2/while/Identity_4Identity5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0 ^forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%forward_simple_rnn_2/while/Identity_4Ö
forward_simple_rnn_2/while/NoOpNoOpD^forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpC^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpE^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
forward_simple_rnn_2/while/NoOp"
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0"W
%forward_simple_rnn_2_while_identity_1.forward_simple_rnn_2/while/Identity_1:output:0"W
%forward_simple_rnn_2_while_identity_2.forward_simple_rnn_2/while/Identity_2:output:0"W
%forward_simple_rnn_2_while_identity_3.forward_simple_rnn_2/while/Identity_3:output:0"W
%forward_simple_rnn_2_while_identity_4.forward_simple_rnn_2/while/Identity_4:output:0"
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resourceNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resourceMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"ü
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpCforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpBforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpDforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÿ
¯
while_cond_1304084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1304084___redundant_placeholder05
1while_while_cond_1304084___redundant_placeholder15
1while_while_cond_1304084___redundant_placeholder25
1while_while_cond_1304084___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ó
	
8bidirectional_3_backward_simple_rnn_2_while_cond_1305468h
dbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_loop_countern
jbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_maximum_iterations;
7bidirectional_3_backward_simple_rnn_2_while_placeholder=
9bidirectional_3_backward_simple_rnn_2_while_placeholder_1=
9bidirectional_3_backward_simple_rnn_2_while_placeholder_2j
fbidirectional_3_backward_simple_rnn_2_while_less_bidirectional_3_backward_simple_rnn_2_strided_slice_1
}bidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_cond_1305468___redundant_placeholder0
}bidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_cond_1305468___redundant_placeholder1
}bidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_cond_1305468___redundant_placeholder2
}bidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_cond_1305468___redundant_placeholder38
4bidirectional_3_backward_simple_rnn_2_while_identity
®
0bidirectional_3/backward_simple_rnn_2/while/LessLess7bidirectional_3_backward_simple_rnn_2_while_placeholderfbidirectional_3_backward_simple_rnn_2_while_less_bidirectional_3_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 22
0bidirectional_3/backward_simple_rnn_2/while/LessÏ
4bidirectional_3/backward_simple_rnn_2/while/IdentityIdentity4bidirectional_3/backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 26
4bidirectional_3/backward_simple_rnn_2/while/Identity"u
4bidirectional_3_backward_simple_rnn_2_while_identity=bidirectional_3/backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
í
©
/__inference_sequential_10_layer_call_fn_1305116
input_11
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: @
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_13050442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_11
Ö(

J__inference_sequential_10_layer_call_and_return_conditional_losses_1305202
input_11)
bidirectional_3_1305162:%
bidirectional_3_1305164:)
bidirectional_3_1305166:)
bidirectional_3_1305168:%
bidirectional_3_1305170:)
bidirectional_3_1305172:&
conv1d_7_1305175: @
conv1d_7_1305177:@&
conv1d_8_1305180:@ 
conv1d_8_1305182: "
dense_30_1305186: @
dense_30_1305188:@"
dense_31_1305191:@ 
dense_31_1305193: "
dense_32_1305196: 
dense_32_1305198:
identity¢'bidirectional_3/StatefulPartitionedCall¢ conv1d_7/StatefulPartitionedCall¢ conv1d_8/StatefulPartitionedCall¢ dense_30/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCall¢ dense_32/StatefulPartitionedCall¬
'bidirectional_3/StatefulPartitionedCallStatefulPartitionedCallinput_11bidirectional_3_1305162bidirectional_3_1305164bidirectional_3_1305166bidirectional_3_1305168bidirectional_3_1305170bidirectional_3_1305172*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_13049472)
'bidirectional_3/StatefulPartitionedCallÅ
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_3/StatefulPartitionedCall:output:0conv1d_7_1305175conv1d_7_1305177*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_13045312"
 conv1d_7/StatefulPartitionedCall¾
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0conv1d_8_1305180conv1d_8_1305182*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_13045532"
 conv1d_8/StatefulPartitionedCallþ
flatten_10/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_13045652
flatten_10/PartitionedCall´
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_30_1305186dense_30_1305188*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_13045782"
 dense_30/StatefulPartitionedCallº
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_1305191dense_31_1305193*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_13045952"
 dense_31/StatefulPartitionedCallº
 dense_32/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_32_1305196dense_32_1305198*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_13046122"
 dense_32/StatefulPartitionedCall
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity§
NoOpNoOp(^bidirectional_3/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^conv1d_8/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2R
'bidirectional_3/StatefulPartitionedCall'bidirectional_3/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_11
ø

Û
3__inference_simple_rnn_cell_4_layer_call_fn_1307962

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_13032832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ÿ
¯
while_cond_1307805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1307805___redundant_placeholder05
1while_while_cond_1307805___redundant_placeholder15
1while_while_cond_1307805___redundant_placeholder25
1while_while_cond_1307805___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÿ
¯
while_cond_1303175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1303175___redundant_placeholder05
1while_while_cond_1303175___redundant_placeholder15
1while_while_cond_1303175___redundant_placeholder25
1while_while_cond_1303175___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
óH
Å
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307872

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:?
1simple_rnn_cell_4_biasadd_readvariableop_resource:D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2
ReverseV2/axis
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ27
5TensorArrayUnstack/TensorListFromTensor/element_shapeý
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_4/MatMul/ReadVariableOp»
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMulÂ
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_4/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/BiasAddÉ
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_4/MatMul_1/ReadVariableOp·
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMul_1³
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/add
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1307806*
condR
while_cond_1307805*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥H
À
'forward_simple_rnn_2_while_body_1304325F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2E
Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0
}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:\
Nforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:a
Oforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:'
#forward_simple_rnn_2_while_identity)
%forward_simple_rnn_2_while_identity_1)
%forward_simple_rnn_2_while_identity_2)
%forward_simple_rnn_2_while_identity_3)
%forward_simple_rnn_2_while_identity_4C
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:Z
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpí
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_2_while_placeholderUforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02D
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¹
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulEforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02E
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpµ
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAdd=forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0Kforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02F
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMul(forward_simple_rnn_2_while_placeholder_2Lforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1
0forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2=forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0?forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/while/simple_rnn_cell_3/addÖ
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanh4forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhÍ
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_2_while_placeholder_1&forward_simple_rnn_2_while_placeholder5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02A
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
 forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 forward_simple_rnn_2/while/add/y½
forward_simple_rnn_2/while/addAddV2&forward_simple_rnn_2_while_placeholder)forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2 
forward_simple_rnn_2/while/add
"forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"forward_simple_rnn_2/while/add_1/yß
 forward_simple_rnn_2/while/add_1AddV2Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counter+forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 forward_simple_rnn_2/while/add_1¿
#forward_simple_rnn_2/while/IdentityIdentity$forward_simple_rnn_2/while/add_1:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identityç
%forward_simple_rnn_2/while/Identity_1IdentityHforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_1Á
%forward_simple_rnn_2/while/Identity_2Identity"forward_simple_rnn_2/while/add:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_2î
%forward_simple_rnn_2/while/Identity_3IdentityOforward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_3å
%forward_simple_rnn_2/while/Identity_4Identity5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0 ^forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%forward_simple_rnn_2/while/Identity_4Ö
forward_simple_rnn_2/while/NoOpNoOpD^forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpC^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpE^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
forward_simple_rnn_2/while/NoOp"
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0"W
%forward_simple_rnn_2_while_identity_1.forward_simple_rnn_2/while/Identity_1:output:0"W
%forward_simple_rnn_2_while_identity_2.forward_simple_rnn_2/while/Identity_2:output:0"W
%forward_simple_rnn_2_while_identity_3.forward_simple_rnn_2/while/Identity_3:output:0"W
%forward_simple_rnn_2_while_identity_4.forward_simple_rnn_2/while/Identity_4:output:0"
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resourceNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resourceMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"ü
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpCforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpBforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpDforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¨
ë
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1307934

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityg

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
É
Â
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306355
inputs_0W
Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:T
Fforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:Y
Gforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:X
Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:U
Gbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:Z
Hbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢backward_simple_rnn_2/while¢=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢forward_simple_rnn_2/whilep
forward_simple_rnn_2/ShapeShapeinputs_0*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape
(forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(forward_simple_rnn_2/strided_slice/stack¢
*forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_1¢
*forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_2à
"forward_simple_rnn_2/strided_sliceStridedSlice#forward_simple_rnn_2/Shape:output:01forward_simple_rnn_2/strided_slice/stack:output:03forward_simple_rnn_2/strided_slice/stack_1:output:03forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"forward_simple_rnn_2/strided_slice
#forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#forward_simple_rnn_2/zeros/packed/1×
!forward_simple_rnn_2/zeros/packedPack+forward_simple_rnn_2/strided_slice:output:0,forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!forward_simple_rnn_2/zeros/packed
 forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 forward_simple_rnn_2/zeros/ConstÉ
forward_simple_rnn_2/zerosFill*forward_simple_rnn_2/zeros/packed:output:0)forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
forward_simple_rnn_2/zeros
#forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#forward_simple_rnn_2/transpose/permÍ
forward_simple_rnn_2/transpose	Transposeinputs_0,forward_simple_rnn_2/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2 
forward_simple_rnn_2/transpose
forward_simple_rnn_2/Shape_1Shape"forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape_1¢
*forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_1/stack¦
,forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_1¦
,forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_2ì
$forward_simple_rnn_2/strided_slice_1StridedSlice%forward_simple_rnn_2/Shape_1:output:03forward_simple_rnn_2/strided_slice_1/stack:output:05forward_simple_rnn_2/strided_slice_1/stack_1:output:05forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_1¯
0forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/TensorArrayV2/element_shape
"forward_simple_rnn_2/TensorArrayV2TensorListReserve9forward_simple_rnn_2/TensorArrayV2/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"forward_simple_rnn_2/TensorArrayV2é
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2L
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_2/transpose:y:0Sforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¢
*forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_2/stack¦
,forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_1¦
,forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_2
$forward_simple_rnn_2/strided_slice_2StridedSlice"forward_simple_rnn_2/transpose:y:03forward_simple_rnn_2/strided_slice_2/stack:output:05forward_simple_rnn_2/strided_slice_2/stack_1:output:05forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_2
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp
-forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMul-forward_simple_rnn_2/strided_slice_2:output:0Dforward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/simple_rnn_cell_3/MatMul
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAdd7forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0Eforward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02@
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMul#forward_simple_rnn_2/zeros:output:0Fforward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1
*forward_simple_rnn_2/simple_rnn_cell_3/addAddV27forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:09forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/simple_rnn_cell_3/addÄ
+forward_simple_rnn_2/simple_rnn_cell_3/TanhTanh.forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+forward_simple_rnn_2/simple_rnn_cell_3/Tanh¹
2forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2forward_simple_rnn_2/TensorArrayV2_1/element_shape
$forward_simple_rnn_2/TensorArrayV2_1TensorListReserve;forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$forward_simple_rnn_2/TensorArrayV2_1x
forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
forward_simple_rnn_2/time©
-forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/while/maximum_iterations
'forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'forward_simple_rnn_2/while/loop_counter
forward_simple_rnn_2/whileWhile0forward_simple_rnn_2/while/loop_counter:output:06forward_simple_rnn_2/while/maximum_iterations:output:0"forward_simple_rnn_2/time:output:0-forward_simple_rnn_2/TensorArrayV2_1:handle:0#forward_simple_rnn_2/zeros:output:0-forward_simple_rnn_2/strided_slice_1:output:0Lforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourceFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'forward_simple_rnn_2_while_body_1306179*3
cond+R)
'forward_simple_rnn_2_while_cond_1306178*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
forward_simple_rnn_2/whileß
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeÅ
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_2/while:output:3Nforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype029
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack«
*forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/strided_slice_3/stack¦
,forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,forward_simple_rnn_2/strided_slice_3/stack_1¦
,forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_3/stack_2
$forward_simple_rnn_2/strided_slice_3StridedSlice@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_2/strided_slice_3/stack:output:05forward_simple_rnn_2/strided_slice_3/stack_1:output:05forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_3£
%forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%forward_simple_rnn_2/transpose_1/perm
 forward_simple_rnn_2/transpose_1	Transpose@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_2/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 forward_simple_rnn_2/transpose_1r
backward_simple_rnn_2/ShapeShapeinputs_0*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape 
)backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)backward_simple_rnn_2/strided_slice/stack¤
+backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_1¤
+backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_2æ
#backward_simple_rnn_2/strided_sliceStridedSlice$backward_simple_rnn_2/Shape:output:02backward_simple_rnn_2/strided_slice/stack:output:04backward_simple_rnn_2/strided_slice/stack_1:output:04backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#backward_simple_rnn_2/strided_slice
$backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$backward_simple_rnn_2/zeros/packed/1Û
"backward_simple_rnn_2/zeros/packedPack,backward_simple_rnn_2/strided_slice:output:0-backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"backward_simple_rnn_2/zeros/packed
!backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!backward_simple_rnn_2/zeros/ConstÍ
backward_simple_rnn_2/zerosFill+backward_simple_rnn_2/zeros/packed:output:0*backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
backward_simple_rnn_2/zeros¡
$backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$backward_simple_rnn_2/transpose/permÐ
backward_simple_rnn_2/transpose	Transposeinputs_0-backward_simple_rnn_2/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/transpose
backward_simple_rnn_2/Shape_1Shape#backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape_1¤
+backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_1/stack¨
-backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_1¨
-backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_2ò
%backward_simple_rnn_2/strided_slice_1StridedSlice&backward_simple_rnn_2/Shape_1:output:04backward_simple_rnn_2/strided_slice_1/stack:output:06backward_simple_rnn_2/strided_slice_1/stack_1:output:06backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_1±
1backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/TensorArrayV2/element_shape
#backward_simple_rnn_2/TensorArrayV2TensorListReserve:backward_simple_rnn_2/TensorArrayV2/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#backward_simple_rnn_2/TensorArrayV2
$backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2&
$backward_simple_rnn_2/ReverseV2/axisë
backward_simple_rnn_2/ReverseV2	ReverseV2#backward_simple_rnn_2/transpose:y:0-backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/ReverseV2ë
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2M
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÕ
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_2/ReverseV2:output:0Tbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¤
+backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_2/stack¨
-backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_1¨
-backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_2
%backward_simple_rnn_2/strided_slice_2StridedSlice#backward_simple_rnn_2/transpose:y:04backward_simple_rnn_2/strided_slice_2/stack:output:06backward_simple_rnn_2/strided_slice_2/stack_1:output:06backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_2
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02?
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp
.backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMul.backward_simple_rnn_2/strided_slice_2:output:0Ebackward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/simple_rnn_cell_4/MatMul
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¡
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAdd8backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0Fbackward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02A
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMul$backward_simple_rnn_2/zeros:output:0Gbackward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1
+backward_simple_rnn_2/simple_rnn_cell_4/addAddV28backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0:backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/simple_rnn_cell_4/addÇ
,backward_simple_rnn_2/simple_rnn_cell_4/TanhTanh/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,backward_simple_rnn_2/simple_rnn_cell_4/Tanh»
3backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3backward_simple_rnn_2/TensorArrayV2_1/element_shape
%backward_simple_rnn_2/TensorArrayV2_1TensorListReserve<backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%backward_simple_rnn_2/TensorArrayV2_1z
backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
backward_simple_rnn_2/time«
.backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/while/maximum_iterations
(backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(backward_simple_rnn_2/while/loop_counter
backward_simple_rnn_2/whileWhile1backward_simple_rnn_2/while/loop_counter:output:07backward_simple_rnn_2/while/maximum_iterations:output:0#backward_simple_rnn_2/time:output:0.backward_simple_rnn_2/TensorArrayV2_1:handle:0$backward_simple_rnn_2/zeros:output:0.backward_simple_rnn_2/strided_slice_1:output:0Mbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourceHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *4
body,R*
(backward_simple_rnn_2_while_body_1306285*4
cond,R*
(backward_simple_rnn_2_while_cond_1306284*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
backward_simple_rnn_2/whileá
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeÉ
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_2/while:output:3Obackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack­
+backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/strided_slice_3/stack¨
-backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-backward_simple_rnn_2/strided_slice_3/stack_1¨
-backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_3/stack_2
%backward_simple_rnn_2/strided_slice_3StridedSliceAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_2/strided_slice_3/stack:output:06backward_simple_rnn_2/strided_slice_3/stack_1:output:06backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_3¥
&backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&backward_simple_rnn_2/transpose_1/perm
!backward_simple_rnn_2/transpose_1	TransposeAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!backward_simple_rnn_2/transpose_1j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis¢
	ReverseV2	ReverseV2%backward_simple_rnn_2/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis´
concatConcatV2$forward_simple_rnn_2/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
concatw
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp?^backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>^backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp@^backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp^backward_simple_rnn_2/while>^forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=^forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp?^forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp^forward_simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2:
backward_simple_rnn_2/whilebackward_simple_rnn_2/while2~
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp28
forward_simple_rnn_2/whileforward_simple_rnn_2/while:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ó
	
8bidirectional_3_backward_simple_rnn_2_while_cond_1305733h
dbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_loop_countern
jbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_maximum_iterations;
7bidirectional_3_backward_simple_rnn_2_while_placeholder=
9bidirectional_3_backward_simple_rnn_2_while_placeholder_1=
9bidirectional_3_backward_simple_rnn_2_while_placeholder_2j
fbidirectional_3_backward_simple_rnn_2_while_less_bidirectional_3_backward_simple_rnn_2_strided_slice_1
}bidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_cond_1305733___redundant_placeholder0
}bidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_cond_1305733___redundant_placeholder1
}bidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_cond_1305733___redundant_placeholder2
}bidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_cond_1305733___redundant_placeholder38
4bidirectional_3_backward_simple_rnn_2_while_identity
®
0bidirectional_3/backward_simple_rnn_2/while/LessLess7bidirectional_3_backward_simple_rnn_2_while_placeholderfbidirectional_3_backward_simple_rnn_2_while_less_bidirectional_3_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 22
0bidirectional_3/backward_simple_rnn_2/while/LessÏ
4bidirectional_3/backward_simple_rnn_2/while/IdentityIdentity4bidirectional_3/backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 26
4bidirectional_3/backward_simple_rnn_2/while/Identity"u
4bidirectional_3_backward_simple_rnn_2_while_identity=bidirectional_3/backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÿ
¯
while_cond_1307475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1307475___redundant_placeholder05
1while_while_cond_1307475___redundant_placeholder15
1while_while_cond_1307475___redundant_placeholder25
1while_while_cond_1307475___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¥;
§
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1302889

inputs+
simple_rnn_cell_3_1302814:'
simple_rnn_cell_3_1302816:+
simple_rnn_cell_3_1302818:
identity¢)simple_rnn_cell_3/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_3_1302814simple_rnn_cell_3_1302816simple_rnn_cell_3_1302818*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_13027632+
)simple_rnn_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_1302814simple_rnn_cell_3_1302816simple_rnn_cell_3_1302818*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1302826*
condR
while_cond_1302825*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp*^simple_rnn_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£1
É
while_body_1307322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÜ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpå
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_3/MatMulÖ
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_3/BiasAddÝ
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_3/MatMul_1Ë
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/add
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¢
é
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1302643

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityg

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
½	

1__inference_bidirectional_3_layer_call_fn_1305902

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_13045012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷Z
Á
8bidirectional_3_backward_simple_rnn_2_while_body_1305469h
dbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_loop_countern
jbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_maximum_iterations;
7bidirectional_3_backward_simple_rnn_2_while_placeholder=
9bidirectional_3_backward_simple_rnn_2_while_placeholder_1=
9bidirectional_3_backward_simple_rnn_2_while_placeholder_2g
cbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_strided_slice_1_0¤
bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0p
^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:m
_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:r
`bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:8
4bidirectional_3_backward_simple_rnn_2_while_identity:
6bidirectional_3_backward_simple_rnn_2_while_identity_1:
6bidirectional_3_backward_simple_rnn_2_while_identity_2:
6bidirectional_3_backward_simple_rnn_2_while_identity_3:
6bidirectional_3_backward_simple_rnn_2_while_identity_4e
abidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_strided_slice_1¢
bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorn
\bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:k
]bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:p
^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢Tbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Sbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Ubidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
]bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2_
]bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape¸
Obidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_07bidirectional_3_backward_simple_rnn_2_while_placeholderfbidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02Q
Obidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemÉ
Sbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02U
Sbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpý
Dbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMulVbidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0[bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2F
Dbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulÈ
Tbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02V
Tbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpù
Ebidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAddNbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0\bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2G
Ebidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddÏ
Ubidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp`bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02W
Ubidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpæ
Fbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMul9bidirectional_3_backward_simple_rnn_2_while_placeholder_2]bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2H
Fbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1ã
Abidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2Nbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0Pbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Abidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/add
Bbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanhEbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
Bbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh¢
Pbidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9bidirectional_3_backward_simple_rnn_2_while_placeholder_17bidirectional_3_backward_simple_rnn_2_while_placeholderFbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02R
Pbidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem¨
1bidirectional_3/backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :23
1bidirectional_3/backward_simple_rnn_2/while/add/y
/bidirectional_3/backward_simple_rnn_2/while/addAddV27bidirectional_3_backward_simple_rnn_2_while_placeholder:bidirectional_3/backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 21
/bidirectional_3/backward_simple_rnn_2/while/add¬
3bidirectional_3/backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :25
3bidirectional_3/backward_simple_rnn_2/while/add_1/y´
1bidirectional_3/backward_simple_rnn_2/while/add_1AddV2dbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_loop_counter<bidirectional_3/backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 23
1bidirectional_3/backward_simple_rnn_2/while/add_1
4bidirectional_3/backward_simple_rnn_2/while/IdentityIdentity5bidirectional_3/backward_simple_rnn_2/while/add_1:z:01^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 26
4bidirectional_3/backward_simple_rnn_2/while/Identity¼
6bidirectional_3/backward_simple_rnn_2/while/Identity_1Identityjbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_while_maximum_iterations1^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 28
6bidirectional_3/backward_simple_rnn_2/while/Identity_1
6bidirectional_3/backward_simple_rnn_2/while/Identity_2Identity3bidirectional_3/backward_simple_rnn_2/while/add:z:01^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 28
6bidirectional_3/backward_simple_rnn_2/while/Identity_2²
6bidirectional_3/backward_simple_rnn_2/while/Identity_3Identity`bidirectional_3/backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 28
6bidirectional_3/backward_simple_rnn_2/while/Identity_3©
6bidirectional_3/backward_simple_rnn_2/while/Identity_4IdentityFbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:01^bidirectional_3/backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6bidirectional_3/backward_simple_rnn_2/while/Identity_4«
0bidirectional_3/backward_simple_rnn_2/while/NoOpNoOpU^bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpT^bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpV^bidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 22
0bidirectional_3/backward_simple_rnn_2/while/NoOp"È
abidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_strided_slice_1cbidirectional_3_backward_simple_rnn_2_while_bidirectional_3_backward_simple_rnn_2_strided_slice_1_0"u
4bidirectional_3_backward_simple_rnn_2_while_identity=bidirectional_3/backward_simple_rnn_2/while/Identity:output:0"y
6bidirectional_3_backward_simple_rnn_2_while_identity_1?bidirectional_3/backward_simple_rnn_2/while/Identity_1:output:0"y
6bidirectional_3_backward_simple_rnn_2_while_identity_2?bidirectional_3/backward_simple_rnn_2/while/Identity_2:output:0"y
6bidirectional_3_backward_simple_rnn_2_while_identity_3?bidirectional_3/backward_simple_rnn_2/while/Identity_3:output:0"y
6bidirectional_3_backward_simple_rnn_2_while_identity_4?bidirectional_3/backward_simple_rnn_2/while/Identity_4:output:0"À
]bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"Â
^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource`bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"¾
\bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource^bidirectional_3_backward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"Â
bidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbidirectional_3_backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2¬
Tbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpTbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2ª
Sbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpSbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2®
Ubidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpUbidirectional_3/backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¨
ë
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_1307979

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityg

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
£1
É
while_body_1303687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÜ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpå
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_3/MatMulÖ
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_3/BiasAddÝ
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_3/MatMul_1Ë
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/add
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÿ
¯
while_cond_1307105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1307105___redundant_placeholder05
1while_while_cond_1307105___redundant_placeholder15
1while_while_cond_1307105___redundant_placeholder25
1while_while_cond_1307105___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
²I
ß
(backward_simple_rnn_2_while_body_1304431H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2G
Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0
backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:]
Obackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:b
Pbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:(
$backward_simple_rnn_2_while_identity*
&backward_simple_rnn_2_while_identity_1*
&backward_simple_rnn_2_while_identity_2*
&backward_simple_rnn_2_while_identity_3*
&backward_simple_rnn_2_while_identity_4E
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:[
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpï
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_2_while_placeholderVbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02E
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp½
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMulFbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02F
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¹
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAdd>backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0Lbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02G
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp¦
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMul)backward_simple_rnn_2_while_placeholder_2Mbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1£
1backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2>backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0@backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/while/simple_rnn_cell_4/addÙ
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanh5backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhÒ
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_2_while_placeholder_1'backward_simple_rnn_2_while_placeholder6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02B
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
!backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!backward_simple_rnn_2/while/add/yÁ
backward_simple_rnn_2/while/addAddV2'backward_simple_rnn_2_while_placeholder*backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2!
backward_simple_rnn_2/while/add
#backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#backward_simple_rnn_2/while/add_1/yä
!backward_simple_rnn_2/while/add_1AddV2Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counter,backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!backward_simple_rnn_2/while/add_1Ã
$backward_simple_rnn_2/while/IdentityIdentity%backward_simple_rnn_2/while/add_1:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identityì
&backward_simple_rnn_2/while/Identity_1IdentityJbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_1Å
&backward_simple_rnn_2/while/Identity_2Identity#backward_simple_rnn_2/while/add:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_2ò
&backward_simple_rnn_2/while/Identity_3IdentityPbackward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_3é
&backward_simple_rnn_2/while/Identity_4Identity6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0!^backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&backward_simple_rnn_2/while/Identity_4Û
 backward_simple_rnn_2/while/NoOpNoOpE^backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpD^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpF^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 backward_simple_rnn_2/while/NoOp"
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0"Y
&backward_simple_rnn_2_while_identity_1/backward_simple_rnn_2/while/Identity_1:output:0"Y
&backward_simple_rnn_2_while_identity_2/backward_simple_rnn_2/while/Identity_2:output:0"Y
&backward_simple_rnn_2_while_identity_3/backward_simple_rnn_2/while/Identity_3:output:0"Y
&backward_simple_rnn_2_while_identity_4/backward_simple_rnn_2/while/Identity_4:output:0" 
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resourceObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcePbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resourceNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpDbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpCbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpEbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÿ
Ñ
(backward_simple_rnn_2_while_cond_1304876H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2J
Fbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1304876___redundant_placeholder0a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1304876___redundant_placeholder1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1304876___redundant_placeholder2a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1304876___redundant_placeholder3(
$backward_simple_rnn_2_while_identity
Þ
 backward_simple_rnn_2/while/LessLess'backward_simple_rnn_2_while_placeholderFbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2"
 backward_simple_rnn_2/while/Less
$backward_simple_rnn_2/while/IdentityIdentity$backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identity"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
~
 
 __inference__traced_save_1308190
file_prefix.
*savev2_conv1d_7_kernel_read_readvariableop,
(savev2_conv1d_7_bias_read_readvariableop.
*savev2_conv1d_8_kernel_read_readvariableop,
(savev2_conv1d_8_bias_read_readvariableop.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop\
Xsavev2_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_read_readvariableopf
bsavev2_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_read_readvariableopZ
Vsavev2_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_read_readvariableop]
Ysavev2_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_read_readvariableopg
csavev2_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_read_readvariableop[
Wsavev2_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv1d_7_kernel_m_read_readvariableop3
/savev2_adam_conv1d_7_bias_m_read_readvariableop5
1savev2_adam_conv1d_8_kernel_m_read_readvariableop3
/savev2_adam_conv1d_8_bias_m_read_readvariableop5
1savev2_adam_dense_30_kernel_m_read_readvariableop3
/savev2_adam_dense_30_bias_m_read_readvariableop5
1savev2_adam_dense_31_kernel_m_read_readvariableop3
/savev2_adam_dense_31_bias_m_read_readvariableop5
1savev2_adam_dense_32_kernel_m_read_readvariableop3
/savev2_adam_dense_32_bias_m_read_readvariableopc
_savev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_m_read_readvariableopm
isavev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_m_read_readvariableopa
]savev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_m_read_readvariableopd
`savev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_m_read_readvariableopn
jsavev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableopb
^savev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_m_read_readvariableop5
1savev2_adam_conv1d_7_kernel_v_read_readvariableop3
/savev2_adam_conv1d_7_bias_v_read_readvariableop5
1savev2_adam_conv1d_8_kernel_v_read_readvariableop3
/savev2_adam_conv1d_8_bias_v_read_readvariableop5
1savev2_adam_dense_30_kernel_v_read_readvariableop3
/savev2_adam_dense_30_bias_v_read_readvariableop5
1savev2_adam_dense_31_kernel_v_read_readvariableop3
/savev2_adam_dense_31_bias_v_read_readvariableop5
1savev2_adam_dense_32_kernel_v_read_readvariableop3
/savev2_adam_dense_32_bias_v_read_readvariableopc
_savev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_v_read_readvariableopm
isavev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_v_read_readvariableopa
]savev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_v_read_readvariableopd
`savev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_v_read_readvariableopn
jsavev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableopb
^savev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*²
value¨B¥:B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesý
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÂ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_7_kernel_read_readvariableop(savev2_conv1d_7_bias_read_readvariableop*savev2_conv1d_8_kernel_read_readvariableop(savev2_conv1d_8_bias_read_readvariableop*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopXsavev2_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_read_readvariableopbsavev2_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_read_readvariableopVsavev2_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_read_readvariableopYsavev2_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_read_readvariableopcsavev2_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_read_readvariableopWsavev2_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv1d_7_kernel_m_read_readvariableop/savev2_adam_conv1d_7_bias_m_read_readvariableop1savev2_adam_conv1d_8_kernel_m_read_readvariableop/savev2_adam_conv1d_8_bias_m_read_readvariableop1savev2_adam_dense_30_kernel_m_read_readvariableop/savev2_adam_dense_30_bias_m_read_readvariableop1savev2_adam_dense_31_kernel_m_read_readvariableop/savev2_adam_dense_31_bias_m_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop_savev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_m_read_readvariableopisavev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_m_read_readvariableop]savev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_m_read_readvariableop`savev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_m_read_readvariableopjsavev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableop^savev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_m_read_readvariableop1savev2_adam_conv1d_7_kernel_v_read_readvariableop/savev2_adam_conv1d_7_bias_v_read_readvariableop1savev2_adam_conv1d_8_kernel_v_read_readvariableop/savev2_adam_conv1d_8_bias_v_read_readvariableop1savev2_adam_dense_30_kernel_v_read_readvariableop/savev2_adam_dense_30_bias_v_read_readvariableop1savev2_adam_dense_31_kernel_v_read_readvariableop/savev2_adam_dense_31_bias_v_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop_savev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_v_read_readvariableopisavev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_v_read_readvariableop]savev2_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_v_read_readvariableop`savev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_v_read_readvariableopjsavev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableop^savev2_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Ï
_input_shapes½
º: : @:@:@ : : @:@:@ : : :: : : : : ::::::: : : : : @:@:@ : : @:@:@ : : :::::::: @:@:@ : : @:@:@ : : :::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: @: 

_output_shapes
:@:($
"
_output_shapes
:@ : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::
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

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::
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
: :($
"
_output_shapes
: @: 

_output_shapes
:@:($
"
_output_shapes
:@ : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:$  

_output_shapes

:@ : !

_output_shapes
: :$" 

_output_shapes

: : #

_output_shapes
::$$ 

_output_shapes

::$% 

_output_shapes

:: &

_output_shapes
::$' 

_output_shapes

::$( 

_output_shapes

:: )

_output_shapes
::(*$
"
_output_shapes
: @: +

_output_shapes
:@:(,$
"
_output_shapes
:@ : -

_output_shapes
: :$. 

_output_shapes

: @: /

_output_shapes
:@:$0 

_output_shapes

:@ : 1

_output_shapes
: :$2 

_output_shapes

: : 3

_output_shapes
::$4 

_output_shapes

::$5 

_output_shapes

:: 6

_output_shapes
::$7 

_output_shapes

::$8 

_output_shapes

:: 9

_output_shapes
:::

_output_shapes
: 
1
É
while_body_1307106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpå
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_3/MatMulÖ
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_3/BiasAddÝ
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_3/MatMul_1Ë
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/add
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÿ
Ñ
(backward_simple_rnn_2_while_cond_1306284H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2J
Fbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306284___redundant_placeholder0a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306284___redundant_placeholder1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306284___redundant_placeholder2a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306284___redundant_placeholder3(
$backward_simple_rnn_2_while_identity
Þ
 backward_simple_rnn_2/while/LessLess'backward_simple_rnn_2_while_placeholderFbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2"
 backward_simple_rnn_2/while/Less
$backward_simple_rnn_2/while/IdentityIdentity$backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identity"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ê#
Ø
while_body_1302656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
!while_simple_rnn_cell_3_1302678_0:/
!while_simple_rnn_cell_3_1302680_0:3
!while_simple_rnn_cell_3_1302682_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_3_1302678:-
while_simple_rnn_cell_3_1302680:1
while_simple_rnn_cell_3_1302682:¢/while/simple_rnn_cell_3/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÙ
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_3_1302678_0!while_simple_rnn_cell_3_1302680_0!while_simple_rnn_cell_3_1302682_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_130264321
/while/simple_rnn_cell_3/StatefulPartitionedCallü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3©
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4

while/NoOpNoOp0^while/simple_rnn_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_3_1302678!while_simple_rnn_cell_3_1302678_0"D
while_simple_rnn_cell_3_1302680!while_simple_rnn_cell_3_1302680_0"D
while_simple_rnn_cell_3_1302682!while_simple_rnn_cell_3_1302682_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÿ
Ñ
(backward_simple_rnn_2_while_cond_1304430H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2J
Fbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1304430___redundant_placeholder0a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1304430___redundant_placeholder1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1304430___redundant_placeholder2a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1304430___redundant_placeholder3(
$backward_simple_rnn_2_while_identity
Þ
 backward_simple_rnn_2/while/LessLess'backward_simple_rnn_2_while_placeholderFbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2"
 backward_simple_rnn_2/while/Less
$backward_simple_rnn_2/while/IdentityIdentity$backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identity"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÿ
¯
while_cond_1303347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1303347___redundant_placeholder05
1while_while_cond_1303347___redundant_placeholder15
1while_while_cond_1303347___redundant_placeholder25
1while_while_cond_1303347___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ê#
Ø
while_body_1302826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
!while_simple_rnn_cell_3_1302848_0:/
!while_simple_rnn_cell_3_1302850_0:3
!while_simple_rnn_cell_3_1302852_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_3_1302848:-
while_simple_rnn_cell_3_1302850:1
while_simple_rnn_cell_3_1302852:¢/while/simple_rnn_cell_3/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÙ
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_3_1302848_0!while_simple_rnn_cell_3_1302850_0!while_simple_rnn_cell_3_1302852_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_130276321
/while/simple_rnn_cell_3/StatefulPartitionedCallü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3©
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4

while/NoOpNoOp0^while/simple_rnn_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_3_1302848!while_simple_rnn_cell_3_1302848_0"D
while_simple_rnn_cell_3_1302850!while_simple_rnn_cell_3_1302850_0"D
while_simple_rnn_cell_3_1302852!while_simple_rnn_cell_3_1302852_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÎH
Ç
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307542
inputs_0B
0simple_rnn_cell_4_matmul_readvariableop_resource:?
1simple_rnn_cell_4_biasadd_readvariableop_resource:D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2
ReverseV2/axis
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeý
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_4/MatMul/ReadVariableOp»
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMulÂ
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_4/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/BiasAddÉ
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_4/MatMul_1/ReadVariableOp·
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMul_1³
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/add
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1307476*
condR
while_cond_1307475*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ð(

J__inference_sequential_10_layer_call_and_return_conditional_losses_1305044

inputs)
bidirectional_3_1305004:%
bidirectional_3_1305006:)
bidirectional_3_1305008:)
bidirectional_3_1305010:%
bidirectional_3_1305012:)
bidirectional_3_1305014:&
conv1d_7_1305017: @
conv1d_7_1305019:@&
conv1d_8_1305022:@ 
conv1d_8_1305024: "
dense_30_1305028: @
dense_30_1305030:@"
dense_31_1305033:@ 
dense_31_1305035: "
dense_32_1305038: 
dense_32_1305040:
identity¢'bidirectional_3/StatefulPartitionedCall¢ conv1d_7/StatefulPartitionedCall¢ conv1d_8/StatefulPartitionedCall¢ dense_30/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCall¢ dense_32/StatefulPartitionedCallª
'bidirectional_3/StatefulPartitionedCallStatefulPartitionedCallinputsbidirectional_3_1305004bidirectional_3_1305006bidirectional_3_1305008bidirectional_3_1305010bidirectional_3_1305012bidirectional_3_1305014*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_13049472)
'bidirectional_3/StatefulPartitionedCallÅ
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_3/StatefulPartitionedCall:output:0conv1d_7_1305017conv1d_7_1305019*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_13045312"
 conv1d_7/StatefulPartitionedCall¾
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0conv1d_8_1305022conv1d_8_1305024*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_13045532"
 conv1d_8/StatefulPartitionedCallþ
flatten_10/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_13045652
flatten_10/PartitionedCall´
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_30_1305028dense_30_1305030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_13045782"
 dense_30/StatefulPartitionedCallº
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_1305033dense_31_1305035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_13045952"
 dense_31/StatefulPartitionedCallº
 dense_32/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_32_1305038dense_32_1305040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_13046122"
 dense_32/StatefulPartitionedCall
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity§
NoOpNoOp(^bidirectional_3/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^conv1d_8/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2R
'bidirectional_3/StatefulPartitionedCall'bidirectional_3/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ëF
Ä
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307388

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOp»
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMulÂ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/BiasAddÉ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOp·
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMul_1³
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/add
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1307322*
condR
while_cond_1307321*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
c
G__inference_flatten_10_layer_call_and_return_conditional_losses_1304565

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
£1
É
while_body_1307806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÜ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_4/MatMul/ReadVariableOpå
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_4/MatMulÖ
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_4/BiasAddÝ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_4/MatMul_1Ë
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/add
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
®H
À
'forward_simple_rnn_2_while_body_1305961F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2E
Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0
}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:\
Nforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:a
Oforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:'
#forward_simple_rnn_2_while_identity)
%forward_simple_rnn_2_while_identity_1)
%forward_simple_rnn_2_while_identity_2)
%forward_simple_rnn_2_while_identity_3)
%forward_simple_rnn_2_while_identity_4C
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:Z
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpí
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2N
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeÚ
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_2_while_placeholderUforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02D
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¹
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulEforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02E
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpµ
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAdd=forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0Kforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02F
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMul(forward_simple_rnn_2_while_placeholder_2Lforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1
0forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2=forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0?forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/while/simple_rnn_cell_3/addÖ
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanh4forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhÍ
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_2_while_placeholder_1&forward_simple_rnn_2_while_placeholder5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02A
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
 forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 forward_simple_rnn_2/while/add/y½
forward_simple_rnn_2/while/addAddV2&forward_simple_rnn_2_while_placeholder)forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2 
forward_simple_rnn_2/while/add
"forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"forward_simple_rnn_2/while/add_1/yß
 forward_simple_rnn_2/while/add_1AddV2Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counter+forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 forward_simple_rnn_2/while/add_1¿
#forward_simple_rnn_2/while/IdentityIdentity$forward_simple_rnn_2/while/add_1:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identityç
%forward_simple_rnn_2/while/Identity_1IdentityHforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_1Á
%forward_simple_rnn_2/while/Identity_2Identity"forward_simple_rnn_2/while/add:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_2î
%forward_simple_rnn_2/while/Identity_3IdentityOforward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_3å
%forward_simple_rnn_2/while/Identity_4Identity5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0 ^forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%forward_simple_rnn_2/while/Identity_4Ö
forward_simple_rnn_2/while/NoOpNoOpD^forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpC^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpE^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
forward_simple_rnn_2/while/NoOp"
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0"W
%forward_simple_rnn_2_while_identity_1.forward_simple_rnn_2/while/Identity_1:output:0"W
%forward_simple_rnn_2_while_identity_2.forward_simple_rnn_2/while/Identity_2:output:0"W
%forward_simple_rnn_2_while_identity_3.forward_simple_rnn_2/while/Identity_3:output:0"W
%forward_simple_rnn_2_while_identity_4.forward_simple_rnn_2/while/Identity_4:output:0"
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resourceNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resourceMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"ü
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpCforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpBforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpDforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ô
Ã
7__inference_backward_simple_rnn_2_layer_call_fn_1307399
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_13032392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
óH
Å
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1303870

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:?
1simple_rnn_cell_4_biasadd_readvariableop_resource:D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2
ReverseV2/axis
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ27
5TensorArrayUnstack/TensorListFromTensor/element_shapeý
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_4/MatMul/ReadVariableOp»
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMulÂ
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_4/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/BiasAddÉ
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_4/MatMul_1/ReadVariableOp·
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMul_1³
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/add
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1303804*
condR
while_cond_1303803*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
¾
'forward_simple_rnn_2_while_cond_1304324F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2H
Dforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1304324___redundant_placeholder0_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1304324___redundant_placeholder1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1304324___redundant_placeholder2_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1304324___redundant_placeholder3'
#forward_simple_rnn_2_while_identity
Ù
forward_simple_rnn_2/while/LessLess&forward_simple_rnn_2_while_placeholderDforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2!
forward_simple_rnn_2/while/Less
#forward_simple_rnn_2/while/IdentityIdentity#forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identity"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÏF
Æ
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307172
inputs_0B
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOp»
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMulÂ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/BiasAddÉ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOp·
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMul_1³
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/add
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1307106*
condR
while_cond_1307105*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
â
¾
'forward_simple_rnn_2_while_cond_1304770F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2H
Dforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1304770___redundant_placeholder0_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1304770___redundant_placeholder1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1304770___redundant_placeholder2_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1304770___redundant_placeholder3'
#forward_simple_rnn_2_while_identity
Ù
forward_simple_rnn_2/while/LessLess&forward_simple_rnn_2_while_placeholderDforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2!
forward_simple_rnn_2/while/Less
#forward_simple_rnn_2/while/IdentityIdentity#forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identity"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
	
Á
7__inference_backward_simple_rnn_2_layer_call_fn_1307421

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_13038702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
é
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1302763

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityg

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
ø

Û
3__inference_simple_rnn_cell_3_layer_call_fn_1307886

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_13026432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
²I
ß
(backward_simple_rnn_2_while_body_1304877H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2G
Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0
backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:]
Obackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:b
Pbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:(
$backward_simple_rnn_2_while_identity*
&backward_simple_rnn_2_while_identity_1*
&backward_simple_rnn_2_while_identity_2*
&backward_simple_rnn_2_while_identity_3*
&backward_simple_rnn_2_while_identity_4E
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:[
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpï
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_2_while_placeholderVbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02E
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp½
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMulFbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02F
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¹
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAdd>backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0Lbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02G
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp¦
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMul)backward_simple_rnn_2_while_placeholder_2Mbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1£
1backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2>backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0@backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/while/simple_rnn_cell_4/addÙ
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanh5backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhÒ
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_2_while_placeholder_1'backward_simple_rnn_2_while_placeholder6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02B
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
!backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!backward_simple_rnn_2/while/add/yÁ
backward_simple_rnn_2/while/addAddV2'backward_simple_rnn_2_while_placeholder*backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2!
backward_simple_rnn_2/while/add
#backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#backward_simple_rnn_2/while/add_1/yä
!backward_simple_rnn_2/while/add_1AddV2Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counter,backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!backward_simple_rnn_2/while/add_1Ã
$backward_simple_rnn_2/while/IdentityIdentity%backward_simple_rnn_2/while/add_1:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identityì
&backward_simple_rnn_2/while/Identity_1IdentityJbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_1Å
&backward_simple_rnn_2/while/Identity_2Identity#backward_simple_rnn_2/while/add:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_2ò
&backward_simple_rnn_2/while/Identity_3IdentityPbackward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_3é
&backward_simple_rnn_2/while/Identity_4Identity6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0!^backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&backward_simple_rnn_2/while/Identity_4Û
 backward_simple_rnn_2/while/NoOpNoOpE^backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpD^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpF^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 backward_simple_rnn_2/while/NoOp"
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0"Y
&backward_simple_rnn_2_while_identity_1/backward_simple_rnn_2/while/Identity_1:output:0"Y
&backward_simple_rnn_2_while_identity_2/backward_simple_rnn_2/while/Identity_2:output:0"Y
&backward_simple_rnn_2_while_identity_3/backward_simple_rnn_2/while/Identity_3:output:0"Y
&backward_simple_rnn_2_while_identity_4/backward_simple_rnn_2/while/Identity_4:output:0" 
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resourceObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcePbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resourceNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpDbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpCbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpEbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¨
ë
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_1307996

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityg

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
»I
ß
(backward_simple_rnn_2_while_body_1306067H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2G
Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0
backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:]
Obackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:b
Pbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:(
$backward_simple_rnn_2_while_identity*
&backward_simple_rnn_2_while_identity_1*
&backward_simple_rnn_2_while_identity_2*
&backward_simple_rnn_2_while_identity_3*
&backward_simple_rnn_2_while_identity_4E
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:[
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpï
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2O
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeà
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_2_while_placeholderVbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02E
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp½
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMulFbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02F
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¹
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAdd>backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0Lbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02G
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp¦
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMul)backward_simple_rnn_2_while_placeholder_2Mbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1£
1backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2>backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0@backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/while/simple_rnn_cell_4/addÙ
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanh5backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhÒ
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_2_while_placeholder_1'backward_simple_rnn_2_while_placeholder6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02B
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
!backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!backward_simple_rnn_2/while/add/yÁ
backward_simple_rnn_2/while/addAddV2'backward_simple_rnn_2_while_placeholder*backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2!
backward_simple_rnn_2/while/add
#backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#backward_simple_rnn_2/while/add_1/yä
!backward_simple_rnn_2/while/add_1AddV2Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counter,backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!backward_simple_rnn_2/while/add_1Ã
$backward_simple_rnn_2/while/IdentityIdentity%backward_simple_rnn_2/while/add_1:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identityì
&backward_simple_rnn_2/while/Identity_1IdentityJbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_1Å
&backward_simple_rnn_2/while/Identity_2Identity#backward_simple_rnn_2/while/add:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_2ò
&backward_simple_rnn_2/while/Identity_3IdentityPbackward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_3é
&backward_simple_rnn_2/while/Identity_4Identity6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0!^backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&backward_simple_rnn_2/while/Identity_4Û
 backward_simple_rnn_2/while/NoOpNoOpE^backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpD^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpF^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 backward_simple_rnn_2/while/NoOp"
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0"Y
&backward_simple_rnn_2_while_identity_1/backward_simple_rnn_2/while/Identity_1:output:0"Y
&backward_simple_rnn_2_while_identity_2/backward_simple_rnn_2/while/Identity_2:output:0"Y
&backward_simple_rnn_2_while_identity_3/backward_simple_rnn_2/while/Identity_3:output:0"Y
&backward_simple_rnn_2_while_identity_4/backward_simple_rnn_2/while/Identity_4:output:0" 
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resourceObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcePbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resourceNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpDbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpCbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpEbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ò
Â
6__inference_forward_simple_rnn_2_layer_call_fn_1306934
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_13028892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
1
É
while_body_1307476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_4/MatMul/ReadVariableOpå
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_4/MatMulÖ
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_4/BiasAddÝ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_4/MatMul_1Ë
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/add
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ó´
è
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305586

inputsg
Ubidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:d
Vbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:i
Wbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:h
Vbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:e
Wbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:j
Xbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:J
4conv1d_7_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_7_biasadd_readvariableop_resource:@J
4conv1d_8_conv1d_expanddims_1_readvariableop_resource:@ 6
(conv1d_8_biasadd_readvariableop_resource: 9
'dense_30_matmul_readvariableop_resource: @6
(dense_30_biasadd_readvariableop_resource:@9
'dense_31_matmul_readvariableop_resource:@ 6
(dense_31_biasadd_readvariableop_resource: 9
'dense_32_matmul_readvariableop_resource: 6
(dense_32_biasadd_readvariableop_resource:
identity¢Nbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Mbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢Obidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢+bidirectional_3/backward_simple_rnn_2/while¢Mbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Lbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢Nbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢*bidirectional_3/forward_simple_rnn_2/while¢conv1d_7/BiasAdd/ReadVariableOp¢+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp¢conv1d_8/BiasAdd/ReadVariableOp¢+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢dense_30/BiasAdd/ReadVariableOp¢dense_30/MatMul/ReadVariableOp¢dense_31/BiasAdd/ReadVariableOp¢dense_31/MatMul/ReadVariableOp¢dense_32/BiasAdd/ReadVariableOp¢dense_32/MatMul/ReadVariableOp
*bidirectional_3/forward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2,
*bidirectional_3/forward_simple_rnn_2/Shape¾
8bidirectional_3/forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8bidirectional_3/forward_simple_rnn_2/strided_slice/stackÂ
:bidirectional_3/forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:bidirectional_3/forward_simple_rnn_2/strided_slice/stack_1Â
:bidirectional_3/forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:bidirectional_3/forward_simple_rnn_2/strided_slice/stack_2À
2bidirectional_3/forward_simple_rnn_2/strided_sliceStridedSlice3bidirectional_3/forward_simple_rnn_2/Shape:output:0Abidirectional_3/forward_simple_rnn_2/strided_slice/stack:output:0Cbidirectional_3/forward_simple_rnn_2/strided_slice/stack_1:output:0Cbidirectional_3/forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2bidirectional_3/forward_simple_rnn_2/strided_slice¬
3bidirectional_3/forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :25
3bidirectional_3/forward_simple_rnn_2/zeros/packed/1
1bidirectional_3/forward_simple_rnn_2/zeros/packedPack;bidirectional_3/forward_simple_rnn_2/strided_slice:output:0<bidirectional_3/forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:23
1bidirectional_3/forward_simple_rnn_2/zeros/packed©
0bidirectional_3/forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0bidirectional_3/forward_simple_rnn_2/zeros/Const
*bidirectional_3/forward_simple_rnn_2/zerosFill:bidirectional_3/forward_simple_rnn_2/zeros/packed:output:09bidirectional_3/forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*bidirectional_3/forward_simple_rnn_2/zeros¿
3bidirectional_3/forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          25
3bidirectional_3/forward_simple_rnn_2/transpose/permé
.bidirectional_3/forward_simple_rnn_2/transpose	Transposeinputs<bidirectional_3/forward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.bidirectional_3/forward_simple_rnn_2/transpose¾
,bidirectional_3/forward_simple_rnn_2/Shape_1Shape2bidirectional_3/forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2.
,bidirectional_3/forward_simple_rnn_2/Shape_1Â
:bidirectional_3/forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:bidirectional_3/forward_simple_rnn_2/strided_slice_1/stackÆ
<bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1Æ
<bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2Ì
4bidirectional_3/forward_simple_rnn_2/strided_slice_1StridedSlice5bidirectional_3/forward_simple_rnn_2/Shape_1:output:0Cbidirectional_3/forward_simple_rnn_2/strided_slice_1/stack:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4bidirectional_3/forward_simple_rnn_2/strided_slice_1Ï
@bidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2B
@bidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shapeÆ
2bidirectional_3/forward_simple_rnn_2/TensorArrayV2TensorListReserveIbidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shape:output:0=bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2bidirectional_3/forward_simple_rnn_2/TensorArrayV2
Zbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2\
Zbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape
Lbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2bidirectional_3/forward_simple_rnn_2/transpose:y:0cbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02N
Lbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorÂ
:bidirectional_3/forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:bidirectional_3/forward_simple_rnn_2/strided_slice_2/stackÆ
<bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1Æ
<bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2Ú
4bidirectional_3/forward_simple_rnn_2/strided_slice_2StridedSlice2bidirectional_3/forward_simple_rnn_2/transpose:y:0Cbidirectional_3/forward_simple_rnn_2/strided_slice_2/stack:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask26
4bidirectional_3/forward_simple_rnn_2/strided_slice_2²
Lbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpUbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02N
Lbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpÏ
=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMul=bidirectional_3/forward_simple_rnn_2/strided_slice_2:output:0Tbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2?
=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul±
Mbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02O
Mbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpÝ
>bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAddGbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0Ubidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2@
>bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd¸
Nbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02P
Nbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpË
?bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMul3bidirectional_3/forward_simple_rnn_2/zeros:output:0Vbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2A
?bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1Ç
:bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/addAddV2Gbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:0Ibidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/addô
;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/TanhTanh>bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/TanhÙ
Bbidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2D
Bbidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shapeÌ
4bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1TensorListReserveKbidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0=bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1
)bidirectional_3/forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2+
)bidirectional_3/forward_simple_rnn_2/timeÉ
=bidirectional_3/forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2?
=bidirectional_3/forward_simple_rnn_2/while/maximum_iterations´
7bidirectional_3/forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 29
7bidirectional_3/forward_simple_rnn_2/while/loop_counteré	
*bidirectional_3/forward_simple_rnn_2/whileWhile@bidirectional_3/forward_simple_rnn_2/while/loop_counter:output:0Fbidirectional_3/forward_simple_rnn_2/while/maximum_iterations:output:02bidirectional_3/forward_simple_rnn_2/time:output:0=bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1:handle:03bidirectional_3/forward_simple_rnn_2/zeros:output:0=bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0\bidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ubidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourceVbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceWbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *C
body;R9
7bidirectional_3_forward_simple_rnn_2_while_body_1305363*C
cond;R9
7bidirectional_3_forward_simple_rnn_2_while_cond_1305362*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2,
*bidirectional_3/forward_simple_rnn_2/whileÿ
Ubidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2W
Ubidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeü
Gbidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack3bidirectional_3/forward_simple_rnn_2/while:output:3^bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02I
Gbidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackË
:bidirectional_3/forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2<
:bidirectional_3/forward_simple_rnn_2/strided_slice_3/stackÆ
<bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1Æ
<bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2ø
4bidirectional_3/forward_simple_rnn_2/strided_slice_3StridedSlicePbidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Cbidirectional_3/forward_simple_rnn_2/strided_slice_3/stack:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask26
4bidirectional_3/forward_simple_rnn_2/strided_slice_3Ã
5bidirectional_3/forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          27
5bidirectional_3/forward_simple_rnn_2/transpose_1/perm¹
0bidirectional_3/forward_simple_rnn_2/transpose_1	TransposePbidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0>bidirectional_3/forward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0bidirectional_3/forward_simple_rnn_2/transpose_1
+bidirectional_3/backward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2-
+bidirectional_3/backward_simple_rnn_2/ShapeÀ
9bidirectional_3/backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9bidirectional_3/backward_simple_rnn_2/strided_slice/stackÄ
;bidirectional_3/backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;bidirectional_3/backward_simple_rnn_2/strided_slice/stack_1Ä
;bidirectional_3/backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;bidirectional_3/backward_simple_rnn_2/strided_slice/stack_2Æ
3bidirectional_3/backward_simple_rnn_2/strided_sliceStridedSlice4bidirectional_3/backward_simple_rnn_2/Shape:output:0Bbidirectional_3/backward_simple_rnn_2/strided_slice/stack:output:0Dbidirectional_3/backward_simple_rnn_2/strided_slice/stack_1:output:0Dbidirectional_3/backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3bidirectional_3/backward_simple_rnn_2/strided_slice®
4bidirectional_3/backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :26
4bidirectional_3/backward_simple_rnn_2/zeros/packed/1
2bidirectional_3/backward_simple_rnn_2/zeros/packedPack<bidirectional_3/backward_simple_rnn_2/strided_slice:output:0=bidirectional_3/backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:24
2bidirectional_3/backward_simple_rnn_2/zeros/packed«
1bidirectional_3/backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1bidirectional_3/backward_simple_rnn_2/zeros/Const
+bidirectional_3/backward_simple_rnn_2/zerosFill;bidirectional_3/backward_simple_rnn_2/zeros/packed:output:0:bidirectional_3/backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+bidirectional_3/backward_simple_rnn_2/zerosÁ
4bidirectional_3/backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          26
4bidirectional_3/backward_simple_rnn_2/transpose/permì
/bidirectional_3/backward_simple_rnn_2/transpose	Transposeinputs=bidirectional_3/backward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/bidirectional_3/backward_simple_rnn_2/transposeÁ
-bidirectional_3/backward_simple_rnn_2/Shape_1Shape3bidirectional_3/backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2/
-bidirectional_3/backward_simple_rnn_2/Shape_1Ä
;bidirectional_3/backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;bidirectional_3/backward_simple_rnn_2/strided_slice_1/stackÈ
=bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1È
=bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2Ò
5bidirectional_3/backward_simple_rnn_2/strided_slice_1StridedSlice6bidirectional_3/backward_simple_rnn_2/Shape_1:output:0Dbidirectional_3/backward_simple_rnn_2/strided_slice_1/stack:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5bidirectional_3/backward_simple_rnn_2/strided_slice_1Ñ
Abidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2C
Abidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shapeÊ
3bidirectional_3/backward_simple_rnn_2/TensorArrayV2TensorListReserveJbidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shape:output:0>bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type025
3bidirectional_3/backward_simple_rnn_2/TensorArrayV2¶
4bidirectional_3/backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 26
4bidirectional_3/backward_simple_rnn_2/ReverseV2/axis
/bidirectional_3/backward_simple_rnn_2/ReverseV2	ReverseV23bidirectional_3/backward_simple_rnn_2/transpose:y:0=bidirectional_3/backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/bidirectional_3/backward_simple_rnn_2/ReverseV2
[bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2]
[bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape
Mbidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor8bidirectional_3/backward_simple_rnn_2/ReverseV2:output:0dbidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02O
Mbidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorÄ
;bidirectional_3/backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;bidirectional_3/backward_simple_rnn_2/strided_slice_2/stackÈ
=bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1È
=bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2à
5bidirectional_3/backward_simple_rnn_2/strided_slice_2StridedSlice3bidirectional_3/backward_simple_rnn_2/transpose:y:0Dbidirectional_3/backward_simple_rnn_2/strided_slice_2/stack:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask27
5bidirectional_3/backward_simple_rnn_2/strided_slice_2µ
Mbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpVbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02O
Mbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpÓ
>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMul>bidirectional_3/backward_simple_rnn_2/strided_slice_2:output:0Ubidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2@
>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul´
Nbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpWbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02P
Nbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpá
?bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAddHbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0Vbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2A
?bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd»
Obidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpXbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02Q
Obidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpÏ
@bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMul4bidirectional_3/backward_simple_rnn_2/zeros:output:0Wbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2B
@bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1Ë
;bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/addAddV2Hbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0Jbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/add÷
<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/TanhTanh?bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/TanhÛ
Cbidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2E
Cbidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shapeÐ
5bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1TensorListReserveLbidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0>bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1
*bidirectional_3/backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2,
*bidirectional_3/backward_simple_rnn_2/timeË
>bidirectional_3/backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2@
>bidirectional_3/backward_simple_rnn_2/while/maximum_iterations¶
8bidirectional_3/backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2:
8bidirectional_3/backward_simple_rnn_2/while/loop_counter÷	
+bidirectional_3/backward_simple_rnn_2/whileWhileAbidirectional_3/backward_simple_rnn_2/while/loop_counter:output:0Gbidirectional_3/backward_simple_rnn_2/while/maximum_iterations:output:03bidirectional_3/backward_simple_rnn_2/time:output:0>bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1:handle:04bidirectional_3/backward_simple_rnn_2/zeros:output:0>bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0]bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Vbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceWbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourceXbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *D
body<R:
8bidirectional_3_backward_simple_rnn_2_while_body_1305469*D
cond<R:
8bidirectional_3_backward_simple_rnn_2_while_cond_1305468*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2-
+bidirectional_3/backward_simple_rnn_2/while
Vbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2X
Vbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape
Hbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack4bidirectional_3/backward_simple_rnn_2/while:output:3_bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02J
Hbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackÍ
;bidirectional_3/backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2=
;bidirectional_3/backward_simple_rnn_2/strided_slice_3/stackÈ
=bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1È
=bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2þ
5bidirectional_3/backward_simple_rnn_2/strided_slice_3StridedSliceQbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Dbidirectional_3/backward_simple_rnn_2/strided_slice_3/stack:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask27
5bidirectional_3/backward_simple_rnn_2/strided_slice_3Å
6bidirectional_3/backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          28
6bidirectional_3/backward_simple_rnn_2/transpose_1/perm½
1bidirectional_3/backward_simple_rnn_2/transpose_1	TransposeQbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_3/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1bidirectional_3/backward_simple_rnn_2/transpose_1
bidirectional_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2 
bidirectional_3/ReverseV2/axisÙ
bidirectional_3/ReverseV2	ReverseV25bidirectional_3/backward_simple_rnn_2/transpose_1:y:0'bidirectional_3/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bidirectional_3/ReverseV2|
bidirectional_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
bidirectional_3/concat/axisû
bidirectional_3/concatConcatV24bidirectional_3/forward_simple_rnn_2/transpose_1:y:0"bidirectional_3/ReverseV2:output:0$bidirectional_3/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
bidirectional_3/concat
conv1d_7/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_7/conv1d/ExpandDims/dimÊ
conv1d_7/conv1d/ExpandDims
ExpandDimsbidirectional_3/concat:output:0'conv1d_7/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_7/conv1d/ExpandDimsÓ
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_7/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_7/conv1d/ExpandDims_1/dimÛ
conv1d_7/conv1d/ExpandDims_1
ExpandDims3conv1d_7/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_7/conv1d/ExpandDims_1Ú
conv1d_7/conv1dConv2D#conv1d_7/conv1d/ExpandDims:output:0%conv1d_7/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d_7/conv1d­
conv1d_7/conv1d/SqueezeSqueezeconv1d_7/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_7/conv1d/Squeeze§
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_7/BiasAdd/ReadVariableOp°
conv1d_7/BiasAddBiasAdd conv1d_7/conv1d/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_7/BiasAddw
conv1d_7/ReluReluconv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_7/Relu
conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_8/conv1d/ExpandDims/dimÆ
conv1d_8/conv1d/ExpandDims
ExpandDimsconv1d_7/Relu:activations:0'conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_8/conv1d/ExpandDimsÓ
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02-
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_8/conv1d/ExpandDims_1/dimÛ
conv1d_8/conv1d/ExpandDims_1
ExpandDims3conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d_8/conv1d/ExpandDims_1Ú
conv1d_8/conv1dConv2D#conv1d_8/conv1d/ExpandDims:output:0%conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d_8/conv1d­
conv1d_8/conv1d/SqueezeSqueezeconv1d_8/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_8/conv1d/Squeeze§
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_8/BiasAdd/ReadVariableOp°
conv1d_8/BiasAddBiasAdd conv1d_8/conv1d/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_8/BiasAddw
conv1d_8/ReluReluconv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_8/Reluu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
flatten_10/Const
flatten_10/ReshapeReshapeconv1d_8/Relu:activations:0flatten_10/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
flatten_10/Reshape¨
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_30/MatMul/ReadVariableOp£
dense_30/MatMulMatMulflatten_10/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/MatMul§
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_30/BiasAdd/ReadVariableOp¥
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/Relu¨
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_31/MatMul/ReadVariableOp£
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_31/MatMul§
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_31/BiasAdd/ReadVariableOp¥
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_31/BiasAdds
dense_31/ReluReludense_31/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_31/Relu¨
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_32/MatMul/ReadVariableOp£
dense_32/MatMulMatMuldense_31/Relu:activations:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_32/MatMul§
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_32/BiasAdd/ReadVariableOp¥
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_32/BiasAdd|
dense_32/SoftmaxSoftmaxdense_32/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_32/Softmaxu
IdentityIdentitydense_32/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityõ
NoOpNoOpO^bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpN^bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpP^bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp,^bidirectional_3/backward_simple_rnn_2/whileN^bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpM^bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpO^bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp+^bidirectional_3/forward_simple_rnn_2/while ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/conv1d/ExpandDims_1/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2 
Nbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpNbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Mbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpMbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2¢
Obidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpObidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2Z
+bidirectional_3/backward_simple_rnn_2/while+bidirectional_3/backward_simple_rnn_2/while2
Mbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpMbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Lbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpLbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2 
Nbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpNbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp2X
*bidirectional_3/forward_simple_rnn_2/while*bidirectional_3/forward_simple_rnn_2/while2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®H
À
'forward_simple_rnn_2_while_body_1306179F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2E
Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0
}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:\
Nforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:a
Oforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:'
#forward_simple_rnn_2_while_identity)
%forward_simple_rnn_2_while_identity_1)
%forward_simple_rnn_2_while_identity_2)
%forward_simple_rnn_2_while_identity_3)
%forward_simple_rnn_2_while_identity_4C
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:Z
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpí
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2N
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeÚ
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_2_while_placeholderUforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02D
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¹
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulEforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02E
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpµ
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAdd=forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0Kforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02F
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMul(forward_simple_rnn_2_while_placeholder_2Lforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1
0forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2=forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0?forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/while/simple_rnn_cell_3/addÖ
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanh4forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhÍ
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_2_while_placeholder_1&forward_simple_rnn_2_while_placeholder5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02A
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
 forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 forward_simple_rnn_2/while/add/y½
forward_simple_rnn_2/while/addAddV2&forward_simple_rnn_2_while_placeholder)forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2 
forward_simple_rnn_2/while/add
"forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"forward_simple_rnn_2/while/add_1/yß
 forward_simple_rnn_2/while/add_1AddV2Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counter+forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 forward_simple_rnn_2/while/add_1¿
#forward_simple_rnn_2/while/IdentityIdentity$forward_simple_rnn_2/while/add_1:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identityç
%forward_simple_rnn_2/while/Identity_1IdentityHforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_1Á
%forward_simple_rnn_2/while/Identity_2Identity"forward_simple_rnn_2/while/add:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_2î
%forward_simple_rnn_2/while/Identity_3IdentityOforward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_3å
%forward_simple_rnn_2/while/Identity_4Identity5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0 ^forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%forward_simple_rnn_2/while/Identity_4Ö
forward_simple_rnn_2/while/NoOpNoOpD^forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpC^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpE^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
forward_simple_rnn_2/while/NoOp"
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0"W
%forward_simple_rnn_2_while_identity_1.forward_simple_rnn_2/while/Identity_1:output:0"W
%forward_simple_rnn_2_while_identity_2.forward_simple_rnn_2/while/Identity_2:output:0"W
%forward_simple_rnn_2_while_identity_3.forward_simple_rnn_2/while/Identity_3:output:0"W
%forward_simple_rnn_2_while_identity_4.forward_simple_rnn_2/while/Identity_4:output:0"
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resourceNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resourceMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"ü
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpCforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpBforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpDforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ö(

J__inference_sequential_10_layer_call_and_return_conditional_losses_1305159
input_11)
bidirectional_3_1305119:%
bidirectional_3_1305121:)
bidirectional_3_1305123:)
bidirectional_3_1305125:%
bidirectional_3_1305127:)
bidirectional_3_1305129:&
conv1d_7_1305132: @
conv1d_7_1305134:@&
conv1d_8_1305137:@ 
conv1d_8_1305139: "
dense_30_1305143: @
dense_30_1305145:@"
dense_31_1305148:@ 
dense_31_1305150: "
dense_32_1305153: 
dense_32_1305155:
identity¢'bidirectional_3/StatefulPartitionedCall¢ conv1d_7/StatefulPartitionedCall¢ conv1d_8/StatefulPartitionedCall¢ dense_30/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCall¢ dense_32/StatefulPartitionedCall¬
'bidirectional_3/StatefulPartitionedCallStatefulPartitionedCallinput_11bidirectional_3_1305119bidirectional_3_1305121bidirectional_3_1305123bidirectional_3_1305125bidirectional_3_1305127bidirectional_3_1305129*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_13045012)
'bidirectional_3/StatefulPartitionedCallÅ
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_3/StatefulPartitionedCall:output:0conv1d_7_1305132conv1d_7_1305134*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_13045312"
 conv1d_7/StatefulPartitionedCall¾
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0conv1d_8_1305137conv1d_8_1305139*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_13045532"
 conv1d_8/StatefulPartitionedCallþ
flatten_10/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_13045652
flatten_10/PartitionedCall´
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_30_1305143dense_30_1305145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_13045782"
 dense_30/StatefulPartitionedCallº
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_1305148dense_31_1305150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_31_layer_call_and_return_conditional_losses_13045952"
 dense_31/StatefulPartitionedCallº
 dense_32/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_32_1305153dense_32_1305155*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_13046122"
 dense_32/StatefulPartitionedCall
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity§
NoOpNoOp(^bidirectional_3/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^conv1d_8/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2R
'bidirectional_3/StatefulPartitionedCall'bidirectional_3/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_11
ëY
£
7bidirectional_3_forward_simple_rnn_2_while_body_1305628f
bbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_loop_counterl
hbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_maximum_iterations:
6bidirectional_3_forward_simple_rnn_2_while_placeholder<
8bidirectional_3_forward_simple_rnn_2_while_placeholder_1<
8bidirectional_3_forward_simple_rnn_2_while_placeholder_2e
abidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_strided_slice_1_0¢
bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0o
]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:l
^bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:q
_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:7
3bidirectional_3_forward_simple_rnn_2_while_identity9
5bidirectional_3_forward_simple_rnn_2_while_identity_19
5bidirectional_3_forward_simple_rnn_2_while_identity_29
5bidirectional_3_forward_simple_rnn_2_while_identity_39
5bidirectional_3_forward_simple_rnn_2_while_identity_4c
_bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_strided_slice_1 
bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorm
[bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:j
\bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:o
]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Sbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Rbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Tbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
\bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2^
\bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape²
Nbidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_06bidirectional_3_forward_simple_rnn_2_while_placeholderebidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02P
Nbidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemÆ
Rbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02T
Rbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpù
Cbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulUbidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Zbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulÅ
Sbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp^bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02U
Sbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpõ
Dbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAddMbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0[bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2F
Dbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddÌ
Tbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02V
Tbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpâ
Ebidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMul8bidirectional_3_forward_simple_rnn_2_while_placeholder_2\bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2G
Ebidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1ß
@bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2Mbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0Obidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2B
@bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/add
Abidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanhDbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Abidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh
Obidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem8bidirectional_3_forward_simple_rnn_2_while_placeholder_16bidirectional_3_forward_simple_rnn_2_while_placeholderEbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02Q
Obidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem¦
0bidirectional_3/forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :22
0bidirectional_3/forward_simple_rnn_2/while/add/yý
.bidirectional_3/forward_simple_rnn_2/while/addAddV26bidirectional_3_forward_simple_rnn_2_while_placeholder9bidirectional_3/forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 20
.bidirectional_3/forward_simple_rnn_2/while/addª
2bidirectional_3/forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :24
2bidirectional_3/forward_simple_rnn_2/while/add_1/y¯
0bidirectional_3/forward_simple_rnn_2/while/add_1AddV2bbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_loop_counter;bidirectional_3/forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 22
0bidirectional_3/forward_simple_rnn_2/while/add_1ÿ
3bidirectional_3/forward_simple_rnn_2/while/IdentityIdentity4bidirectional_3/forward_simple_rnn_2/while/add_1:z:00^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 25
3bidirectional_3/forward_simple_rnn_2/while/Identity·
5bidirectional_3/forward_simple_rnn_2/while/Identity_1Identityhbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_maximum_iterations0^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 27
5bidirectional_3/forward_simple_rnn_2/while/Identity_1
5bidirectional_3/forward_simple_rnn_2/while/Identity_2Identity2bidirectional_3/forward_simple_rnn_2/while/add:z:00^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 27
5bidirectional_3/forward_simple_rnn_2/while/Identity_2®
5bidirectional_3/forward_simple_rnn_2/while/Identity_3Identity_bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 27
5bidirectional_3/forward_simple_rnn_2/while/Identity_3¥
5bidirectional_3/forward_simple_rnn_2/while/Identity_4IdentityEbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:00^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5bidirectional_3/forward_simple_rnn_2/while/Identity_4¦
/bidirectional_3/forward_simple_rnn_2/while/NoOpNoOpT^bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpS^bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpU^bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 21
/bidirectional_3/forward_simple_rnn_2/while/NoOp"Ä
_bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_strided_slice_1abidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_strided_slice_1_0"s
3bidirectional_3_forward_simple_rnn_2_while_identity<bidirectional_3/forward_simple_rnn_2/while/Identity:output:0"w
5bidirectional_3_forward_simple_rnn_2_while_identity_1>bidirectional_3/forward_simple_rnn_2/while/Identity_1:output:0"w
5bidirectional_3_forward_simple_rnn_2_while_identity_2>bidirectional_3/forward_simple_rnn_2/while/Identity_2:output:0"w
5bidirectional_3_forward_simple_rnn_2_while_identity_3>bidirectional_3/forward_simple_rnn_2/while/Identity_3:output:0"w
5bidirectional_3_forward_simple_rnn_2_while_identity_4>bidirectional_3/forward_simple_rnn_2/while/Identity_4:output:0"¾
\bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource^bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"À
]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"¼
[bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"¾
bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2ª
Sbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpSbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2¨
Rbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpRbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2¬
Tbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpTbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÿ
Ñ
(backward_simple_rnn_2_while_cond_1306502H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2J
Fbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306502___redundant_placeholder0a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306502___redundant_placeholder1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306502___redundant_placeholder2a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306502___redundant_placeholder3(
$backward_simple_rnn_2_while_identity
Þ
 backward_simple_rnn_2/while/LessLess'backward_simple_rnn_2_while_placeholderFbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2"
 backward_simple_rnn_2/while/Less
$backward_simple_rnn_2/while/IdentityIdentity$backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identity"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
1
É
while_body_1307586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_4/MatMul/ReadVariableOpå
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_4/MatMulÖ
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_4/BiasAddÝ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_4/MatMul_1Ë
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/add
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
É
Â
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306137
inputs_0W
Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:T
Fforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:Y
Gforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:X
Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:U
Gbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:Z
Hbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢backward_simple_rnn_2/while¢=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢forward_simple_rnn_2/whilep
forward_simple_rnn_2/ShapeShapeinputs_0*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape
(forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(forward_simple_rnn_2/strided_slice/stack¢
*forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_1¢
*forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_2à
"forward_simple_rnn_2/strided_sliceStridedSlice#forward_simple_rnn_2/Shape:output:01forward_simple_rnn_2/strided_slice/stack:output:03forward_simple_rnn_2/strided_slice/stack_1:output:03forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"forward_simple_rnn_2/strided_slice
#forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#forward_simple_rnn_2/zeros/packed/1×
!forward_simple_rnn_2/zeros/packedPack+forward_simple_rnn_2/strided_slice:output:0,forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!forward_simple_rnn_2/zeros/packed
 forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 forward_simple_rnn_2/zeros/ConstÉ
forward_simple_rnn_2/zerosFill*forward_simple_rnn_2/zeros/packed:output:0)forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
forward_simple_rnn_2/zeros
#forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#forward_simple_rnn_2/transpose/permÍ
forward_simple_rnn_2/transpose	Transposeinputs_0,forward_simple_rnn_2/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2 
forward_simple_rnn_2/transpose
forward_simple_rnn_2/Shape_1Shape"forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape_1¢
*forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_1/stack¦
,forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_1¦
,forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_2ì
$forward_simple_rnn_2/strided_slice_1StridedSlice%forward_simple_rnn_2/Shape_1:output:03forward_simple_rnn_2/strided_slice_1/stack:output:05forward_simple_rnn_2/strided_slice_1/stack_1:output:05forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_1¯
0forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/TensorArrayV2/element_shape
"forward_simple_rnn_2/TensorArrayV2TensorListReserve9forward_simple_rnn_2/TensorArrayV2/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"forward_simple_rnn_2/TensorArrayV2é
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2L
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_2/transpose:y:0Sforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¢
*forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_2/stack¦
,forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_1¦
,forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_2
$forward_simple_rnn_2/strided_slice_2StridedSlice"forward_simple_rnn_2/transpose:y:03forward_simple_rnn_2/strided_slice_2/stack:output:05forward_simple_rnn_2/strided_slice_2/stack_1:output:05forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_2
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp
-forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMul-forward_simple_rnn_2/strided_slice_2:output:0Dforward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/simple_rnn_cell_3/MatMul
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAdd7forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0Eforward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02@
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMul#forward_simple_rnn_2/zeros:output:0Fforward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1
*forward_simple_rnn_2/simple_rnn_cell_3/addAddV27forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:09forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/simple_rnn_cell_3/addÄ
+forward_simple_rnn_2/simple_rnn_cell_3/TanhTanh.forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+forward_simple_rnn_2/simple_rnn_cell_3/Tanh¹
2forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2forward_simple_rnn_2/TensorArrayV2_1/element_shape
$forward_simple_rnn_2/TensorArrayV2_1TensorListReserve;forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$forward_simple_rnn_2/TensorArrayV2_1x
forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
forward_simple_rnn_2/time©
-forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/while/maximum_iterations
'forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'forward_simple_rnn_2/while/loop_counter
forward_simple_rnn_2/whileWhile0forward_simple_rnn_2/while/loop_counter:output:06forward_simple_rnn_2/while/maximum_iterations:output:0"forward_simple_rnn_2/time:output:0-forward_simple_rnn_2/TensorArrayV2_1:handle:0#forward_simple_rnn_2/zeros:output:0-forward_simple_rnn_2/strided_slice_1:output:0Lforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourceFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'forward_simple_rnn_2_while_body_1305961*3
cond+R)
'forward_simple_rnn_2_while_cond_1305960*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
forward_simple_rnn_2/whileß
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeÅ
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_2/while:output:3Nforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype029
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack«
*forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/strided_slice_3/stack¦
,forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,forward_simple_rnn_2/strided_slice_3/stack_1¦
,forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_3/stack_2
$forward_simple_rnn_2/strided_slice_3StridedSlice@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_2/strided_slice_3/stack:output:05forward_simple_rnn_2/strided_slice_3/stack_1:output:05forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_3£
%forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%forward_simple_rnn_2/transpose_1/perm
 forward_simple_rnn_2/transpose_1	Transpose@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_2/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 forward_simple_rnn_2/transpose_1r
backward_simple_rnn_2/ShapeShapeinputs_0*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape 
)backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)backward_simple_rnn_2/strided_slice/stack¤
+backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_1¤
+backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_2æ
#backward_simple_rnn_2/strided_sliceStridedSlice$backward_simple_rnn_2/Shape:output:02backward_simple_rnn_2/strided_slice/stack:output:04backward_simple_rnn_2/strided_slice/stack_1:output:04backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#backward_simple_rnn_2/strided_slice
$backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$backward_simple_rnn_2/zeros/packed/1Û
"backward_simple_rnn_2/zeros/packedPack,backward_simple_rnn_2/strided_slice:output:0-backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"backward_simple_rnn_2/zeros/packed
!backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!backward_simple_rnn_2/zeros/ConstÍ
backward_simple_rnn_2/zerosFill+backward_simple_rnn_2/zeros/packed:output:0*backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
backward_simple_rnn_2/zeros¡
$backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$backward_simple_rnn_2/transpose/permÐ
backward_simple_rnn_2/transpose	Transposeinputs_0-backward_simple_rnn_2/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/transpose
backward_simple_rnn_2/Shape_1Shape#backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape_1¤
+backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_1/stack¨
-backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_1¨
-backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_2ò
%backward_simple_rnn_2/strided_slice_1StridedSlice&backward_simple_rnn_2/Shape_1:output:04backward_simple_rnn_2/strided_slice_1/stack:output:06backward_simple_rnn_2/strided_slice_1/stack_1:output:06backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_1±
1backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/TensorArrayV2/element_shape
#backward_simple_rnn_2/TensorArrayV2TensorListReserve:backward_simple_rnn_2/TensorArrayV2/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#backward_simple_rnn_2/TensorArrayV2
$backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2&
$backward_simple_rnn_2/ReverseV2/axisë
backward_simple_rnn_2/ReverseV2	ReverseV2#backward_simple_rnn_2/transpose:y:0-backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/ReverseV2ë
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2M
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÕ
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_2/ReverseV2:output:0Tbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¤
+backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_2/stack¨
-backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_1¨
-backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_2
%backward_simple_rnn_2/strided_slice_2StridedSlice#backward_simple_rnn_2/transpose:y:04backward_simple_rnn_2/strided_slice_2/stack:output:06backward_simple_rnn_2/strided_slice_2/stack_1:output:06backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_2
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02?
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp
.backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMul.backward_simple_rnn_2/strided_slice_2:output:0Ebackward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/simple_rnn_cell_4/MatMul
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¡
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAdd8backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0Fbackward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02A
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMul$backward_simple_rnn_2/zeros:output:0Gbackward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1
+backward_simple_rnn_2/simple_rnn_cell_4/addAddV28backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0:backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/simple_rnn_cell_4/addÇ
,backward_simple_rnn_2/simple_rnn_cell_4/TanhTanh/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,backward_simple_rnn_2/simple_rnn_cell_4/Tanh»
3backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3backward_simple_rnn_2/TensorArrayV2_1/element_shape
%backward_simple_rnn_2/TensorArrayV2_1TensorListReserve<backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%backward_simple_rnn_2/TensorArrayV2_1z
backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
backward_simple_rnn_2/time«
.backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/while/maximum_iterations
(backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(backward_simple_rnn_2/while/loop_counter
backward_simple_rnn_2/whileWhile1backward_simple_rnn_2/while/loop_counter:output:07backward_simple_rnn_2/while/maximum_iterations:output:0#backward_simple_rnn_2/time:output:0.backward_simple_rnn_2/TensorArrayV2_1:handle:0$backward_simple_rnn_2/zeros:output:0.backward_simple_rnn_2/strided_slice_1:output:0Mbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourceHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *4
body,R*
(backward_simple_rnn_2_while_body_1306067*4
cond,R*
(backward_simple_rnn_2_while_cond_1306066*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
backward_simple_rnn_2/whileá
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeÉ
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_2/while:output:3Obackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack­
+backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/strided_slice_3/stack¨
-backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-backward_simple_rnn_2/strided_slice_3/stack_1¨
-backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_3/stack_2
%backward_simple_rnn_2/strided_slice_3StridedSliceAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_2/strided_slice_3/stack:output:06backward_simple_rnn_2/strided_slice_3/stack_1:output:06backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_3¥
&backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&backward_simple_rnn_2/transpose_1/perm
!backward_simple_rnn_2/transpose_1	TransposeAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!backward_simple_rnn_2/transpose_1j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis¢
	ReverseV2	ReverseV2%backward_simple_rnn_2/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis´
concatConcatV2$forward_simple_rnn_2/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
concatw
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp?^backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>^backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp@^backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp^backward_simple_rnn_2/while>^forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=^forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp?^forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp^forward_simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2:
backward_simple_rnn_2/whilebackward_simple_rnn_2/while2~
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp28
forward_simple_rnn_2/whileforward_simple_rnn_2/while:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ú	

1__inference_bidirectional_3_layer_call_fn_1305885
inputs_0
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_13042012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
£1
É
while_body_1303955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÜ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_4/MatMul/ReadVariableOpå
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_4/MatMulÖ
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_4/BiasAddÝ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_4/MatMul_1Ë
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/add
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¬

E__inference_conv1d_7_layer_call_and_return_conditional_losses_1304531

inputsA
+conv1d_expanddims_1_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1¶
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ß
c
G__inference_flatten_10_layer_call_and_return_conditional_losses_1306852

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ó

*__inference_dense_30_layer_call_fn_1306861

inputs
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_30_layer_call_and_return_conditional_losses_13045782
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
£1
É
while_body_1303804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÜ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_4/MatMul/ReadVariableOpå
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_4/MatMulÖ
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_4/BiasAddÝ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_4/MatMul_1Ë
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/add
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ãÇ
À
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306573

inputsW
Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:T
Fforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:Y
Gforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:X
Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:U
Gbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:Z
Hbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢backward_simple_rnn_2/while¢=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢forward_simple_rnn_2/whilen
forward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape
(forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(forward_simple_rnn_2/strided_slice/stack¢
*forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_1¢
*forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_2à
"forward_simple_rnn_2/strided_sliceStridedSlice#forward_simple_rnn_2/Shape:output:01forward_simple_rnn_2/strided_slice/stack:output:03forward_simple_rnn_2/strided_slice/stack_1:output:03forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"forward_simple_rnn_2/strided_slice
#forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#forward_simple_rnn_2/zeros/packed/1×
!forward_simple_rnn_2/zeros/packedPack+forward_simple_rnn_2/strided_slice:output:0,forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!forward_simple_rnn_2/zeros/packed
 forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 forward_simple_rnn_2/zeros/ConstÉ
forward_simple_rnn_2/zerosFill*forward_simple_rnn_2/zeros/packed:output:0)forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
forward_simple_rnn_2/zeros
#forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#forward_simple_rnn_2/transpose/perm¹
forward_simple_rnn_2/transpose	Transposeinputs,forward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
forward_simple_rnn_2/transpose
forward_simple_rnn_2/Shape_1Shape"forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape_1¢
*forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_1/stack¦
,forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_1¦
,forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_2ì
$forward_simple_rnn_2/strided_slice_1StridedSlice%forward_simple_rnn_2/Shape_1:output:03forward_simple_rnn_2/strided_slice_1/stack:output:05forward_simple_rnn_2/strided_slice_1/stack_1:output:05forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_1¯
0forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/TensorArrayV2/element_shape
"forward_simple_rnn_2/TensorArrayV2TensorListReserve9forward_simple_rnn_2/TensorArrayV2/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"forward_simple_rnn_2/TensorArrayV2é
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_2/transpose:y:0Sforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¢
*forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_2/stack¦
,forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_1¦
,forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_2ú
$forward_simple_rnn_2/strided_slice_2StridedSlice"forward_simple_rnn_2/transpose:y:03forward_simple_rnn_2/strided_slice_2/stack:output:05forward_simple_rnn_2/strided_slice_2/stack_1:output:05forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_2
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp
-forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMul-forward_simple_rnn_2/strided_slice_2:output:0Dforward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/simple_rnn_cell_3/MatMul
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAdd7forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0Eforward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02@
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMul#forward_simple_rnn_2/zeros:output:0Fforward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1
*forward_simple_rnn_2/simple_rnn_cell_3/addAddV27forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:09forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/simple_rnn_cell_3/addÄ
+forward_simple_rnn_2/simple_rnn_cell_3/TanhTanh.forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+forward_simple_rnn_2/simple_rnn_cell_3/Tanh¹
2forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2forward_simple_rnn_2/TensorArrayV2_1/element_shape
$forward_simple_rnn_2/TensorArrayV2_1TensorListReserve;forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$forward_simple_rnn_2/TensorArrayV2_1x
forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
forward_simple_rnn_2/time©
-forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/while/maximum_iterations
'forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'forward_simple_rnn_2/while/loop_counter
forward_simple_rnn_2/whileWhile0forward_simple_rnn_2/while/loop_counter:output:06forward_simple_rnn_2/while/maximum_iterations:output:0"forward_simple_rnn_2/time:output:0-forward_simple_rnn_2/TensorArrayV2_1:handle:0#forward_simple_rnn_2/zeros:output:0-forward_simple_rnn_2/strided_slice_1:output:0Lforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourceFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'forward_simple_rnn_2_while_body_1306397*3
cond+R)
'forward_simple_rnn_2_while_cond_1306396*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
forward_simple_rnn_2/whileß
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape¼
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_2/while:output:3Nforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack«
*forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/strided_slice_3/stack¦
,forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,forward_simple_rnn_2/strided_slice_3/stack_1¦
,forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_3/stack_2
$forward_simple_rnn_2/strided_slice_3StridedSlice@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_2/strided_slice_3/stack:output:05forward_simple_rnn_2/strided_slice_3/stack_1:output:05forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_3£
%forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%forward_simple_rnn_2/transpose_1/permù
 forward_simple_rnn_2/transpose_1	Transpose@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 forward_simple_rnn_2/transpose_1p
backward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape 
)backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)backward_simple_rnn_2/strided_slice/stack¤
+backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_1¤
+backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_2æ
#backward_simple_rnn_2/strided_sliceStridedSlice$backward_simple_rnn_2/Shape:output:02backward_simple_rnn_2/strided_slice/stack:output:04backward_simple_rnn_2/strided_slice/stack_1:output:04backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#backward_simple_rnn_2/strided_slice
$backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$backward_simple_rnn_2/zeros/packed/1Û
"backward_simple_rnn_2/zeros/packedPack,backward_simple_rnn_2/strided_slice:output:0-backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"backward_simple_rnn_2/zeros/packed
!backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!backward_simple_rnn_2/zeros/ConstÍ
backward_simple_rnn_2/zerosFill+backward_simple_rnn_2/zeros/packed:output:0*backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
backward_simple_rnn_2/zeros¡
$backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$backward_simple_rnn_2/transpose/perm¼
backward_simple_rnn_2/transpose	Transposeinputs-backward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/transpose
backward_simple_rnn_2/Shape_1Shape#backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape_1¤
+backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_1/stack¨
-backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_1¨
-backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_2ò
%backward_simple_rnn_2/strided_slice_1StridedSlice&backward_simple_rnn_2/Shape_1:output:04backward_simple_rnn_2/strided_slice_1/stack:output:06backward_simple_rnn_2/strided_slice_1/stack_1:output:06backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_1±
1backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/TensorArrayV2/element_shape
#backward_simple_rnn_2/TensorArrayV2TensorListReserve:backward_simple_rnn_2/TensorArrayV2/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#backward_simple_rnn_2/TensorArrayV2
$backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2&
$backward_simple_rnn_2/ReverseV2/axisÙ
backward_simple_rnn_2/ReverseV2	ReverseV2#backward_simple_rnn_2/transpose:y:0-backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/ReverseV2ë
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÕ
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_2/ReverseV2:output:0Tbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¤
+backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_2/stack¨
-backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_1¨
-backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_2
%backward_simple_rnn_2/strided_slice_2StridedSlice#backward_simple_rnn_2/transpose:y:04backward_simple_rnn_2/strided_slice_2/stack:output:06backward_simple_rnn_2/strided_slice_2/stack_1:output:06backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_2
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02?
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp
.backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMul.backward_simple_rnn_2/strided_slice_2:output:0Ebackward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/simple_rnn_cell_4/MatMul
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¡
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAdd8backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0Fbackward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02A
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMul$backward_simple_rnn_2/zeros:output:0Gbackward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1
+backward_simple_rnn_2/simple_rnn_cell_4/addAddV28backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0:backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/simple_rnn_cell_4/addÇ
,backward_simple_rnn_2/simple_rnn_cell_4/TanhTanh/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,backward_simple_rnn_2/simple_rnn_cell_4/Tanh»
3backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3backward_simple_rnn_2/TensorArrayV2_1/element_shape
%backward_simple_rnn_2/TensorArrayV2_1TensorListReserve<backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%backward_simple_rnn_2/TensorArrayV2_1z
backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
backward_simple_rnn_2/time«
.backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/while/maximum_iterations
(backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(backward_simple_rnn_2/while/loop_counter
backward_simple_rnn_2/whileWhile1backward_simple_rnn_2/while/loop_counter:output:07backward_simple_rnn_2/while/maximum_iterations:output:0#backward_simple_rnn_2/time:output:0.backward_simple_rnn_2/TensorArrayV2_1:handle:0$backward_simple_rnn_2/zeros:output:0.backward_simple_rnn_2/strided_slice_1:output:0Mbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourceHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *4
body,R*
(backward_simple_rnn_2_while_body_1306503*4
cond,R*
(backward_simple_rnn_2_while_cond_1306502*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
backward_simple_rnn_2/whileá
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_2/while:output:3Obackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack­
+backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/strided_slice_3/stack¨
-backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-backward_simple_rnn_2/strided_slice_3/stack_1¨
-backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_3/stack_2
%backward_simple_rnn_2/strided_slice_3StridedSliceAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_2/strided_slice_3/stack:output:06backward_simple_rnn_2/strided_slice_3/stack_1:output:06backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_3¥
&backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&backward_simple_rnn_2/transpose_1/permý
!backward_simple_rnn_2/transpose_1	TransposeAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!backward_simple_rnn_2/transpose_1j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2%backward_simple_rnn_2/transpose_1:y:0ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	ReverseV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis«
concatConcatV2$forward_simple_rnn_2/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
concatn
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp?^backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>^backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp@^backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp^backward_simple_rnn_2/while>^forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=^forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp?^forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp^forward_simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2:
backward_simple_rnn_2/whilebackward_simple_rnn_2/while2~
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp28
forward_simple_rnn_2/whileforward_simple_rnn_2/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

Û
3__inference_simple_rnn_cell_4_layer_call_fn_1307948

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_13031632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ëF
Ä
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307280

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOp»
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMulÂ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/BiasAddÉ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOp·
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMul_1³
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/add
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1307214*
condR
while_cond_1307213*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
E__inference_dense_31_layer_call_and_return_conditional_losses_1304595

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ëF
Ä
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1303753

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOp»
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMulÂ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/BiasAddÉ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOp·
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMul_1³
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/add
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1303687*
condR
while_cond_1303686*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î

"__inference__wrapped_model_1302595
input_11u
csequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:r
dsequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:w
esequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:v
dsequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:s
esequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:x
fsequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:X
Bsequential_10_conv1d_7_conv1d_expanddims_1_readvariableop_resource: @D
6sequential_10_conv1d_7_biasadd_readvariableop_resource:@X
Bsequential_10_conv1d_8_conv1d_expanddims_1_readvariableop_resource:@ D
6sequential_10_conv1d_8_biasadd_readvariableop_resource: G
5sequential_10_dense_30_matmul_readvariableop_resource: @D
6sequential_10_dense_30_biasadd_readvariableop_resource:@G
5sequential_10_dense_31_matmul_readvariableop_resource:@ D
6sequential_10_dense_31_biasadd_readvariableop_resource: G
5sequential_10_dense_32_matmul_readvariableop_resource: D
6sequential_10_dense_32_biasadd_readvariableop_resource:
identity¢\sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢[sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢]sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢9sequential_10/bidirectional_3/backward_simple_rnn_2/while¢[sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Zsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢\sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢8sequential_10/bidirectional_3/forward_simple_rnn_2/while¢-sequential_10/conv1d_7/BiasAdd/ReadVariableOp¢9sequential_10/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp¢-sequential_10/conv1d_8/BiasAdd/ReadVariableOp¢9sequential_10/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢-sequential_10/dense_30/BiasAdd/ReadVariableOp¢,sequential_10/dense_30/MatMul/ReadVariableOp¢-sequential_10/dense_31/BiasAdd/ReadVariableOp¢,sequential_10/dense_31/MatMul/ReadVariableOp¢-sequential_10/dense_32/BiasAdd/ReadVariableOp¢,sequential_10/dense_32/MatMul/ReadVariableOp¬
8sequential_10/bidirectional_3/forward_simple_rnn_2/ShapeShapeinput_11*
T0*
_output_shapes
:2:
8sequential_10/bidirectional_3/forward_simple_rnn_2/ShapeÚ
Fsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stackÞ
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stack_1Þ
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stack_2
@sequential_10/bidirectional_3/forward_simple_rnn_2/strided_sliceStridedSliceAsequential_10/bidirectional_3/forward_simple_rnn_2/Shape:output:0Osequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stack:output:0Qsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stack_1:output:0Qsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@sequential_10/bidirectional_3/forward_simple_rnn_2/strided_sliceÈ
Asequential_10/bidirectional_3/forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_10/bidirectional_3/forward_simple_rnn_2/zeros/packed/1Ï
?sequential_10/bidirectional_3/forward_simple_rnn_2/zeros/packedPackIsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice:output:0Jsequential_10/bidirectional_3/forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2A
?sequential_10/bidirectional_3/forward_simple_rnn_2/zeros/packedÅ
>sequential_10/bidirectional_3/forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2@
>sequential_10/bidirectional_3/forward_simple_rnn_2/zeros/ConstÁ
8sequential_10/bidirectional_3/forward_simple_rnn_2/zerosFillHsequential_10/bidirectional_3/forward_simple_rnn_2/zeros/packed:output:0Gsequential_10/bidirectional_3/forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8sequential_10/bidirectional_3/forward_simple_rnn_2/zerosÛ
Asequential_10/bidirectional_3/forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2C
Asequential_10/bidirectional_3/forward_simple_rnn_2/transpose/perm
<sequential_10/bidirectional_3/forward_simple_rnn_2/transpose	Transposeinput_11Jsequential_10/bidirectional_3/forward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<sequential_10/bidirectional_3/forward_simple_rnn_2/transposeè
:sequential_10/bidirectional_3/forward_simple_rnn_2/Shape_1Shape@sequential_10/bidirectional_3/forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2<
:sequential_10/bidirectional_3/forward_simple_rnn_2/Shape_1Þ
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stackâ
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1â
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2 
Bsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1StridedSliceCsequential_10/bidirectional_3/forward_simple_rnn_2/Shape_1:output:0Qsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack:output:0Ssequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1:output:0Ssequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2D
Bsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1ë
Nsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2P
Nsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shapeþ
@sequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2TensorListReserveWsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shape:output:0Ksequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02B
@sequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2¥
hsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2j
hsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÄ
Zsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor@sequential_10/bidirectional_3/forward_simple_rnn_2/transpose:y:0qsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02\
Zsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorÞ
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stackâ
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1â
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2®
Bsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2StridedSlice@sequential_10/bidirectional_3/forward_simple_rnn_2/transpose:y:0Qsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack:output:0Ssequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1:output:0Ssequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2D
Bsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2Ü
Zsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpcsequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02\
Zsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp
Ksequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMulKsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_2:output:0bsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2M
Ksequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMulÛ
[sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpdsequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02]
[sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp
Lsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAddUsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0csequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAddâ
\sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpesequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02^
\sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp
Msequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMulAsequential_10/bidirectional_3/forward_simple_rnn_2/zeros:output:0dsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Msequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1ÿ
Hsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/addAddV2Usequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:0Wsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2J
Hsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/add
Isequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/TanhTanhLsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Isequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/Tanhõ
Psequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2R
Psequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shape
Bsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1TensorListReserveYsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0Ksequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02D
Bsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1´
7sequential_10/bidirectional_3/forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_10/bidirectional_3/forward_simple_rnn_2/timeå
Ksequential_10/bidirectional_3/forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2M
Ksequential_10/bidirectional_3/forward_simple_rnn_2/while/maximum_iterationsÐ
Esequential_10/bidirectional_3/forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2G
Esequential_10/bidirectional_3/forward_simple_rnn_2/while/loop_counter­
8sequential_10/bidirectional_3/forward_simple_rnn_2/whileWhileNsequential_10/bidirectional_3/forward_simple_rnn_2/while/loop_counter:output:0Tsequential_10/bidirectional_3/forward_simple_rnn_2/while/maximum_iterations:output:0@sequential_10/bidirectional_3/forward_simple_rnn_2/time:output:0Ksequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1:handle:0Asequential_10/bidirectional_3/forward_simple_rnn_2/zeros:output:0Ksequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0jsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0csequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourcedsequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceesequential_10_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *Q
bodyIRG
Esequential_10_bidirectional_3_forward_simple_rnn_2_while_body_1302372*Q
condIRG
Esequential_10_bidirectional_3_forward_simple_rnn_2_while_cond_1302371*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2:
8sequential_10/bidirectional_3/forward_simple_rnn_2/while
csequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2e
csequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape´
Usequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStackAsequential_10/bidirectional_3/forward_simple_rnn_2/while:output:3lsequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02W
Usequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackç
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2J
Hsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stackâ
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2L
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1â
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2Ì
Bsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3StridedSlice^sequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Qsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack:output:0Ssequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1:output:0Ssequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2D
Bsequential_10/bidirectional_3/forward_simple_rnn_2/strided_slice_3ß
Csequential_10/bidirectional_3/forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2E
Csequential_10/bidirectional_3/forward_simple_rnn_2/transpose_1/permñ
>sequential_10/bidirectional_3/forward_simple_rnn_2/transpose_1	Transpose^sequential_10/bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Lsequential_10/bidirectional_3/forward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2@
>sequential_10/bidirectional_3/forward_simple_rnn_2/transpose_1®
9sequential_10/bidirectional_3/backward_simple_rnn_2/ShapeShapeinput_11*
T0*
_output_shapes
:2;
9sequential_10/bidirectional_3/backward_simple_rnn_2/ShapeÜ
Gsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stackà
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stack_1à
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stack_2
Asequential_10/bidirectional_3/backward_simple_rnn_2/strided_sliceStridedSliceBsequential_10/bidirectional_3/backward_simple_rnn_2/Shape:output:0Psequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stack:output:0Rsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stack_1:output:0Rsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Asequential_10/bidirectional_3/backward_simple_rnn_2/strided_sliceÊ
Bsequential_10/bidirectional_3/backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_10/bidirectional_3/backward_simple_rnn_2/zeros/packed/1Ó
@sequential_10/bidirectional_3/backward_simple_rnn_2/zeros/packedPackJsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice:output:0Ksequential_10/bidirectional_3/backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2B
@sequential_10/bidirectional_3/backward_simple_rnn_2/zeros/packedÇ
?sequential_10/bidirectional_3/backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2A
?sequential_10/bidirectional_3/backward_simple_rnn_2/zeros/ConstÅ
9sequential_10/bidirectional_3/backward_simple_rnn_2/zerosFillIsequential_10/bidirectional_3/backward_simple_rnn_2/zeros/packed:output:0Hsequential_10/bidirectional_3/backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9sequential_10/bidirectional_3/backward_simple_rnn_2/zerosÝ
Bsequential_10/bidirectional_3/backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2D
Bsequential_10/bidirectional_3/backward_simple_rnn_2/transpose/perm
=sequential_10/bidirectional_3/backward_simple_rnn_2/transpose	Transposeinput_11Ksequential_10/bidirectional_3/backward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2?
=sequential_10/bidirectional_3/backward_simple_rnn_2/transposeë
;sequential_10/bidirectional_3/backward_simple_rnn_2/Shape_1ShapeAsequential_10/bidirectional_3/backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2=
;sequential_10/bidirectional_3/backward_simple_rnn_2/Shape_1à
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2K
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stackä
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1ä
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2¦
Csequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1StridedSliceDsequential_10/bidirectional_3/backward_simple_rnn_2/Shape_1:output:0Rsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack:output:0Tsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1:output:0Tsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Csequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1í
Osequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2Q
Osequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shape
Asequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2TensorListReserveXsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shape:output:0Lsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Asequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2Ò
Bsequential_10/bidirectional_3/backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_10/bidirectional_3/backward_simple_rnn_2/ReverseV2/axisÑ
=sequential_10/bidirectional_3/backward_simple_rnn_2/ReverseV2	ReverseV2Asequential_10/bidirectional_3/backward_simple_rnn_2/transpose:y:0Ksequential_10/bidirectional_3/backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2?
=sequential_10/bidirectional_3/backward_simple_rnn_2/ReverseV2§
isequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2k
isequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÍ
[sequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorFsequential_10/bidirectional_3/backward_simple_rnn_2/ReverseV2:output:0rsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02]
[sequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorà
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2K
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stackä
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1ä
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2´
Csequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2StridedSliceAsequential_10/bidirectional_3/backward_simple_rnn_2/transpose:y:0Rsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack:output:0Tsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1:output:0Tsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2E
Csequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2ß
[sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpdsequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02]
[sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp
Lsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMulLsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_2:output:0csequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMulÞ
\sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpesequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02^
\sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp
Msequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAddVsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0dsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Msequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddå
]sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpfsequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02_
]sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Nsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMulBsequential_10/bidirectional_3/backward_simple_rnn_2/zeros:output:0esequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1
Isequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/addAddV2Vsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0Xsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Isequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/add¡
Jsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/TanhTanhMsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2L
Jsequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/Tanh÷
Qsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2S
Qsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shape
Csequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1TensorListReserveZsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0Lsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Csequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1¶
8sequential_10/bidirectional_3/backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2:
8sequential_10/bidirectional_3/backward_simple_rnn_2/timeç
Lsequential_10/bidirectional_3/backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2N
Lsequential_10/bidirectional_3/backward_simple_rnn_2/while/maximum_iterationsÒ
Fsequential_10/bidirectional_3/backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fsequential_10/bidirectional_3/backward_simple_rnn_2/while/loop_counter»
9sequential_10/bidirectional_3/backward_simple_rnn_2/whileWhileOsequential_10/bidirectional_3/backward_simple_rnn_2/while/loop_counter:output:0Usequential_10/bidirectional_3/backward_simple_rnn_2/while/maximum_iterations:output:0Asequential_10/bidirectional_3/backward_simple_rnn_2/time:output:0Lsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1:handle:0Bsequential_10/bidirectional_3/backward_simple_rnn_2/zeros:output:0Lsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0ksequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0dsequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceesequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourcefsequential_10_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *R
bodyJRH
Fsequential_10_bidirectional_3_backward_simple_rnn_2_while_body_1302478*R
condJRH
Fsequential_10_bidirectional_3_backward_simple_rnn_2_while_cond_1302477*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2;
9sequential_10/bidirectional_3/backward_simple_rnn_2/while
dsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2f
dsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape¸
Vsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStackBsequential_10/bidirectional_3/backward_simple_rnn_2/while:output:3msequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02X
Vsequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStacké
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2K
Isequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stackä
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2M
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1ä
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Ksequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2Ò
Csequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3StridedSlice_sequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Rsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack:output:0Tsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1:output:0Tsequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2E
Csequential_10/bidirectional_3/backward_simple_rnn_2/strided_slice_3á
Dsequential_10/bidirectional_3/backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2F
Dsequential_10/bidirectional_3/backward_simple_rnn_2/transpose_1/permõ
?sequential_10/bidirectional_3/backward_simple_rnn_2/transpose_1	Transpose_sequential_10/bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Msequential_10/bidirectional_3/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2A
?sequential_10/bidirectional_3/backward_simple_rnn_2/transpose_1¦
,sequential_10/bidirectional_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_10/bidirectional_3/ReverseV2/axis
'sequential_10/bidirectional_3/ReverseV2	ReverseV2Csequential_10/bidirectional_3/backward_simple_rnn_2/transpose_1:y:05sequential_10/bidirectional_3/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_10/bidirectional_3/ReverseV2
)sequential_10/bidirectional_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_10/bidirectional_3/concat/axisÁ
$sequential_10/bidirectional_3/concatConcatV2Bsequential_10/bidirectional_3/forward_simple_rnn_2/transpose_1:y:00sequential_10/bidirectional_3/ReverseV2:output:02sequential_10/bidirectional_3/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$sequential_10/bidirectional_3/concat§
,sequential_10/conv1d_7/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2.
,sequential_10/conv1d_7/conv1d/ExpandDims/dim
(sequential_10/conv1d_7/conv1d/ExpandDims
ExpandDims-sequential_10/bidirectional_3/concat:output:05sequential_10/conv1d_7/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_10/conv1d_7/conv1d/ExpandDimsý
9sequential_10/conv1d_7/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_10_conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02;
9sequential_10/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp¢
.sequential_10/conv1d_7/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_10/conv1d_7/conv1d/ExpandDims_1/dim
*sequential_10/conv1d_7/conv1d/ExpandDims_1
ExpandDimsAsequential_10/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp:value:07sequential_10/conv1d_7/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2,
*sequential_10/conv1d_7/conv1d/ExpandDims_1
sequential_10/conv1d_7/conv1dConv2D1sequential_10/conv1d_7/conv1d/ExpandDims:output:03sequential_10/conv1d_7/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
sequential_10/conv1d_7/conv1d×
%sequential_10/conv1d_7/conv1d/SqueezeSqueeze&sequential_10/conv1d_7/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2'
%sequential_10/conv1d_7/conv1d/SqueezeÑ
-sequential_10/conv1d_7/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_10/conv1d_7/BiasAdd/ReadVariableOpè
sequential_10/conv1d_7/BiasAddBiasAdd.sequential_10/conv1d_7/conv1d/Squeeze:output:05sequential_10/conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_10/conv1d_7/BiasAdd¡
sequential_10/conv1d_7/ReluRelu'sequential_10/conv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_10/conv1d_7/Relu§
,sequential_10/conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2.
,sequential_10/conv1d_8/conv1d/ExpandDims/dimþ
(sequential_10/conv1d_8/conv1d/ExpandDims
ExpandDims)sequential_10/conv1d_7/Relu:activations:05sequential_10/conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(sequential_10/conv1d_8/conv1d/ExpandDimsý
9sequential_10/conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_10_conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02;
9sequential_10/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢
.sequential_10/conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_10/conv1d_8/conv1d/ExpandDims_1/dim
*sequential_10/conv1d_8/conv1d/ExpandDims_1
ExpandDimsAsequential_10/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:07sequential_10/conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2,
*sequential_10/conv1d_8/conv1d/ExpandDims_1
sequential_10/conv1d_8/conv1dConv2D1sequential_10/conv1d_8/conv1d/ExpandDims:output:03sequential_10/conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
sequential_10/conv1d_8/conv1d×
%sequential_10/conv1d_8/conv1d/SqueezeSqueeze&sequential_10/conv1d_8/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2'
%sequential_10/conv1d_8/conv1d/SqueezeÑ
-sequential_10/conv1d_8/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_conv1d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_10/conv1d_8/BiasAdd/ReadVariableOpè
sequential_10/conv1d_8/BiasAddBiasAdd.sequential_10/conv1d_8/conv1d/Squeeze:output:05sequential_10/conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_10/conv1d_8/BiasAdd¡
sequential_10/conv1d_8/ReluRelu'sequential_10/conv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_10/conv1d_8/Relu
sequential_10/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2 
sequential_10/flatten_10/ConstÕ
 sequential_10/flatten_10/ReshapeReshape)sequential_10/conv1d_8/Relu:activations:0'sequential_10/flatten_10/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 sequential_10/flatten_10/ReshapeÒ
,sequential_10/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_30_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02.
,sequential_10/dense_30/MatMul/ReadVariableOpÛ
sequential_10/dense_30/MatMulMatMul)sequential_10/flatten_10/Reshape:output:04sequential_10/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_10/dense_30/MatMulÑ
-sequential_10/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_10/dense_30/BiasAdd/ReadVariableOpÝ
sequential_10/dense_30/BiasAddBiasAdd'sequential_10/dense_30/MatMul:product:05sequential_10/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_10/dense_30/BiasAdd
sequential_10/dense_30/ReluRelu'sequential_10/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_10/dense_30/ReluÒ
,sequential_10/dense_31/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_31_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02.
,sequential_10/dense_31/MatMul/ReadVariableOpÛ
sequential_10/dense_31/MatMulMatMul)sequential_10/dense_30/Relu:activations:04sequential_10/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_10/dense_31/MatMulÑ
-sequential_10/dense_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_10/dense_31/BiasAdd/ReadVariableOpÝ
sequential_10/dense_31/BiasAddBiasAdd'sequential_10/dense_31/MatMul:product:05sequential_10/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_10/dense_31/BiasAdd
sequential_10/dense_31/ReluRelu'sequential_10/dense_31/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_10/dense_31/ReluÒ
,sequential_10/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_32_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_10/dense_32/MatMul/ReadVariableOpÛ
sequential_10/dense_32/MatMulMatMul)sequential_10/dense_31/Relu:activations:04sequential_10/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_10/dense_32/MatMulÑ
-sequential_10/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_10/dense_32/BiasAdd/ReadVariableOpÝ
sequential_10/dense_32/BiasAddBiasAdd'sequential_10/dense_32/MatMul:product:05sequential_10/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_10/dense_32/BiasAdd¦
sequential_10/dense_32/SoftmaxSoftmax'sequential_10/dense_32/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_10/dense_32/Softmax
IdentityIdentity(sequential_10/dense_32/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityñ	
NoOpNoOp]^sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp\^sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp^^sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:^sequential_10/bidirectional_3/backward_simple_rnn_2/while\^sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp[^sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp]^sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp9^sequential_10/bidirectional_3/forward_simple_rnn_2/while.^sequential_10/conv1d_7/BiasAdd/ReadVariableOp:^sequential_10/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp.^sequential_10/conv1d_8/BiasAdd/ReadVariableOp:^sequential_10/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp.^sequential_10/dense_30/BiasAdd/ReadVariableOp-^sequential_10/dense_30/MatMul/ReadVariableOp.^sequential_10/dense_31/BiasAdd/ReadVariableOp-^sequential_10/dense_31/MatMul/ReadVariableOp.^sequential_10/dense_32/BiasAdd/ReadVariableOp-^sequential_10/dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2¼
\sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp\sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2º
[sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp[sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2¾
]sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp]sequential_10/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2v
9sequential_10/bidirectional_3/backward_simple_rnn_2/while9sequential_10/bidirectional_3/backward_simple_rnn_2/while2º
[sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp[sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2¸
Zsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpZsequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2¼
\sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp\sequential_10/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp2t
8sequential_10/bidirectional_3/forward_simple_rnn_2/while8sequential_10/bidirectional_3/forward_simple_rnn_2/while2^
-sequential_10/conv1d_7/BiasAdd/ReadVariableOp-sequential_10/conv1d_7/BiasAdd/ReadVariableOp2v
9sequential_10/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp9sequential_10/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_10/conv1d_8/BiasAdd/ReadVariableOp-sequential_10/conv1d_8/BiasAdd/ReadVariableOp2v
9sequential_10/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp9sequential_10/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_10/dense_30/BiasAdd/ReadVariableOp-sequential_10/dense_30/BiasAdd/ReadVariableOp2\
,sequential_10/dense_30/MatMul/ReadVariableOp,sequential_10/dense_30/MatMul/ReadVariableOp2^
-sequential_10/dense_31/BiasAdd/ReadVariableOp-sequential_10/dense_31/BiasAdd/ReadVariableOp2\
,sequential_10/dense_31/MatMul/ReadVariableOp,sequential_10/dense_31/MatMul/ReadVariableOp2^
-sequential_10/dense_32/BiasAdd/ReadVariableOp-sequential_10/dense_32/BiasAdd/ReadVariableOp2\
,sequential_10/dense_32/MatMul/ReadVariableOp,sequential_10/dense_32/MatMul/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_11
óH
Å
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1304021

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:?
1simple_rnn_cell_4_biasadd_readvariableop_resource:D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2
ReverseV2/axis
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ27
5TensorArrayUnstack/TensorListFromTensor/element_shapeý
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_4/MatMul/ReadVariableOp»
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMulÂ
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_4/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/BiasAddÉ
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_4/MatMul_1/ReadVariableOp·
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMul_1³
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/add
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1303955*
condR
while_cond_1303954*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
¯
while_cond_1307585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1307585___redundant_placeholder05
1while_while_cond_1307585___redundant_placeholder15
1while_while_cond_1307585___redundant_placeholder25
1while_while_cond_1307585___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

å
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1303883

inputs.
forward_simple_rnn_2_1303754:*
forward_simple_rnn_2_1303756:.
forward_simple_rnn_2_1303758:/
backward_simple_rnn_2_1303871:+
backward_simple_rnn_2_1303873:/
backward_simple_rnn_2_1303875:
identity¢-backward_simple_rnn_2/StatefulPartitionedCall¢,forward_simple_rnn_2/StatefulPartitionedCall
,forward_simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCallinputsforward_simple_rnn_2_1303754forward_simple_rnn_2_1303756forward_simple_rnn_2_1303758*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_13037532.
,forward_simple_rnn_2/StatefulPartitionedCall
-backward_simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_simple_rnn_2_1303871backward_simple_rnn_2_1303873backward_simple_rnn_2_1303875*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_13038702/
-backward_simple_rnn_2/StatefulPartitionedCallj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis³
	ReverseV2	ReverseV26backward_simple_rnn_2/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisÅ
concatConcatV25forward_simple_rnn_2/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
concatw
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity­
NoOpNoOp.^backward_simple_rnn_2/StatefulPartitionedCall-^forward_simple_rnn_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2^
-backward_simple_rnn_2/StatefulPartitionedCall-backward_simple_rnn_2/StatefulPartitionedCall2\
,forward_simple_rnn_2/StatefulPartitionedCall,forward_simple_rnn_2/StatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
Ã
7__inference_backward_simple_rnn_2_layer_call_fn_1307410
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_13034112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0


*__inference_conv1d_7_layer_call_fn_1306800

inputs
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_7_layer_call_and_return_conditional_losses_13045312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¬

E__inference_conv1d_7_layer_call_and_return_conditional_losses_1306816

inputsA
+conv1d_expanddims_1_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1¶
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÿ
¯
while_cond_1302655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1302655___redundant_placeholder05
1while_while_cond_1302655___redundant_placeholder15
1while_while_cond_1302655___redundant_placeholder25
1while_while_cond_1302655___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ëY
£
7bidirectional_3_forward_simple_rnn_2_while_body_1305363f
bbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_loop_counterl
hbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_maximum_iterations:
6bidirectional_3_forward_simple_rnn_2_while_placeholder<
8bidirectional_3_forward_simple_rnn_2_while_placeholder_1<
8bidirectional_3_forward_simple_rnn_2_while_placeholder_2e
abidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_strided_slice_1_0¢
bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0o
]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:l
^bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:q
_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:7
3bidirectional_3_forward_simple_rnn_2_while_identity9
5bidirectional_3_forward_simple_rnn_2_while_identity_19
5bidirectional_3_forward_simple_rnn_2_while_identity_29
5bidirectional_3_forward_simple_rnn_2_while_identity_39
5bidirectional_3_forward_simple_rnn_2_while_identity_4c
_bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_strided_slice_1 
bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorm
[bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:j
\bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:o
]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Sbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Rbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Tbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
\bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2^
\bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape²
Nbidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_06bidirectional_3_forward_simple_rnn_2_while_placeholderebidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02P
Nbidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemÆ
Rbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02T
Rbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpù
Cbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulUbidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Zbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulÅ
Sbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp^bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02U
Sbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpõ
Dbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAddMbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0[bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2F
Dbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddÌ
Tbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02V
Tbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpâ
Ebidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMul8bidirectional_3_forward_simple_rnn_2_while_placeholder_2\bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2G
Ebidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1ß
@bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2Mbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0Obidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2B
@bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/add
Abidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanhDbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Abidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh
Obidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem8bidirectional_3_forward_simple_rnn_2_while_placeholder_16bidirectional_3_forward_simple_rnn_2_while_placeholderEbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02Q
Obidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem¦
0bidirectional_3/forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :22
0bidirectional_3/forward_simple_rnn_2/while/add/yý
.bidirectional_3/forward_simple_rnn_2/while/addAddV26bidirectional_3_forward_simple_rnn_2_while_placeholder9bidirectional_3/forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 20
.bidirectional_3/forward_simple_rnn_2/while/addª
2bidirectional_3/forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :24
2bidirectional_3/forward_simple_rnn_2/while/add_1/y¯
0bidirectional_3/forward_simple_rnn_2/while/add_1AddV2bbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_loop_counter;bidirectional_3/forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 22
0bidirectional_3/forward_simple_rnn_2/while/add_1ÿ
3bidirectional_3/forward_simple_rnn_2/while/IdentityIdentity4bidirectional_3/forward_simple_rnn_2/while/add_1:z:00^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 25
3bidirectional_3/forward_simple_rnn_2/while/Identity·
5bidirectional_3/forward_simple_rnn_2/while/Identity_1Identityhbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_maximum_iterations0^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 27
5bidirectional_3/forward_simple_rnn_2/while/Identity_1
5bidirectional_3/forward_simple_rnn_2/while/Identity_2Identity2bidirectional_3/forward_simple_rnn_2/while/add:z:00^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 27
5bidirectional_3/forward_simple_rnn_2/while/Identity_2®
5bidirectional_3/forward_simple_rnn_2/while/Identity_3Identity_bidirectional_3/forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 27
5bidirectional_3/forward_simple_rnn_2/while/Identity_3¥
5bidirectional_3/forward_simple_rnn_2/while/Identity_4IdentityEbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:00^bidirectional_3/forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5bidirectional_3/forward_simple_rnn_2/while/Identity_4¦
/bidirectional_3/forward_simple_rnn_2/while/NoOpNoOpT^bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpS^bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpU^bidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 21
/bidirectional_3/forward_simple_rnn_2/while/NoOp"Ä
_bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_strided_slice_1abidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_strided_slice_1_0"s
3bidirectional_3_forward_simple_rnn_2_while_identity<bidirectional_3/forward_simple_rnn_2/while/Identity:output:0"w
5bidirectional_3_forward_simple_rnn_2_while_identity_1>bidirectional_3/forward_simple_rnn_2/while/Identity_1:output:0"w
5bidirectional_3_forward_simple_rnn_2_while_identity_2>bidirectional_3/forward_simple_rnn_2/while/Identity_2:output:0"w
5bidirectional_3_forward_simple_rnn_2_while_identity_3>bidirectional_3/forward_simple_rnn_2/while/Identity_3:output:0"w
5bidirectional_3_forward_simple_rnn_2_while_identity_4>bidirectional_3/forward_simple_rnn_2/while/Identity_4:output:0"¾
\bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource^bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"À
]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"¼
[bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource]bidirectional_3_forward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"¾
bidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbidirectional_3_forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_bidirectional_3_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2ª
Sbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpSbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2¨
Rbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpRbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2¬
Tbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpTbidirectional_3/forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
£1
É
while_body_1304085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÜ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpå
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_3/MatMulÖ
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_3/BiasAddÝ
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_3/MatMul_1Ë
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/add
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

ö
E__inference_dense_31_layer_call_and_return_conditional_losses_1306892

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÿ
¯
while_cond_1303686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1303686___redundant_placeholder05
1while_while_cond_1303686___redundant_placeholder15
1while_while_cond_1303686___redundant_placeholder25
1while_while_cond_1303686___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÿ
Ñ
(backward_simple_rnn_2_while_cond_1306066H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2J
Fbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306066___redundant_placeholder0a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306066___redundant_placeholder1a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306066___redundant_placeholder2a
]backward_simple_rnn_2_while_backward_simple_rnn_2_while_cond_1306066___redundant_placeholder3(
$backward_simple_rnn_2_while_identity
Þ
 backward_simple_rnn_2/while/LessLess'backward_simple_rnn_2_while_placeholderFbackward_simple_rnn_2_while_less_backward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2"
 backward_simple_rnn_2/while/Less
$backward_simple_rnn_2/while/IdentityIdentity$backward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identity"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
þ
À
6__inference_forward_simple_rnn_2_layer_call_fn_1306945

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_13037532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
E__inference_dense_32_layer_call_and_return_conditional_losses_1304612

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
½	

1__inference_bidirectional_3_layer_call_fn_1305919

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_13049472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
óH
Å
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307762

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:?
1simple_rnn_cell_4_biasadd_readvariableop_resource:D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2
ReverseV2/axis
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ27
5TensorArrayUnstack/TensorListFromTensor/element_shapeý
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_4/MatMul/ReadVariableOp»
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMulÂ
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_4/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/BiasAddÉ
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_4/MatMul_1/ReadVariableOp·
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMul_1³
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/add
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1307696*
condR
while_cond_1307695*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÎH
Ç
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307652
inputs_0B
0simple_rnn_cell_4_matmul_readvariableop_resource:?
1simple_rnn_cell_4_biasadd_readvariableop_resource:D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2
ReverseV2/axis
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeý
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_4/MatMul/ReadVariableOp»
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMulÂ
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_4/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/BiasAddÉ
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_4/MatMul_1/ReadVariableOp·
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/MatMul_1³
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/add
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_4/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1307586*
condR
while_cond_1307585*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ãÇ
À
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1304947

inputsW
Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:T
Fforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:Y
Gforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:X
Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:U
Gbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:Z
Hbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢backward_simple_rnn_2/while¢=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢forward_simple_rnn_2/whilen
forward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape
(forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(forward_simple_rnn_2/strided_slice/stack¢
*forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_1¢
*forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_2à
"forward_simple_rnn_2/strided_sliceStridedSlice#forward_simple_rnn_2/Shape:output:01forward_simple_rnn_2/strided_slice/stack:output:03forward_simple_rnn_2/strided_slice/stack_1:output:03forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"forward_simple_rnn_2/strided_slice
#forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#forward_simple_rnn_2/zeros/packed/1×
!forward_simple_rnn_2/zeros/packedPack+forward_simple_rnn_2/strided_slice:output:0,forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!forward_simple_rnn_2/zeros/packed
 forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 forward_simple_rnn_2/zeros/ConstÉ
forward_simple_rnn_2/zerosFill*forward_simple_rnn_2/zeros/packed:output:0)forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
forward_simple_rnn_2/zeros
#forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#forward_simple_rnn_2/transpose/perm¹
forward_simple_rnn_2/transpose	Transposeinputs,forward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
forward_simple_rnn_2/transpose
forward_simple_rnn_2/Shape_1Shape"forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape_1¢
*forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_1/stack¦
,forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_1¦
,forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_2ì
$forward_simple_rnn_2/strided_slice_1StridedSlice%forward_simple_rnn_2/Shape_1:output:03forward_simple_rnn_2/strided_slice_1/stack:output:05forward_simple_rnn_2/strided_slice_1/stack_1:output:05forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_1¯
0forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/TensorArrayV2/element_shape
"forward_simple_rnn_2/TensorArrayV2TensorListReserve9forward_simple_rnn_2/TensorArrayV2/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"forward_simple_rnn_2/TensorArrayV2é
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_2/transpose:y:0Sforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¢
*forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_2/stack¦
,forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_1¦
,forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_2ú
$forward_simple_rnn_2/strided_slice_2StridedSlice"forward_simple_rnn_2/transpose:y:03forward_simple_rnn_2/strided_slice_2/stack:output:05forward_simple_rnn_2/strided_slice_2/stack_1:output:05forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_2
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp
-forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMul-forward_simple_rnn_2/strided_slice_2:output:0Dforward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/simple_rnn_cell_3/MatMul
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAdd7forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0Eforward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02@
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMul#forward_simple_rnn_2/zeros:output:0Fforward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1
*forward_simple_rnn_2/simple_rnn_cell_3/addAddV27forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:09forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/simple_rnn_cell_3/addÄ
+forward_simple_rnn_2/simple_rnn_cell_3/TanhTanh.forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+forward_simple_rnn_2/simple_rnn_cell_3/Tanh¹
2forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2forward_simple_rnn_2/TensorArrayV2_1/element_shape
$forward_simple_rnn_2/TensorArrayV2_1TensorListReserve;forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$forward_simple_rnn_2/TensorArrayV2_1x
forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
forward_simple_rnn_2/time©
-forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/while/maximum_iterations
'forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'forward_simple_rnn_2/while/loop_counter
forward_simple_rnn_2/whileWhile0forward_simple_rnn_2/while/loop_counter:output:06forward_simple_rnn_2/while/maximum_iterations:output:0"forward_simple_rnn_2/time:output:0-forward_simple_rnn_2/TensorArrayV2_1:handle:0#forward_simple_rnn_2/zeros:output:0-forward_simple_rnn_2/strided_slice_1:output:0Lforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourceFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'forward_simple_rnn_2_while_body_1304771*3
cond+R)
'forward_simple_rnn_2_while_cond_1304770*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
forward_simple_rnn_2/whileß
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape¼
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_2/while:output:3Nforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack«
*forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/strided_slice_3/stack¦
,forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,forward_simple_rnn_2/strided_slice_3/stack_1¦
,forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_3/stack_2
$forward_simple_rnn_2/strided_slice_3StridedSlice@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_2/strided_slice_3/stack:output:05forward_simple_rnn_2/strided_slice_3/stack_1:output:05forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_3£
%forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%forward_simple_rnn_2/transpose_1/permù
 forward_simple_rnn_2/transpose_1	Transpose@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 forward_simple_rnn_2/transpose_1p
backward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape 
)backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)backward_simple_rnn_2/strided_slice/stack¤
+backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_1¤
+backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_2æ
#backward_simple_rnn_2/strided_sliceStridedSlice$backward_simple_rnn_2/Shape:output:02backward_simple_rnn_2/strided_slice/stack:output:04backward_simple_rnn_2/strided_slice/stack_1:output:04backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#backward_simple_rnn_2/strided_slice
$backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$backward_simple_rnn_2/zeros/packed/1Û
"backward_simple_rnn_2/zeros/packedPack,backward_simple_rnn_2/strided_slice:output:0-backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"backward_simple_rnn_2/zeros/packed
!backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!backward_simple_rnn_2/zeros/ConstÍ
backward_simple_rnn_2/zerosFill+backward_simple_rnn_2/zeros/packed:output:0*backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
backward_simple_rnn_2/zeros¡
$backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$backward_simple_rnn_2/transpose/perm¼
backward_simple_rnn_2/transpose	Transposeinputs-backward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/transpose
backward_simple_rnn_2/Shape_1Shape#backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape_1¤
+backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_1/stack¨
-backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_1¨
-backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_2ò
%backward_simple_rnn_2/strided_slice_1StridedSlice&backward_simple_rnn_2/Shape_1:output:04backward_simple_rnn_2/strided_slice_1/stack:output:06backward_simple_rnn_2/strided_slice_1/stack_1:output:06backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_1±
1backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/TensorArrayV2/element_shape
#backward_simple_rnn_2/TensorArrayV2TensorListReserve:backward_simple_rnn_2/TensorArrayV2/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#backward_simple_rnn_2/TensorArrayV2
$backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2&
$backward_simple_rnn_2/ReverseV2/axisÙ
backward_simple_rnn_2/ReverseV2	ReverseV2#backward_simple_rnn_2/transpose:y:0-backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/ReverseV2ë
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÕ
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_2/ReverseV2:output:0Tbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¤
+backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_2/stack¨
-backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_1¨
-backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_2
%backward_simple_rnn_2/strided_slice_2StridedSlice#backward_simple_rnn_2/transpose:y:04backward_simple_rnn_2/strided_slice_2/stack:output:06backward_simple_rnn_2/strided_slice_2/stack_1:output:06backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_2
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02?
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp
.backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMul.backward_simple_rnn_2/strided_slice_2:output:0Ebackward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/simple_rnn_cell_4/MatMul
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¡
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAdd8backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0Fbackward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02A
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMul$backward_simple_rnn_2/zeros:output:0Gbackward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1
+backward_simple_rnn_2/simple_rnn_cell_4/addAddV28backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0:backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/simple_rnn_cell_4/addÇ
,backward_simple_rnn_2/simple_rnn_cell_4/TanhTanh/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,backward_simple_rnn_2/simple_rnn_cell_4/Tanh»
3backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3backward_simple_rnn_2/TensorArrayV2_1/element_shape
%backward_simple_rnn_2/TensorArrayV2_1TensorListReserve<backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%backward_simple_rnn_2/TensorArrayV2_1z
backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
backward_simple_rnn_2/time«
.backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/while/maximum_iterations
(backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(backward_simple_rnn_2/while/loop_counter
backward_simple_rnn_2/whileWhile1backward_simple_rnn_2/while/loop_counter:output:07backward_simple_rnn_2/while/maximum_iterations:output:0#backward_simple_rnn_2/time:output:0.backward_simple_rnn_2/TensorArrayV2_1:handle:0$backward_simple_rnn_2/zeros:output:0.backward_simple_rnn_2/strided_slice_1:output:0Mbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourceHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *4
body,R*
(backward_simple_rnn_2_while_body_1304877*4
cond,R*
(backward_simple_rnn_2_while_cond_1304876*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
backward_simple_rnn_2/whileá
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_2/while:output:3Obackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack­
+backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/strided_slice_3/stack¨
-backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-backward_simple_rnn_2/strided_slice_3/stack_1¨
-backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_3/stack_2
%backward_simple_rnn_2/strided_slice_3StridedSliceAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_2/strided_slice_3/stack:output:06backward_simple_rnn_2/strided_slice_3/stack_1:output:06backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_3¥
&backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&backward_simple_rnn_2/transpose_1/permý
!backward_simple_rnn_2/transpose_1	TransposeAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!backward_simple_rnn_2/transpose_1j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2%backward_simple_rnn_2/transpose_1:y:0ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	ReverseV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis«
concatConcatV2$forward_simple_rnn_2/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
concatn
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp?^backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>^backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp@^backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp^backward_simple_rnn_2/while>^forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=^forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp?^forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp^forward_simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2:
backward_simple_rnn_2/whilebackward_simple_rnn_2/while2~
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp28
forward_simple_rnn_2/whileforward_simple_rnn_2/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ãÇ
À
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1304501

inputsW
Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:T
Fforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:Y
Gforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:X
Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:U
Gbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:Z
Hbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:
identity¢>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢backward_simple_rnn_2/while¢=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢forward_simple_rnn_2/whilen
forward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape
(forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(forward_simple_rnn_2/strided_slice/stack¢
*forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_1¢
*forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*forward_simple_rnn_2/strided_slice/stack_2à
"forward_simple_rnn_2/strided_sliceStridedSlice#forward_simple_rnn_2/Shape:output:01forward_simple_rnn_2/strided_slice/stack:output:03forward_simple_rnn_2/strided_slice/stack_1:output:03forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"forward_simple_rnn_2/strided_slice
#forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#forward_simple_rnn_2/zeros/packed/1×
!forward_simple_rnn_2/zeros/packedPack+forward_simple_rnn_2/strided_slice:output:0,forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!forward_simple_rnn_2/zeros/packed
 forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 forward_simple_rnn_2/zeros/ConstÉ
forward_simple_rnn_2/zerosFill*forward_simple_rnn_2/zeros/packed:output:0)forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
forward_simple_rnn_2/zeros
#forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#forward_simple_rnn_2/transpose/perm¹
forward_simple_rnn_2/transpose	Transposeinputs,forward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
forward_simple_rnn_2/transpose
forward_simple_rnn_2/Shape_1Shape"forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
forward_simple_rnn_2/Shape_1¢
*forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_1/stack¦
,forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_1¦
,forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_1/stack_2ì
$forward_simple_rnn_2/strided_slice_1StridedSlice%forward_simple_rnn_2/Shape_1:output:03forward_simple_rnn_2/strided_slice_1/stack:output:05forward_simple_rnn_2/strided_slice_1/stack_1:output:05forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_1¯
0forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/TensorArrayV2/element_shape
"forward_simple_rnn_2/TensorArrayV2TensorListReserve9forward_simple_rnn_2/TensorArrayV2/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"forward_simple_rnn_2/TensorArrayV2é
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_2/transpose:y:0Sforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¢
*forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*forward_simple_rnn_2/strided_slice_2/stack¦
,forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_1¦
,forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_2/stack_2ú
$forward_simple_rnn_2/strided_slice_2StridedSlice"forward_simple_rnn_2/transpose:y:03forward_simple_rnn_2/strided_slice_2/stack:output:05forward_simple_rnn_2/strided_slice_2/stack_1:output:05forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_2
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp
-forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMul-forward_simple_rnn_2/strided_slice_2:output:0Dforward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/simple_rnn_cell_3/MatMul
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAdd7forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0Eforward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02@
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMul#forward_simple_rnn_2/zeros:output:0Fforward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1
*forward_simple_rnn_2/simple_rnn_cell_3/addAddV27forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:09forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/simple_rnn_cell_3/addÄ
+forward_simple_rnn_2/simple_rnn_cell_3/TanhTanh.forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+forward_simple_rnn_2/simple_rnn_cell_3/Tanh¹
2forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2forward_simple_rnn_2/TensorArrayV2_1/element_shape
$forward_simple_rnn_2/TensorArrayV2_1TensorListReserve;forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$forward_simple_rnn_2/TensorArrayV2_1x
forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
forward_simple_rnn_2/time©
-forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-forward_simple_rnn_2/while/maximum_iterations
'forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'forward_simple_rnn_2/while/loop_counter
forward_simple_rnn_2/whileWhile0forward_simple_rnn_2/while/loop_counter:output:06forward_simple_rnn_2/while/maximum_iterations:output:0"forward_simple_rnn_2/time:output:0-forward_simple_rnn_2/TensorArrayV2_1:handle:0#forward_simple_rnn_2/zeros:output:0-forward_simple_rnn_2/strided_slice_1:output:0Lforward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourceFforward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceGforward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'forward_simple_rnn_2_while_body_1304325*3
cond+R)
'forward_simple_rnn_2_while_cond_1304324*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
forward_simple_rnn_2/whileß
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Eforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape¼
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_2/while:output:3Nforward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack«
*forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*forward_simple_rnn_2/strided_slice_3/stack¦
,forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,forward_simple_rnn_2/strided_slice_3/stack_1¦
,forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,forward_simple_rnn_2/strided_slice_3/stack_2
$forward_simple_rnn_2/strided_slice_3StridedSlice@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_2/strided_slice_3/stack:output:05forward_simple_rnn_2/strided_slice_3/stack_1:output:05forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$forward_simple_rnn_2/strided_slice_3£
%forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%forward_simple_rnn_2/transpose_1/permù
 forward_simple_rnn_2/transpose_1	Transpose@forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 forward_simple_rnn_2/transpose_1p
backward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape 
)backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)backward_simple_rnn_2/strided_slice/stack¤
+backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_1¤
+backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+backward_simple_rnn_2/strided_slice/stack_2æ
#backward_simple_rnn_2/strided_sliceStridedSlice$backward_simple_rnn_2/Shape:output:02backward_simple_rnn_2/strided_slice/stack:output:04backward_simple_rnn_2/strided_slice/stack_1:output:04backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#backward_simple_rnn_2/strided_slice
$backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$backward_simple_rnn_2/zeros/packed/1Û
"backward_simple_rnn_2/zeros/packedPack,backward_simple_rnn_2/strided_slice:output:0-backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"backward_simple_rnn_2/zeros/packed
!backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!backward_simple_rnn_2/zeros/ConstÍ
backward_simple_rnn_2/zerosFill+backward_simple_rnn_2/zeros/packed:output:0*backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
backward_simple_rnn_2/zeros¡
$backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$backward_simple_rnn_2/transpose/perm¼
backward_simple_rnn_2/transpose	Transposeinputs-backward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/transpose
backward_simple_rnn_2/Shape_1Shape#backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2
backward_simple_rnn_2/Shape_1¤
+backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_1/stack¨
-backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_1¨
-backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_1/stack_2ò
%backward_simple_rnn_2/strided_slice_1StridedSlice&backward_simple_rnn_2/Shape_1:output:04backward_simple_rnn_2/strided_slice_1/stack:output:06backward_simple_rnn_2/strided_slice_1/stack_1:output:06backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_1±
1backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/TensorArrayV2/element_shape
#backward_simple_rnn_2/TensorArrayV2TensorListReserve:backward_simple_rnn_2/TensorArrayV2/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#backward_simple_rnn_2/TensorArrayV2
$backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 2&
$backward_simple_rnn_2/ReverseV2/axisÙ
backward_simple_rnn_2/ReverseV2	ReverseV2#backward_simple_rnn_2/transpose:y:0-backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
backward_simple_rnn_2/ReverseV2ë
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Kbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÕ
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_2/ReverseV2:output:0Tbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor¤
+backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+backward_simple_rnn_2/strided_slice_2/stack¨
-backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_1¨
-backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_2/stack_2
%backward_simple_rnn_2/strided_slice_2StridedSlice#backward_simple_rnn_2/transpose:y:04backward_simple_rnn_2/strided_slice_2/stack:output:06backward_simple_rnn_2/strided_slice_2/stack_1:output:06backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_2
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02?
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp
.backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMul.backward_simple_rnn_2/strided_slice_2:output:0Ebackward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/simple_rnn_cell_4/MatMul
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¡
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAdd8backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0Fbackward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02A
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMul$backward_simple_rnn_2/zeros:output:0Gbackward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1
+backward_simple_rnn_2/simple_rnn_cell_4/addAddV28backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0:backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/simple_rnn_cell_4/addÇ
,backward_simple_rnn_2/simple_rnn_cell_4/TanhTanh/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,backward_simple_rnn_2/simple_rnn_cell_4/Tanh»
3backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3backward_simple_rnn_2/TensorArrayV2_1/element_shape
%backward_simple_rnn_2/TensorArrayV2_1TensorListReserve<backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%backward_simple_rnn_2/TensorArrayV2_1z
backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
backward_simple_rnn_2/time«
.backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.backward_simple_rnn_2/while/maximum_iterations
(backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(backward_simple_rnn_2/while/loop_counter
backward_simple_rnn_2/whileWhile1backward_simple_rnn_2/while/loop_counter:output:07backward_simple_rnn_2/while/maximum_iterations:output:0#backward_simple_rnn_2/time:output:0.backward_simple_rnn_2/TensorArrayV2_1:handle:0$backward_simple_rnn_2/zeros:output:0.backward_simple_rnn_2/strided_slice_1:output:0Mbackward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceGbackward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourceHbackward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *4
body,R*
(backward_simple_rnn_2_while_body_1304431*4
cond,R*
(backward_simple_rnn_2_while_cond_1304430*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
backward_simple_rnn_2/whileá
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_2/while:output:3Obackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack­
+backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+backward_simple_rnn_2/strided_slice_3/stack¨
-backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-backward_simple_rnn_2/strided_slice_3/stack_1¨
-backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-backward_simple_rnn_2/strided_slice_3/stack_2
%backward_simple_rnn_2/strided_slice_3StridedSliceAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_2/strided_slice_3/stack:output:06backward_simple_rnn_2/strided_slice_3/stack_1:output:06backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%backward_simple_rnn_2/strided_slice_3¥
&backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&backward_simple_rnn_2/transpose_1/permý
!backward_simple_rnn_2/transpose_1	TransposeAbackward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!backward_simple_rnn_2/transpose_1j
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2%backward_simple_rnn_2/transpose_1:y:0ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	ReverseV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis«
concatConcatV2$forward_simple_rnn_2/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
concatn
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp?^backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>^backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp@^backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp^backward_simple_rnn_2/while>^forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=^forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp?^forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp^forward_simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp>backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp=backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2
?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp?backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2:
backward_simple_rnn_2/whilebackward_simple_rnn_2/while2~
=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp=forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp<forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2
>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp>forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp28
forward_simple_rnn_2/whileforward_simple_rnn_2/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê#
Ø
while_body_1303176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
!while_simple_rnn_cell_4_1303198_0:/
!while_simple_rnn_cell_4_1303200_0:3
!while_simple_rnn_cell_4_1303202_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_4_1303198:-
while_simple_rnn_cell_4_1303200:1
while_simple_rnn_cell_4_1303202:¢/while/simple_rnn_cell_4/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÙ
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_4_1303198_0!while_simple_rnn_cell_4_1303200_0!while_simple_rnn_cell_4_1303202_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_130316321
/while/simple_rnn_cell_4/StatefulPartitionedCallü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3©
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_4_1303198!while_simple_rnn_cell_4_1303198_0"D
while_simple_rnn_cell_4_1303200!while_simple_rnn_cell_4_1303200_0"D
while_simple_rnn_cell_4_1303202!while_simple_rnn_cell_4_1303202_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ëF
Ä
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1304151

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOp»
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMulÂ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/BiasAddÉ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOp·
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/MatMul_1³
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/add
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_cell_3/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1304085*
condR
while_cond_1304084*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity×
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
§
/__inference_sequential_10_layer_call_fn_1305321

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: @
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identity¢StatefulPartitionedCallµ
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
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_13050442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_conv1d_8_layer_call_fn_1306825

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv1d_8_layer_call_and_return_conditional_losses_13045532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
£1
É
while_body_1307696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÜ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_4/MatMul/ReadVariableOpå
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_4/MatMulÖ
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_4/BiasAddÝ
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_4/MatMul_1Ë
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/add
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_4/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
	
Á
7__inference_backward_simple_rnn_2_layer_call_fn_1307432

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_13040212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
é
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_1303163

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityg

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¥H
À
'forward_simple_rnn_2_while_body_1304771F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2E
Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0
}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:\
Nforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:a
Oforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:'
#forward_simple_rnn_2_while_identity)
%forward_simple_rnn_2_while_identity_1)
%forward_simple_rnn_2_while_identity_2)
%forward_simple_rnn_2_while_identity_3)
%forward_simple_rnn_2_while_identity_4C
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:Z
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpí
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_2_while_placeholderUforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02D
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¹
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulEforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02E
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpµ
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAdd=forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0Kforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02F
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMul(forward_simple_rnn_2_while_placeholder_2Lforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1
0forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2=forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0?forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/while/simple_rnn_cell_3/addÖ
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanh4forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhÍ
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_2_while_placeholder_1&forward_simple_rnn_2_while_placeholder5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02A
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
 forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 forward_simple_rnn_2/while/add/y½
forward_simple_rnn_2/while/addAddV2&forward_simple_rnn_2_while_placeholder)forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2 
forward_simple_rnn_2/while/add
"forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"forward_simple_rnn_2/while/add_1/yß
 forward_simple_rnn_2/while/add_1AddV2Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counter+forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 forward_simple_rnn_2/while/add_1¿
#forward_simple_rnn_2/while/IdentityIdentity$forward_simple_rnn_2/while/add_1:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identityç
%forward_simple_rnn_2/while/Identity_1IdentityHforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_1Á
%forward_simple_rnn_2/while/Identity_2Identity"forward_simple_rnn_2/while/add:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_2î
%forward_simple_rnn_2/while/Identity_3IdentityOforward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_3å
%forward_simple_rnn_2/while/Identity_4Identity5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0 ^forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%forward_simple_rnn_2/while/Identity_4Ö
forward_simple_rnn_2/while/NoOpNoOpD^forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpC^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpE^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
forward_simple_rnn_2/while/NoOp"
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0"W
%forward_simple_rnn_2_while_identity_1.forward_simple_rnn_2/while/Identity_1:output:0"W
%forward_simple_rnn_2_while_identity_2.forward_simple_rnn_2/while/Identity_2:output:0"W
%forward_simple_rnn_2_while_identity_3.forward_simple_rnn_2/while/Identity_3:output:0"W
%forward_simple_rnn_2_while_identity_4.forward_simple_rnn_2/while/Identity_4:output:0"
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resourceNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resourceMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"ü
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpCforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpBforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpDforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ó´
è
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305851

inputsg
Ubidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource:d
Vbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource:i
Wbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource:h
Vbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource:e
Wbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource:j
Xbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource:J
4conv1d_7_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_7_biasadd_readvariableop_resource:@J
4conv1d_8_conv1d_expanddims_1_readvariableop_resource:@ 6
(conv1d_8_biasadd_readvariableop_resource: 9
'dense_30_matmul_readvariableop_resource: @6
(dense_30_biasadd_readvariableop_resource:@9
'dense_31_matmul_readvariableop_resource:@ 6
(dense_31_biasadd_readvariableop_resource: 9
'dense_32_matmul_readvariableop_resource: 6
(dense_32_biasadd_readvariableop_resource:
identity¢Nbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Mbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp¢Obidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢+bidirectional_3/backward_simple_rnn_2/while¢Mbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Lbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp¢Nbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢*bidirectional_3/forward_simple_rnn_2/while¢conv1d_7/BiasAdd/ReadVariableOp¢+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp¢conv1d_8/BiasAdd/ReadVariableOp¢+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢dense_30/BiasAdd/ReadVariableOp¢dense_30/MatMul/ReadVariableOp¢dense_31/BiasAdd/ReadVariableOp¢dense_31/MatMul/ReadVariableOp¢dense_32/BiasAdd/ReadVariableOp¢dense_32/MatMul/ReadVariableOp
*bidirectional_3/forward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2,
*bidirectional_3/forward_simple_rnn_2/Shape¾
8bidirectional_3/forward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8bidirectional_3/forward_simple_rnn_2/strided_slice/stackÂ
:bidirectional_3/forward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:bidirectional_3/forward_simple_rnn_2/strided_slice/stack_1Â
:bidirectional_3/forward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:bidirectional_3/forward_simple_rnn_2/strided_slice/stack_2À
2bidirectional_3/forward_simple_rnn_2/strided_sliceStridedSlice3bidirectional_3/forward_simple_rnn_2/Shape:output:0Abidirectional_3/forward_simple_rnn_2/strided_slice/stack:output:0Cbidirectional_3/forward_simple_rnn_2/strided_slice/stack_1:output:0Cbidirectional_3/forward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2bidirectional_3/forward_simple_rnn_2/strided_slice¬
3bidirectional_3/forward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :25
3bidirectional_3/forward_simple_rnn_2/zeros/packed/1
1bidirectional_3/forward_simple_rnn_2/zeros/packedPack;bidirectional_3/forward_simple_rnn_2/strided_slice:output:0<bidirectional_3/forward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:23
1bidirectional_3/forward_simple_rnn_2/zeros/packed©
0bidirectional_3/forward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0bidirectional_3/forward_simple_rnn_2/zeros/Const
*bidirectional_3/forward_simple_rnn_2/zerosFill:bidirectional_3/forward_simple_rnn_2/zeros/packed:output:09bidirectional_3/forward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*bidirectional_3/forward_simple_rnn_2/zeros¿
3bidirectional_3/forward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          25
3bidirectional_3/forward_simple_rnn_2/transpose/permé
.bidirectional_3/forward_simple_rnn_2/transpose	Transposeinputs<bidirectional_3/forward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.bidirectional_3/forward_simple_rnn_2/transpose¾
,bidirectional_3/forward_simple_rnn_2/Shape_1Shape2bidirectional_3/forward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2.
,bidirectional_3/forward_simple_rnn_2/Shape_1Â
:bidirectional_3/forward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:bidirectional_3/forward_simple_rnn_2/strided_slice_1/stackÆ
<bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1Æ
<bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2Ì
4bidirectional_3/forward_simple_rnn_2/strided_slice_1StridedSlice5bidirectional_3/forward_simple_rnn_2/Shape_1:output:0Cbidirectional_3/forward_simple_rnn_2/strided_slice_1/stack:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_1:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4bidirectional_3/forward_simple_rnn_2/strided_slice_1Ï
@bidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2B
@bidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shapeÆ
2bidirectional_3/forward_simple_rnn_2/TensorArrayV2TensorListReserveIbidirectional_3/forward_simple_rnn_2/TensorArrayV2/element_shape:output:0=bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2bidirectional_3/forward_simple_rnn_2/TensorArrayV2
Zbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2\
Zbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape
Lbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2bidirectional_3/forward_simple_rnn_2/transpose:y:0cbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02N
Lbidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorÂ
:bidirectional_3/forward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:bidirectional_3/forward_simple_rnn_2/strided_slice_2/stackÆ
<bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1Æ
<bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2Ú
4bidirectional_3/forward_simple_rnn_2/strided_slice_2StridedSlice2bidirectional_3/forward_simple_rnn_2/transpose:y:0Cbidirectional_3/forward_simple_rnn_2/strided_slice_2/stack:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_1:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask26
4bidirectional_3/forward_simple_rnn_2/strided_slice_2²
Lbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpUbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02N
Lbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpÏ
=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMulMatMul=bidirectional_3/forward_simple_rnn_2/strided_slice_2:output:0Tbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2?
=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul±
Mbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02O
Mbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpÝ
>bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAddBiasAddGbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul:product:0Ubidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2@
>bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd¸
Nbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02P
Nbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpË
?bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1MatMul3bidirectional_3/forward_simple_rnn_2/zeros:output:0Vbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2A
?bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1Ç
:bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/addAddV2Gbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd:output:0Ibidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/addô
;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/TanhTanh>bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/TanhÙ
Bbidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2D
Bbidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shapeÌ
4bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1TensorListReserveKbidirectional_3/forward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0=bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1
)bidirectional_3/forward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2+
)bidirectional_3/forward_simple_rnn_2/timeÉ
=bidirectional_3/forward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2?
=bidirectional_3/forward_simple_rnn_2/while/maximum_iterations´
7bidirectional_3/forward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 29
7bidirectional_3/forward_simple_rnn_2/while/loop_counteré	
*bidirectional_3/forward_simple_rnn_2/whileWhile@bidirectional_3/forward_simple_rnn_2/while/loop_counter:output:0Fbidirectional_3/forward_simple_rnn_2/while/maximum_iterations:output:02bidirectional_3/forward_simple_rnn_2/time:output:0=bidirectional_3/forward_simple_rnn_2/TensorArrayV2_1:handle:03bidirectional_3/forward_simple_rnn_2/zeros:output:0=bidirectional_3/forward_simple_rnn_2/strided_slice_1:output:0\bidirectional_3/forward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ubidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_readvariableop_resourceVbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasadd_readvariableop_resourceWbidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *C
body;R9
7bidirectional_3_forward_simple_rnn_2_while_body_1305628*C
cond;R9
7bidirectional_3_forward_simple_rnn_2_while_cond_1305627*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2,
*bidirectional_3/forward_simple_rnn_2/whileÿ
Ubidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2W
Ubidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeü
Gbidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack3bidirectional_3/forward_simple_rnn_2/while:output:3^bidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02I
Gbidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStackË
:bidirectional_3/forward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2<
:bidirectional_3/forward_simple_rnn_2/strided_slice_3/stackÆ
<bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1Æ
<bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<bidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2ø
4bidirectional_3/forward_simple_rnn_2/strided_slice_3StridedSlicePbidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Cbidirectional_3/forward_simple_rnn_2/strided_slice_3/stack:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_1:output:0Ebidirectional_3/forward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask26
4bidirectional_3/forward_simple_rnn_2/strided_slice_3Ã
5bidirectional_3/forward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          27
5bidirectional_3/forward_simple_rnn_2/transpose_1/perm¹
0bidirectional_3/forward_simple_rnn_2/transpose_1	TransposePbidirectional_3/forward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0>bidirectional_3/forward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0bidirectional_3/forward_simple_rnn_2/transpose_1
+bidirectional_3/backward_simple_rnn_2/ShapeShapeinputs*
T0*
_output_shapes
:2-
+bidirectional_3/backward_simple_rnn_2/ShapeÀ
9bidirectional_3/backward_simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9bidirectional_3/backward_simple_rnn_2/strided_slice/stackÄ
;bidirectional_3/backward_simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;bidirectional_3/backward_simple_rnn_2/strided_slice/stack_1Ä
;bidirectional_3/backward_simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;bidirectional_3/backward_simple_rnn_2/strided_slice/stack_2Æ
3bidirectional_3/backward_simple_rnn_2/strided_sliceStridedSlice4bidirectional_3/backward_simple_rnn_2/Shape:output:0Bbidirectional_3/backward_simple_rnn_2/strided_slice/stack:output:0Dbidirectional_3/backward_simple_rnn_2/strided_slice/stack_1:output:0Dbidirectional_3/backward_simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3bidirectional_3/backward_simple_rnn_2/strided_slice®
4bidirectional_3/backward_simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :26
4bidirectional_3/backward_simple_rnn_2/zeros/packed/1
2bidirectional_3/backward_simple_rnn_2/zeros/packedPack<bidirectional_3/backward_simple_rnn_2/strided_slice:output:0=bidirectional_3/backward_simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:24
2bidirectional_3/backward_simple_rnn_2/zeros/packed«
1bidirectional_3/backward_simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1bidirectional_3/backward_simple_rnn_2/zeros/Const
+bidirectional_3/backward_simple_rnn_2/zerosFill;bidirectional_3/backward_simple_rnn_2/zeros/packed:output:0:bidirectional_3/backward_simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+bidirectional_3/backward_simple_rnn_2/zerosÁ
4bidirectional_3/backward_simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          26
4bidirectional_3/backward_simple_rnn_2/transpose/permì
/bidirectional_3/backward_simple_rnn_2/transpose	Transposeinputs=bidirectional_3/backward_simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/bidirectional_3/backward_simple_rnn_2/transposeÁ
-bidirectional_3/backward_simple_rnn_2/Shape_1Shape3bidirectional_3/backward_simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:2/
-bidirectional_3/backward_simple_rnn_2/Shape_1Ä
;bidirectional_3/backward_simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;bidirectional_3/backward_simple_rnn_2/strided_slice_1/stackÈ
=bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1È
=bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2Ò
5bidirectional_3/backward_simple_rnn_2/strided_slice_1StridedSlice6bidirectional_3/backward_simple_rnn_2/Shape_1:output:0Dbidirectional_3/backward_simple_rnn_2/strided_slice_1/stack:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_1:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5bidirectional_3/backward_simple_rnn_2/strided_slice_1Ñ
Abidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2C
Abidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shapeÊ
3bidirectional_3/backward_simple_rnn_2/TensorArrayV2TensorListReserveJbidirectional_3/backward_simple_rnn_2/TensorArrayV2/element_shape:output:0>bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type025
3bidirectional_3/backward_simple_rnn_2/TensorArrayV2¶
4bidirectional_3/backward_simple_rnn_2/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 26
4bidirectional_3/backward_simple_rnn_2/ReverseV2/axis
/bidirectional_3/backward_simple_rnn_2/ReverseV2	ReverseV23bidirectional_3/backward_simple_rnn_2/transpose:y:0=bidirectional_3/backward_simple_rnn_2/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/bidirectional_3/backward_simple_rnn_2/ReverseV2
[bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2]
[bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape
Mbidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor8bidirectional_3/backward_simple_rnn_2/ReverseV2:output:0dbidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02O
Mbidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensorÄ
;bidirectional_3/backward_simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;bidirectional_3/backward_simple_rnn_2/strided_slice_2/stackÈ
=bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1È
=bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2à
5bidirectional_3/backward_simple_rnn_2/strided_slice_2StridedSlice3bidirectional_3/backward_simple_rnn_2/transpose:y:0Dbidirectional_3/backward_simple_rnn_2/strided_slice_2/stack:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_1:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask27
5bidirectional_3/backward_simple_rnn_2/strided_slice_2µ
Mbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpVbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02O
Mbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpÓ
>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMulMatMul>bidirectional_3/backward_simple_rnn_2/strided_slice_2:output:0Ubidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2@
>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul´
Nbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpWbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02P
Nbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpá
?bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAddBiasAddHbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul:product:0Vbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2A
?bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd»
Obidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpXbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02Q
Obidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpÏ
@bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1MatMul4bidirectional_3/backward_simple_rnn_2/zeros:output:0Wbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2B
@bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1Ë
;bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/addAddV2Hbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd:output:0Jbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/add÷
<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/TanhTanh?bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/TanhÛ
Cbidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2E
Cbidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shapeÐ
5bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1TensorListReserveLbidirectional_3/backward_simple_rnn_2/TensorArrayV2_1/element_shape:output:0>bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1
*bidirectional_3/backward_simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2,
*bidirectional_3/backward_simple_rnn_2/timeË
>bidirectional_3/backward_simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2@
>bidirectional_3/backward_simple_rnn_2/while/maximum_iterations¶
8bidirectional_3/backward_simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2:
8bidirectional_3/backward_simple_rnn_2/while/loop_counter÷	
+bidirectional_3/backward_simple_rnn_2/whileWhileAbidirectional_3/backward_simple_rnn_2/while/loop_counter:output:0Gbidirectional_3/backward_simple_rnn_2/while/maximum_iterations:output:03bidirectional_3/backward_simple_rnn_2/time:output:0>bidirectional_3/backward_simple_rnn_2/TensorArrayV2_1:handle:04bidirectional_3/backward_simple_rnn_2/zeros:output:0>bidirectional_3/backward_simple_rnn_2/strided_slice_1:output:0]bidirectional_3/backward_simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Vbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_readvariableop_resourceWbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasadd_readvariableop_resourceXbidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *D
body<R:
8bidirectional_3_backward_simple_rnn_2_while_body_1305734*D
cond<R:
8bidirectional_3_backward_simple_rnn_2_while_cond_1305733*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2-
+bidirectional_3/backward_simple_rnn_2/while
Vbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2X
Vbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape
Hbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack4bidirectional_3/backward_simple_rnn_2/while:output:3_bidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02J
Hbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStackÍ
;bidirectional_3/backward_simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2=
;bidirectional_3/backward_simple_rnn_2/strided_slice_3/stackÈ
=bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1È
=bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=bidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2þ
5bidirectional_3/backward_simple_rnn_2/strided_slice_3StridedSliceQbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0Dbidirectional_3/backward_simple_rnn_2/strided_slice_3/stack:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_1:output:0Fbidirectional_3/backward_simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask27
5bidirectional_3/backward_simple_rnn_2/strided_slice_3Å
6bidirectional_3/backward_simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          28
6bidirectional_3/backward_simple_rnn_2/transpose_1/perm½
1bidirectional_3/backward_simple_rnn_2/transpose_1	TransposeQbidirectional_3/backward_simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_3/backward_simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1bidirectional_3/backward_simple_rnn_2/transpose_1
bidirectional_3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2 
bidirectional_3/ReverseV2/axisÙ
bidirectional_3/ReverseV2	ReverseV25bidirectional_3/backward_simple_rnn_2/transpose_1:y:0'bidirectional_3/ReverseV2/axis:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bidirectional_3/ReverseV2|
bidirectional_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
bidirectional_3/concat/axisû
bidirectional_3/concatConcatV24bidirectional_3/forward_simple_rnn_2/transpose_1:y:0"bidirectional_3/ReverseV2:output:0$bidirectional_3/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
bidirectional_3/concat
conv1d_7/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_7/conv1d/ExpandDims/dimÊ
conv1d_7/conv1d/ExpandDims
ExpandDimsbidirectional_3/concat:output:0'conv1d_7/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_7/conv1d/ExpandDimsÓ
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_7/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_7/conv1d/ExpandDims_1/dimÛ
conv1d_7/conv1d/ExpandDims_1
ExpandDims3conv1d_7/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_7/conv1d/ExpandDims_1Ú
conv1d_7/conv1dConv2D#conv1d_7/conv1d/ExpandDims:output:0%conv1d_7/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d_7/conv1d­
conv1d_7/conv1d/SqueezeSqueezeconv1d_7/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_7/conv1d/Squeeze§
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_7/BiasAdd/ReadVariableOp°
conv1d_7/BiasAddBiasAdd conv1d_7/conv1d/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_7/BiasAddw
conv1d_7/ReluReluconv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_7/Relu
conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_8/conv1d/ExpandDims/dimÆ
conv1d_8/conv1d/ExpandDims
ExpandDimsconv1d_7/Relu:activations:0'conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_8/conv1d/ExpandDimsÓ
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02-
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_8/conv1d/ExpandDims_1/dimÛ
conv1d_8/conv1d/ExpandDims_1
ExpandDims3conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d_8/conv1d/ExpandDims_1Ú
conv1d_8/conv1dConv2D#conv1d_8/conv1d/ExpandDims:output:0%conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d_8/conv1d­
conv1d_8/conv1d/SqueezeSqueezeconv1d_8/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_8/conv1d/Squeeze§
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_8/BiasAdd/ReadVariableOp°
conv1d_8/BiasAddBiasAdd conv1d_8/conv1d/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_8/BiasAddw
conv1d_8/ReluReluconv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_8/Reluu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
flatten_10/Const
flatten_10/ReshapeReshapeconv1d_8/Relu:activations:0flatten_10/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
flatten_10/Reshape¨
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_30/MatMul/ReadVariableOp£
dense_30/MatMulMatMulflatten_10/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/MatMul§
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_30/BiasAdd/ReadVariableOp¥
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/Relu¨
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_31/MatMul/ReadVariableOp£
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_31/MatMul§
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_31/BiasAdd/ReadVariableOp¥
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_31/BiasAdds
dense_31/ReluReludense_31/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_31/Relu¨
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_32/MatMul/ReadVariableOp£
dense_32/MatMulMatMuldense_31/Relu:activations:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_32/MatMul§
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_32/BiasAdd/ReadVariableOp¥
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_32/BiasAdd|
dense_32/SoftmaxSoftmaxdense_32/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_32/Softmaxu
IdentityIdentitydense_32/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityõ
NoOpNoOpO^bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpN^bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpP^bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp,^bidirectional_3/backward_simple_rnn_2/whileN^bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpM^bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpO^bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp+^bidirectional_3/forward_simple_rnn_2/while ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/conv1d/ExpandDims_1/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2 
Nbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOpNbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Mbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOpMbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul/ReadVariableOp2¢
Obidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOpObidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/MatMul_1/ReadVariableOp2Z
+bidirectional_3/backward_simple_rnn_2/while+bidirectional_3/backward_simple_rnn_2/while2
Mbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOpMbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Lbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOpLbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul/ReadVariableOp2 
Nbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOpNbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/MatMul_1/ReadVariableOp2X
*bidirectional_3/forward_simple_rnn_2/while*bidirectional_3/forward_simple_rnn_2/while2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥H
À
'forward_simple_rnn_2_while_body_1306397F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2E
Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0
}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:\
Nforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:a
Oforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:'
#forward_simple_rnn_2_while_identity)
%forward_simple_rnn_2_while_identity_1)
%forward_simple_rnn_2_while_identity_2)
%forward_simple_rnn_2_while_identity_3)
%forward_simple_rnn_2_while_identity_4C
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource:Z
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource:_
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpí
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_2_while_placeholderUforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>forward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02D
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp¹
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMulMatMulEforward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02E
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpµ
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAddBiasAdd=forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul:product:0Kforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02F
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1MatMul(forward_simple_rnn_2_while_placeholder_2Lforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1
0forward_simple_rnn_2/while/simple_rnn_cell_3/addAddV2=forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd:output:0?forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0forward_simple_rnn_2/while/simple_rnn_cell_3/addÖ
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhTanh4forward_simple_rnn_2/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1forward_simple_rnn_2/while/simple_rnn_cell_3/TanhÍ
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_2_while_placeholder_1&forward_simple_rnn_2_while_placeholder5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02A
?forward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
 forward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 forward_simple_rnn_2/while/add/y½
forward_simple_rnn_2/while/addAddV2&forward_simple_rnn_2_while_placeholder)forward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2 
forward_simple_rnn_2/while/add
"forward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"forward_simple_rnn_2/while/add_1/yß
 forward_simple_rnn_2/while/add_1AddV2Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counter+forward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 forward_simple_rnn_2/while/add_1¿
#forward_simple_rnn_2/while/IdentityIdentity$forward_simple_rnn_2/while/add_1:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identityç
%forward_simple_rnn_2/while/Identity_1IdentityHforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_1Á
%forward_simple_rnn_2/while/Identity_2Identity"forward_simple_rnn_2/while/add:z:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_2î
%forward_simple_rnn_2/while/Identity_3IdentityOforward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2'
%forward_simple_rnn_2/while/Identity_3å
%forward_simple_rnn_2/while/Identity_4Identity5forward_simple_rnn_2/while/simple_rnn_cell_3/Tanh:y:0 ^forward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%forward_simple_rnn_2/while/Identity_4Ö
forward_simple_rnn_2/while/NoOpNoOpD^forward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpC^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpE^forward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
forward_simple_rnn_2/while/NoOp"
?forward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1Aforward_simple_rnn_2_while_forward_simple_rnn_2_strided_slice_1_0"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0"W
%forward_simple_rnn_2_while_identity_1.forward_simple_rnn_2/while/Identity_1:output:0"W
%forward_simple_rnn_2_while_identity_2.forward_simple_rnn_2/while/Identity_2:output:0"W
%forward_simple_rnn_2_while_identity_3.forward_simple_rnn_2/while/Identity_3:output:0"W
%forward_simple_rnn_2_while_identity_4.forward_simple_rnn_2/while/Identity_4:output:0"
Lforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resourceNforward_simple_rnn_2_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceOforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resourceMforward_simple_rnn_2_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"ü
{forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Cforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpCforward_simple_rnn_2/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOpBforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul/ReadVariableOp2
Dforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpDforward_simple_rnn_2/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¬

E__inference_conv1d_8_layer_call_and_return_conditional_losses_1306841

inputsA
+conv1d_expanddims_1_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d/ExpandDims_1¶
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
²I
ß
(backward_simple_rnn_2_while_body_1306503H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2G
Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0
backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:]
Obackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:b
Pbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:(
$backward_simple_rnn_2_while_identity*
&backward_simple_rnn_2_while_identity_1*
&backward_simple_rnn_2_while_identity_2*
&backward_simple_rnn_2_while_identity_3*
&backward_simple_rnn_2_while_identity_4E
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:[
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpï
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_2_while_placeholderVbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02E
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp½
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMulFbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02F
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¹
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAdd>backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0Lbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02G
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp¦
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMul)backward_simple_rnn_2_while_placeholder_2Mbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1£
1backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2>backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0@backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/while/simple_rnn_cell_4/addÙ
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanh5backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhÒ
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_2_while_placeholder_1'backward_simple_rnn_2_while_placeholder6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02B
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
!backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!backward_simple_rnn_2/while/add/yÁ
backward_simple_rnn_2/while/addAddV2'backward_simple_rnn_2_while_placeholder*backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2!
backward_simple_rnn_2/while/add
#backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#backward_simple_rnn_2/while/add_1/yä
!backward_simple_rnn_2/while/add_1AddV2Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counter,backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!backward_simple_rnn_2/while/add_1Ã
$backward_simple_rnn_2/while/IdentityIdentity%backward_simple_rnn_2/while/add_1:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identityì
&backward_simple_rnn_2/while/Identity_1IdentityJbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_1Å
&backward_simple_rnn_2/while/Identity_2Identity#backward_simple_rnn_2/while/add:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_2ò
&backward_simple_rnn_2/while/Identity_3IdentityPbackward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_3é
&backward_simple_rnn_2/while/Identity_4Identity6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0!^backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&backward_simple_rnn_2/while/Identity_4Û
 backward_simple_rnn_2/while/NoOpNoOpE^backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpD^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpF^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 backward_simple_rnn_2/while/NoOp"
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0"Y
&backward_simple_rnn_2_while_identity_1/backward_simple_rnn_2/while/Identity_1:output:0"Y
&backward_simple_rnn_2_while_identity_2/backward_simple_rnn_2/while/Identity_2:output:0"Y
&backward_simple_rnn_2_while_identity_3/backward_simple_rnn_2/while/Identity_3:output:0"Y
&backward_simple_rnn_2_while_identity_4/backward_simple_rnn_2/while/Identity_4:output:0" 
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resourceObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcePbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resourceNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpDbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpCbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpEbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
×

Esequential_10_bidirectional_3_forward_simple_rnn_2_while_cond_1302371
~sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_loop_counter
sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_maximum_iterationsH
Dsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholderJ
Fsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholder_1J
Fsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholder_2
sequential_10_bidirectional_3_forward_simple_rnn_2_while_less_sequential_10_bidirectional_3_forward_simple_rnn_2_strided_slice_1
sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_cond_1302371___redundant_placeholder0
sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_cond_1302371___redundant_placeholder1
sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_cond_1302371___redundant_placeholder2
sequential_10_bidirectional_3_forward_simple_rnn_2_while_sequential_10_bidirectional_3_forward_simple_rnn_2_while_cond_1302371___redundant_placeholder3E
Asequential_10_bidirectional_3_forward_simple_rnn_2_while_identity
ð
=sequential_10/bidirectional_3/forward_simple_rnn_2/while/LessLessDsequential_10_bidirectional_3_forward_simple_rnn_2_while_placeholdersequential_10_bidirectional_3_forward_simple_rnn_2_while_less_sequential_10_bidirectional_3_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2?
=sequential_10/bidirectional_3/forward_simple_rnn_2/while/Lessö
Asequential_10/bidirectional_3/forward_simple_rnn_2/while/IdentityIdentityAsequential_10/bidirectional_3/forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2C
Asequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity"
Asequential_10_bidirectional_3_forward_simple_rnn_2_while_identityJsequential_10/bidirectional_3/forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
£1
É
while_body_1307214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÜ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpå
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_3/MatMulÖ
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_3/BiasAddÝ
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_3/MatMul_1Ë
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/add
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÿ
¯
while_cond_1307321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1307321___redundant_placeholder05
1while_while_cond_1307321___redundant_placeholder15
1while_while_cond_1307321___redundant_placeholder25
1while_while_cond_1307321___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
â
¾
'forward_simple_rnn_2_while_cond_1305960F
Bforward_simple_rnn_2_while_forward_simple_rnn_2_while_loop_counterL
Hforward_simple_rnn_2_while_forward_simple_rnn_2_while_maximum_iterations*
&forward_simple_rnn_2_while_placeholder,
(forward_simple_rnn_2_while_placeholder_1,
(forward_simple_rnn_2_while_placeholder_2H
Dforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1305960___redundant_placeholder0_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1305960___redundant_placeholder1_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1305960___redundant_placeholder2_
[forward_simple_rnn_2_while_forward_simple_rnn_2_while_cond_1305960___redundant_placeholder3'
#forward_simple_rnn_2_while_identity
Ù
forward_simple_rnn_2/while/LessLess&forward_simple_rnn_2_while_placeholderDforward_simple_rnn_2_while_less_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 2!
forward_simple_rnn_2/while/Less
#forward_simple_rnn_2/while/IdentityIdentity#forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 2%
#forward_simple_rnn_2/while/Identity"S
#forward_simple_rnn_2_while_identity,forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¥;
§
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1302719

inputs+
simple_rnn_cell_3_1302644:'
simple_rnn_cell_3_1302646:+
simple_rnn_cell_3_1302648:
identity¢)simple_rnn_cell_3/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_3_1302644simple_rnn_cell_3_1302646simple_rnn_cell_3_1302648*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_13026432+
)simple_rnn_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_1302644simple_rnn_cell_3_1302646simple_rnn_cell_3_1302648*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_1302656*
condR
while_cond_1302655*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1w
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp*^simple_rnn_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»

%__inference_signature_wrapper_1305247
input_11
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: @
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_13025952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_11
²I
ß
(backward_simple_rnn_2_while_body_1306721H
Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counterN
Jbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations+
'backward_simple_rnn_2_while_placeholder-
)backward_simple_rnn_2_while_placeholder_1-
)backward_simple_rnn_2_while_placeholder_2G
Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0
backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:]
Obackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:b
Pbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:(
$backward_simple_rnn_2_while_identity*
&backward_simple_rnn_2_while_identity_1*
&backward_simple_rnn_2_while_identity_2*
&backward_simple_rnn_2_while_identity_3*
&backward_simple_rnn_2_while_identity_4E
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource:[
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource:`
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:¢Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpï
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Mbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_2_while_placeholderVbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?backward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02E
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp½
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMulMatMulFbackward_simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02F
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¹
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAddBiasAdd>backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul:product:0Lbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02G
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp¦
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1MatMul)backward_simple_rnn_2_while_placeholder_2Mbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1£
1backward_simple_rnn_2/while/simple_rnn_cell_4/addAddV2>backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd:output:0@backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1backward_simple_rnn_2/while/simple_rnn_cell_4/addÙ
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhTanh5backward_simple_rnn_2/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2backward_simple_rnn_2/while/simple_rnn_cell_4/TanhÒ
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_2_while_placeholder_1'backward_simple_rnn_2_while_placeholder6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype02B
@backward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem
!backward_simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!backward_simple_rnn_2/while/add/yÁ
backward_simple_rnn_2/while/addAddV2'backward_simple_rnn_2_while_placeholder*backward_simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: 2!
backward_simple_rnn_2/while/add
#backward_simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#backward_simple_rnn_2/while/add_1/yä
!backward_simple_rnn_2/while/add_1AddV2Dbackward_simple_rnn_2_while_backward_simple_rnn_2_while_loop_counter,backward_simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!backward_simple_rnn_2/while/add_1Ã
$backward_simple_rnn_2/while/IdentityIdentity%backward_simple_rnn_2/while/add_1:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2&
$backward_simple_rnn_2/while/Identityì
&backward_simple_rnn_2/while/Identity_1IdentityJbackward_simple_rnn_2_while_backward_simple_rnn_2_while_maximum_iterations!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_1Å
&backward_simple_rnn_2/while/Identity_2Identity#backward_simple_rnn_2/while/add:z:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_2ò
&backward_simple_rnn_2/while/Identity_3IdentityPbackward_simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 2(
&backward_simple_rnn_2/while/Identity_3é
&backward_simple_rnn_2/while/Identity_4Identity6backward_simple_rnn_2/while/simple_rnn_cell_4/Tanh:y:0!^backward_simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&backward_simple_rnn_2/while/Identity_4Û
 backward_simple_rnn_2/while/NoOpNoOpE^backward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpD^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpF^backward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 backward_simple_rnn_2/while/NoOp"
Abackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1Cbackward_simple_rnn_2_while_backward_simple_rnn_2_strided_slice_1_0"U
$backward_simple_rnn_2_while_identity-backward_simple_rnn_2/while/Identity:output:0"Y
&backward_simple_rnn_2_while_identity_1/backward_simple_rnn_2/while/Identity_1:output:0"Y
&backward_simple_rnn_2_while_identity_2/backward_simple_rnn_2/while/Identity_2:output:0"Y
&backward_simple_rnn_2_while_identity_3/backward_simple_rnn_2/while/Identity_3:output:0"Y
&backward_simple_rnn_2_while_identity_4/backward_simple_rnn_2/while/Identity_4:output:0" 
Mbackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resourceObackward_simple_rnn_2_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcePbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resourceNbackward_simple_rnn_2_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
}backward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Dbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpDbackward_simple_rnn_2/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOpCbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Ebackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpEbackward_simple_rnn_2/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ò
Â
6__inference_forward_simple_rnn_2_layer_call_fn_1306923
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_13027192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ó

*__inference_dense_32_layer_call_fn_1306901

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_13046122
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
²
î
7bidirectional_3_forward_simple_rnn_2_while_cond_1305627f
bbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_loop_counterl
hbidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_maximum_iterations:
6bidirectional_3_forward_simple_rnn_2_while_placeholder<
8bidirectional_3_forward_simple_rnn_2_while_placeholder_1<
8bidirectional_3_forward_simple_rnn_2_while_placeholder_2h
dbidirectional_3_forward_simple_rnn_2_while_less_bidirectional_3_forward_simple_rnn_2_strided_slice_1
{bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_cond_1305627___redundant_placeholder0
{bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_cond_1305627___redundant_placeholder1
{bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_cond_1305627___redundant_placeholder2
{bidirectional_3_forward_simple_rnn_2_while_bidirectional_3_forward_simple_rnn_2_while_cond_1305627___redundant_placeholder37
3bidirectional_3_forward_simple_rnn_2_while_identity
©
/bidirectional_3/forward_simple_rnn_2/while/LessLess6bidirectional_3_forward_simple_rnn_2_while_placeholderdbidirectional_3_forward_simple_rnn_2_while_less_bidirectional_3_forward_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 21
/bidirectional_3/forward_simple_rnn_2/while/LessÌ
3bidirectional_3/forward_simple_rnn_2/while/IdentityIdentity3bidirectional_3/forward_simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: 25
3bidirectional_3/forward_simple_rnn_2/while/Identity"s
3bidirectional_3_forward_simple_rnn_2_while_identity<bidirectional_3/forward_simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
1
É
while_body_1306998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpå
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/simple_rnn_cell_3/MatMulÖ
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/simple_rnn_cell_3/BiasAddÝ
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/simple_rnn_cell_3/MatMul_1Ë
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/add
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/simple_rnn_cell_3/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4í

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÿ
¯
while_cond_1303803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1303803___redundant_placeholder05
1while_while_cond_1303803___redundant_placeholder15
1while_while_cond_1303803___redundant_placeholder25
1while_while_cond_1303803___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ç
§
/__inference_sequential_10_layer_call_fn_1305284

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5: @
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: @

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14:
identity¢StatefulPartitionedCallµ
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
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_13046192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ûÿ
Ö)
#__inference__traced_restore_1308371
file_prefix6
 assignvariableop_conv1d_7_kernel: @.
 assignvariableop_1_conv1d_7_bias:@8
"assignvariableop_2_conv1d_8_kernel:@ .
 assignvariableop_3_conv1d_8_bias: 4
"assignvariableop_4_dense_30_kernel: @.
 assignvariableop_5_dense_30_bias:@4
"assignvariableop_6_dense_31_kernel:@ .
 assignvariableop_7_dense_31_bias: 4
"assignvariableop_8_dense_32_kernel: .
 assignvariableop_9_dense_32_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: c
Qassignvariableop_15_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel:m
[assignvariableop_16_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel:]
Oassignvariableop_17_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias:d
Rassignvariableop_18_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel:n
\assignvariableop_19_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel:^
Passignvariableop_20_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias:#
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: @
*assignvariableop_25_adam_conv1d_7_kernel_m: @6
(assignvariableop_26_adam_conv1d_7_bias_m:@@
*assignvariableop_27_adam_conv1d_8_kernel_m:@ 6
(assignvariableop_28_adam_conv1d_8_bias_m: <
*assignvariableop_29_adam_dense_30_kernel_m: @6
(assignvariableop_30_adam_dense_30_bias_m:@<
*assignvariableop_31_adam_dense_31_kernel_m:@ 6
(assignvariableop_32_adam_dense_31_bias_m: <
*assignvariableop_33_adam_dense_32_kernel_m: 6
(assignvariableop_34_adam_dense_32_bias_m:j
Xassignvariableop_35_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_m:t
bassignvariableop_36_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_m:d
Vassignvariableop_37_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_m:k
Yassignvariableop_38_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_m:u
cassignvariableop_39_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_m:e
Wassignvariableop_40_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_m:@
*assignvariableop_41_adam_conv1d_7_kernel_v: @6
(assignvariableop_42_adam_conv1d_7_bias_v:@@
*assignvariableop_43_adam_conv1d_8_kernel_v:@ 6
(assignvariableop_44_adam_conv1d_8_bias_v: <
*assignvariableop_45_adam_dense_30_kernel_v: @6
(assignvariableop_46_adam_dense_30_bias_v:@<
*assignvariableop_47_adam_dense_31_kernel_v:@ 6
(assignvariableop_48_adam_dense_31_bias_v: <
*assignvariableop_49_adam_dense_32_kernel_v: 6
(assignvariableop_50_adam_dense_32_bias_v:j
Xassignvariableop_51_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_v:t
bassignvariableop_52_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_v:d
Vassignvariableop_53_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_v:k
Yassignvariableop_54_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_v:u
cassignvariableop_55_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_v:e
Wassignvariableop_56_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_v:
identity_58¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¦
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*²
value¨B¥:B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÐ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*þ
_output_shapesë
è::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv1d_7_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_7_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_8_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_8_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_30_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_30_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_31_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_31_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_32_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_32_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10¥
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¦
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14®
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ù
AssignVariableOp_15AssignVariableOpQassignvariableop_15_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ã
AssignVariableOp_16AssignVariableOp[assignvariableop_16_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17×
AssignVariableOp_17AssignVariableOpOassignvariableop_17_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ú
AssignVariableOp_18AssignVariableOpRassignvariableop_18_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ä
AssignVariableOp_19AssignVariableOp\assignvariableop_19_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ø
AssignVariableOp_20AssignVariableOpPassignvariableop_20_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¡
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¡
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23£
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24£
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv1d_7_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv1d_7_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv1d_8_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv1d_8_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_30_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_30_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31²
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_31_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_31_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_32_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_32_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35à
AssignVariableOp_35AssignVariableOpXassignvariableop_35_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36ê
AssignVariableOp_36AssignVariableOpbassignvariableop_36_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Þ
AssignVariableOp_37AssignVariableOpVassignvariableop_37_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38á
AssignVariableOp_38AssignVariableOpYassignvariableop_38_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39ë
AssignVariableOp_39AssignVariableOpcassignvariableop_39_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40ß
AssignVariableOp_40AssignVariableOpWassignvariableop_40_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41²
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_conv1d_7_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42°
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_conv1d_7_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43²
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_conv1d_8_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44°
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_conv1d_8_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45²
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_30_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46°
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_30_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47²
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_31_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48°
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_31_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49²
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_32_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50°
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_32_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51à
AssignVariableOp_51AssignVariableOpXassignvariableop_51_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52ê
AssignVariableOp_52AssignVariableOpbassignvariableop_52_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_recurrent_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53Þ
AssignVariableOp_53AssignVariableOpVassignvariableop_53_adam_bidirectional_3_forward_simple_rnn_2_simple_rnn_cell_3_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54á
AssignVariableOp_54AssignVariableOpYassignvariableop_54_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55ë
AssignVariableOp_55AssignVariableOpcassignvariableop_55_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_recurrent_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56ß
AssignVariableOp_56AssignVariableOpWassignvariableop_56_adam_bidirectional_3_backward_simple_rnn_2_simple_rnn_cell_4_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÄ

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57f
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_58¬

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_58Identity_58:output:0*
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*±
serving_default
A
input_115
serving_default_input_11:0ÿÿÿÿÿÿÿÿÿ<
dense_320
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ø
à
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
¾__call__
¿_default_save_signature
+À&call_and_return_all_conditional_losses"
_tf_keras_sequential
Î
forward_layer
backward_layer
	variables
trainable_variables
regularization_losses
	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"
_tf_keras_layer
½

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"
_tf_keras_layer
½

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses"
_tf_keras_layer
§
 	variables
!trainable_variables
"regularization_losses
#	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"
_tf_keras_layer
½

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses"
_tf_keras_layer
½

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses"
_tf_keras_layer
½

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"
_tf_keras_layer

6iter

7beta_1

8beta_2
	9decay
:learning_ratemmm m¡$m¢%m£*m¤+m¥0m¦1m§;m¨<m©=mª>m«?m¬@m­v®v¯v°v±$v²%v³*v´+vµ0v¶1v·;v¸<v¹=vº>v»?v¼@v½"
	optimizer

;0
<1
=2
>3
?4
@5
6
7
8
9
$10
%11
*12
+13
014
115"
trackable_list_wrapper

;0
<1
=2
>3
?4
@5
6
7
8
9
$10
%11
*12
+13
014
115"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
Ametrics
		variables
Bnon_trainable_variables

Clayers
Dlayer_regularization_losses

trainable_variables
regularization_losses
Elayer_metrics
¾__call__
¿_default_save_signature
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
-
Ïserving_default"
signature_map
Å
Fcell
G
state_spec
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Å
Lcell
M
state_spec
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
Ò__call__
+Ó&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
J
;0
<1
=2
>3
?4
@5"
trackable_list_wrapper
J
;0
<1
=2
>3
?4
@5"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Rmetrics
	variables
Snon_trainable_variables

Tlayers
Ulayer_regularization_losses
trainable_variables
regularization_losses
Vlayer_metrics
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
%:# @2conv1d_7/kernel
:@2conv1d_7/bias
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
°
Wmetrics
	variables
Xnon_trainable_variables

Ylayers
Zlayer_regularization_losses
trainable_variables
regularization_losses
[layer_metrics
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
%:#@ 2conv1d_8/kernel
: 2conv1d_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
\metrics
	variables
]non_trainable_variables

^layers
_layer_regularization_losses
trainable_variables
regularization_losses
`layer_metrics
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
ametrics
 	variables
bnon_trainable_variables

clayers
dlayer_regularization_losses
!trainable_variables
"regularization_losses
elayer_metrics
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
!: @2dense_30/kernel
:@2dense_30/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
fmetrics
&	variables
gnon_trainable_variables

hlayers
ilayer_regularization_losses
'trainable_variables
(regularization_losses
jlayer_metrics
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_31/kernel
: 2dense_31/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
kmetrics
,	variables
lnon_trainable_variables

mlayers
nlayer_regularization_losses
-trainable_variables
.regularization_losses
olayer_metrics
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_32/kernel
:2dense_32/bias
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
°
pmetrics
2	variables
qnon_trainable_variables

rlayers
slayer_regularization_losses
3trainable_variables
4regularization_losses
tlayer_metrics
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
O:M2=bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel
Y:W2Gbidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel
I:G2;bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias
P:N2>bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel
Z:X2Hbidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel
J:H2<bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ó

;kernel
<recurrent_kernel
=bias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
Ô__call__
+Õ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
 "
trackable_list_wrapper
½
{metrics
H	variables
|non_trainable_variables

}states

~layers
layer_regularization_losses
Itrainable_variables
Jregularization_losses
layer_metrics
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
×

>kernel
?recurrent_kernel
@bias
	variables
trainable_variables
regularization_losses
	keras_api
Ö__call__
+×&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
>0
?1
@2"
trackable_list_wrapper
5
>0
?1
@2"
trackable_list_wrapper
 "
trackable_list_wrapper
Â
metrics
N	variables
non_trainable_variables
states
layers
 layer_regularization_losses
Otrainable_variables
Pregularization_losses
layer_metrics
Ò__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
5
;0
<1
=2"
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
w	variables
non_trainable_variables
layers
 layer_regularization_losses
xtrainable_variables
yregularization_losses
layer_metrics
Ô__call__
+Õ&call_and_return_all_conditional_losses
'Õ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
>0
?1
@2"
trackable_list_wrapper
5
>0
?1
@2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
metrics
	variables
non_trainable_variables
layers
 layer_regularization_losses
trainable_variables
regularization_losses
layer_metrics
Ö__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
L0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
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
*:( @2Adam/conv1d_7/kernel/m
 :@2Adam/conv1d_7/bias/m
*:(@ 2Adam/conv1d_8/kernel/m
 : 2Adam/conv1d_8/bias/m
&:$ @2Adam/dense_30/kernel/m
 :@2Adam/dense_30/bias/m
&:$@ 2Adam/dense_31/kernel/m
 : 2Adam/dense_31/bias/m
&:$ 2Adam/dense_32/kernel/m
 :2Adam/dense_32/bias/m
T:R2DAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/m
^:\2NAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/m
N:L2BAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/m
U:S2EAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/m
_:]2OAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/m
O:M2CAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/m
*:( @2Adam/conv1d_7/kernel/v
 :@2Adam/conv1d_7/bias/v
*:(@ 2Adam/conv1d_8/kernel/v
 : 2Adam/conv1d_8/bias/v
&:$ @2Adam/dense_30/kernel/v
 :@2Adam/dense_30/bias/v
&:$@ 2Adam/dense_31/kernel/v
 : 2Adam/dense_31/bias/v
&:$ 2Adam/dense_32/kernel/v
 :2Adam/dense_32/bias/v
T:R2DAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/kernel/v
^:\2NAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/recurrent_kernel/v
N:L2BAdam/bidirectional_3/forward_simple_rnn_2/simple_rnn_cell_3/bias/v
U:S2EAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/kernel/v
_:]2OAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/recurrent_kernel/v
O:M2CAdam/bidirectional_3/backward_simple_rnn_2/simple_rnn_cell_4/bias/v
2
/__inference_sequential_10_layer_call_fn_1304654
/__inference_sequential_10_layer_call_fn_1305284
/__inference_sequential_10_layer_call_fn_1305321
/__inference_sequential_10_layer_call_fn_1305116À
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
kwonlydefaultsª 
annotationsª *
 
ÎBË
"__inference__wrapped_model_1302595input_11"
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
annotationsª *
 
ö2ó
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305586
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305851
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305159
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305202À
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
kwonlydefaultsª 
annotationsª *
 
¸2µ
1__inference_bidirectional_3_layer_call_fn_1305868
1__inference_bidirectional_3_layer_call_fn_1305885
1__inference_bidirectional_3_layer_call_fn_1305902
1__inference_bidirectional_3_layer_call_fn_1305919æ
Ý²Ù
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤2¡
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306137
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306355
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306573
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306791æ
Ý²Ù
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_conv1d_7_layer_call_fn_1306800¢
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
annotationsª *
 
ï2ì
E__inference_conv1d_7_layer_call_and_return_conditional_losses_1306816¢
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
annotationsª *
 
Ô2Ñ
*__inference_conv1d_8_layer_call_fn_1306825¢
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
annotationsª *
 
ï2ì
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1306841¢
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
annotationsª *
 
Ö2Ó
,__inference_flatten_10_layer_call_fn_1306846¢
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
annotationsª *
 
ñ2î
G__inference_flatten_10_layer_call_and_return_conditional_losses_1306852¢
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
annotationsª *
 
Ô2Ñ
*__inference_dense_30_layer_call_fn_1306861¢
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
annotationsª *
 
ï2ì
E__inference_dense_30_layer_call_and_return_conditional_losses_1306872¢
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
annotationsª *
 
Ô2Ñ
*__inference_dense_31_layer_call_fn_1306881¢
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
annotationsª *
 
ï2ì
E__inference_dense_31_layer_call_and_return_conditional_losses_1306892¢
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
annotationsª *
 
Ô2Ñ
*__inference_dense_32_layer_call_fn_1306901¢
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
annotationsª *
 
ï2ì
E__inference_dense_32_layer_call_and_return_conditional_losses_1306912¢
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
annotationsª *
 
ÍBÊ
%__inference_signature_wrapper_1305247input_11"
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
annotationsª *
 
»2¸
6__inference_forward_simple_rnn_2_layer_call_fn_1306923
6__inference_forward_simple_rnn_2_layer_call_fn_1306934
6__inference_forward_simple_rnn_2_layer_call_fn_1306945
6__inference_forward_simple_rnn_2_layer_call_fn_1306956Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
§2¤
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307064
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307172
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307280
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307388Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¿2¼
7__inference_backward_simple_rnn_2_layer_call_fn_1307399
7__inference_backward_simple_rnn_2_layer_call_fn_1307410
7__inference_backward_simple_rnn_2_layer_call_fn_1307421
7__inference_backward_simple_rnn_2_layer_call_fn_1307432Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
«2¨
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307542
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307652
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307762
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307872Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®2«
3__inference_simple_rnn_cell_3_layer_call_fn_1307886
3__inference_simple_rnn_cell_3_layer_call_fn_1307900¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ä2á
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1307917
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1307934¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®2«
3__inference_simple_rnn_cell_4_layer_call_fn_1307948
3__inference_simple_rnn_cell_4_layer_call_fn_1307962¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ä2á
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_1307979
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_1307996¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ¤
"__inference__wrapped_model_1302595~;=<>@?$%*+015¢2
+¢(
&#
input_11ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_32"
dense_32ÿÿÿÿÿÿÿÿÿá
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307542>@?O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 á
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307652>@?O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ã
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307762>@?Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ã
R__inference_backward_simple_rnn_2_layer_call_and_return_conditional_losses_1307872>@?Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
7__inference_backward_simple_rnn_2_layer_call_fn_1307399}>@?O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
7__inference_backward_simple_rnn_2_layer_call_fn_1307410}>@?O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
7__inference_backward_simple_rnn_2_layer_call_fn_1307421>@?Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
7__inference_backward_simple_rnn_2_layer_call_fn_1307432>@?Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306137;=<>@?\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 

 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ë
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306355;=<>@?\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 

 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 È
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306573x;=<>@?C¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 

 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 È
L__inference_bidirectional_3_layer_call_and_return_conditional_losses_1306791x;=<>@?C¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 

 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 Ã
1__inference_bidirectional_3_layer_call_fn_1305868;=<>@?\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 

 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ã
1__inference_bidirectional_3_layer_call_fn_1305885;=<>@?\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 

 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ  
1__inference_bidirectional_3_layer_call_fn_1305902k;=<>@?C¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 

 

 
ª "ÿÿÿÿÿÿÿÿÿ  
1__inference_bidirectional_3_layer_call_fn_1305919k;=<>@?C¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 

 

 
ª "ÿÿÿÿÿÿÿÿÿ ­
E__inference_conv1d_7_layer_call_and_return_conditional_losses_1306816d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
*__inference_conv1d_7_layer_call_fn_1306800W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ@­
E__inference_conv1d_8_layer_call_and_return_conditional_losses_1306841d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
*__inference_conv1d_8_layer_call_fn_1306825W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¥
E__inference_dense_30_layer_call_and_return_conditional_losses_1306872\$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dense_30_layer_call_fn_1306861O$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dense_31_layer_call_and_return_conditional_losses_1306892\*+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
*__inference_dense_31_layer_call_fn_1306881O*+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¥
E__inference_dense_32_layer_call_and_return_conditional_losses_1306912\01/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_32_layer_call_fn_1306901O01/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_flatten_10_layer_call_and_return_conditional_losses_1306852\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_flatten_10_layer_call_fn_1306846O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ à
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307064;=<O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 à
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307172;=<O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 â
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307280;=<Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 â
Q__inference_forward_simple_rnn_2_layer_call_and_return_conditional_losses_1307388;=<Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ·
6__inference_forward_simple_rnn_2_layer_call_fn_1306923};=<O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ·
6__inference_forward_simple_rnn_2_layer_call_fn_1306934};=<O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹
6__inference_forward_simple_rnn_2_layer_call_fn_1306945;=<Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹
6__inference_forward_simple_rnn_2_layer_call_fn_1306956;=<Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305159x;=<>@?$%*+01=¢:
3¢0
&#
input_11ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305202x;=<>@?$%*+01=¢:
3¢0
&#
input_11ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305586v;=<>@?$%*+01;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
J__inference_sequential_10_layer_call_and_return_conditional_losses_1305851v;=<>@?$%*+01;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_10_layer_call_fn_1304654k;=<>@?$%*+01=¢:
3¢0
&#
input_11ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_10_layer_call_fn_1305116k;=<>@?$%*+01=¢:
3¢0
&#
input_11ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_10_layer_call_fn_1305284i;=<>@?$%*+01;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_10_layer_call_fn_1305321i;=<>@?$%*+01;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ´
%__inference_signature_wrapper_1305247;=<>@?$%*+01A¢>
¢ 
7ª4
2
input_11&#
input_11ÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_32"
dense_32ÿÿÿÿÿÿÿÿÿ
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1307917·;=<\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ
$!

0/1/0ÿÿÿÿÿÿÿÿÿ
 
N__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1307934·;=<\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ
$!

0/1/0ÿÿÿÿÿÿÿÿÿ
 á
3__inference_simple_rnn_cell_3_layer_call_fn_1307886©;=<\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ
"

1/0ÿÿÿÿÿÿÿÿÿá
3__inference_simple_rnn_cell_3_layer_call_fn_1307900©;=<\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ
"

1/0ÿÿÿÿÿÿÿÿÿ
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_1307979·>@?\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ
$!

0/1/0ÿÿÿÿÿÿÿÿÿ
 
N__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_1307996·>@?\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ
$!

0/1/0ÿÿÿÿÿÿÿÿÿ
 á
3__inference_simple_rnn_cell_4_layer_call_fn_1307948©>@?\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ
"

1/0ÿÿÿÿÿÿÿÿÿá
3__inference_simple_rnn_cell_4_layer_call_fn_1307962©>@?\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ
"

1/0ÿÿÿÿÿÿÿÿÿ