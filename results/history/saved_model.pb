??9
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
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
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02unknown8˚5
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
?
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H?*(
shared_nametime_distributed/kernel
?
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel* 
_output_shapes
:
?H?*
dtype0
?
time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nametime_distributed/bias
|
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes	
:?*
dtype0
?
time_distributed_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nametime_distributed_1/kernel
?
-time_distributed_1/kernel/Read/ReadVariableOpReadVariableOptime_distributed_1/kernel* 
_output_shapes
:
??*
dtype0
?
time_distributed_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nametime_distributed_1/bias
?
+time_distributed_1/bias/Read/ReadVariableOpReadVariableOptime_distributed_1/bias*
_output_shapes	
:?*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
??*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?x*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:x*
dtype0
r
encoder/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_nameencoder/gamma
k
!encoder/gamma/Read/ReadVariableOpReadVariableOpencoder/gamma*
_output_shapes
:x*
dtype0
p
encoder/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_nameencoder/beta
i
 encoder/beta/Read/ReadVariableOpReadVariableOpencoder/beta*
_output_shapes
:x*
dtype0
~
encoder/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*$
shared_nameencoder/moving_mean
w
'encoder/moving_mean/Read/ReadVariableOpReadVariableOpencoder/moving_mean*
_output_shapes
:x*
dtype0
?
encoder/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*(
shared_nameencoder/moving_variance

+encoder/moving_variance/Read/ReadVariableOpReadVariableOpencoder/moving_variance*
_output_shapes
:x*
dtype0
y
decoder/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	x?*
shared_namedecoder/kernel
r
"decoder/kernel/Read/ReadVariableOpReadVariableOpdecoder/kernel*
_output_shapes
:	x?*
dtype0
q
decoder/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedecoder/bias
j
 decoder/bias/Read/ReadVariableOpReadVariableOpdecoder/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namebatch_normalization/gamma
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_namebatch_normalization/beta
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:?*
dtype0
?
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!batch_normalization/moving_mean
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:?*
dtype0
?
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization/moving_variance
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:?*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
??*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
?
time_distributed_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nametime_distributed_2/gamma
?
,time_distributed_2/gamma/Read/ReadVariableOpReadVariableOptime_distributed_2/gamma*
_output_shapes	
:?*
dtype0
?
time_distributed_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nametime_distributed_2/beta
?
+time_distributed_2/beta/Read/ReadVariableOpReadVariableOptime_distributed_2/beta*
_output_shapes	
:?*
dtype0
?
time_distributed_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name time_distributed_2/moving_mean
?
2time_distributed_2/moving_mean/Read/ReadVariableOpReadVariableOptime_distributed_2/moving_mean*
_output_shapes	
:?*
dtype0
?
"time_distributed_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"time_distributed_2/moving_variance
?
6time_distributed_2/moving_variance/Read/ReadVariableOpReadVariableOp"time_distributed_2/moving_variance*
_output_shapes	
:?*
dtype0
?
time_distributed_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nametime_distributed_3/kernel
?
-time_distributed_3/kernel/Read/ReadVariableOpReadVariableOptime_distributed_3/kernel* 
_output_shapes
:
??*
dtype0
?
time_distributed_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nametime_distributed_3/bias
?
+time_distributed_3/bias/Read/ReadVariableOpReadVariableOptime_distributed_3/bias*
_output_shapes	
:?*
dtype0
?
time_distributed_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nametime_distributed_4/gamma
?
,time_distributed_4/gamma/Read/ReadVariableOpReadVariableOptime_distributed_4/gamma*
_output_shapes	
:?*
dtype0
?
time_distributed_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nametime_distributed_4/beta
?
+time_distributed_4/beta/Read/ReadVariableOpReadVariableOptime_distributed_4/beta*
_output_shapes	
:?*
dtype0
?
time_distributed_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name time_distributed_4/moving_mean
?
2time_distributed_4/moving_mean/Read/ReadVariableOpReadVariableOptime_distributed_4/moving_mean*
_output_shapes	
:?*
dtype0
?
"time_distributed_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"time_distributed_4/moving_variance
?
6time_distributed_4/moving_variance/Read/ReadVariableOpReadVariableOp"time_distributed_4/moving_variance*
_output_shapes	
:?*
dtype0
?
time_distributed_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??H**
shared_nametime_distributed_5/kernel
?
-time_distributed_5/kernel/Read/ReadVariableOpReadVariableOptime_distributed_5/kernel* 
_output_shapes
:
??H*
dtype0
?
time_distributed_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?H*(
shared_nametime_distributed_5/bias
?
+time_distributed_5/bias/Read/ReadVariableOpReadVariableOptime_distributed_5/bias*
_output_shapes	
:?H*
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
?
#RMSprop/time_distributed/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H?*4
shared_name%#RMSprop/time_distributed/kernel/rms
?
7RMSprop/time_distributed/kernel/rms/Read/ReadVariableOpReadVariableOp#RMSprop/time_distributed/kernel/rms* 
_output_shapes
:
?H?*
dtype0
?
!RMSprop/time_distributed/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!RMSprop/time_distributed/bias/rms
?
5RMSprop/time_distributed/bias/rms/Read/ReadVariableOpReadVariableOp!RMSprop/time_distributed/bias/rms*
_output_shapes	
:?*
dtype0
?
%RMSprop/time_distributed_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%RMSprop/time_distributed_1/kernel/rms
?
9RMSprop/time_distributed_1/kernel/rms/Read/ReadVariableOpReadVariableOp%RMSprop/time_distributed_1/kernel/rms* 
_output_shapes
:
??*
dtype0
?
#RMSprop/time_distributed_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#RMSprop/time_distributed_1/bias/rms
?
7RMSprop/time_distributed_1/bias/rms/Read/ReadVariableOpReadVariableOp#RMSprop/time_distributed_1/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameRMSprop/dense_2/kernel/rms
?
.RMSprop/dense_2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_2/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/dense_2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameRMSprop/dense_2/bias/rms
?
,RMSprop/dense_2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_2/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x*+
shared_nameRMSprop/dense_3/kernel/rms
?
.RMSprop/dense_3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_3/kernel/rms*
_output_shapes
:	?x*
dtype0
?
RMSprop/dense_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*)
shared_nameRMSprop/dense_3/bias/rms
?
,RMSprop/dense_3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_3/bias/rms*
_output_shapes
:x*
dtype0
?
RMSprop/encoder/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:x**
shared_nameRMSprop/encoder/gamma/rms
?
-RMSprop/encoder/gamma/rms/Read/ReadVariableOpReadVariableOpRMSprop/encoder/gamma/rms*
_output_shapes
:x*
dtype0
?
RMSprop/encoder/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*)
shared_nameRMSprop/encoder/beta/rms
?
,RMSprop/encoder/beta/rms/Read/ReadVariableOpReadVariableOpRMSprop/encoder/beta/rms*
_output_shapes
:x*
dtype0
?
RMSprop/decoder/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	x?*+
shared_nameRMSprop/decoder/kernel/rms
?
.RMSprop/decoder/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/decoder/kernel/rms*
_output_shapes
:	x?*
dtype0
?
RMSprop/decoder/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameRMSprop/decoder/bias/rms
?
,RMSprop/decoder/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/decoder/bias/rms*
_output_shapes	
:?*
dtype0
?
%RMSprop/batch_normalization/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%RMSprop/batch_normalization/gamma/rms
?
9RMSprop/batch_normalization/gamma/rms/Read/ReadVariableOpReadVariableOp%RMSprop/batch_normalization/gamma/rms*
_output_shapes	
:?*
dtype0
?
$RMSprop/batch_normalization/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$RMSprop/batch_normalization/beta/rms
?
8RMSprop/batch_normalization/beta/rms/Read/ReadVariableOpReadVariableOp$RMSprop/batch_normalization/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameRMSprop/dense_4/kernel/rms
?
.RMSprop/dense_4/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_4/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/dense_4/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameRMSprop/dense_4/bias/rms
?
,RMSprop/dense_4/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_4/bias/rms*
_output_shapes	
:?*
dtype0
?
$RMSprop/time_distributed_2/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$RMSprop/time_distributed_2/gamma/rms
?
8RMSprop/time_distributed_2/gamma/rms/Read/ReadVariableOpReadVariableOp$RMSprop/time_distributed_2/gamma/rms*
_output_shapes	
:?*
dtype0
?
#RMSprop/time_distributed_2/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#RMSprop/time_distributed_2/beta/rms
?
7RMSprop/time_distributed_2/beta/rms/Read/ReadVariableOpReadVariableOp#RMSprop/time_distributed_2/beta/rms*
_output_shapes	
:?*
dtype0
?
%RMSprop/time_distributed_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%RMSprop/time_distributed_3/kernel/rms
?
9RMSprop/time_distributed_3/kernel/rms/Read/ReadVariableOpReadVariableOp%RMSprop/time_distributed_3/kernel/rms* 
_output_shapes
:
??*
dtype0
?
#RMSprop/time_distributed_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#RMSprop/time_distributed_3/bias/rms
?
7RMSprop/time_distributed_3/bias/rms/Read/ReadVariableOpReadVariableOp#RMSprop/time_distributed_3/bias/rms*
_output_shapes	
:?*
dtype0
?
$RMSprop/time_distributed_4/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$RMSprop/time_distributed_4/gamma/rms
?
8RMSprop/time_distributed_4/gamma/rms/Read/ReadVariableOpReadVariableOp$RMSprop/time_distributed_4/gamma/rms*
_output_shapes	
:?*
dtype0
?
#RMSprop/time_distributed_4/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#RMSprop/time_distributed_4/beta/rms
?
7RMSprop/time_distributed_4/beta/rms/Read/ReadVariableOpReadVariableOp#RMSprop/time_distributed_4/beta/rms*
_output_shapes	
:?*
dtype0
?
%RMSprop/time_distributed_5/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??H*6
shared_name'%RMSprop/time_distributed_5/kernel/rms
?
9RMSprop/time_distributed_5/kernel/rms/Read/ReadVariableOpReadVariableOp%RMSprop/time_distributed_5/kernel/rms* 
_output_shapes
:
??H*
dtype0
?
#RMSprop/time_distributed_5/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?H*4
shared_name%#RMSprop/time_distributed_5/bias/rms
?
7RMSprop/time_distributed_5/bias/rms/Read/ReadVariableOpReadVariableOp#RMSprop/time_distributed_5/bias/rms*
_output_shapes	
:?H*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
encoder
decoder
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?
	layer-0

layer_with_weights-0

layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
trainable_variables
regularization_losses
	keras_api
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer_with_weights-4
layer-9
layer_with_weights-5
layer-10
layer-11
 layer-12
!layer_with_weights-6
!layer-13
"layer-14
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?
'iter
	(decay
)learning_rate
*momentum
+rho
,rms?
-rms?
.rms?
/rms?
0rms?
1rms?
2rms?
3rms?
4rms?
5rms?
8rms?
9rms?
:rms?
;rms?
>rms?
?rms?
@rms?
Arms?
Drms?
Erms?
Frms?
Grms?
Jrms?
Krms?
?
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
@20
A21
B22
C23
D24
E25
F26
G27
H28
I29
J30
K31
?
,0
-1
.2
/3
04
15
26
37
48
59
810
911
:12
;13
>14
?15
@16
A17
D18
E19
F20
G21
J22
K23
 
?
Llayer_regularization_losses
Mnon_trainable_variables

Nlayers
Olayer_metrics
	variables
Pmetrics
trainable_variables
regularization_losses
 
R
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
]
	Ulayer
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
]
	Zlayer
[	variables
\trainable_variables
]regularization_losses
^	keras_api
R
_	variables
`trainable_variables
aregularization_losses
b	keras_api
h

0kernel
1bias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
h

2kernel
3bias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
?
kaxis
	4gamma
5beta
6moving_mean
7moving_variance
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
V
,0
-1
.2
/3
04
15
26
37
48
59
610
711
F
,0
-1
.2
/3
04
15
26
37
48
59
 
?
player_regularization_losses
qnon_trainable_variables

rlayers
slayer_metrics
	variables
tmetrics
trainable_variables
regularization_losses
h

8kernel
9bias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
?
yaxis
	:gamma
;beta
<moving_mean
=moving_variance
z	variables
{trainable_variables
|regularization_losses
}	keras_api
T
~	variables
trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
b

?layer
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
b

?layer
?	variables
?trainable_variables
?regularization_losses
?	keras_api
b

?layer
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
b

?layer
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
80
91
:2
;3
<4
=5
>6
?7
@8
A9
B10
C11
D12
E13
F14
G15
H16
I17
J18
K19
f
80
91
:2
;3
>4
?5
@6
A7
D8
E9
F10
G11
J12
K13
 
?
 ?layer_regularization_losses
?non_trainable_variables
?layers
?layer_metrics
#	variables
?metrics
$trainable_variables
%regularization_losses
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEtime_distributed/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtime_distributed_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEencoder/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEencoder/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEencoder/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEencoder/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdecoder/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdecoder/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEbatch_normalization/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEbatch_normalization/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEbatch_normalization/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#batch_normalization/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_4/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_4/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtime_distributed_2/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_2/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEtime_distributed_2/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"time_distributed_2/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtime_distributed_4/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_4/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEtime_distributed_4/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"time_distributed_4/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_5/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_5/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
 
8
60
71
<2
=3
B4
C5
H6
I7

0
1
 

?0
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
Q	variables
?metrics
Rtrainable_variables
Sregularization_losses
l

,kernel
-bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

,0
-1

,0
-1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
V	variables
?metrics
Wtrainable_variables
Xregularization_losses
l

.kernel
/bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

.0
/1

.0
/1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
[	variables
?metrics
\trainable_variables
]regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
_	variables
?metrics
`trainable_variables
aregularization_losses

00
11

00
11
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
c	variables
?metrics
dtrainable_variables
eregularization_losses

20
31

20
31
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
g	variables
?metrics
htrainable_variables
iregularization_losses
 

40
51
62
73

40
51
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
l	variables
?metrics
mtrainable_variables
nregularization_losses
 

60
71
1
	0

1
2
3
4
5
6
 
 

80
91

80
91
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
u	variables
?metrics
vtrainable_variables
wregularization_losses
 

:0
;1
<2
=3

:0
;1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
z	variables
?metrics
{trainable_variables
|regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
~	variables
?metrics
trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses

>0
?1

>0
?1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?
	?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api

@0
A1
B2
C3

@0
A1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
l

Dkernel
Ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

D0
E1

D0
E1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?
	?axis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api

F0
G1
H2
I3

F0
G1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
l

Jkernel
Kbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api

J0
K1

J0
K1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 
 
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 
*
<0
=1
B2
C3
H4
I5
n
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14
 
 
8

?total

?count
?	variables
?	keras_api
 
 
 
 
 

,0
-1

,0
-1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 

U0
 
 
 

.0
/1

.0
/1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 

Z0
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

60
71
 
 
 
 
 
 
 
 
 

<0
=1
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

@0
A1
B2
C3

@0
A1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 

?0

B0
C1
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

D0
E1

D0
E1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 

?0
 
 
 
 

F0
G1
H2
I3

F0
G1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 

?0

H0
I1
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

J0
K1

J0
K1
 
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 

?0
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
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

B0
C1
 
 
 
 
 
 
 
 
 

H0
I1
 
 
 
 
 
 
 
}{
VARIABLE_VALUE#RMSprop/time_distributed/kernel/rmsDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE!RMSprop/time_distributed/bias/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE%RMSprop/time_distributed_1/kernel/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE#RMSprop/time_distributed_1/bias/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUERMSprop/dense_2/kernel/rmsDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUERMSprop/dense_2/bias/rmsDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUERMSprop/dense_3/kernel/rmsDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUERMSprop/dense_3/bias/rmsDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUERMSprop/encoder/gamma/rmsDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUERMSprop/encoder/beta/rmsDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUERMSprop/decoder/kernel/rmsEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUERMSprop/decoder/bias/rmsEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUE%RMSprop/batch_normalization/gamma/rmsEvariables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$RMSprop/batch_normalization/beta/rmsEvariables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUERMSprop/dense_4/kernel/rmsEvariables/18/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUERMSprop/dense_4/bias/rmsEvariables/19/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$RMSprop/time_distributed_2/gamma/rmsEvariables/20/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE#RMSprop/time_distributed_2/beta/rmsEvariables/21/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUE%RMSprop/time_distributed_3/kernel/rmsEvariables/24/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE#RMSprop/time_distributed_3/bias/rmsEvariables/25/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE$RMSprop/time_distributed_4/gamma/rmsEvariables/26/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE#RMSprop/time_distributed_4/beta/rmsEvariables/27/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUE%RMSprop/time_distributed_5/kernel/rmsEvariables/30/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE#RMSprop/time_distributed_5/bias/rmsEvariables/31/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????``*
dtype0*$
shape:?????????``
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1time_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasencoder/moving_varianceencoder/gammaencoder/moving_meanencoder/betadecoder/kerneldecoder/biasbatch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization/betabatch_normalization/gammadense_4/kerneldense_4/biastime_distributed_2/moving_mean"time_distributed_2/moving_variancetime_distributed_2/betatime_distributed_2/gammatime_distributed_3/kerneltime_distributed_3/biastime_distributed_4/moving_mean"time_distributed_4/moving_variancetime_distributed_4/betatime_distributed_4/gammatime_distributed_5/kerneltime_distributed_5/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_6921
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp-time_distributed_1/kernel/Read/ReadVariableOp+time_distributed_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp!encoder/gamma/Read/ReadVariableOp encoder/beta/Read/ReadVariableOp'encoder/moving_mean/Read/ReadVariableOp+encoder/moving_variance/Read/ReadVariableOp"decoder/kernel/Read/ReadVariableOp decoder/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp,time_distributed_2/gamma/Read/ReadVariableOp+time_distributed_2/beta/Read/ReadVariableOp2time_distributed_2/moving_mean/Read/ReadVariableOp6time_distributed_2/moving_variance/Read/ReadVariableOp-time_distributed_3/kernel/Read/ReadVariableOp+time_distributed_3/bias/Read/ReadVariableOp,time_distributed_4/gamma/Read/ReadVariableOp+time_distributed_4/beta/Read/ReadVariableOp2time_distributed_4/moving_mean/Read/ReadVariableOp6time_distributed_4/moving_variance/Read/ReadVariableOp-time_distributed_5/kernel/Read/ReadVariableOp+time_distributed_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp7RMSprop/time_distributed/kernel/rms/Read/ReadVariableOp5RMSprop/time_distributed/bias/rms/Read/ReadVariableOp9RMSprop/time_distributed_1/kernel/rms/Read/ReadVariableOp7RMSprop/time_distributed_1/bias/rms/Read/ReadVariableOp.RMSprop/dense_2/kernel/rms/Read/ReadVariableOp,RMSprop/dense_2/bias/rms/Read/ReadVariableOp.RMSprop/dense_3/kernel/rms/Read/ReadVariableOp,RMSprop/dense_3/bias/rms/Read/ReadVariableOp-RMSprop/encoder/gamma/rms/Read/ReadVariableOp,RMSprop/encoder/beta/rms/Read/ReadVariableOp.RMSprop/decoder/kernel/rms/Read/ReadVariableOp,RMSprop/decoder/bias/rms/Read/ReadVariableOp9RMSprop/batch_normalization/gamma/rms/Read/ReadVariableOp8RMSprop/batch_normalization/beta/rms/Read/ReadVariableOp.RMSprop/dense_4/kernel/rms/Read/ReadVariableOp,RMSprop/dense_4/bias/rms/Read/ReadVariableOp8RMSprop/time_distributed_2/gamma/rms/Read/ReadVariableOp7RMSprop/time_distributed_2/beta/rms/Read/ReadVariableOp9RMSprop/time_distributed_3/kernel/rms/Read/ReadVariableOp7RMSprop/time_distributed_3/bias/rms/Read/ReadVariableOp8RMSprop/time_distributed_4/gamma/rms/Read/ReadVariableOp7RMSprop/time_distributed_4/beta/rms/Read/ReadVariableOp9RMSprop/time_distributed_5/kernel/rms/Read/ReadVariableOp7RMSprop/time_distributed_5/bias/rms/Read/ReadVariableOpConst*L
TinE
C2A	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_10048
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhotime_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasencoder/gammaencoder/betaencoder/moving_meanencoder/moving_variancedecoder/kerneldecoder/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense_4/kerneldense_4/biastime_distributed_2/gammatime_distributed_2/betatime_distributed_2/moving_mean"time_distributed_2/moving_variancetime_distributed_3/kerneltime_distributed_3/biastime_distributed_4/gammatime_distributed_4/betatime_distributed_4/moving_mean"time_distributed_4/moving_variancetime_distributed_5/kerneltime_distributed_5/biastotalcount#RMSprop/time_distributed/kernel/rms!RMSprop/time_distributed/bias/rms%RMSprop/time_distributed_1/kernel/rms#RMSprop/time_distributed_1/bias/rmsRMSprop/dense_2/kernel/rmsRMSprop/dense_2/bias/rmsRMSprop/dense_3/kernel/rmsRMSprop/dense_3/bias/rmsRMSprop/encoder/gamma/rmsRMSprop/encoder/beta/rmsRMSprop/decoder/kernel/rmsRMSprop/decoder/bias/rms%RMSprop/batch_normalization/gamma/rms$RMSprop/batch_normalization/beta/rmsRMSprop/dense_4/kernel/rmsRMSprop/dense_4/bias/rms$RMSprop/time_distributed_2/gamma/rms#RMSprop/time_distributed_2/beta/rms%RMSprop/time_distributed_3/kernel/rms#RMSprop/time_distributed_3/bias/rms$RMSprop/time_distributed_4/gamma/rms#RMSprop/time_distributed_4/beta/rms%RMSprop/time_distributed_5/kernel/rms#RMSprop/time_distributed_5/bias/rms*K
TinD
B2@*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_10247??2
??
?)
E__inference_autoencoder_layer_call_and_return_conditional_losses_7526
xT
@sequential_time_distributed_dense_matmul_readvariableop_resource:
?H?P
Asequential_time_distributed_dense_biasadd_readvariableop_resource:	?X
Dsequential_time_distributed_1_dense_1_matmul_readvariableop_resource:
??T
Esequential_time_distributed_1_dense_1_biasadd_readvariableop_resource:	?E
1sequential_dense_2_matmul_readvariableop_resource:
??A
2sequential_dense_2_biasadd_readvariableop_resource:	?D
1sequential_dense_3_matmul_readvariableop_resource:	?x@
2sequential_dense_3_biasadd_readvariableop_resource:xH
:sequential_encoder_assignmovingavg_readvariableop_resource:xJ
<sequential_encoder_assignmovingavg_1_readvariableop_resource:xF
8sequential_encoder_batchnorm_mul_readvariableop_resource:xB
4sequential_encoder_batchnorm_readvariableop_resource:xF
3sequential_1_decoder_matmul_readvariableop_resource:	x?C
4sequential_1_decoder_biasadd_readvariableop_resource:	?W
Hsequential_1_batch_normalization_assignmovingavg_readvariableop_resource:	?Y
Jsequential_1_batch_normalization_assignmovingavg_1_readvariableop_resource:	?L
=sequential_1_batch_normalization_cast_readvariableop_resource:	?N
?sequential_1_batch_normalization_cast_1_readvariableop_resource:	?G
3sequential_1_dense_4_matmul_readvariableop_resource:
??C
4sequential_1_dense_4_biasadd_readvariableop_resource:	?l
]sequential_1_time_distributed_2_batch_normalization_1_assignmovingavg_readvariableop_resource:	?n
_sequential_1_time_distributed_2_batch_normalization_1_assignmovingavg_1_readvariableop_resource:	?a
Rsequential_1_time_distributed_2_batch_normalization_1_cast_readvariableop_resource:	?c
Tsequential_1_time_distributed_2_batch_normalization_1_cast_1_readvariableop_resource:	?Z
Fsequential_1_time_distributed_3_dense_5_matmul_readvariableop_resource:
??V
Gsequential_1_time_distributed_3_dense_5_biasadd_readvariableop_resource:	?l
]sequential_1_time_distributed_4_batch_normalization_2_assignmovingavg_readvariableop_resource:	?n
_sequential_1_time_distributed_4_batch_normalization_2_assignmovingavg_1_readvariableop_resource:	?a
Rsequential_1_time_distributed_4_batch_normalization_2_cast_readvariableop_resource:	?c
Tsequential_1_time_distributed_4_batch_normalization_2_cast_1_readvariableop_resource:	?Z
Fsequential_1_time_distributed_5_dense_6_matmul_readvariableop_resource:
??HV
Gsequential_1_time_distributed_5_dense_6_biasadd_readvariableop_resource:	?H
identity??)sequential/dense_2/BiasAdd/ReadVariableOp?(sequential/dense_2/MatMul/ReadVariableOp?)sequential/dense_3/BiasAdd/ReadVariableOp?(sequential/dense_3/MatMul/ReadVariableOp?"sequential/encoder/AssignMovingAvg?1sequential/encoder/AssignMovingAvg/ReadVariableOp?$sequential/encoder/AssignMovingAvg_1?3sequential/encoder/AssignMovingAvg_1/ReadVariableOp?+sequential/encoder/batchnorm/ReadVariableOp?/sequential/encoder/batchnorm/mul/ReadVariableOp?8sequential/time_distributed/dense/BiasAdd/ReadVariableOp?7sequential/time_distributed/dense/MatMul/ReadVariableOp?<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp?;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp?0sequential_1/batch_normalization/AssignMovingAvg??sequential_1/batch_normalization/AssignMovingAvg/ReadVariableOp?2sequential_1/batch_normalization/AssignMovingAvg_1?Asequential_1/batch_normalization/AssignMovingAvg_1/ReadVariableOp?4sequential_1/batch_normalization/Cast/ReadVariableOp?6sequential_1/batch_normalization/Cast_1/ReadVariableOp?+sequential_1/decoder/BiasAdd/ReadVariableOp?*sequential_1/decoder/MatMul/ReadVariableOp?+sequential_1/dense_4/BiasAdd/ReadVariableOp?*sequential_1/dense_4/MatMul/ReadVariableOp?Esequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg?Tsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp?Gsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1?Vsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?Isequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?Ksequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp?=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp?Esequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg?Tsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp?Gsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1?Vsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?Isequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?Ksequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp?=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOpv
sequential/CastCastx*

DstT0*

SrcT0*/
_output_shapes
:?????????``2
sequential/Castw
sequential/reshape/ShapeShapesequential/Cast:y:0*
T0*
_output_shapes
:2
sequential/reshape/Shape?
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/reshape/strided_slice/stack?
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_1?
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_2?
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/reshape/strided_slice?
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/1?
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"sequential/reshape/Reshape/shape/2?
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 sequential/reshape/Reshape/shape?
sequential/reshape/ReshapeReshapesequential/Cast:y:0)sequential/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2
sequential/reshape/Reshape?
)sequential/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2+
)sequential/time_distributed/Reshape/shape?
#sequential/time_distributed/ReshapeReshape#sequential/reshape/Reshape:output:02sequential/time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2%
#sequential/time_distributed/Reshape?
7sequential/time_distributed/dense/MatMul/ReadVariableOpReadVariableOp@sequential_time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype029
7sequential/time_distributed/dense/MatMul/ReadVariableOp?
(sequential/time_distributed/dense/MatMulMatMul,sequential/time_distributed/Reshape:output:0?sequential/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential/time_distributed/dense/MatMul?
8sequential/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential/time_distributed/dense/BiasAdd/ReadVariableOp?
)sequential/time_distributed/dense/BiasAddBiasAdd2sequential/time_distributed/dense/MatMul:product:0@sequential/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential/time_distributed/dense/BiasAdd?
&sequential/time_distributed/dense/ReluRelu2sequential/time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&sequential/time_distributed/dense/Relu?
+sequential/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2-
+sequential/time_distributed/Reshape_1/shape?
%sequential/time_distributed/Reshape_1Reshape4sequential/time_distributed/dense/Relu:activations:04sequential/time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2'
%sequential/time_distributed/Reshape_1?
+sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2-
+sequential/time_distributed/Reshape_2/shape?
%sequential/time_distributed/Reshape_2Reshape#sequential/reshape/Reshape:output:04sequential/time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H2'
%sequential/time_distributed/Reshape_2?
+sequential/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2-
+sequential/time_distributed_1/Reshape/shape?
%sequential/time_distributed_1/ReshapeReshape.sequential/time_distributed/Reshape_1:output:04sequential/time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/time_distributed_1/Reshape?
;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOpDsequential_time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp?
,sequential/time_distributed_1/dense_1/MatMulMatMul.sequential/time_distributed_1/Reshape:output:0Csequential/time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential/time_distributed_1/dense_1/MatMul?
<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpEsequential_time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
-sequential/time_distributed_1/dense_1/BiasAddBiasAdd6sequential/time_distributed_1/dense_1/MatMul:product:0Dsequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential/time_distributed_1/dense_1/BiasAdd?
*sequential/time_distributed_1/dense_1/ReluRelu6sequential/time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2,
*sequential/time_distributed_1/dense_1/Relu?
-sequential/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2/
-sequential/time_distributed_1/Reshape_1/shape?
'sequential/time_distributed_1/Reshape_1Reshape8sequential/time_distributed_1/dense_1/Relu:activations:06sequential/time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2)
'sequential/time_distributed_1/Reshape_1?
-sequential/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2/
-sequential/time_distributed_1/Reshape_2/shape?
'sequential/time_distributed_1/Reshape_2Reshape.sequential/time_distributed/Reshape_1:output:06sequential/time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential/time_distributed_1/Reshape_2?
!sequential/flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!sequential/flatten/transpose/perm?
sequential/flatten/transpose	Transpose0sequential/time_distributed_1/Reshape_1:output:0*sequential/flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
sequential/flatten/transpose?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape sequential/flatten/transpose:y:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/flatten/Reshape?
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(sequential/dense_2/MatMul/ReadVariableOp?
sequential/dense_2/MatMulMatMul#sequential/flatten/Reshape:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense_2/MatMul?
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)sequential/dense_2/BiasAdd/ReadVariableOp?
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense_2/BiasAdd?
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/dense_2/Relu?
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02*
(sequential/dense_3/MatMul/ReadVariableOp?
sequential/dense_3/MatMulMatMul%sequential/dense_2/Relu:activations:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
sequential/dense_3/MatMul?
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02+
)sequential/dense_3/BiasAdd/ReadVariableOp?
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
sequential/dense_3/BiasAdd?
1sequential/encoder/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential/encoder/moments/mean/reduction_indices?
sequential/encoder/moments/meanMean#sequential/dense_3/BiasAdd:output:0:sequential/encoder/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2!
sequential/encoder/moments/mean?
'sequential/encoder/moments/StopGradientStopGradient(sequential/encoder/moments/mean:output:0*
T0*
_output_shapes

:x2)
'sequential/encoder/moments/StopGradient?
,sequential/encoder/moments/SquaredDifferenceSquaredDifference#sequential/dense_3/BiasAdd:output:00sequential/encoder/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????x2.
,sequential/encoder/moments/SquaredDifference?
5sequential/encoder/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential/encoder/moments/variance/reduction_indices?
#sequential/encoder/moments/varianceMean0sequential/encoder/moments/SquaredDifference:z:0>sequential/encoder/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2%
#sequential/encoder/moments/variance?
"sequential/encoder/moments/SqueezeSqueeze(sequential/encoder/moments/mean:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2$
"sequential/encoder/moments/Squeeze?
$sequential/encoder/moments/Squeeze_1Squeeze,sequential/encoder/moments/variance:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2&
$sequential/encoder/moments/Squeeze_1?
(sequential/encoder/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(sequential/encoder/AssignMovingAvg/decay?
1sequential/encoder/AssignMovingAvg/ReadVariableOpReadVariableOp:sequential_encoder_assignmovingavg_readvariableop_resource*
_output_shapes
:x*
dtype023
1sequential/encoder/AssignMovingAvg/ReadVariableOp?
&sequential/encoder/AssignMovingAvg/subSub9sequential/encoder/AssignMovingAvg/ReadVariableOp:value:0+sequential/encoder/moments/Squeeze:output:0*
T0*
_output_shapes
:x2(
&sequential/encoder/AssignMovingAvg/sub?
&sequential/encoder/AssignMovingAvg/mulMul*sequential/encoder/AssignMovingAvg/sub:z:01sequential/encoder/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:x2(
&sequential/encoder/AssignMovingAvg/mul?
"sequential/encoder/AssignMovingAvgAssignSubVariableOp:sequential_encoder_assignmovingavg_readvariableop_resource*sequential/encoder/AssignMovingAvg/mul:z:02^sequential/encoder/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02$
"sequential/encoder/AssignMovingAvg?
*sequential/encoder/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2,
*sequential/encoder/AssignMovingAvg_1/decay?
3sequential/encoder/AssignMovingAvg_1/ReadVariableOpReadVariableOp<sequential_encoder_assignmovingavg_1_readvariableop_resource*
_output_shapes
:x*
dtype025
3sequential/encoder/AssignMovingAvg_1/ReadVariableOp?
(sequential/encoder/AssignMovingAvg_1/subSub;sequential/encoder/AssignMovingAvg_1/ReadVariableOp:value:0-sequential/encoder/moments/Squeeze_1:output:0*
T0*
_output_shapes
:x2*
(sequential/encoder/AssignMovingAvg_1/sub?
(sequential/encoder/AssignMovingAvg_1/mulMul,sequential/encoder/AssignMovingAvg_1/sub:z:03sequential/encoder/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:x2*
(sequential/encoder/AssignMovingAvg_1/mul?
$sequential/encoder/AssignMovingAvg_1AssignSubVariableOp<sequential_encoder_assignmovingavg_1_readvariableop_resource,sequential/encoder/AssignMovingAvg_1/mul:z:04^sequential/encoder/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02&
$sequential/encoder/AssignMovingAvg_1?
"sequential/encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"sequential/encoder/batchnorm/add/y?
 sequential/encoder/batchnorm/addAddV2-sequential/encoder/moments/Squeeze_1:output:0+sequential/encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2"
 sequential/encoder/batchnorm/add?
"sequential/encoder/batchnorm/RsqrtRsqrt$sequential/encoder/batchnorm/add:z:0*
T0*
_output_shapes
:x2$
"sequential/encoder/batchnorm/Rsqrt?
/sequential/encoder/batchnorm/mul/ReadVariableOpReadVariableOp8sequential_encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype021
/sequential/encoder/batchnorm/mul/ReadVariableOp?
 sequential/encoder/batchnorm/mulMul&sequential/encoder/batchnorm/Rsqrt:y:07sequential/encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2"
 sequential/encoder/batchnorm/mul?
"sequential/encoder/batchnorm/mul_1Mul#sequential/dense_3/BiasAdd:output:0$sequential/encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2$
"sequential/encoder/batchnorm/mul_1?
"sequential/encoder/batchnorm/mul_2Mul+sequential/encoder/moments/Squeeze:output:0$sequential/encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x2$
"sequential/encoder/batchnorm/mul_2?
+sequential/encoder/batchnorm/ReadVariableOpReadVariableOp4sequential_encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02-
+sequential/encoder/batchnorm/ReadVariableOp?
 sequential/encoder/batchnorm/subSub3sequential/encoder/batchnorm/ReadVariableOp:value:0&sequential/encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2"
 sequential/encoder/batchnorm/sub?
"sequential/encoder/batchnorm/add_1AddV2&sequential/encoder/batchnorm/mul_1:z:0$sequential/encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2$
"sequential/encoder/batchnorm/add_1?
*sequential_1/decoder/MatMul/ReadVariableOpReadVariableOp3sequential_1_decoder_matmul_readvariableop_resource*
_output_shapes
:	x?*
dtype02,
*sequential_1/decoder/MatMul/ReadVariableOp?
sequential_1/decoder/MatMulMatMul&sequential/encoder/batchnorm/add_1:z:02sequential_1/decoder/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/decoder/MatMul?
+sequential_1/decoder/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_decoder_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_1/decoder/BiasAdd/ReadVariableOp?
sequential_1/decoder/BiasAddBiasAdd%sequential_1/decoder/MatMul:product:03sequential_1/decoder/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/decoder/BiasAdd?
?sequential_1/batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2A
?sequential_1/batch_normalization/moments/mean/reduction_indices?
-sequential_1/batch_normalization/moments/meanMean%sequential_1/decoder/BiasAdd:output:0Hsequential_1/batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2/
-sequential_1/batch_normalization/moments/mean?
5sequential_1/batch_normalization/moments/StopGradientStopGradient6sequential_1/batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	?27
5sequential_1/batch_normalization/moments/StopGradient?
:sequential_1/batch_normalization/moments/SquaredDifferenceSquaredDifference%sequential_1/decoder/BiasAdd:output:0>sequential_1/batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2<
:sequential_1/batch_normalization/moments/SquaredDifference?
Csequential_1/batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_1/batch_normalization/moments/variance/reduction_indices?
1sequential_1/batch_normalization/moments/varianceMean>sequential_1/batch_normalization/moments/SquaredDifference:z:0Lsequential_1/batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(23
1sequential_1/batch_normalization/moments/variance?
0sequential_1/batch_normalization/moments/SqueezeSqueeze6sequential_1/batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 22
0sequential_1/batch_normalization/moments/Squeeze?
2sequential_1/batch_normalization/moments/Squeeze_1Squeeze:sequential_1/batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 24
2sequential_1/batch_normalization/moments/Squeeze_1?
6sequential_1/batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=28
6sequential_1/batch_normalization/AssignMovingAvg/decay?
?sequential_1/batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?sequential_1/batch_normalization/AssignMovingAvg/ReadVariableOp?
4sequential_1/batch_normalization/AssignMovingAvg/subSubGsequential_1/batch_normalization/AssignMovingAvg/ReadVariableOp:value:09sequential_1/batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:?26
4sequential_1/batch_normalization/AssignMovingAvg/sub?
4sequential_1/batch_normalization/AssignMovingAvg/mulMul8sequential_1/batch_normalization/AssignMovingAvg/sub:z:0?sequential_1/batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?26
4sequential_1/batch_normalization/AssignMovingAvg/mul?
0sequential_1/batch_normalization/AssignMovingAvgAssignSubVariableOpHsequential_1_batch_normalization_assignmovingavg_readvariableop_resource8sequential_1/batch_normalization/AssignMovingAvg/mul:z:0@^sequential_1/batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype022
0sequential_1/batch_normalization/AssignMovingAvg?
8sequential_1/batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2:
8sequential_1/batch_normalization/AssignMovingAvg_1/decay?
Asequential_1/batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOpJsequential_1_batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_1/batch_normalization/AssignMovingAvg_1/ReadVariableOp?
6sequential_1/batch_normalization/AssignMovingAvg_1/subSubIsequential_1/batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0;sequential_1/batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?28
6sequential_1/batch_normalization/AssignMovingAvg_1/sub?
6sequential_1/batch_normalization/AssignMovingAvg_1/mulMul:sequential_1/batch_normalization/AssignMovingAvg_1/sub:z:0Asequential_1/batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?28
6sequential_1/batch_normalization/AssignMovingAvg_1/mul?
2sequential_1/batch_normalization/AssignMovingAvg_1AssignSubVariableOpJsequential_1_batch_normalization_assignmovingavg_1_readvariableop_resource:sequential_1/batch_normalization/AssignMovingAvg_1/mul:z:0B^sequential_1/batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype024
2sequential_1/batch_normalization/AssignMovingAvg_1?
4sequential_1/batch_normalization/Cast/ReadVariableOpReadVariableOp=sequential_1_batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/batch_normalization/Cast/ReadVariableOp?
6sequential_1/batch_normalization/Cast_1/ReadVariableOpReadVariableOp?sequential_1_batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/batch_normalization/Cast_1/ReadVariableOp?
0sequential_1/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0sequential_1/batch_normalization/batchnorm/add/y?
.sequential_1/batch_normalization/batchnorm/addAddV2;sequential_1/batch_normalization/moments/Squeeze_1:output:09sequential_1/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?20
.sequential_1/batch_normalization/batchnorm/add?
0sequential_1/batch_normalization/batchnorm/RsqrtRsqrt2sequential_1/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?22
0sequential_1/batch_normalization/batchnorm/Rsqrt?
.sequential_1/batch_normalization/batchnorm/mulMul4sequential_1/batch_normalization/batchnorm/Rsqrt:y:0>sequential_1/batch_normalization/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?20
.sequential_1/batch_normalization/batchnorm/mul?
0sequential_1/batch_normalization/batchnorm/mul_1Mul%sequential_1/decoder/BiasAdd:output:02sequential_1/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????22
0sequential_1/batch_normalization/batchnorm/mul_1?
0sequential_1/batch_normalization/batchnorm/mul_2Mul9sequential_1/batch_normalization/moments/Squeeze:output:02sequential_1/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?22
0sequential_1/batch_normalization/batchnorm/mul_2?
.sequential_1/batch_normalization/batchnorm/subSub<sequential_1/batch_normalization/Cast/ReadVariableOp:value:04sequential_1/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?20
.sequential_1/batch_normalization/batchnorm/sub?
0sequential_1/batch_normalization/batchnorm/add_1AddV24sequential_1/batch_normalization/batchnorm/mul_1:z:02sequential_1/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????22
0sequential_1/batch_normalization/batchnorm/add_1?
sequential_1/activation/ReluRelu4sequential_1/batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
sequential_1/activation/Relu?
"sequential_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2$
"sequential_1/dropout/dropout/Const?
 sequential_1/dropout/dropout/MulMul*sequential_1/activation/Relu:activations:0+sequential_1/dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_1/dropout/dropout/Mul?
"sequential_1/dropout/dropout/ShapeShape*sequential_1/activation/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential_1/dropout/dropout/Shape?
9sequential_1/dropout/dropout/random_uniform/RandomUniformRandomUniform+sequential_1/dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02;
9sequential_1/dropout/dropout/random_uniform/RandomUniform?
+sequential_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+sequential_1/dropout/dropout/GreaterEqual/y?
)sequential_1/dropout/dropout/GreaterEqualGreaterEqualBsequential_1/dropout/dropout/random_uniform/RandomUniform:output:04sequential_1/dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/dropout/dropout/GreaterEqual?
!sequential_1/dropout/dropout/CastCast-sequential_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!sequential_1/dropout/dropout/Cast?
"sequential_1/dropout/dropout/Mul_1Mul$sequential_1/dropout/dropout/Mul:z:0%sequential_1/dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"sequential_1/dropout/dropout/Mul_1?
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*sequential_1/dense_4/MatMul/ReadVariableOp?
sequential_1/dense_4/MatMulMatMul&sequential_1/dropout/dropout/Mul_1:z:02sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/dense_4/MatMul?
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_1/dense_4/BiasAdd/ReadVariableOp?
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/dense_4/BiasAdd?
sequential_1/reshape_1/ShapeShape%sequential_1/dense_4/BiasAdd:output:0*
T0*
_output_shapes
:2
sequential_1/reshape_1/Shape?
*sequential_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_1/reshape_1/strided_slice/stack?
,sequential_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_1/strided_slice/stack_1?
,sequential_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_1/strided_slice/stack_2?
$sequential_1/reshape_1/strided_sliceStridedSlice%sequential_1/reshape_1/Shape:output:03sequential_1/reshape_1/strided_slice/stack:output:05sequential_1/reshape_1/strided_slice/stack_1:output:05sequential_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_1/reshape_1/strided_slice?
&sequential_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_1/reshape_1/Reshape/shape/1?
&sequential_1/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_1/reshape_1/Reshape/shape/2?
$sequential_1/reshape_1/Reshape/shapePack-sequential_1/reshape_1/strided_slice:output:0/sequential_1/reshape_1/Reshape/shape/1:output:0/sequential_1/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/reshape_1/Reshape/shape?
sequential_1/reshape_1/ReshapeReshape%sequential_1/dense_4/BiasAdd:output:0-sequential_1/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2 
sequential_1/reshape_1/Reshape?
-sequential_1/time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2/
-sequential_1/time_distributed_2/Reshape/shape?
'sequential_1/time_distributed_2/ReshapeReshape'sequential_1/reshape_1/Reshape:output:06sequential_1/time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/time_distributed_2/Reshape?
Tsequential_1/time_distributed_2/batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2V
Tsequential_1/time_distributed_2/batch_normalization_1/moments/mean/reduction_indices?
Bsequential_1/time_distributed_2/batch_normalization_1/moments/meanMean0sequential_1/time_distributed_2/Reshape:output:0]sequential_1/time_distributed_2/batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2D
Bsequential_1/time_distributed_2/batch_normalization_1/moments/mean?
Jsequential_1/time_distributed_2/batch_normalization_1/moments/StopGradientStopGradientKsequential_1/time_distributed_2/batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:	?2L
Jsequential_1/time_distributed_2/batch_normalization_1/moments/StopGradient?
Osequential_1/time_distributed_2/batch_normalization_1/moments/SquaredDifferenceSquaredDifference0sequential_1/time_distributed_2/Reshape:output:0Ssequential_1/time_distributed_2/batch_normalization_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2Q
Osequential_1/time_distributed_2/batch_normalization_1/moments/SquaredDifference?
Xsequential_1/time_distributed_2/batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2Z
Xsequential_1/time_distributed_2/batch_normalization_1/moments/variance/reduction_indices?
Fsequential_1/time_distributed_2/batch_normalization_1/moments/varianceMeanSsequential_1/time_distributed_2/batch_normalization_1/moments/SquaredDifference:z:0asequential_1/time_distributed_2/batch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2H
Fsequential_1/time_distributed_2/batch_normalization_1/moments/variance?
Esequential_1/time_distributed_2/batch_normalization_1/moments/SqueezeSqueezeKsequential_1/time_distributed_2/batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2G
Esequential_1/time_distributed_2/batch_normalization_1/moments/Squeeze?
Gsequential_1/time_distributed_2/batch_normalization_1/moments/Squeeze_1SqueezeOsequential_1/time_distributed_2/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2I
Gsequential_1/time_distributed_2/batch_normalization_1/moments/Squeeze_1?
Ksequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2M
Ksequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/decay?
Tsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp]sequential_1_time_distributed_2_batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02V
Tsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp?
Isequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/subSub\sequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0Nsequential_1/time_distributed_2/batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2K
Isequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/sub?
Isequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/mulMulMsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/sub:z:0Tsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2K
Isequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/mul?
Esequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvgAssignSubVariableOp]sequential_1_time_distributed_2_batch_normalization_1_assignmovingavg_readvariableop_resourceMsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/mul:z:0U^sequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02G
Esequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg?
Msequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2O
Msequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/decay?
Vsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp_sequential_1_time_distributed_2_batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02X
Vsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
Ksequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/subSub^sequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:0Psequential_1/time_distributed_2/batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2M
Ksequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/sub?
Ksequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/mulMulOsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/sub:z:0Vsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2M
Ksequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/mul?
Gsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp_sequential_1_time_distributed_2_batch_normalization_1_assignmovingavg_1_readvariableop_resourceOsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/mul:z:0W^sequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02I
Gsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1?
Isequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpReadVariableOpRsequential_1_time_distributed_2_batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Isequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpTsequential_1_time_distributed_2_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/y?
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/addAddV2Psequential_1/time_distributed_2/batch_normalization_1/moments/Squeeze_1:output:0Nsequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/add?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/RsqrtRsqrtGsequential_1/time_distributed_2/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/Rsqrt?
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/mulMulIsequential_1/time_distributed_2/batch_normalization_1/batchnorm/Rsqrt:y:0Ssequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1Mul0sequential_1/time_distributed_2/Reshape:output:0Gsequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2MulNsequential_1/time_distributed_2/batch_normalization_1/moments/Squeeze:output:0Gsequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2?
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/subSubQsequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp:value:0Isequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/sub?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1AddV2Isequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1:z:0Gsequential_1/time_distributed_2/batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1?
/sequential_1/time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   21
/sequential_1/time_distributed_2/Reshape_1/shape?
)sequential_1/time_distributed_2/Reshape_1ReshapeIsequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1:z:08sequential_1/time_distributed_2/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2+
)sequential_1/time_distributed_2/Reshape_1?
/sequential_1/time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   21
/sequential_1/time_distributed_2/Reshape_2/shape?
)sequential_1/time_distributed_2/Reshape_2Reshape'sequential_1/reshape_1/Reshape:output:08sequential_1/time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/time_distributed_2/Reshape_2?
sequential_1/activation_1/ReluRelu2sequential_1/time_distributed_2/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2 
sequential_1/activation_1/Relu?
$sequential_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2&
$sequential_1/dropout_1/dropout/Const?
"sequential_1/dropout_1/dropout/MulMul,sequential_1/activation_1/Relu:activations:0-sequential_1/dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2$
"sequential_1/dropout_1/dropout/Mul?
$sequential_1/dropout_1/dropout/ShapeShape,sequential_1/activation_1/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dropout_1/dropout/Shape?
;sequential_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02=
;sequential_1/dropout_1/dropout/random_uniform/RandomUniform?
-sequential_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-sequential_1/dropout_1/dropout/GreaterEqual/y?
+sequential_1/dropout_1/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_1/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2-
+sequential_1/dropout_1/dropout/GreaterEqual?
#sequential_1/dropout_1/dropout/CastCast/sequential_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2%
#sequential_1/dropout_1/dropout/Cast?
$sequential_1/dropout_1/dropout/Mul_1Mul&sequential_1/dropout_1/dropout/Mul:z:0'sequential_1/dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2&
$sequential_1/dropout_1/dropout/Mul_1?
-sequential_1/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2/
-sequential_1/time_distributed_3/Reshape/shape?
'sequential_1/time_distributed_3/ReshapeReshape(sequential_1/dropout_1/dropout/Mul_1:z:06sequential_1/time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/time_distributed_3/Reshape?
=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOpReadVariableOpFsequential_1_time_distributed_3_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02?
=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp?
.sequential_1/time_distributed_3/dense_5/MatMulMatMul0sequential_1/time_distributed_3/Reshape:output:0Esequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_1/time_distributed_3/dense_5/MatMul?
>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_time_distributed_3_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp?
/sequential_1/time_distributed_3/dense_5/BiasAddBiasAdd8sequential_1/time_distributed_3/dense_5/MatMul:product:0Fsequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_1/time_distributed_3/dense_5/BiasAdd?
/sequential_1/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  21
/sequential_1/time_distributed_3/Reshape_1/shape?
)sequential_1/time_distributed_3/Reshape_1Reshape8sequential_1/time_distributed_3/dense_5/BiasAdd:output:08sequential_1/time_distributed_3/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2+
)sequential_1/time_distributed_3/Reshape_1?
/sequential_1/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   21
/sequential_1/time_distributed_3/Reshape_2/shape?
)sequential_1/time_distributed_3/Reshape_2Reshape(sequential_1/dropout_1/dropout/Mul_1:z:08sequential_1/time_distributed_3/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/time_distributed_3/Reshape_2?
-sequential_1/time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2/
-sequential_1/time_distributed_4/Reshape/shape?
'sequential_1/time_distributed_4/ReshapeReshape2sequential_1/time_distributed_3/Reshape_1:output:06sequential_1/time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/time_distributed_4/Reshape?
Tsequential_1/time_distributed_4/batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2V
Tsequential_1/time_distributed_4/batch_normalization_2/moments/mean/reduction_indices?
Bsequential_1/time_distributed_4/batch_normalization_2/moments/meanMean0sequential_1/time_distributed_4/Reshape:output:0]sequential_1/time_distributed_4/batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2D
Bsequential_1/time_distributed_4/batch_normalization_2/moments/mean?
Jsequential_1/time_distributed_4/batch_normalization_2/moments/StopGradientStopGradientKsequential_1/time_distributed_4/batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:	?2L
Jsequential_1/time_distributed_4/batch_normalization_2/moments/StopGradient?
Osequential_1/time_distributed_4/batch_normalization_2/moments/SquaredDifferenceSquaredDifference0sequential_1/time_distributed_4/Reshape:output:0Ssequential_1/time_distributed_4/batch_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2Q
Osequential_1/time_distributed_4/batch_normalization_2/moments/SquaredDifference?
Xsequential_1/time_distributed_4/batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2Z
Xsequential_1/time_distributed_4/batch_normalization_2/moments/variance/reduction_indices?
Fsequential_1/time_distributed_4/batch_normalization_2/moments/varianceMeanSsequential_1/time_distributed_4/batch_normalization_2/moments/SquaredDifference:z:0asequential_1/time_distributed_4/batch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2H
Fsequential_1/time_distributed_4/batch_normalization_2/moments/variance?
Esequential_1/time_distributed_4/batch_normalization_2/moments/SqueezeSqueezeKsequential_1/time_distributed_4/batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2G
Esequential_1/time_distributed_4/batch_normalization_2/moments/Squeeze?
Gsequential_1/time_distributed_4/batch_normalization_2/moments/Squeeze_1SqueezeOsequential_1/time_distributed_4/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2I
Gsequential_1/time_distributed_4/batch_normalization_2/moments/Squeeze_1?
Ksequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2M
Ksequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/decay?
Tsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp]sequential_1_time_distributed_4_batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02V
Tsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp?
Isequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/subSub\sequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0Nsequential_1/time_distributed_4/batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2K
Isequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/sub?
Isequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/mulMulMsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/sub:z:0Tsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2K
Isequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/mul?
Esequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvgAssignSubVariableOp]sequential_1_time_distributed_4_batch_normalization_2_assignmovingavg_readvariableop_resourceMsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/mul:z:0U^sequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02G
Esequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg?
Msequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2O
Msequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/decay?
Vsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp_sequential_1_time_distributed_4_batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02X
Vsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?
Ksequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/subSub^sequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:0Psequential_1/time_distributed_4/batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2M
Ksequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/sub?
Ksequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/mulMulOsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/sub:z:0Vsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2M
Ksequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/mul?
Gsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp_sequential_1_time_distributed_4_batch_normalization_2_assignmovingavg_1_readvariableop_resourceOsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/mul:z:0W^sequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02I
Gsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1?
Isequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpReadVariableOpRsequential_1_time_distributed_4_batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Isequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpReadVariableOpTsequential_1_time_distributed_4_batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/y?
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/addAddV2Psequential_1/time_distributed_4/batch_normalization_2/moments/Squeeze_1:output:0Nsequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/add?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/RsqrtRsqrtGsequential_1/time_distributed_4/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/Rsqrt?
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/mulMulIsequential_1/time_distributed_4/batch_normalization_2/batchnorm/Rsqrt:y:0Ssequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1Mul0sequential_1/time_distributed_4/Reshape:output:0Gsequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2MulNsequential_1/time_distributed_4/batch_normalization_2/moments/Squeeze:output:0Gsequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2?
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/subSubQsequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp:value:0Isequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/sub?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1AddV2Isequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1:z:0Gsequential_1/time_distributed_4/batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1?
/sequential_1/time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  21
/sequential_1/time_distributed_4/Reshape_1/shape?
)sequential_1/time_distributed_4/Reshape_1ReshapeIsequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1:z:08sequential_1/time_distributed_4/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2+
)sequential_1/time_distributed_4/Reshape_1?
/sequential_1/time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  21
/sequential_1/time_distributed_4/Reshape_2/shape?
)sequential_1/time_distributed_4/Reshape_2Reshape2sequential_1/time_distributed_3/Reshape_1:output:08sequential_1/time_distributed_4/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/time_distributed_4/Reshape_2?
sequential_1/activation_2/ReluRelu2sequential_1/time_distributed_4/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2 
sequential_1/activation_2/Relu?
$sequential_1/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2&
$sequential_1/dropout_2/dropout/Const?
"sequential_1/dropout_2/dropout/MulMul,sequential_1/activation_2/Relu:activations:0-sequential_1/dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2$
"sequential_1/dropout_2/dropout/Mul?
$sequential_1/dropout_2/dropout/ShapeShape,sequential_1/activation_2/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dropout_2/dropout/Shape?
;sequential_1/dropout_2/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02=
;sequential_1/dropout_2/dropout/random_uniform/RandomUniform?
-sequential_1/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-sequential_1/dropout_2/dropout/GreaterEqual/y?
+sequential_1/dropout_2/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_2/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2-
+sequential_1/dropout_2/dropout/GreaterEqual?
#sequential_1/dropout_2/dropout/CastCast/sequential_1/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2%
#sequential_1/dropout_2/dropout/Cast?
$sequential_1/dropout_2/dropout/Mul_1Mul&sequential_1/dropout_2/dropout/Mul:z:0'sequential_1/dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2&
$sequential_1/dropout_2/dropout/Mul_1?
-sequential_1/time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2/
-sequential_1/time_distributed_5/Reshape/shape?
'sequential_1/time_distributed_5/ReshapeReshape(sequential_1/dropout_2/dropout/Mul_1:z:06sequential_1/time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/time_distributed_5/Reshape?
=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOpReadVariableOpFsequential_1_time_distributed_5_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02?
=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp?
.sequential_1/time_distributed_5/dense_6/MatMulMatMul0sequential_1/time_distributed_5/Reshape:output:0Esequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H20
.sequential_1/time_distributed_5/dense_6/MatMul?
>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_time_distributed_5_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02@
>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp?
/sequential_1/time_distributed_5/dense_6/BiasAddBiasAdd8sequential_1/time_distributed_5/dense_6/MatMul:product:0Fsequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H21
/sequential_1/time_distributed_5/dense_6/BiasAdd?
/sequential_1/time_distributed_5/dense_6/SigmoidSigmoid8sequential_1/time_distributed_5/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H21
/sequential_1/time_distributed_5/dense_6/Sigmoid?
/sequential_1/time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  21
/sequential_1/time_distributed_5/Reshape_1/shape?
)sequential_1/time_distributed_5/Reshape_1Reshape3sequential_1/time_distributed_5/dense_6/Sigmoid:y:08sequential_1/time_distributed_5/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H2+
)sequential_1/time_distributed_5/Reshape_1?
/sequential_1/time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  21
/sequential_1/time_distributed_5/Reshape_2/shape?
)sequential_1/time_distributed_5/Reshape_2Reshape(sequential_1/dropout_2/dropout/Mul_1:z:08sequential_1/time_distributed_5/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/time_distributed_5/Reshape_2?
sequential_1/reshape_2/ShapeShape2sequential_1/time_distributed_5/Reshape_1:output:0*
T0*
_output_shapes
:2
sequential_1/reshape_2/Shape?
*sequential_1/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_1/reshape_2/strided_slice/stack?
,sequential_1/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_2/strided_slice/stack_1?
,sequential_1/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_2/strided_slice/stack_2?
$sequential_1/reshape_2/strided_sliceStridedSlice%sequential_1/reshape_2/Shape:output:03sequential_1/reshape_2/strided_slice/stack:output:05sequential_1/reshape_2/strided_slice/stack_1:output:05sequential_1/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_1/reshape_2/strided_slice?
&sequential_1/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_1/reshape_2/Reshape/shape/1?
&sequential_1/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`2(
&sequential_1/reshape_2/Reshape/shape/2?
&sequential_1/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :`2(
&sequential_1/reshape_2/Reshape/shape/3?
$sequential_1/reshape_2/Reshape/shapePack-sequential_1/reshape_2/strided_slice:output:0/sequential_1/reshape_2/Reshape/shape/1:output:0/sequential_1/reshape_2/Reshape/shape/2:output:0/sequential_1/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/reshape_2/Reshape/shape?
sequential_1/reshape_2/ReshapeReshape2sequential_1/time_distributed_5/Reshape_1:output:0-sequential_1/reshape_2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????``2 
sequential_1/reshape_2/Reshape?
IdentityIdentity'sequential_1/reshape_2/Reshape:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp#^sequential/encoder/AssignMovingAvg2^sequential/encoder/AssignMovingAvg/ReadVariableOp%^sequential/encoder/AssignMovingAvg_14^sequential/encoder/AssignMovingAvg_1/ReadVariableOp,^sequential/encoder/batchnorm/ReadVariableOp0^sequential/encoder/batchnorm/mul/ReadVariableOp9^sequential/time_distributed/dense/BiasAdd/ReadVariableOp8^sequential/time_distributed/dense/MatMul/ReadVariableOp=^sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp<^sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp1^sequential_1/batch_normalization/AssignMovingAvg@^sequential_1/batch_normalization/AssignMovingAvg/ReadVariableOp3^sequential_1/batch_normalization/AssignMovingAvg_1B^sequential_1/batch_normalization/AssignMovingAvg_1/ReadVariableOp5^sequential_1/batch_normalization/Cast/ReadVariableOp7^sequential_1/batch_normalization/Cast_1/ReadVariableOp,^sequential_1/decoder/BiasAdd/ReadVariableOp+^sequential_1/decoder/MatMul/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOpF^sequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvgU^sequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOpH^sequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1W^sequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOpJ^sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpL^sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?^sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp>^sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOpF^sequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvgU^sequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOpH^sequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1W^sequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOpJ^sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpL^sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?^sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp>^sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp2H
"sequential/encoder/AssignMovingAvg"sequential/encoder/AssignMovingAvg2f
1sequential/encoder/AssignMovingAvg/ReadVariableOp1sequential/encoder/AssignMovingAvg/ReadVariableOp2L
$sequential/encoder/AssignMovingAvg_1$sequential/encoder/AssignMovingAvg_12j
3sequential/encoder/AssignMovingAvg_1/ReadVariableOp3sequential/encoder/AssignMovingAvg_1/ReadVariableOp2Z
+sequential/encoder/batchnorm/ReadVariableOp+sequential/encoder/batchnorm/ReadVariableOp2b
/sequential/encoder/batchnorm/mul/ReadVariableOp/sequential/encoder/batchnorm/mul/ReadVariableOp2t
8sequential/time_distributed/dense/BiasAdd/ReadVariableOp8sequential/time_distributed/dense/BiasAdd/ReadVariableOp2r
7sequential/time_distributed/dense/MatMul/ReadVariableOp7sequential/time_distributed/dense/MatMul/ReadVariableOp2|
<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp2d
0sequential_1/batch_normalization/AssignMovingAvg0sequential_1/batch_normalization/AssignMovingAvg2?
?sequential_1/batch_normalization/AssignMovingAvg/ReadVariableOp?sequential_1/batch_normalization/AssignMovingAvg/ReadVariableOp2h
2sequential_1/batch_normalization/AssignMovingAvg_12sequential_1/batch_normalization/AssignMovingAvg_12?
Asequential_1/batch_normalization/AssignMovingAvg_1/ReadVariableOpAsequential_1/batch_normalization/AssignMovingAvg_1/ReadVariableOp2l
4sequential_1/batch_normalization/Cast/ReadVariableOp4sequential_1/batch_normalization/Cast/ReadVariableOp2p
6sequential_1/batch_normalization/Cast_1/ReadVariableOp6sequential_1/batch_normalization/Cast_1/ReadVariableOp2Z
+sequential_1/decoder/BiasAdd/ReadVariableOp+sequential_1/decoder/BiasAdd/ReadVariableOp2X
*sequential_1/decoder/MatMul/ReadVariableOp*sequential_1/decoder/MatMul/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2?
Esequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvgEsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg2?
Tsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOpTsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp2?
Gsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1Gsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_12?
Vsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOpVsequential_1/time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2?
Isequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpIsequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp2?
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpKsequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp2?
>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp2~
=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp2?
Esequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvgEsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg2?
Tsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOpTsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp2?
Gsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1Gsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_12?
Vsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOpVsequential_1/time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2?
Isequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpIsequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp2?
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpKsequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp2?
>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp2~
=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp:R N
/
_output_shapes
:?????????``

_user_specified_namex
?
?
J__inference_time_distributed_layer_call_and_return_conditional_losses_3860

inputs8
$dense_matmul_readvariableop_resource:
?H?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????H2	
Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????H: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_7555

inputs
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_5266

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9393

inputsA
2batch_normalization_2_cast_readvariableop_resource:	?C
4batch_normalization_2_cast_1_readvariableop_resource:	?C
4batch_normalization_2_cast_2_readvariableop_resource:	?C
4batch_normalization_2_cast_3_readvariableop_resource:	?
identity??)batch_normalization_2/Cast/ReadVariableOp?+batch_normalization_2/Cast_1/ReadVariableOp?+batch_normalization_2/Cast_2/ReadVariableOp?+batch_normalization_2/Cast_3/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
)batch_normalization_2/Cast/ReadVariableOpReadVariableOp2batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_2/Cast/ReadVariableOp?
+batch_normalization_2/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_1/ReadVariableOp?
+batch_normalization_2/Cast_2/ReadVariableOpReadVariableOp4batch_normalization_2_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_2/ReadVariableOp?
+batch_normalization_2/Cast_3/ReadVariableOpReadVariableOp4batch_normalization_2_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_3/ReadVariableOp?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV23batch_normalization_2/Cast_1/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:03batch_normalization_2/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1MulReshape:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/mul_1?
%batch_normalization_2/batchnorm/mul_2Mul1batch_normalization_2/Cast/ReadVariableOp:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
#batch_normalization_2/batchnorm/subSub3batch_normalization_2/Cast_2/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/add_1w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_2/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp*^batch_normalization_2/Cast/ReadVariableOp,^batch_normalization_2/Cast_1/ReadVariableOp,^batch_normalization_2/Cast_2/ReadVariableOp,^batch_normalization_2/Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2V
)batch_normalization_2/Cast/ReadVariableOp)batch_normalization_2/Cast/ReadVariableOp2Z
+batch_normalization_2/Cast_1/ReadVariableOp+batch_normalization_2/Cast_1/ReadVariableOp2Z
+batch_normalization_2/Cast_2/ReadVariableOp+batch_normalization_2/Cast_2/ReadVariableOp2Z
+batch_normalization_2/Cast_3/ReadVariableOp+batch_normalization_2/Cast_3/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_3_layer_call_fn_9162

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_52812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9098

inputsL
=batch_normalization_1_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_1_assignmovingavg_1_readvariableop_resource:	?A
2batch_normalization_1_cast_readvariableop_resource:	?C
4batch_normalization_1_cast_1_readvariableop_resource:	?
identity??%batch_normalization_1/AssignMovingAvg?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?'batch_normalization_1/AssignMovingAvg_1?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_1/moments/mean/reduction_indices?
"batch_normalization_1/moments/meanMeanReshape:output:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_1/moments/mean?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_1/moments/StopGradient?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferenceReshape:output:03batch_normalization_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_1/moments/SquaredDifference?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_1/moments/variance/reduction_indices?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_1/moments/variance?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_1/moments/Squeeze?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1?
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization_1/AssignMovingAvg/decay?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOp?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_1/AssignMovingAvg/sub?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_1/AssignMovingAvg/mul?
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_1/AssignMovingAvg?
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-batch_normalization_1/AssignMovingAvg_1/decay?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_1/AssignMovingAvg_1/sub?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_1/AssignMovingAvg_1/mul?
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_1?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1MulReshape:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub1batch_normalization_1/Cast/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/add_1w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_1/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9241

inputs:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?
identity??dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMulReshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshapedense_5/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9192

inputs:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?
identity??dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMulReshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_5/BiasAdd:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?d
?

D__inference_sequential_layer_call_and_return_conditional_losses_7873

inputsI
5time_distributed_dense_matmul_readvariableop_resource:
?H?E
6time_distributed_dense_biasadd_readvariableop_resource:	?M
9time_distributed_1_dense_1_matmul_readvariableop_resource:
??I
:time_distributed_1_dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?x5
'dense_3_biasadd_readvariableop_resource:x7
)encoder_batchnorm_readvariableop_resource:x;
-encoder_batchnorm_mul_readvariableop_resource:x9
+encoder_batchnorm_readvariableop_1_resource:x9
+encoder_batchnorm_readvariableop_2_resource:x
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp? encoder/batchnorm/ReadVariableOp?"encoder/batchnorm/ReadVariableOp_1?"encoder/batchnorm/ReadVariableOp_2?$encoder/batchnorm/mul/ReadVariableOp?-time_distributed/dense/BiasAdd/ReadVariableOp?,time_distributed/dense/MatMul/ReadVariableOp?1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?0time_distributed_1/dense_1/MatMul/ReadVariableOpe
CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:?????????``2
CastV
reshape/ShapeShapeCast:y:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1}
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeCast:y:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2
reshape/Reshape?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshapereshape/Reshape:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02.
,time_distributed/dense/MatMul/ReadVariableOp?
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/MatMul?
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-time_distributed/dense/BiasAdd/ReadVariableOp?
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
time_distributed/dense/BiasAdd?
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/Relu?
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2"
 time_distributed/Reshape_1/shape?
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed/Reshape_1?
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2"
 time_distributed/Reshape_2/shape?
time_distributed/Reshape_2Reshapereshape/Reshape:output:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape_2?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0time_distributed_1/dense_1/MatMul/ReadVariableOp?
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!time_distributed_1/dense_1/MatMul?
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"time_distributed_1/dense_1/BiasAdd?
time_distributed_1/dense_1/ReluRelu+time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
time_distributed_1/dense_1/Relu?
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2$
"time_distributed_1/Reshape_1/shape?
time_distributed_1/Reshape_1Reshape-time_distributed_1/dense_1/Relu:activations:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_1/Reshape_1?
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_1/Reshape_2/shape?
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape_2?
flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
flatten/transpose/perm?
flatten/transpose	Transpose%time_distributed_1/Reshape_1:output:0flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
flatten/transposeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeflatten/transpose:y:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/BiasAdd?
 encoder/batchnorm/ReadVariableOpReadVariableOp)encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02"
 encoder/batchnorm/ReadVariableOpw
encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
encoder/batchnorm/add/y?
encoder/batchnorm/addAddV2(encoder/batchnorm/ReadVariableOp:value:0 encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
encoder/batchnorm/add{
encoder/batchnorm/RsqrtRsqrtencoder/batchnorm/add:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/Rsqrt?
$encoder/batchnorm/mul/ReadVariableOpReadVariableOp-encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02&
$encoder/batchnorm/mul/ReadVariableOp?
encoder/batchnorm/mulMulencoder/batchnorm/Rsqrt:y:0,encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul?
encoder/batchnorm/mul_1Muldense_3/BiasAdd:output:0encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/mul_1?
"encoder/batchnorm/ReadVariableOp_1ReadVariableOp+encoder_batchnorm_readvariableop_1_resource*
_output_shapes
:x*
dtype02$
"encoder/batchnorm/ReadVariableOp_1?
encoder/batchnorm/mul_2Mul*encoder/batchnorm/ReadVariableOp_1:value:0encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul_2?
"encoder/batchnorm/ReadVariableOp_2ReadVariableOp+encoder_batchnorm_readvariableop_2_resource*
_output_shapes
:x*
dtype02$
"encoder/batchnorm/ReadVariableOp_2?
encoder/batchnorm/subSub*encoder/batchnorm/ReadVariableOp_2:value:0encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/sub?
encoder/batchnorm/add_1AddV2encoder/batchnorm/mul_1:z:0encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/add_1v
IdentityIdentityencoder/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp!^encoder/batchnorm/ReadVariableOp#^encoder/batchnorm/ReadVariableOp_1#^encoder/batchnorm/ReadVariableOp_2%^encoder/batchnorm/mul/ReadVariableOp.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2D
 encoder/batchnorm/ReadVariableOp encoder/batchnorm/ReadVariableOp2H
"encoder/batchnorm/ReadVariableOp_1"encoder/batchnorm/ReadVariableOp_12H
"encoder/batchnorm/ReadVariableOp_2"encoder/batchnorm/ReadVariableOp_22L
$encoder/batchnorm/mul/ReadVariableOp$encoder/batchnorm/mul/ReadVariableOp2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_5_layer_call_fn_9477

inputs
unknown:
??H
	unknown_0:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_50382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????H2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?)
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4774

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2}
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_5604

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_dense_1_layer_call_and_return_conditional_losses_3352

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_9135

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_5352

inputs:
&dense_6_matmul_readvariableop_resource:
??H6
'dense_6_biasadd_readvariableop_resource:	?H
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/BiasAddz
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
dense_6/Sigmoidw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Sigmoid:y:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????H2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
]
A__inference_reshape_layer_call_and_return_conditional_losses_3649

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1m
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????H2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?

?
A__inference_decoder_layer_call_and_return_conditional_losses_8754

inputs1
matmul_readvariableop_resource:	x?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	x?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4714

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
(__inference_dropout_1_layer_call_fn_9118

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_56042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_4880

inputs)
batch_normalization_2_4866:	?)
batch_normalization_2_4868:	?)
batch_normalization_2_4870:	?)
batch_normalization_2_4872:	?
identity??-batch_normalization_2/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0batch_normalization_2_4866batch_normalization_2_4868batch_normalization_2_4870batch_normalization_2_4872*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_47142/
-batch_normalization_2/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape6batch_normalization_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity~
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_1_layer_call_fn_8502

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_33632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?$
E__inference_autoencoder_layer_call_and_return_conditional_losses_7254
xT
@sequential_time_distributed_dense_matmul_readvariableop_resource:
?H?P
Asequential_time_distributed_dense_biasadd_readvariableop_resource:	?X
Dsequential_time_distributed_1_dense_1_matmul_readvariableop_resource:
??T
Esequential_time_distributed_1_dense_1_biasadd_readvariableop_resource:	?E
1sequential_dense_2_matmul_readvariableop_resource:
??A
2sequential_dense_2_biasadd_readvariableop_resource:	?D
1sequential_dense_3_matmul_readvariableop_resource:	?x@
2sequential_dense_3_biasadd_readvariableop_resource:xB
4sequential_encoder_batchnorm_readvariableop_resource:xF
8sequential_encoder_batchnorm_mul_readvariableop_resource:xD
6sequential_encoder_batchnorm_readvariableop_1_resource:xD
6sequential_encoder_batchnorm_readvariableop_2_resource:xF
3sequential_1_decoder_matmul_readvariableop_resource:	x?C
4sequential_1_decoder_biasadd_readvariableop_resource:	?L
=sequential_1_batch_normalization_cast_readvariableop_resource:	?N
?sequential_1_batch_normalization_cast_1_readvariableop_resource:	?N
?sequential_1_batch_normalization_cast_2_readvariableop_resource:	?N
?sequential_1_batch_normalization_cast_3_readvariableop_resource:	?G
3sequential_1_dense_4_matmul_readvariableop_resource:
??C
4sequential_1_dense_4_biasadd_readvariableop_resource:	?a
Rsequential_1_time_distributed_2_batch_normalization_1_cast_readvariableop_resource:	?c
Tsequential_1_time_distributed_2_batch_normalization_1_cast_1_readvariableop_resource:	?c
Tsequential_1_time_distributed_2_batch_normalization_1_cast_2_readvariableop_resource:	?c
Tsequential_1_time_distributed_2_batch_normalization_1_cast_3_readvariableop_resource:	?Z
Fsequential_1_time_distributed_3_dense_5_matmul_readvariableop_resource:
??V
Gsequential_1_time_distributed_3_dense_5_biasadd_readvariableop_resource:	?a
Rsequential_1_time_distributed_4_batch_normalization_2_cast_readvariableop_resource:	?c
Tsequential_1_time_distributed_4_batch_normalization_2_cast_1_readvariableop_resource:	?c
Tsequential_1_time_distributed_4_batch_normalization_2_cast_2_readvariableop_resource:	?c
Tsequential_1_time_distributed_4_batch_normalization_2_cast_3_readvariableop_resource:	?Z
Fsequential_1_time_distributed_5_dense_6_matmul_readvariableop_resource:
??HV
Gsequential_1_time_distributed_5_dense_6_biasadd_readvariableop_resource:	?H
identity??)sequential/dense_2/BiasAdd/ReadVariableOp?(sequential/dense_2/MatMul/ReadVariableOp?)sequential/dense_3/BiasAdd/ReadVariableOp?(sequential/dense_3/MatMul/ReadVariableOp?+sequential/encoder/batchnorm/ReadVariableOp?-sequential/encoder/batchnorm/ReadVariableOp_1?-sequential/encoder/batchnorm/ReadVariableOp_2?/sequential/encoder/batchnorm/mul/ReadVariableOp?8sequential/time_distributed/dense/BiasAdd/ReadVariableOp?7sequential/time_distributed/dense/MatMul/ReadVariableOp?<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp?;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp?4sequential_1/batch_normalization/Cast/ReadVariableOp?6sequential_1/batch_normalization/Cast_1/ReadVariableOp?6sequential_1/batch_normalization/Cast_2/ReadVariableOp?6sequential_1/batch_normalization/Cast_3/ReadVariableOp?+sequential_1/decoder/BiasAdd/ReadVariableOp?*sequential_1/decoder/MatMul/ReadVariableOp?+sequential_1/dense_4/BiasAdd/ReadVariableOp?*sequential_1/dense_4/MatMul/ReadVariableOp?Isequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?Ksequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?Ksequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp?Ksequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp?>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp?=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp?Isequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?Ksequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?Ksequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp?Ksequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp?>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp?=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOpv
sequential/CastCastx*

DstT0*

SrcT0*/
_output_shapes
:?????????``2
sequential/Castw
sequential/reshape/ShapeShapesequential/Cast:y:0*
T0*
_output_shapes
:2
sequential/reshape/Shape?
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/reshape/strided_slice/stack?
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_1?
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_2?
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/reshape/strided_slice?
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/1?
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"sequential/reshape/Reshape/shape/2?
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 sequential/reshape/Reshape/shape?
sequential/reshape/ReshapeReshapesequential/Cast:y:0)sequential/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2
sequential/reshape/Reshape?
)sequential/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2+
)sequential/time_distributed/Reshape/shape?
#sequential/time_distributed/ReshapeReshape#sequential/reshape/Reshape:output:02sequential/time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2%
#sequential/time_distributed/Reshape?
7sequential/time_distributed/dense/MatMul/ReadVariableOpReadVariableOp@sequential_time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype029
7sequential/time_distributed/dense/MatMul/ReadVariableOp?
(sequential/time_distributed/dense/MatMulMatMul,sequential/time_distributed/Reshape:output:0?sequential/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential/time_distributed/dense/MatMul?
8sequential/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential/time_distributed/dense/BiasAdd/ReadVariableOp?
)sequential/time_distributed/dense/BiasAddBiasAdd2sequential/time_distributed/dense/MatMul:product:0@sequential/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential/time_distributed/dense/BiasAdd?
&sequential/time_distributed/dense/ReluRelu2sequential/time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&sequential/time_distributed/dense/Relu?
+sequential/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2-
+sequential/time_distributed/Reshape_1/shape?
%sequential/time_distributed/Reshape_1Reshape4sequential/time_distributed/dense/Relu:activations:04sequential/time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2'
%sequential/time_distributed/Reshape_1?
+sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2-
+sequential/time_distributed/Reshape_2/shape?
%sequential/time_distributed/Reshape_2Reshape#sequential/reshape/Reshape:output:04sequential/time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H2'
%sequential/time_distributed/Reshape_2?
+sequential/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2-
+sequential/time_distributed_1/Reshape/shape?
%sequential/time_distributed_1/ReshapeReshape.sequential/time_distributed/Reshape_1:output:04sequential/time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/time_distributed_1/Reshape?
;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOpDsequential_time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp?
,sequential/time_distributed_1/dense_1/MatMulMatMul.sequential/time_distributed_1/Reshape:output:0Csequential/time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential/time_distributed_1/dense_1/MatMul?
<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpEsequential_time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
-sequential/time_distributed_1/dense_1/BiasAddBiasAdd6sequential/time_distributed_1/dense_1/MatMul:product:0Dsequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential/time_distributed_1/dense_1/BiasAdd?
*sequential/time_distributed_1/dense_1/ReluRelu6sequential/time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2,
*sequential/time_distributed_1/dense_1/Relu?
-sequential/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2/
-sequential/time_distributed_1/Reshape_1/shape?
'sequential/time_distributed_1/Reshape_1Reshape8sequential/time_distributed_1/dense_1/Relu:activations:06sequential/time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2)
'sequential/time_distributed_1/Reshape_1?
-sequential/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2/
-sequential/time_distributed_1/Reshape_2/shape?
'sequential/time_distributed_1/Reshape_2Reshape.sequential/time_distributed/Reshape_1:output:06sequential/time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential/time_distributed_1/Reshape_2?
!sequential/flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!sequential/flatten/transpose/perm?
sequential/flatten/transpose	Transpose0sequential/time_distributed_1/Reshape_1:output:0*sequential/flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
sequential/flatten/transpose?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape sequential/flatten/transpose:y:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/flatten/Reshape?
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(sequential/dense_2/MatMul/ReadVariableOp?
sequential/dense_2/MatMulMatMul#sequential/flatten/Reshape:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense_2/MatMul?
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)sequential/dense_2/BiasAdd/ReadVariableOp?
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense_2/BiasAdd?
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/dense_2/Relu?
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02*
(sequential/dense_3/MatMul/ReadVariableOp?
sequential/dense_3/MatMulMatMul%sequential/dense_2/Relu:activations:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
sequential/dense_3/MatMul?
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02+
)sequential/dense_3/BiasAdd/ReadVariableOp?
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
sequential/dense_3/BiasAdd?
+sequential/encoder/batchnorm/ReadVariableOpReadVariableOp4sequential_encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02-
+sequential/encoder/batchnorm/ReadVariableOp?
"sequential/encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2$
"sequential/encoder/batchnorm/add/y?
 sequential/encoder/batchnorm/addAddV23sequential/encoder/batchnorm/ReadVariableOp:value:0+sequential/encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2"
 sequential/encoder/batchnorm/add?
"sequential/encoder/batchnorm/RsqrtRsqrt$sequential/encoder/batchnorm/add:z:0*
T0*
_output_shapes
:x2$
"sequential/encoder/batchnorm/Rsqrt?
/sequential/encoder/batchnorm/mul/ReadVariableOpReadVariableOp8sequential_encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype021
/sequential/encoder/batchnorm/mul/ReadVariableOp?
 sequential/encoder/batchnorm/mulMul&sequential/encoder/batchnorm/Rsqrt:y:07sequential/encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2"
 sequential/encoder/batchnorm/mul?
"sequential/encoder/batchnorm/mul_1Mul#sequential/dense_3/BiasAdd:output:0$sequential/encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2$
"sequential/encoder/batchnorm/mul_1?
-sequential/encoder/batchnorm/ReadVariableOp_1ReadVariableOp6sequential_encoder_batchnorm_readvariableop_1_resource*
_output_shapes
:x*
dtype02/
-sequential/encoder/batchnorm/ReadVariableOp_1?
"sequential/encoder/batchnorm/mul_2Mul5sequential/encoder/batchnorm/ReadVariableOp_1:value:0$sequential/encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x2$
"sequential/encoder/batchnorm/mul_2?
-sequential/encoder/batchnorm/ReadVariableOp_2ReadVariableOp6sequential_encoder_batchnorm_readvariableop_2_resource*
_output_shapes
:x*
dtype02/
-sequential/encoder/batchnorm/ReadVariableOp_2?
 sequential/encoder/batchnorm/subSub5sequential/encoder/batchnorm/ReadVariableOp_2:value:0&sequential/encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2"
 sequential/encoder/batchnorm/sub?
"sequential/encoder/batchnorm/add_1AddV2&sequential/encoder/batchnorm/mul_1:z:0$sequential/encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2$
"sequential/encoder/batchnorm/add_1?
*sequential_1/decoder/MatMul/ReadVariableOpReadVariableOp3sequential_1_decoder_matmul_readvariableop_resource*
_output_shapes
:	x?*
dtype02,
*sequential_1/decoder/MatMul/ReadVariableOp?
sequential_1/decoder/MatMulMatMul&sequential/encoder/batchnorm/add_1:z:02sequential_1/decoder/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/decoder/MatMul?
+sequential_1/decoder/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_decoder_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_1/decoder/BiasAdd/ReadVariableOp?
sequential_1/decoder/BiasAddBiasAdd%sequential_1/decoder/MatMul:product:03sequential_1/decoder/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/decoder/BiasAdd?
4sequential_1/batch_normalization/Cast/ReadVariableOpReadVariableOp=sequential_1_batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/batch_normalization/Cast/ReadVariableOp?
6sequential_1/batch_normalization/Cast_1/ReadVariableOpReadVariableOp?sequential_1_batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/batch_normalization/Cast_1/ReadVariableOp?
6sequential_1/batch_normalization/Cast_2/ReadVariableOpReadVariableOp?sequential_1_batch_normalization_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/batch_normalization/Cast_2/ReadVariableOp?
6sequential_1/batch_normalization/Cast_3/ReadVariableOpReadVariableOp?sequential_1_batch_normalization_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/batch_normalization/Cast_3/ReadVariableOp?
0sequential_1/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0sequential_1/batch_normalization/batchnorm/add/y?
.sequential_1/batch_normalization/batchnorm/addAddV2>sequential_1/batch_normalization/Cast_1/ReadVariableOp:value:09sequential_1/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?20
.sequential_1/batch_normalization/batchnorm/add?
0sequential_1/batch_normalization/batchnorm/RsqrtRsqrt2sequential_1/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?22
0sequential_1/batch_normalization/batchnorm/Rsqrt?
.sequential_1/batch_normalization/batchnorm/mulMul4sequential_1/batch_normalization/batchnorm/Rsqrt:y:0>sequential_1/batch_normalization/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?20
.sequential_1/batch_normalization/batchnorm/mul?
0sequential_1/batch_normalization/batchnorm/mul_1Mul%sequential_1/decoder/BiasAdd:output:02sequential_1/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????22
0sequential_1/batch_normalization/batchnorm/mul_1?
0sequential_1/batch_normalization/batchnorm/mul_2Mul<sequential_1/batch_normalization/Cast/ReadVariableOp:value:02sequential_1/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?22
0sequential_1/batch_normalization/batchnorm/mul_2?
.sequential_1/batch_normalization/batchnorm/subSub>sequential_1/batch_normalization/Cast_2/ReadVariableOp:value:04sequential_1/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?20
.sequential_1/batch_normalization/batchnorm/sub?
0sequential_1/batch_normalization/batchnorm/add_1AddV24sequential_1/batch_normalization/batchnorm/mul_1:z:02sequential_1/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????22
0sequential_1/batch_normalization/batchnorm/add_1?
sequential_1/activation/ReluRelu4sequential_1/batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
sequential_1/activation/Relu?
sequential_1/dropout/IdentityIdentity*sequential_1/activation/Relu:activations:0*
T0*(
_output_shapes
:??????????2
sequential_1/dropout/Identity?
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*sequential_1/dense_4/MatMul/ReadVariableOp?
sequential_1/dense_4/MatMulMatMul&sequential_1/dropout/Identity:output:02sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/dense_4/MatMul?
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_1/dense_4/BiasAdd/ReadVariableOp?
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/dense_4/BiasAdd?
sequential_1/reshape_1/ShapeShape%sequential_1/dense_4/BiasAdd:output:0*
T0*
_output_shapes
:2
sequential_1/reshape_1/Shape?
*sequential_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_1/reshape_1/strided_slice/stack?
,sequential_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_1/strided_slice/stack_1?
,sequential_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_1/strided_slice/stack_2?
$sequential_1/reshape_1/strided_sliceStridedSlice%sequential_1/reshape_1/Shape:output:03sequential_1/reshape_1/strided_slice/stack:output:05sequential_1/reshape_1/strided_slice/stack_1:output:05sequential_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_1/reshape_1/strided_slice?
&sequential_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_1/reshape_1/Reshape/shape/1?
&sequential_1/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_1/reshape_1/Reshape/shape/2?
$sequential_1/reshape_1/Reshape/shapePack-sequential_1/reshape_1/strided_slice:output:0/sequential_1/reshape_1/Reshape/shape/1:output:0/sequential_1/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/reshape_1/Reshape/shape?
sequential_1/reshape_1/ReshapeReshape%sequential_1/dense_4/BiasAdd:output:0-sequential_1/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2 
sequential_1/reshape_1/Reshape?
-sequential_1/time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2/
-sequential_1/time_distributed_2/Reshape/shape?
'sequential_1/time_distributed_2/ReshapeReshape'sequential_1/reshape_1/Reshape:output:06sequential_1/time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/time_distributed_2/Reshape?
Isequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpReadVariableOpRsequential_1_time_distributed_2_batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Isequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpTsequential_1_time_distributed_2_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpTsequential_1_time_distributed_2_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp?
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpTsequential_1_time_distributed_2_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/y?
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/addAddV2Ssequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp:value:0Nsequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/add?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/RsqrtRsqrtGsequential_1/time_distributed_2/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/Rsqrt?
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/mulMulIsequential_1/time_distributed_2/batch_normalization_1/batchnorm/Rsqrt:y:0Ssequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1Mul0sequential_1/time_distributed_2/Reshape:output:0Gsequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2MulQsequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp:value:0Gsequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2?
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/subSubSsequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp:value:0Isequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_2/batch_normalization_1/batchnorm/sub?
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1AddV2Isequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1:z:0Gsequential_1/time_distributed_2/batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1?
/sequential_1/time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   21
/sequential_1/time_distributed_2/Reshape_1/shape?
)sequential_1/time_distributed_2/Reshape_1ReshapeIsequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1:z:08sequential_1/time_distributed_2/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2+
)sequential_1/time_distributed_2/Reshape_1?
/sequential_1/time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   21
/sequential_1/time_distributed_2/Reshape_2/shape?
)sequential_1/time_distributed_2/Reshape_2Reshape'sequential_1/reshape_1/Reshape:output:08sequential_1/time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/time_distributed_2/Reshape_2?
sequential_1/activation_1/ReluRelu2sequential_1/time_distributed_2/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2 
sequential_1/activation_1/Relu?
sequential_1/dropout_1/IdentityIdentity,sequential_1/activation_1/Relu:activations:0*
T0*,
_output_shapes
:??????????2!
sequential_1/dropout_1/Identity?
-sequential_1/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2/
-sequential_1/time_distributed_3/Reshape/shape?
'sequential_1/time_distributed_3/ReshapeReshape(sequential_1/dropout_1/Identity:output:06sequential_1/time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/time_distributed_3/Reshape?
=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOpReadVariableOpFsequential_1_time_distributed_3_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02?
=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp?
.sequential_1/time_distributed_3/dense_5/MatMulMatMul0sequential_1/time_distributed_3/Reshape:output:0Esequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_1/time_distributed_3/dense_5/MatMul?
>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_time_distributed_3_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp?
/sequential_1/time_distributed_3/dense_5/BiasAddBiasAdd8sequential_1/time_distributed_3/dense_5/MatMul:product:0Fsequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_1/time_distributed_3/dense_5/BiasAdd?
/sequential_1/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  21
/sequential_1/time_distributed_3/Reshape_1/shape?
)sequential_1/time_distributed_3/Reshape_1Reshape8sequential_1/time_distributed_3/dense_5/BiasAdd:output:08sequential_1/time_distributed_3/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2+
)sequential_1/time_distributed_3/Reshape_1?
/sequential_1/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   21
/sequential_1/time_distributed_3/Reshape_2/shape?
)sequential_1/time_distributed_3/Reshape_2Reshape(sequential_1/dropout_1/Identity:output:08sequential_1/time_distributed_3/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/time_distributed_3/Reshape_2?
-sequential_1/time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2/
-sequential_1/time_distributed_4/Reshape/shape?
'sequential_1/time_distributed_4/ReshapeReshape2sequential_1/time_distributed_3/Reshape_1:output:06sequential_1/time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/time_distributed_4/Reshape?
Isequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpReadVariableOpRsequential_1_time_distributed_4_batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Isequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpReadVariableOpTsequential_1_time_distributed_4_batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOpReadVariableOpTsequential_1_time_distributed_4_batch_normalization_2_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp?
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOpReadVariableOpTsequential_1_time_distributed_4_batch_normalization_2_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02M
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/y?
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/addAddV2Ssequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp:value:0Nsequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/add?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/RsqrtRsqrtGsequential_1/time_distributed_4/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/Rsqrt?
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/mulMulIsequential_1/time_distributed_4/batch_normalization_2/batchnorm/Rsqrt:y:0Ssequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1Mul0sequential_1/time_distributed_4/Reshape:output:0Gsequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2MulQsequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp:value:0Gsequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2?
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/subSubSsequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp:value:0Isequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2E
Csequential_1/time_distributed_4/batch_normalization_2/batchnorm/sub?
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1AddV2Isequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1:z:0Gsequential_1/time_distributed_4/batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2G
Esequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1?
/sequential_1/time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  21
/sequential_1/time_distributed_4/Reshape_1/shape?
)sequential_1/time_distributed_4/Reshape_1ReshapeIsequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1:z:08sequential_1/time_distributed_4/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2+
)sequential_1/time_distributed_4/Reshape_1?
/sequential_1/time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  21
/sequential_1/time_distributed_4/Reshape_2/shape?
)sequential_1/time_distributed_4/Reshape_2Reshape2sequential_1/time_distributed_3/Reshape_1:output:08sequential_1/time_distributed_4/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/time_distributed_4/Reshape_2?
sequential_1/activation_2/ReluRelu2sequential_1/time_distributed_4/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2 
sequential_1/activation_2/Relu?
sequential_1/dropout_2/IdentityIdentity,sequential_1/activation_2/Relu:activations:0*
T0*,
_output_shapes
:??????????2!
sequential_1/dropout_2/Identity?
-sequential_1/time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2/
-sequential_1/time_distributed_5/Reshape/shape?
'sequential_1/time_distributed_5/ReshapeReshape(sequential_1/dropout_2/Identity:output:06sequential_1/time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/time_distributed_5/Reshape?
=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOpReadVariableOpFsequential_1_time_distributed_5_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02?
=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp?
.sequential_1/time_distributed_5/dense_6/MatMulMatMul0sequential_1/time_distributed_5/Reshape:output:0Esequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H20
.sequential_1/time_distributed_5/dense_6/MatMul?
>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_time_distributed_5_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02@
>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp?
/sequential_1/time_distributed_5/dense_6/BiasAddBiasAdd8sequential_1/time_distributed_5/dense_6/MatMul:product:0Fsequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H21
/sequential_1/time_distributed_5/dense_6/BiasAdd?
/sequential_1/time_distributed_5/dense_6/SigmoidSigmoid8sequential_1/time_distributed_5/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H21
/sequential_1/time_distributed_5/dense_6/Sigmoid?
/sequential_1/time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  21
/sequential_1/time_distributed_5/Reshape_1/shape?
)sequential_1/time_distributed_5/Reshape_1Reshape3sequential_1/time_distributed_5/dense_6/Sigmoid:y:08sequential_1/time_distributed_5/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H2+
)sequential_1/time_distributed_5/Reshape_1?
/sequential_1/time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  21
/sequential_1/time_distributed_5/Reshape_2/shape?
)sequential_1/time_distributed_5/Reshape_2Reshape(sequential_1/dropout_2/Identity:output:08sequential_1/time_distributed_5/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/time_distributed_5/Reshape_2?
sequential_1/reshape_2/ShapeShape2sequential_1/time_distributed_5/Reshape_1:output:0*
T0*
_output_shapes
:2
sequential_1/reshape_2/Shape?
*sequential_1/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_1/reshape_2/strided_slice/stack?
,sequential_1/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_2/strided_slice/stack_1?
,sequential_1/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_1/reshape_2/strided_slice/stack_2?
$sequential_1/reshape_2/strided_sliceStridedSlice%sequential_1/reshape_2/Shape:output:03sequential_1/reshape_2/strided_slice/stack:output:05sequential_1/reshape_2/strided_slice/stack_1:output:05sequential_1/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_1/reshape_2/strided_slice?
&sequential_1/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_1/reshape_2/Reshape/shape/1?
&sequential_1/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`2(
&sequential_1/reshape_2/Reshape/shape/2?
&sequential_1/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :`2(
&sequential_1/reshape_2/Reshape/shape/3?
$sequential_1/reshape_2/Reshape/shapePack-sequential_1/reshape_2/strided_slice:output:0/sequential_1/reshape_2/Reshape/shape/1:output:0/sequential_1/reshape_2/Reshape/shape/2:output:0/sequential_1/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/reshape_2/Reshape/shape?
sequential_1/reshape_2/ReshapeReshape2sequential_1/time_distributed_5/Reshape_1:output:0-sequential_1/reshape_2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????``2 
sequential_1/reshape_2/Reshape?
IdentityIdentity'sequential_1/reshape_2/Reshape:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp,^sequential/encoder/batchnorm/ReadVariableOp.^sequential/encoder/batchnorm/ReadVariableOp_1.^sequential/encoder/batchnorm/ReadVariableOp_20^sequential/encoder/batchnorm/mul/ReadVariableOp9^sequential/time_distributed/dense/BiasAdd/ReadVariableOp8^sequential/time_distributed/dense/MatMul/ReadVariableOp=^sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp<^sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp5^sequential_1/batch_normalization/Cast/ReadVariableOp7^sequential_1/batch_normalization/Cast_1/ReadVariableOp7^sequential_1/batch_normalization/Cast_2/ReadVariableOp7^sequential_1/batch_normalization/Cast_3/ReadVariableOp,^sequential_1/decoder/BiasAdd/ReadVariableOp+^sequential_1/decoder/MatMul/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOpJ^sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpL^sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpL^sequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOpL^sequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp?^sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp>^sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOpJ^sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpL^sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpL^sequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOpL^sequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp?^sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp>^sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp2Z
+sequential/encoder/batchnorm/ReadVariableOp+sequential/encoder/batchnorm/ReadVariableOp2^
-sequential/encoder/batchnorm/ReadVariableOp_1-sequential/encoder/batchnorm/ReadVariableOp_12^
-sequential/encoder/batchnorm/ReadVariableOp_2-sequential/encoder/batchnorm/ReadVariableOp_22b
/sequential/encoder/batchnorm/mul/ReadVariableOp/sequential/encoder/batchnorm/mul/ReadVariableOp2t
8sequential/time_distributed/dense/BiasAdd/ReadVariableOp8sequential/time_distributed/dense/BiasAdd/ReadVariableOp2r
7sequential/time_distributed/dense/MatMul/ReadVariableOp7sequential/time_distributed/dense/MatMul/ReadVariableOp2|
<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp<sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp;sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp2l
4sequential_1/batch_normalization/Cast/ReadVariableOp4sequential_1/batch_normalization/Cast/ReadVariableOp2p
6sequential_1/batch_normalization/Cast_1/ReadVariableOp6sequential_1/batch_normalization/Cast_1/ReadVariableOp2p
6sequential_1/batch_normalization/Cast_2/ReadVariableOp6sequential_1/batch_normalization/Cast_2/ReadVariableOp2p
6sequential_1/batch_normalization/Cast_3/ReadVariableOp6sequential_1/batch_normalization/Cast_3/ReadVariableOp2Z
+sequential_1/decoder/BiasAdd/ReadVariableOp+sequential_1/decoder/BiasAdd/ReadVariableOp2X
*sequential_1/decoder/MatMul/ReadVariableOp*sequential_1/decoder/MatMul/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2?
Isequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpIsequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp2?
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpKsequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp2?
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOpKsequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp2?
Ksequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOpKsequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp2?
>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp>sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp2~
=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp=sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp2?
Isequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpIsequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp2?
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpKsequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp2?
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOpKsequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp2?
Ksequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOpKsequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp2?
>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp>sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp2~
=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp=sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp:R N
/
_output_shapes
:?????????``

_user_specified_namex
?
?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_5577

inputs:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?
identity??dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMulReshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshapedense_5/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_4479

inputs)
batch_normalization_1_4465:	?)
batch_normalization_1_4467:	?)
batch_normalization_1_4469:	?)
batch_normalization_1_4471:	?
identity??-batch_normalization_1/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0batch_normalization_1_4465batch_normalization_1_4467batch_normalization_1_4469batch_normalization_1_4471*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_43232/
-batch_normalization_1/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape6batch_normalization_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity~
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_2_layer_call_fn_8947

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_52422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_3363

inputs 
dense_1_3353:
??
dense_1_3355:	?
identity??dense_1/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_1_3353dense_1_3355*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_33522!
dense_1/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityp
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
B
&__inference_dropout_layer_call_fn_8849

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_51862
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?)
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_4161

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2}
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?d
?

D__inference_sequential_layer_call_and_return_conditional_losses_6147

inputsI
5time_distributed_dense_matmul_readvariableop_resource:
?H?E
6time_distributed_dense_biasadd_readvariableop_resource:	?M
9time_distributed_1_dense_1_matmul_readvariableop_resource:
??I
:time_distributed_1_dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?x5
'dense_3_biasadd_readvariableop_resource:x7
)encoder_batchnorm_readvariableop_resource:x;
-encoder_batchnorm_mul_readvariableop_resource:x9
+encoder_batchnorm_readvariableop_1_resource:x9
+encoder_batchnorm_readvariableop_2_resource:x
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp? encoder/batchnorm/ReadVariableOp?"encoder/batchnorm/ReadVariableOp_1?"encoder/batchnorm/ReadVariableOp_2?$encoder/batchnorm/mul/ReadVariableOp?-time_distributed/dense/BiasAdd/ReadVariableOp?,time_distributed/dense/MatMul/ReadVariableOp?1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?0time_distributed_1/dense_1/MatMul/ReadVariableOpe
CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:?????????``2
CastV
reshape/ShapeShapeCast:y:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1}
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeCast:y:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2
reshape/Reshape?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshapereshape/Reshape:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02.
,time_distributed/dense/MatMul/ReadVariableOp?
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/MatMul?
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-time_distributed/dense/BiasAdd/ReadVariableOp?
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
time_distributed/dense/BiasAdd?
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/Relu?
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2"
 time_distributed/Reshape_1/shape?
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed/Reshape_1?
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2"
 time_distributed/Reshape_2/shape?
time_distributed/Reshape_2Reshapereshape/Reshape:output:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape_2?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0time_distributed_1/dense_1/MatMul/ReadVariableOp?
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!time_distributed_1/dense_1/MatMul?
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"time_distributed_1/dense_1/BiasAdd?
time_distributed_1/dense_1/ReluRelu+time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
time_distributed_1/dense_1/Relu?
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2$
"time_distributed_1/Reshape_1/shape?
time_distributed_1/Reshape_1Reshape-time_distributed_1/dense_1/Relu:activations:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_1/Reshape_1?
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_1/Reshape_2/shape?
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape_2?
flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
flatten/transpose/perm?
flatten/transpose	Transpose%time_distributed_1/Reshape_1:output:0flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
flatten/transposeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeflatten/transpose:y:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/BiasAdd?
 encoder/batchnorm/ReadVariableOpReadVariableOp)encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02"
 encoder/batchnorm/ReadVariableOpw
encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
encoder/batchnorm/add/y?
encoder/batchnorm/addAddV2(encoder/batchnorm/ReadVariableOp:value:0 encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
encoder/batchnorm/add{
encoder/batchnorm/RsqrtRsqrtencoder/batchnorm/add:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/Rsqrt?
$encoder/batchnorm/mul/ReadVariableOpReadVariableOp-encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02&
$encoder/batchnorm/mul/ReadVariableOp?
encoder/batchnorm/mulMulencoder/batchnorm/Rsqrt:y:0,encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul?
encoder/batchnorm/mul_1Muldense_3/BiasAdd:output:0encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/mul_1?
"encoder/batchnorm/ReadVariableOp_1ReadVariableOp+encoder_batchnorm_readvariableop_1_resource*
_output_shapes
:x*
dtype02$
"encoder/batchnorm/ReadVariableOp_1?
encoder/batchnorm/mul_2Mul*encoder/batchnorm/ReadVariableOp_1:value:0encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul_2?
"encoder/batchnorm/ReadVariableOp_2ReadVariableOp+encoder_batchnorm_readvariableop_2_resource*
_output_shapes
:x*
dtype02$
"encoder/batchnorm/ReadVariableOp_2?
encoder/batchnorm/subSub*encoder/batchnorm/ReadVariableOp_2:value:0encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/sub?
encoder/batchnorm/add_1AddV2encoder/batchnorm/mul_1:z:0encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/add_1v
IdentityIdentityencoder/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp!^encoder/batchnorm/ReadVariableOp#^encoder/batchnorm/ReadVariableOp_1#^encoder/batchnorm/ReadVariableOp_2%^encoder/batchnorm/mul/ReadVariableOp.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2D
 encoder/batchnorm/ReadVariableOp encoder/batchnorm/ReadVariableOp2H
"encoder/batchnorm/ReadVariableOp_1"encoder/batchnorm/ReadVariableOp_12H
"encoder/batchnorm/ReadVariableOp_2"encoder/batchnorm/ReadVariableOp_22L
$encoder/batchnorm/mul/ReadVariableOp$encoder/batchnorm/mul/ReadVariableOp2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
D
(__inference_dropout_2_layer_call_fn_9446

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_53362
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?}
?
D__inference_sequential_layer_call_and_return_conditional_losses_6400

inputsI
5time_distributed_dense_matmul_readvariableop_resource:
?H?E
6time_distributed_dense_biasadd_readvariableop_resource:	?M
9time_distributed_1_dense_1_matmul_readvariableop_resource:
??I
:time_distributed_1_dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?x5
'dense_3_biasadd_readvariableop_resource:x=
/encoder_assignmovingavg_readvariableop_resource:x?
1encoder_assignmovingavg_1_readvariableop_resource:x;
-encoder_batchnorm_mul_readvariableop_resource:x7
)encoder_batchnorm_readvariableop_resource:x
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?encoder/AssignMovingAvg?&encoder/AssignMovingAvg/ReadVariableOp?encoder/AssignMovingAvg_1?(encoder/AssignMovingAvg_1/ReadVariableOp? encoder/batchnorm/ReadVariableOp?$encoder/batchnorm/mul/ReadVariableOp?-time_distributed/dense/BiasAdd/ReadVariableOp?,time_distributed/dense/MatMul/ReadVariableOp?1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?0time_distributed_1/dense_1/MatMul/ReadVariableOpe
CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:?????????``2
CastV
reshape/ShapeShapeCast:y:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1}
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeCast:y:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2
reshape/Reshape?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshapereshape/Reshape:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02.
,time_distributed/dense/MatMul/ReadVariableOp?
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/MatMul?
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-time_distributed/dense/BiasAdd/ReadVariableOp?
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
time_distributed/dense/BiasAdd?
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/Relu?
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2"
 time_distributed/Reshape_1/shape?
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed/Reshape_1?
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2"
 time_distributed/Reshape_2/shape?
time_distributed/Reshape_2Reshapereshape/Reshape:output:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape_2?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0time_distributed_1/dense_1/MatMul/ReadVariableOp?
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!time_distributed_1/dense_1/MatMul?
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"time_distributed_1/dense_1/BiasAdd?
time_distributed_1/dense_1/ReluRelu+time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
time_distributed_1/dense_1/Relu?
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2$
"time_distributed_1/Reshape_1/shape?
time_distributed_1/Reshape_1Reshape-time_distributed_1/dense_1/Relu:activations:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_1/Reshape_1?
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_1/Reshape_2/shape?
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape_2?
flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
flatten/transpose/perm?
flatten/transpose	Transpose%time_distributed_1/Reshape_1:output:0flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
flatten/transposeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeflatten/transpose:y:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/BiasAdd?
&encoder/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2(
&encoder/moments/mean/reduction_indices?
encoder/moments/meanMeandense_3/BiasAdd:output:0/encoder/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
encoder/moments/mean?
encoder/moments/StopGradientStopGradientencoder/moments/mean:output:0*
T0*
_output_shapes

:x2
encoder/moments/StopGradient?
!encoder/moments/SquaredDifferenceSquaredDifferencedense_3/BiasAdd:output:0%encoder/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????x2#
!encoder/moments/SquaredDifference?
*encoder/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*encoder/moments/variance/reduction_indices?
encoder/moments/varianceMean%encoder/moments/SquaredDifference:z:03encoder/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
encoder/moments/variance?
encoder/moments/SqueezeSqueezeencoder/moments/mean:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
encoder/moments/Squeeze?
encoder/moments/Squeeze_1Squeeze!encoder/moments/variance:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
encoder/moments/Squeeze_1?
encoder/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
encoder/AssignMovingAvg/decay?
&encoder/AssignMovingAvg/ReadVariableOpReadVariableOp/encoder_assignmovingavg_readvariableop_resource*
_output_shapes
:x*
dtype02(
&encoder/AssignMovingAvg/ReadVariableOp?
encoder/AssignMovingAvg/subSub.encoder/AssignMovingAvg/ReadVariableOp:value:0 encoder/moments/Squeeze:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg/sub?
encoder/AssignMovingAvg/mulMulencoder/AssignMovingAvg/sub:z:0&encoder/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg/mul?
encoder/AssignMovingAvgAssignSubVariableOp/encoder_assignmovingavg_readvariableop_resourceencoder/AssignMovingAvg/mul:z:0'^encoder/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
encoder/AssignMovingAvg?
encoder/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2!
encoder/AssignMovingAvg_1/decay?
(encoder/AssignMovingAvg_1/ReadVariableOpReadVariableOp1encoder_assignmovingavg_1_readvariableop_resource*
_output_shapes
:x*
dtype02*
(encoder/AssignMovingAvg_1/ReadVariableOp?
encoder/AssignMovingAvg_1/subSub0encoder/AssignMovingAvg_1/ReadVariableOp:value:0"encoder/moments/Squeeze_1:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg_1/sub?
encoder/AssignMovingAvg_1/mulMul!encoder/AssignMovingAvg_1/sub:z:0(encoder/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg_1/mul?
encoder/AssignMovingAvg_1AssignSubVariableOp1encoder_assignmovingavg_1_readvariableop_resource!encoder/AssignMovingAvg_1/mul:z:0)^encoder/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
encoder/AssignMovingAvg_1w
encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
encoder/batchnorm/add/y?
encoder/batchnorm/addAddV2"encoder/moments/Squeeze_1:output:0 encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
encoder/batchnorm/add{
encoder/batchnorm/RsqrtRsqrtencoder/batchnorm/add:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/Rsqrt?
$encoder/batchnorm/mul/ReadVariableOpReadVariableOp-encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02&
$encoder/batchnorm/mul/ReadVariableOp?
encoder/batchnorm/mulMulencoder/batchnorm/Rsqrt:y:0,encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul?
encoder/batchnorm/mul_1Muldense_3/BiasAdd:output:0encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/mul_1?
encoder/batchnorm/mul_2Mul encoder/moments/Squeeze:output:0encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul_2?
 encoder/batchnorm/ReadVariableOpReadVariableOp)encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02"
 encoder/batchnorm/ReadVariableOp?
encoder/batchnorm/subSub(encoder/batchnorm/ReadVariableOp:value:0encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/sub?
encoder/batchnorm/add_1AddV2encoder/batchnorm/mul_1:z:0encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/add_1v
IdentityIdentityencoder/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^encoder/AssignMovingAvg'^encoder/AssignMovingAvg/ReadVariableOp^encoder/AssignMovingAvg_1)^encoder/AssignMovingAvg_1/ReadVariableOp!^encoder/batchnorm/ReadVariableOp%^encoder/batchnorm/mul/ReadVariableOp.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp22
encoder/AssignMovingAvgencoder/AssignMovingAvg2P
&encoder/AssignMovingAvg/ReadVariableOp&encoder/AssignMovingAvg/ReadVariableOp26
encoder/AssignMovingAvg_1encoder/AssignMovingAvg_12T
(encoder/AssignMovingAvg_1/ReadVariableOp(encoder/AssignMovingAvg_1/ReadVariableOp2D
 encoder/batchnorm/ReadVariableOp encoder/batchnorm/ReadVariableOp2L
$encoder/batchnorm/mul/ReadVariableOp$encoder/batchnorm/mul/ReadVariableOp2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_4634

inputs 
dense_5_4624:
??
dense_5_4626:	?
identity??dense_5/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_5/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_5_4624dense_5_4626*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_45752!
dense_5/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_5/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityp
NoOpNoOp ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
&__inference_dense_3_layer_call_fn_8645

inputs
unknown:	?x
	unknown_0:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_37322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_1_layer_call_fn_5420
decoder_input
unknown:	x?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??H

unknown_18:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_53772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????x
'
_user_specified_namedecoder_input
?
?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_4586

inputs 
dense_5_4576:
??
dense_5_4578:	?
identity??dense_5/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_5/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_5_4576dense_5_4578*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_45752!
dense_5/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_5/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityp
NoOpNoOp ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?J
?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9036

inputsL
=batch_normalization_1_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_1_assignmovingavg_1_readvariableop_resource:	?A
2batch_normalization_1_cast_readvariableop_resource:	?C
4batch_normalization_1_cast_1_readvariableop_resource:	?
identity??%batch_normalization_1/AssignMovingAvg?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?'batch_normalization_1/AssignMovingAvg_1?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_1/moments/mean/reduction_indices?
"batch_normalization_1/moments/meanMeanReshape:output:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_1/moments/mean?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_1/moments/StopGradient?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferenceReshape:output:03batch_normalization_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_1/moments/SquaredDifference?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_1/moments/variance/reduction_indices?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_1/moments/variance?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_1/moments/Squeeze?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1?
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization_1/AssignMovingAvg/decay?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOp?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_1/AssignMovingAvg/sub?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_1/AssignMovingAvg/mul?
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_1/AssignMovingAvg?
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-batch_normalization_1/AssignMovingAvg_1/decay?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_1/AssignMovingAvg_1/sub?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_1/AssignMovingAvg_1/mul?
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_1?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1MulReshape:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub1batch_normalization_1/Cast/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/add_1q
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_1/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
_
A__inference_dropout_layer_call_and_return_conditional_losses_8859

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_5086

inputs 
dense_6_5076:
??H
dense_6_5078:	?H
identity??dense_6/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_6/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_6_5076dense_6_5078*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_50272!
dense_6/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?H2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_6/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????H2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????H2

Identityp
NoOpNoOp ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
b
F__inference_activation_2_layer_call_and_return_conditional_losses_5329

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:??????????2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
]
A__inference_reshape_layer_call_and_return_conditional_losses_8383

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1m
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????H2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9782

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?)
!__inference__traced_restore_10247
file_prefix'
assignvariableop_rmsprop_iter:	 *
 assignvariableop_1_rmsprop_decay: 2
(assignvariableop_2_rmsprop_learning_rate: -
#assignvariableop_3_rmsprop_momentum: (
assignvariableop_4_rmsprop_rho: >
*assignvariableop_5_time_distributed_kernel:
?H?7
(assignvariableop_6_time_distributed_bias:	?@
,assignvariableop_7_time_distributed_1_kernel:
??9
*assignvariableop_8_time_distributed_1_bias:	?5
!assignvariableop_9_dense_2_kernel:
??/
 assignvariableop_10_dense_2_bias:	?5
"assignvariableop_11_dense_3_kernel:	?x.
 assignvariableop_12_dense_3_bias:x/
!assignvariableop_13_encoder_gamma:x.
 assignvariableop_14_encoder_beta:x5
'assignvariableop_15_encoder_moving_mean:x9
+assignvariableop_16_encoder_moving_variance:x5
"assignvariableop_17_decoder_kernel:	x?/
 assignvariableop_18_decoder_bias:	?<
-assignvariableop_19_batch_normalization_gamma:	?;
,assignvariableop_20_batch_normalization_beta:	?B
3assignvariableop_21_batch_normalization_moving_mean:	?F
7assignvariableop_22_batch_normalization_moving_variance:	?6
"assignvariableop_23_dense_4_kernel:
??/
 assignvariableop_24_dense_4_bias:	?;
,assignvariableop_25_time_distributed_2_gamma:	?:
+assignvariableop_26_time_distributed_2_beta:	?A
2assignvariableop_27_time_distributed_2_moving_mean:	?E
6assignvariableop_28_time_distributed_2_moving_variance:	?A
-assignvariableop_29_time_distributed_3_kernel:
??:
+assignvariableop_30_time_distributed_3_bias:	?;
,assignvariableop_31_time_distributed_4_gamma:	?:
+assignvariableop_32_time_distributed_4_beta:	?A
2assignvariableop_33_time_distributed_4_moving_mean:	?E
6assignvariableop_34_time_distributed_4_moving_variance:	?A
-assignvariableop_35_time_distributed_5_kernel:
??H:
+assignvariableop_36_time_distributed_5_bias:	?H#
assignvariableop_37_total: #
assignvariableop_38_count: K
7assignvariableop_39_rmsprop_time_distributed_kernel_rms:
?H?D
5assignvariableop_40_rmsprop_time_distributed_bias_rms:	?M
9assignvariableop_41_rmsprop_time_distributed_1_kernel_rms:
??F
7assignvariableop_42_rmsprop_time_distributed_1_bias_rms:	?B
.assignvariableop_43_rmsprop_dense_2_kernel_rms:
??;
,assignvariableop_44_rmsprop_dense_2_bias_rms:	?A
.assignvariableop_45_rmsprop_dense_3_kernel_rms:	?x:
,assignvariableop_46_rmsprop_dense_3_bias_rms:x;
-assignvariableop_47_rmsprop_encoder_gamma_rms:x:
,assignvariableop_48_rmsprop_encoder_beta_rms:xA
.assignvariableop_49_rmsprop_decoder_kernel_rms:	x?;
,assignvariableop_50_rmsprop_decoder_bias_rms:	?H
9assignvariableop_51_rmsprop_batch_normalization_gamma_rms:	?G
8assignvariableop_52_rmsprop_batch_normalization_beta_rms:	?B
.assignvariableop_53_rmsprop_dense_4_kernel_rms:
??;
,assignvariableop_54_rmsprop_dense_4_bias_rms:	?G
8assignvariableop_55_rmsprop_time_distributed_2_gamma_rms:	?F
7assignvariableop_56_rmsprop_time_distributed_2_beta_rms:	?M
9assignvariableop_57_rmsprop_time_distributed_3_kernel_rms:
??F
7assignvariableop_58_rmsprop_time_distributed_3_bias_rms:	?G
8assignvariableop_59_rmsprop_time_distributed_4_gamma_rms:	?F
7assignvariableop_60_rmsprop_time_distributed_4_beta_rms:	?M
9assignvariableop_61_rmsprop_time_distributed_5_kernel_rms:
??HF
7assignvariableop_62_rmsprop_time_distributed_5_bias_rms:	?H
identity_64??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?
value?B?@B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/18/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/19/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/20/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/21/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/24/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/25/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/26/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/27/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/30/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/31/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?
value?B?@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*N
dtypesD
B2@	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_rmsprop_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_rmsprop_decayIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp(assignvariableop_2_rmsprop_learning_rateIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_rmsprop_momentumIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_rmsprop_rhoIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp*assignvariableop_5_time_distributed_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp(assignvariableop_6_time_distributed_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp,assignvariableop_7_time_distributed_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp*assignvariableop_8_time_distributed_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_encoder_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp assignvariableop_14_encoder_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_encoder_moving_meanIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_encoder_moving_varianceIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp"assignvariableop_17_decoder_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp assignvariableop_18_decoder_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp-assignvariableop_19_batch_normalization_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp,assignvariableop_20_batch_normalization_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp3assignvariableop_21_batch_normalization_moving_meanIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_moving_varianceIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp"assignvariableop_23_dense_4_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp assignvariableop_24_dense_4_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_time_distributed_2_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_time_distributed_2_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp2assignvariableop_27_time_distributed_2_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_time_distributed_2_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp-assignvariableop_29_time_distributed_3_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_time_distributed_3_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_time_distributed_4_gammaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_time_distributed_4_betaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_time_distributed_4_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_time_distributed_4_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp-assignvariableop_35_time_distributed_5_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_time_distributed_5_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp7assignvariableop_39_rmsprop_time_distributed_kernel_rmsIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp5assignvariableop_40_rmsprop_time_distributed_bias_rmsIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp9assignvariableop_41_rmsprop_time_distributed_1_kernel_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp7assignvariableop_42_rmsprop_time_distributed_1_bias_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp.assignvariableop_43_rmsprop_dense_2_kernel_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp,assignvariableop_44_rmsprop_dense_2_bias_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp.assignvariableop_45_rmsprop_dense_3_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp,assignvariableop_46_rmsprop_dense_3_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp-assignvariableop_47_rmsprop_encoder_gamma_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp,assignvariableop_48_rmsprop_encoder_beta_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp.assignvariableop_49_rmsprop_decoder_kernel_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp,assignvariableop_50_rmsprop_decoder_bias_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp9assignvariableop_51_rmsprop_batch_normalization_gamma_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp8assignvariableop_52_rmsprop_batch_normalization_beta_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp.assignvariableop_53_rmsprop_dense_4_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp,assignvariableop_54_rmsprop_dense_4_bias_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp8assignvariableop_55_rmsprop_time_distributed_2_gamma_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp7assignvariableop_56_rmsprop_time_distributed_2_beta_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp9assignvariableop_57_rmsprop_time_distributed_3_kernel_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp7assignvariableop_58_rmsprop_time_distributed_3_bias_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp8assignvariableop_59_rmsprop_time_distributed_4_gamma_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp7assignvariableop_60_rmsprop_time_distributed_4_beta_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp9assignvariableop_61_rmsprop_time_distributed_5_kernel_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp7assignvariableop_62_rmsprop_time_distributed_5_bias_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_629
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_63Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_63f
Identity_64IdentityIdentity_63:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_64?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_64Identity_64:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
2__inference_batch_normalization_layer_call_fn_8767

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_41012
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_5_layer_call_fn_9504

inputs
unknown:
??H
	unknown_0:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_54522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????H2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_3_layer_call_and_return_conditional_losses_3732

inputs1
matmul_readvariableop_resource:	?x-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_3775
input_1
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
_
C__inference_reshape_1_layer_call_and_return_conditional_losses_5217

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_autoencoder_layer_call_fn_6282
input_1
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x

unknown_11:	x?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:
??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:
??H

unknown_30:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_autoencoder_layer_call_and_return_conditional_losses_62152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
?
&__inference_dense_6_layer_call_fn_9825

inputs
unknown:
??H
	unknown_0:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_50272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????H2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_activation_layer_call_fn_8839

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_51792
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9548

inputs:
&dense_6_matmul_readvariableop_resource:
??H6
'dense_6_biasadd_readvariableop_resource:	?H
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/BiasAddz
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
dense_6/Sigmoidq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?H2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Sigmoid:y:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????H2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????H2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

?
A__inference_dense_5_layer_call_and_return_conditional_losses_4575

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8493

inputs8
$dense_matmul_readvariableop_resource:
?H?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????H2	
Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????H: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8463

inputs8
$dense_matmul_readvariableop_resource:
?H?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????H2	
Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Reluq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????H: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????H
 
_user_specified_nameinputs
?
`
D__inference_activation_layer_call_and_return_conditional_losses_8844

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_decoder_layer_call_fn_8744

inputs
unknown:	x?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_51592
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
??
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_8365

inputs9
&decoder_matmul_readvariableop_resource:	x?6
'decoder_biasadd_readvariableop_resource:	?J
;batch_normalization_assignmovingavg_readvariableop_resource:	?L
=batch_normalization_assignmovingavg_1_readvariableop_resource:	??
0batch_normalization_cast_readvariableop_resource:	?A
2batch_normalization_cast_1_readvariableop_resource:	?:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?_
Ptime_distributed_2_batch_normalization_1_assignmovingavg_readvariableop_resource:	?a
Rtime_distributed_2_batch_normalization_1_assignmovingavg_1_readvariableop_resource:	?T
Etime_distributed_2_batch_normalization_1_cast_readvariableop_resource:	?V
Gtime_distributed_2_batch_normalization_1_cast_1_readvariableop_resource:	?M
9time_distributed_3_dense_5_matmul_readvariableop_resource:
??I
:time_distributed_3_dense_5_biasadd_readvariableop_resource:	?_
Ptime_distributed_4_batch_normalization_2_assignmovingavg_readvariableop_resource:	?a
Rtime_distributed_4_batch_normalization_2_assignmovingavg_1_readvariableop_resource:	?T
Etime_distributed_4_batch_normalization_2_cast_readvariableop_resource:	?V
Gtime_distributed_4_batch_normalization_2_cast_1_readvariableop_resource:	?M
9time_distributed_5_dense_6_matmul_readvariableop_resource:
??HI
:time_distributed_5_dense_6_biasadd_readvariableop_resource:	?H
identity??#batch_normalization/AssignMovingAvg?2batch_normalization/AssignMovingAvg/ReadVariableOp?%batch_normalization/AssignMovingAvg_1?4batch_normalization/AssignMovingAvg_1/ReadVariableOp?'batch_normalization/Cast/ReadVariableOp?)batch_normalization/Cast_1/ReadVariableOp?decoder/BiasAdd/ReadVariableOp?decoder/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?8time_distributed_2/batch_normalization_1/AssignMovingAvg?Gtime_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp?:time_distributed_2/batch_normalization_1/AssignMovingAvg_1?Itime_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?<time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?1time_distributed_3/dense_5/BiasAdd/ReadVariableOp?0time_distributed_3/dense_5/MatMul/ReadVariableOp?8time_distributed_4/batch_normalization_2/AssignMovingAvg?Gtime_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp?:time_distributed_4/batch_normalization_2/AssignMovingAvg_1?Itime_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?<time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?1time_distributed_5/dense_6/BiasAdd/ReadVariableOp?0time_distributed_5/dense_6/MatMul/ReadVariableOp?
decoder/MatMul/ReadVariableOpReadVariableOp&decoder_matmul_readvariableop_resource*
_output_shapes
:	x?*
dtype02
decoder/MatMul/ReadVariableOp?
decoder/MatMulMatMulinputs%decoder/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder/MatMul?
decoder/BiasAdd/ReadVariableOpReadVariableOp'decoder_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
decoder/BiasAdd/ReadVariableOp?
decoder/BiasAddBiasAdddecoder/MatMul:product:0&decoder/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder/BiasAdd?
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 24
2batch_normalization/moments/mean/reduction_indices?
 batch_normalization/moments/meanMeandecoder/BiasAdd:output:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2"
 batch_normalization/moments/mean?
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	?2*
(batch_normalization/moments/StopGradient?
-batch_normalization/moments/SquaredDifferenceSquaredDifferencedecoder/BiasAdd:output:01batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2/
-batch_normalization/moments/SquaredDifference?
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization/moments/variance/reduction_indices?
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2&
$batch_normalization/moments/variance?
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2%
#batch_normalization/moments/Squeeze?
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1?
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2+
)batch_normalization/AssignMovingAvg/decay?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp?
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2)
'batch_normalization/AssignMovingAvg/sub?
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2)
'batch_normalization/AssignMovingAvg/mul?
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvg?
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization/AssignMovingAvg_1/decay?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOp?
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization/AssignMovingAvg_1/sub?
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization/AssignMovingAvg_1/mul?
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1?
'batch_normalization/Cast/ReadVariableOpReadVariableOp0batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization/Cast/ReadVariableOp?
)batch_normalization/Cast_1/ReadVariableOpReadVariableOp2batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_1/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/Rsqrt?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:01batch_normalization/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Muldecoder/BiasAdd:output:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/mul_2?
!batch_normalization/batchnorm/subSub/batch_normalization/Cast/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/add_1?
activation/ReluRelu'batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/dropout/Const?
dropout/dropout/MulMulactivation/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul{
dropout/dropout/ShapeShapeactivation/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul_1?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/BiasAddj
reshape_1/ShapeShapedense_4/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_1/Shape?
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stack?
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1?
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2?
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicex
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/1y
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_1/Reshape/shape/2?
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shape?
reshape_1/ReshapeReshapedense_4/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2
reshape_1/Reshape?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshapereshape_1/Reshape:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_2/Reshape?
Gtime_distributed_2/batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gtime_distributed_2/batch_normalization_1/moments/mean/reduction_indices?
5time_distributed_2/batch_normalization_1/moments/meanMean#time_distributed_2/Reshape:output:0Ptime_distributed_2/batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(27
5time_distributed_2/batch_normalization_1/moments/mean?
=time_distributed_2/batch_normalization_1/moments/StopGradientStopGradient>time_distributed_2/batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:	?2?
=time_distributed_2/batch_normalization_1/moments/StopGradient?
Btime_distributed_2/batch_normalization_1/moments/SquaredDifferenceSquaredDifference#time_distributed_2/Reshape:output:0Ftime_distributed_2/batch_normalization_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2D
Btime_distributed_2/batch_normalization_1/moments/SquaredDifference?
Ktime_distributed_2/batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2M
Ktime_distributed_2/batch_normalization_1/moments/variance/reduction_indices?
9time_distributed_2/batch_normalization_1/moments/varianceMeanFtime_distributed_2/batch_normalization_1/moments/SquaredDifference:z:0Ttime_distributed_2/batch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2;
9time_distributed_2/batch_normalization_1/moments/variance?
8time_distributed_2/batch_normalization_1/moments/SqueezeSqueeze>time_distributed_2/batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2:
8time_distributed_2/batch_normalization_1/moments/Squeeze?
:time_distributed_2/batch_normalization_1/moments/Squeeze_1SqueezeBtime_distributed_2/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2<
:time_distributed_2/batch_normalization_1/moments/Squeeze_1?
>time_distributed_2/batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2@
>time_distributed_2/batch_normalization_1/AssignMovingAvg/decay?
Gtime_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOpPtime_distributed_2_batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gtime_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp?
<time_distributed_2/batch_normalization_1/AssignMovingAvg/subSubOtime_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0Atime_distributed_2/batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2>
<time_distributed_2/batch_normalization_1/AssignMovingAvg/sub?
<time_distributed_2/batch_normalization_1/AssignMovingAvg/mulMul@time_distributed_2/batch_normalization_1/AssignMovingAvg/sub:z:0Gtime_distributed_2/batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2>
<time_distributed_2/batch_normalization_1/AssignMovingAvg/mul?
8time_distributed_2/batch_normalization_1/AssignMovingAvgAssignSubVariableOpPtime_distributed_2_batch_normalization_1_assignmovingavg_readvariableop_resource@time_distributed_2/batch_normalization_1/AssignMovingAvg/mul:z:0H^time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02:
8time_distributed_2/batch_normalization_1/AssignMovingAvg?
@time_distributed_2/batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2B
@time_distributed_2/batch_normalization_1/AssignMovingAvg_1/decay?
Itime_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOpRtime_distributed_2_batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Itime_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
>time_distributed_2/batch_normalization_1/AssignMovingAvg_1/subSubQtime_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:0Ctime_distributed_2/batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2@
>time_distributed_2/batch_normalization_1/AssignMovingAvg_1/sub?
>time_distributed_2/batch_normalization_1/AssignMovingAvg_1/mulMulBtime_distributed_2/batch_normalization_1/AssignMovingAvg_1/sub:z:0Itime_distributed_2/batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2@
>time_distributed_2/batch_normalization_1/AssignMovingAvg_1/mul?
:time_distributed_2/batch_normalization_1/AssignMovingAvg_1AssignSubVariableOpRtime_distributed_2_batch_normalization_1_assignmovingavg_1_readvariableop_resourceBtime_distributed_2/batch_normalization_1/AssignMovingAvg_1/mul:z:0J^time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02<
:time_distributed_2/batch_normalization_1/AssignMovingAvg_1?
<time_distributed_2/batch_normalization_1/Cast/ReadVariableOpReadVariableOpEtime_distributed_2_batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?
>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpGtime_distributed_2_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?
8time_distributed_2/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8time_distributed_2/batch_normalization_1/batchnorm/add/y?
6time_distributed_2/batch_normalization_1/batchnorm/addAddV2Ctime_distributed_2/batch_normalization_1/moments/Squeeze_1:output:0Atime_distributed_2/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6time_distributed_2/batch_normalization_1/batchnorm/add?
8time_distributed_2/batch_normalization_1/batchnorm/RsqrtRsqrt:time_distributed_2/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8time_distributed_2/batch_normalization_1/batchnorm/Rsqrt?
6time_distributed_2/batch_normalization_1/batchnorm/mulMul<time_distributed_2/batch_normalization_1/batchnorm/Rsqrt:y:0Ftime_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6time_distributed_2/batch_normalization_1/batchnorm/mul?
8time_distributed_2/batch_normalization_1/batchnorm/mul_1Mul#time_distributed_2/Reshape:output:0:time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8time_distributed_2/batch_normalization_1/batchnorm/mul_1?
8time_distributed_2/batch_normalization_1/batchnorm/mul_2MulAtime_distributed_2/batch_normalization_1/moments/Squeeze:output:0:time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8time_distributed_2/batch_normalization_1/batchnorm/mul_2?
6time_distributed_2/batch_normalization_1/batchnorm/subSubDtime_distributed_2/batch_normalization_1/Cast/ReadVariableOp:value:0<time_distributed_2/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6time_distributed_2/batch_normalization_1/batchnorm/sub?
8time_distributed_2/batch_normalization_1/batchnorm/add_1AddV2<time_distributed_2/batch_normalization_1/batchnorm/mul_1:z:0:time_distributed_2/batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8time_distributed_2/batch_normalization_1/batchnorm/add_1?
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2$
"time_distributed_2/Reshape_1/shape?
time_distributed_2/Reshape_1Reshape<time_distributed_2/batch_normalization_1/batchnorm/add_1:z:0+time_distributed_2/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_2/Reshape_1?
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"time_distributed_2/Reshape_2/shape?
time_distributed_2/Reshape_2Reshapereshape_1/Reshape:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_2/Reshape_2?
activation_1/ReluRelu%time_distributed_2/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2
activation_1/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulactivation_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShapeactivation_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout_1/dropout/Mul_1?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshapedropout_1/dropout/Mul_1:z:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_3/Reshape?
0time_distributed_3/dense_5/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0time_distributed_3/dense_5/MatMul/ReadVariableOp?
!time_distributed_3/dense_5/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!time_distributed_3/dense_5/MatMul?
1time_distributed_3/dense_5/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1time_distributed_3/dense_5/BiasAdd/ReadVariableOp?
"time_distributed_3/dense_5/BiasAddBiasAdd+time_distributed_3/dense_5/MatMul:product:09time_distributed_3/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"time_distributed_3/dense_5/BiasAdd?
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2$
"time_distributed_3/Reshape_1/shape?
time_distributed_3/Reshape_1Reshape+time_distributed_3/dense_5/BiasAdd:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_3/Reshape_1?
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"time_distributed_3/Reshape_2/shape?
time_distributed_3/Reshape_2Reshapedropout_1/dropout/Mul_1:z:0+time_distributed_3/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_3/Reshape_2?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_4/Reshape?
Gtime_distributed_4/batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gtime_distributed_4/batch_normalization_2/moments/mean/reduction_indices?
5time_distributed_4/batch_normalization_2/moments/meanMean#time_distributed_4/Reshape:output:0Ptime_distributed_4/batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(27
5time_distributed_4/batch_normalization_2/moments/mean?
=time_distributed_4/batch_normalization_2/moments/StopGradientStopGradient>time_distributed_4/batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:	?2?
=time_distributed_4/batch_normalization_2/moments/StopGradient?
Btime_distributed_4/batch_normalization_2/moments/SquaredDifferenceSquaredDifference#time_distributed_4/Reshape:output:0Ftime_distributed_4/batch_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2D
Btime_distributed_4/batch_normalization_2/moments/SquaredDifference?
Ktime_distributed_4/batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2M
Ktime_distributed_4/batch_normalization_2/moments/variance/reduction_indices?
9time_distributed_4/batch_normalization_2/moments/varianceMeanFtime_distributed_4/batch_normalization_2/moments/SquaredDifference:z:0Ttime_distributed_4/batch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2;
9time_distributed_4/batch_normalization_2/moments/variance?
8time_distributed_4/batch_normalization_2/moments/SqueezeSqueeze>time_distributed_4/batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2:
8time_distributed_4/batch_normalization_2/moments/Squeeze?
:time_distributed_4/batch_normalization_2/moments/Squeeze_1SqueezeBtime_distributed_4/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2<
:time_distributed_4/batch_normalization_2/moments/Squeeze_1?
>time_distributed_4/batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2@
>time_distributed_4/batch_normalization_2/AssignMovingAvg/decay?
Gtime_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOpPtime_distributed_4_batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gtime_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp?
<time_distributed_4/batch_normalization_2/AssignMovingAvg/subSubOtime_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0Atime_distributed_4/batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2>
<time_distributed_4/batch_normalization_2/AssignMovingAvg/sub?
<time_distributed_4/batch_normalization_2/AssignMovingAvg/mulMul@time_distributed_4/batch_normalization_2/AssignMovingAvg/sub:z:0Gtime_distributed_4/batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2>
<time_distributed_4/batch_normalization_2/AssignMovingAvg/mul?
8time_distributed_4/batch_normalization_2/AssignMovingAvgAssignSubVariableOpPtime_distributed_4_batch_normalization_2_assignmovingavg_readvariableop_resource@time_distributed_4/batch_normalization_2/AssignMovingAvg/mul:z:0H^time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02:
8time_distributed_4/batch_normalization_2/AssignMovingAvg?
@time_distributed_4/batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2B
@time_distributed_4/batch_normalization_2/AssignMovingAvg_1/decay?
Itime_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOpRtime_distributed_4_batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02K
Itime_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?
>time_distributed_4/batch_normalization_2/AssignMovingAvg_1/subSubQtime_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:0Ctime_distributed_4/batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2@
>time_distributed_4/batch_normalization_2/AssignMovingAvg_1/sub?
>time_distributed_4/batch_normalization_2/AssignMovingAvg_1/mulMulBtime_distributed_4/batch_normalization_2/AssignMovingAvg_1/sub:z:0Itime_distributed_4/batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2@
>time_distributed_4/batch_normalization_2/AssignMovingAvg_1/mul?
:time_distributed_4/batch_normalization_2/AssignMovingAvg_1AssignSubVariableOpRtime_distributed_4_batch_normalization_2_assignmovingavg_1_readvariableop_resourceBtime_distributed_4/batch_normalization_2/AssignMovingAvg_1/mul:z:0J^time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02<
:time_distributed_4/batch_normalization_2/AssignMovingAvg_1?
<time_distributed_4/batch_normalization_2/Cast/ReadVariableOpReadVariableOpEtime_distributed_4_batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?
>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpReadVariableOpGtime_distributed_4_batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?
8time_distributed_4/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8time_distributed_4/batch_normalization_2/batchnorm/add/y?
6time_distributed_4/batch_normalization_2/batchnorm/addAddV2Ctime_distributed_4/batch_normalization_2/moments/Squeeze_1:output:0Atime_distributed_4/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6time_distributed_4/batch_normalization_2/batchnorm/add?
8time_distributed_4/batch_normalization_2/batchnorm/RsqrtRsqrt:time_distributed_4/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8time_distributed_4/batch_normalization_2/batchnorm/Rsqrt?
6time_distributed_4/batch_normalization_2/batchnorm/mulMul<time_distributed_4/batch_normalization_2/batchnorm/Rsqrt:y:0Ftime_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6time_distributed_4/batch_normalization_2/batchnorm/mul?
8time_distributed_4/batch_normalization_2/batchnorm/mul_1Mul#time_distributed_4/Reshape:output:0:time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8time_distributed_4/batch_normalization_2/batchnorm/mul_1?
8time_distributed_4/batch_normalization_2/batchnorm/mul_2MulAtime_distributed_4/batch_normalization_2/moments/Squeeze:output:0:time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8time_distributed_4/batch_normalization_2/batchnorm/mul_2?
6time_distributed_4/batch_normalization_2/batchnorm/subSubDtime_distributed_4/batch_normalization_2/Cast/ReadVariableOp:value:0<time_distributed_4/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6time_distributed_4/batch_normalization_2/batchnorm/sub?
8time_distributed_4/batch_normalization_2/batchnorm/add_1AddV2<time_distributed_4/batch_normalization_2/batchnorm/mul_1:z:0:time_distributed_4/batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8time_distributed_4/batch_normalization_2/batchnorm/add_1?
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2$
"time_distributed_4/Reshape_1/shape?
time_distributed_4/Reshape_1Reshape<time_distributed_4/batch_normalization_2/batchnorm/add_1:z:0+time_distributed_4/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_4/Reshape_1?
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_4/Reshape_2/shape?
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_4/Reshape_2?
activation_2/ReluRelu%time_distributed_4/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2
activation_2/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMulactivation_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout_2/dropout/Mul?
dropout_2/dropout/ShapeShapeactivation_2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout_2/dropout/Mul_1?
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_5/Reshape/shape?
time_distributed_5/ReshapeReshapedropout_2/dropout/Mul_1:z:0)time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_5/Reshape?
0time_distributed_5/dense_6/MatMul/ReadVariableOpReadVariableOp9time_distributed_5_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype022
0time_distributed_5/dense_6/MatMul/ReadVariableOp?
!time_distributed_5/dense_6/MatMulMatMul#time_distributed_5/Reshape:output:08time_distributed_5/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2#
!time_distributed_5/dense_6/MatMul?
1time_distributed_5/dense_6/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_5_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype023
1time_distributed_5/dense_6/BiasAdd/ReadVariableOp?
"time_distributed_5/dense_6/BiasAddBiasAdd+time_distributed_5/dense_6/MatMul:product:09time_distributed_5/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2$
"time_distributed_5/dense_6/BiasAdd?
"time_distributed_5/dense_6/SigmoidSigmoid+time_distributed_5/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2$
"time_distributed_5/dense_6/Sigmoid?
"time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  2$
"time_distributed_5/Reshape_1/shape?
time_distributed_5/Reshape_1Reshape&time_distributed_5/dense_6/Sigmoid:y:0+time_distributed_5/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H2
time_distributed_5/Reshape_1?
"time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_5/Reshape_2/shape?
time_distributed_5/Reshape_2Reshapedropout_2/dropout/Mul_1:z:0+time_distributed_5/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_5/Reshape_2w
reshape_2/ShapeShape%time_distributed_5/Reshape_1:output:0*
T0*
_output_shapes
:2
reshape_2/Shape?
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_2/strided_slice/stack?
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_1?
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_2?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_2/strided_slicex
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/1x
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`2
reshape_2/Reshape/shape/2x
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :`2
reshape_2/Reshape/shape/3?
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_2/Reshape/shape?
reshape_2/ReshapeReshape%time_distributed_5/Reshape_1:output:0 reshape_2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????``2
reshape_2/Reshape}
IdentityIdentityreshape_2/Reshape:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp(^batch_normalization/Cast/ReadVariableOp*^batch_normalization/Cast_1/ReadVariableOp^decoder/BiasAdd/ReadVariableOp^decoder/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp9^time_distributed_2/batch_normalization_1/AssignMovingAvgH^time_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp;^time_distributed_2/batch_normalization_1/AssignMovingAvg_1J^time_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp=^time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?^time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp2^time_distributed_3/dense_5/BiasAdd/ReadVariableOp1^time_distributed_3/dense_5/MatMul/ReadVariableOp9^time_distributed_4/batch_normalization_2/AssignMovingAvgH^time_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp;^time_distributed_4/batch_normalization_2/AssignMovingAvg_1J^time_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp=^time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?^time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp2^time_distributed_5/dense_6/BiasAdd/ReadVariableOp1^time_distributed_5/dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization/Cast/ReadVariableOp'batch_normalization/Cast/ReadVariableOp2V
)batch_normalization/Cast_1/ReadVariableOp)batch_normalization/Cast_1/ReadVariableOp2@
decoder/BiasAdd/ReadVariableOpdecoder/BiasAdd/ReadVariableOp2>
decoder/MatMul/ReadVariableOpdecoder/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2t
8time_distributed_2/batch_normalization_1/AssignMovingAvg8time_distributed_2/batch_normalization_1/AssignMovingAvg2?
Gtime_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOpGtime_distributed_2/batch_normalization_1/AssignMovingAvg/ReadVariableOp2x
:time_distributed_2/batch_normalization_1/AssignMovingAvg_1:time_distributed_2/batch_normalization_1/AssignMovingAvg_12?
Itime_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOpItime_distributed_2/batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2|
<time_distributed_2/batch_normalization_1/Cast/ReadVariableOp<time_distributed_2/batch_normalization_1/Cast/ReadVariableOp2?
>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp2f
1time_distributed_3/dense_5/BiasAdd/ReadVariableOp1time_distributed_3/dense_5/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_5/MatMul/ReadVariableOp0time_distributed_3/dense_5/MatMul/ReadVariableOp2t
8time_distributed_4/batch_normalization_2/AssignMovingAvg8time_distributed_4/batch_normalization_2/AssignMovingAvg2?
Gtime_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOpGtime_distributed_4/batch_normalization_2/AssignMovingAvg/ReadVariableOp2x
:time_distributed_4/batch_normalization_2/AssignMovingAvg_1:time_distributed_4/batch_normalization_2/AssignMovingAvg_12?
Itime_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOpItime_distributed_4/batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2|
<time_distributed_4/batch_normalization_2/Cast/ReadVariableOp<time_distributed_4/batch_normalization_2/Cast/ReadVariableOp2?
>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp2f
1time_distributed_5/dense_6/BiasAdd/ReadVariableOp1time_distributed_5/dense_6/BiasAdd/ReadVariableOp2d
0time_distributed_5/dense_6/MatMul/ReadVariableOp0time_distributed_5/dense_6/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
A__inference_dense_6_layer_call_and_return_conditional_losses_9836

inputs2
matmul_readvariableop_resource:
??H.
biasadd_readvariableop_resource:	?H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????H2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????H2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?Q
?	
F__inference_sequential_1_layer_call_and_return_conditional_losses_5377

inputs
decoder_5160:	x?
decoder_5162:	?'
batch_normalization_5165:	?'
batch_normalization_5167:	?'
batch_normalization_5169:	?'
batch_normalization_5171:	? 
dense_4_5199:
??
dense_4_5201:	?&
time_distributed_2_5243:	?&
time_distributed_2_5245:	?&
time_distributed_2_5247:	?&
time_distributed_2_5249:	?+
time_distributed_3_5282:
??&
time_distributed_3_5284:	?&
time_distributed_4_5313:	?&
time_distributed_4_5315:	?&
time_distributed_4_5317:	?&
time_distributed_4_5319:	?+
time_distributed_5_5353:
??H&
time_distributed_5_5355:	?H
identity??+batch_normalization/StatefulPartitionedCall?decoder/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?*time_distributed_2/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?*time_distributed_5/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCallinputsdecoder_5160decoder_5162*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_51592!
decoder/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall(decoder/StatefulPartitionedCall:output:0batch_normalization_5165batch_normalization_5167batch_normalization_5169batch_normalization_5171*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_41012-
+batch_normalization/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_51792
activation/PartitionedCall?
dropout/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_51862
dropout/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_4_5199dense_4_5201*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_51982!
dense_4/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_52172
reshape_1/PartitionedCall?
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0time_distributed_2_5243time_distributed_2_5245time_distributed_2_5247time_distributed_2_5249*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_52422,
*time_distributed_2/StatefulPartitionedCall?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshape"reshape_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_2/Reshape?
activation_1/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_52592
activation_1/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_52662
dropout_1/PartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0time_distributed_3_5282time_distributed_3_5284*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_52812,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape"dropout_1/PartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_3/Reshape?
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_5313time_distributed_4_5315time_distributed_4_5317time_distributed_4_5319*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_53122,
*time_distributed_4/StatefulPartitionedCall?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_4/Reshape?
activation_2/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_53292
activation_2/PartitionedCall?
dropout_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_53362
dropout_2/PartitionedCall?
*time_distributed_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0time_distributed_5_5353time_distributed_5_5355*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_53522,
*time_distributed_5/StatefulPartitionedCall?
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_5/Reshape/shape?
time_distributed_5/ReshapeReshape"dropout_2/PartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_5/Reshape?
reshape_2/PartitionedCallPartitionedCall3time_distributed_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_53742
reshape_2/PartitionedCall?
IdentityIdentity"reshape_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp,^batch_normalization/StatefulPartitionedCall ^decoder/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_5/StatefulPartitionedCall*time_distributed_5/StatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?*
?
D__inference_sequential_layer_call_and_return_conditional_losses_4077
input_1)
time_distributed_4042:
?H?$
time_distributed_4044:	?+
time_distributed_1_4049:
??&
time_distributed_1_4051:	? 
dense_2_4057:
??
dense_2_4059:	?
dense_3_4062:	?x
dense_3_4064:x
encoder_4067:x
encoder_4069:x
encoder_4071:x
encoder_4073:x
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?encoder/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_36492
reshape/PartitionedCall?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0time_distributed_4042time_distributed_4044*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_time_distributed_layer_call_and_return_conditional_losses_38602*
(time_distributed/StatefulPartitionedCall?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshape reshape/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_4049time_distributed_1_4051*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_38272,
*time_distributed_1/StatefulPartitionedCall?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
flatten/PartitionedCallPartitionedCall3time_distributed_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_37032
flatten/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2_4057dense_2_4059*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_37162!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_4062dense_3_4064*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_37322!
dense_3/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0encoder_4067encoder_4069encoder_4071encoder_4073*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_35512!
encoder/StatefulPartitionedCall?
IdentityIdentity(encoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^encoder/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8603

inputs:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2
Reshape_1/shape?
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_time_distributed_layer_call_fn_8410

inputs
unknown:
?H?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_time_distributed_layer_call_and_return_conditional_losses_36652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_3_layer_call_fn_9171

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_55772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
?__inference_dense_layer_call_and_return_conditional_losses_9617

inputs2
matmul_readvariableop_resource:
?H?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
&__inference_dense_1_layer_call_fn_9626

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_33522
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_1_layer_call_fn_8520

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_36872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_autoencoder_layer_call_fn_6704
input_1
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x

unknown_11:	x?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:
??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:
??H

unknown_30:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*:
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_autoencoder_layer_call_and_return_conditional_losses_65682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_3687

inputs:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2
Reshape_1/shape?
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
C__inference_reshape_2_layer_call_and_return_conditional_losses_5374

inputs
identityD
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :`2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????``2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:?????????``2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?"
?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_5242

inputsA
2batch_normalization_1_cast_readvariableop_resource:	?C
4batch_normalization_1_cast_1_readvariableop_resource:	?C
4batch_normalization_1_cast_2_readvariableop_resource:	?C
4batch_normalization_1_cast_3_readvariableop_resource:	?
identity??)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOp?+batch_normalization_1/Cast_2/ReadVariableOp?+batch_normalization_1/Cast_3/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
+batch_normalization_1/Cast_2/ReadVariableOpReadVariableOp4batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_2/ReadVariableOp?
+batch_normalization_1/Cast_3/ReadVariableOpReadVariableOp4batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_3/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV23batch_normalization_1/Cast_1/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1MulReshape:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul1batch_normalization_1/Cast/ReadVariableOp:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub3batch_normalization_1/Cast_2/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/add_1w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_1/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp,^batch_normalization_1/Cast_2/ReadVariableOp,^batch_normalization_1/Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp2Z
+batch_normalization_1/Cast_2/ReadVariableOp+batch_normalization_1/Cast_2/ReadVariableOp2Z
+batch_normalization_1/Cast_3/ReadVariableOp+batch_normalization_1/Cast_3/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?	
E__inference_autoencoder_layer_call_and_return_conditional_losses_6844
input_1#
sequential_6777:
?H?
sequential_6779:	?#
sequential_6781:
??
sequential_6783:	?#
sequential_6785:
??
sequential_6787:	?"
sequential_6789:	?x
sequential_6791:x
sequential_6793:x
sequential_6795:x
sequential_6797:x
sequential_6799:x$
sequential_1_6802:	x? 
sequential_1_6804:	? 
sequential_1_6806:	? 
sequential_1_6808:	? 
sequential_1_6810:	? 
sequential_1_6812:	?%
sequential_1_6814:
?? 
sequential_1_6816:	? 
sequential_1_6818:	? 
sequential_1_6820:	? 
sequential_1_6822:	? 
sequential_1_6824:	?%
sequential_1_6826:
?? 
sequential_1_6828:	? 
sequential_1_6830:	? 
sequential_1_6832:	? 
sequential_1_6834:	? 
sequential_1_6836:	?%
sequential_1_6838:
??H 
sequential_1_6840:	?H
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_6777sequential_6779sequential_6781sequential_6783sequential_6785sequential_6787sequential_6789sequential_6791sequential_6793sequential_6795sequential_6797sequential_6799*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_64002$
"sequential/StatefulPartitionedCall?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_6802sequential_1_6804sequential_1_6806sequential_1_6808sequential_1_6810sequential_1_6812sequential_1_6814sequential_1_6816sequential_1_6818sequential_1_6820sequential_1_6822sequential_1_6824sequential_1_6826sequential_1_6828sequential_1_6830sequential_1_6832sequential_1_6834sequential_1_6836sequential_1_6838sequential_1_6840* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*0
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_58462&
$sequential_1/StatefulPartitionedCall?
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
?
/__inference_time_distributed_layer_call_fn_8392

inputs
unknown:
?H?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_time_distributed_layer_call_and_return_conditional_losses_32232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????H
 
_user_specified_nameinputs
?
?
A__inference_dense_1_layer_call_and_return_conditional_losses_9637

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_4_layer_call_fn_9293

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_55412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?d
?

D__inference_sequential_layer_call_and_return_conditional_losses_7714

inputsI
5time_distributed_dense_matmul_readvariableop_resource:
?H?E
6time_distributed_dense_biasadd_readvariableop_resource:	?M
9time_distributed_1_dense_1_matmul_readvariableop_resource:
??I
:time_distributed_1_dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?x5
'dense_3_biasadd_readvariableop_resource:x7
)encoder_batchnorm_readvariableop_resource:x;
-encoder_batchnorm_mul_readvariableop_resource:x9
+encoder_batchnorm_readvariableop_1_resource:x9
+encoder_batchnorm_readvariableop_2_resource:x
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp? encoder/batchnorm/ReadVariableOp?"encoder/batchnorm/ReadVariableOp_1?"encoder/batchnorm/ReadVariableOp_2?$encoder/batchnorm/mul/ReadVariableOp?-time_distributed/dense/BiasAdd/ReadVariableOp?,time_distributed/dense/MatMul/ReadVariableOp?1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?0time_distributed_1/dense_1/MatMul/ReadVariableOpT
reshape/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1}
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeinputsreshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2
reshape/Reshape?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshapereshape/Reshape:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02.
,time_distributed/dense/MatMul/ReadVariableOp?
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/MatMul?
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-time_distributed/dense/BiasAdd/ReadVariableOp?
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
time_distributed/dense/BiasAdd?
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/Relu?
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2"
 time_distributed/Reshape_1/shape?
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed/Reshape_1?
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2"
 time_distributed/Reshape_2/shape?
time_distributed/Reshape_2Reshapereshape/Reshape:output:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape_2?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0time_distributed_1/dense_1/MatMul/ReadVariableOp?
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!time_distributed_1/dense_1/MatMul?
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"time_distributed_1/dense_1/BiasAdd?
time_distributed_1/dense_1/ReluRelu+time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
time_distributed_1/dense_1/Relu?
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2$
"time_distributed_1/Reshape_1/shape?
time_distributed_1/Reshape_1Reshape-time_distributed_1/dense_1/Relu:activations:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_1/Reshape_1?
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_1/Reshape_2/shape?
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape_2?
flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
flatten/transpose/perm?
flatten/transpose	Transpose%time_distributed_1/Reshape_1:output:0flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
flatten/transposeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeflatten/transpose:y:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/BiasAdd?
 encoder/batchnorm/ReadVariableOpReadVariableOp)encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02"
 encoder/batchnorm/ReadVariableOpw
encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
encoder/batchnorm/add/y?
encoder/batchnorm/addAddV2(encoder/batchnorm/ReadVariableOp:value:0 encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
encoder/batchnorm/add{
encoder/batchnorm/RsqrtRsqrtencoder/batchnorm/add:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/Rsqrt?
$encoder/batchnorm/mul/ReadVariableOpReadVariableOp-encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02&
$encoder/batchnorm/mul/ReadVariableOp?
encoder/batchnorm/mulMulencoder/batchnorm/Rsqrt:y:0,encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul?
encoder/batchnorm/mul_1Muldense_3/BiasAdd:output:0encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/mul_1?
"encoder/batchnorm/ReadVariableOp_1ReadVariableOp+encoder_batchnorm_readvariableop_1_resource*
_output_shapes
:x*
dtype02$
"encoder/batchnorm/ReadVariableOp_1?
encoder/batchnorm/mul_2Mul*encoder/batchnorm/ReadVariableOp_1:value:0encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul_2?
"encoder/batchnorm/ReadVariableOp_2ReadVariableOp+encoder_batchnorm_readvariableop_2_resource*
_output_shapes
:x*
dtype02$
"encoder/batchnorm/ReadVariableOp_2?
encoder/batchnorm/subSub*encoder/batchnorm/ReadVariableOp_2:value:0encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/sub?
encoder/batchnorm/add_1AddV2encoder/batchnorm/mul_1:z:0encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/add_1v
IdentityIdentityencoder/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp!^encoder/batchnorm/ReadVariableOp#^encoder/batchnorm/ReadVariableOp_1#^encoder/batchnorm/ReadVariableOp_2%^encoder/batchnorm/mul/ReadVariableOp.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2D
 encoder/batchnorm/ReadVariableOp encoder/batchnorm/ReadVariableOp2H
"encoder/batchnorm/ReadVariableOp_1"encoder/batchnorm/ReadVariableOp_12H
"encoder/batchnorm/ReadVariableOp_2"encoder/batchnorm/ReadVariableOp_22L
$encoder/batchnorm/mul/ReadVariableOp$encoder/batchnorm/mul/ReadVariableOp2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
_
C__inference_reshape_1_layer_call_and_return_conditional_losses_8908

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:??????????2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_activation_2_layer_call_and_return_conditional_losses_9441

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:??????????2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_5_layer_call_fn_9486

inputs
unknown:
??H
	unknown_0:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_50862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????H2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_3_layer_call_fn_9153

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_46342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?z
?
__inference__traced_save_10048
file_prefix+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop8
4savev2_time_distributed_1_kernel_read_readvariableop6
2savev2_time_distributed_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop,
(savev2_encoder_gamma_read_readvariableop+
'savev2_encoder_beta_read_readvariableop2
.savev2_encoder_moving_mean_read_readvariableop6
2savev2_encoder_moving_variance_read_readvariableop-
)savev2_decoder_kernel_read_readvariableop+
'savev2_decoder_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop7
3savev2_time_distributed_2_gamma_read_readvariableop6
2savev2_time_distributed_2_beta_read_readvariableop=
9savev2_time_distributed_2_moving_mean_read_readvariableopA
=savev2_time_distributed_2_moving_variance_read_readvariableop8
4savev2_time_distributed_3_kernel_read_readvariableop6
2savev2_time_distributed_3_bias_read_readvariableop7
3savev2_time_distributed_4_gamma_read_readvariableop6
2savev2_time_distributed_4_beta_read_readvariableop=
9savev2_time_distributed_4_moving_mean_read_readvariableopA
=savev2_time_distributed_4_moving_variance_read_readvariableop8
4savev2_time_distributed_5_kernel_read_readvariableop6
2savev2_time_distributed_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopB
>savev2_rmsprop_time_distributed_kernel_rms_read_readvariableop@
<savev2_rmsprop_time_distributed_bias_rms_read_readvariableopD
@savev2_rmsprop_time_distributed_1_kernel_rms_read_readvariableopB
>savev2_rmsprop_time_distributed_1_bias_rms_read_readvariableop9
5savev2_rmsprop_dense_2_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_2_bias_rms_read_readvariableop9
5savev2_rmsprop_dense_3_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_3_bias_rms_read_readvariableop8
4savev2_rmsprop_encoder_gamma_rms_read_readvariableop7
3savev2_rmsprop_encoder_beta_rms_read_readvariableop9
5savev2_rmsprop_decoder_kernel_rms_read_readvariableop7
3savev2_rmsprop_decoder_bias_rms_read_readvariableopD
@savev2_rmsprop_batch_normalization_gamma_rms_read_readvariableopC
?savev2_rmsprop_batch_normalization_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_4_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_4_bias_rms_read_readvariableopC
?savev2_rmsprop_time_distributed_2_gamma_rms_read_readvariableopB
>savev2_rmsprop_time_distributed_2_beta_rms_read_readvariableopD
@savev2_rmsprop_time_distributed_3_kernel_rms_read_readvariableopB
>savev2_rmsprop_time_distributed_3_bias_rms_read_readvariableopC
?savev2_rmsprop_time_distributed_4_gamma_rms_read_readvariableopB
>savev2_rmsprop_time_distributed_4_beta_rms_read_readvariableopD
@savev2_rmsprop_time_distributed_5_kernel_rms_read_readvariableopB
>savev2_rmsprop_time_distributed_5_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?
value?B?@B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/18/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/19/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/20/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/21/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/24/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/25/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/26/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/27/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/30/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/31/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?
value?B?@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_1_kernel_read_readvariableop2savev2_time_distributed_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop(savev2_encoder_gamma_read_readvariableop'savev2_encoder_beta_read_readvariableop.savev2_encoder_moving_mean_read_readvariableop2savev2_encoder_moving_variance_read_readvariableop)savev2_decoder_kernel_read_readvariableop'savev2_decoder_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop3savev2_time_distributed_2_gamma_read_readvariableop2savev2_time_distributed_2_beta_read_readvariableop9savev2_time_distributed_2_moving_mean_read_readvariableop=savev2_time_distributed_2_moving_variance_read_readvariableop4savev2_time_distributed_3_kernel_read_readvariableop2savev2_time_distributed_3_bias_read_readvariableop3savev2_time_distributed_4_gamma_read_readvariableop2savev2_time_distributed_4_beta_read_readvariableop9savev2_time_distributed_4_moving_mean_read_readvariableop=savev2_time_distributed_4_moving_variance_read_readvariableop4savev2_time_distributed_5_kernel_read_readvariableop2savev2_time_distributed_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop>savev2_rmsprop_time_distributed_kernel_rms_read_readvariableop<savev2_rmsprop_time_distributed_bias_rms_read_readvariableop@savev2_rmsprop_time_distributed_1_kernel_rms_read_readvariableop>savev2_rmsprop_time_distributed_1_bias_rms_read_readvariableop5savev2_rmsprop_dense_2_kernel_rms_read_readvariableop3savev2_rmsprop_dense_2_bias_rms_read_readvariableop5savev2_rmsprop_dense_3_kernel_rms_read_readvariableop3savev2_rmsprop_dense_3_bias_rms_read_readvariableop4savev2_rmsprop_encoder_gamma_rms_read_readvariableop3savev2_rmsprop_encoder_beta_rms_read_readvariableop5savev2_rmsprop_decoder_kernel_rms_read_readvariableop3savev2_rmsprop_decoder_bias_rms_read_readvariableop@savev2_rmsprop_batch_normalization_gamma_rms_read_readvariableop?savev2_rmsprop_batch_normalization_beta_rms_read_readvariableop5savev2_rmsprop_dense_4_kernel_rms_read_readvariableop3savev2_rmsprop_dense_4_bias_rms_read_readvariableop?savev2_rmsprop_time_distributed_2_gamma_rms_read_readvariableop>savev2_rmsprop_time_distributed_2_beta_rms_read_readvariableop@savev2_rmsprop_time_distributed_3_kernel_rms_read_readvariableop>savev2_rmsprop_time_distributed_3_bias_rms_read_readvariableop?savev2_rmsprop_time_distributed_4_gamma_rms_read_readvariableop>savev2_rmsprop_time_distributed_4_beta_rms_read_readvariableop@savev2_rmsprop_time_distributed_5_kernel_rms_read_readvariableop>savev2_rmsprop_time_distributed_5_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *N
dtypesD
B2@	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :
?H?:?:
??:?:
??:?:	?x:x:x:x:x:x:	x?:?:?:?:?:?:
??:?:?:?:?:?:
??:?:?:?:?:?:
??H:?H: : :
?H?:?:
??:?:
??:?:	?x:x:x:x:	x?:?:?:?:
??:?:?:?:
??:?:?:?:
??H:?H: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:
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
: :&"
 
_output_shapes
:
?H?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!	

_output_shapes	
:?:&
"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?x: 

_output_shapes
:x: 

_output_shapes
:x: 

_output_shapes
:x: 

_output_shapes
:x: 

_output_shapes
:x:%!

_output_shapes
:	x?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
??H:!%

_output_shapes	
:?H:&

_output_shapes
: :'

_output_shapes
: :&("
 
_output_shapes
:
?H?:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:&,"
 
_output_shapes
:
??:!-

_output_shapes	
:?:%.!

_output_shapes
:	?x: /

_output_shapes
:x: 0

_output_shapes
:x: 1

_output_shapes
:x:%2!

_output_shapes
:	x?:!3

_output_shapes	
:?:!4

_output_shapes	
:?:!5

_output_shapes	
:?:&6"
 
_output_shapes
:
??:!7

_output_shapes	
:?:!8

_output_shapes	
:?:!9

_output_shapes	
:?:&:"
 
_output_shapes
:
??:!;

_output_shapes	
:?:!<

_output_shapes	
:?:!=

_output_shapes	
:?:&>"
 
_output_shapes
:
??H:!?

_output_shapes	
:?H:@

_output_shapes
: 
?
?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9563

inputs:
&dense_6_matmul_readvariableop_resource:
??H6
'dense_6_biasadd_readvariableop_resource:	?H
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/BiasAddz
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
dense_6/Sigmoidw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Sigmoid:y:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????H2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8551

inputs:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Reluq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
?__inference_dense_layer_call_and_return_conditional_losses_3212

inputs2
matmul_readvariableop_resource:
?H?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
_
A__inference_dropout_layer_call_and_return_conditional_losses_5186

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_encoder_layer_call_fn_8681

inputs
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_35512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????x: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?	
?
1__inference_time_distributed_4_layer_call_fn_9267

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_49302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
4__inference_batch_normalization_2_layer_call_fn_9762

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_47742
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_batch_normalization_1_layer_call_fn_9650

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_42632
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
D__inference_sequential_layer_call_and_return_conditional_losses_3748

inputs)
time_distributed_3666:
?H?$
time_distributed_3668:	?+
time_distributed_1_3688:
??&
time_distributed_1_3690:	? 
dense_2_3717:
??
dense_2_3719:	?
dense_3_3733:	?x
dense_3_3735:x
encoder_3738:x
encoder_3740:x
encoder_3742:x
encoder_3744:x
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?encoder/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_36492
reshape/PartitionedCall?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0time_distributed_3666time_distributed_3668*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_time_distributed_layer_call_and_return_conditional_losses_36652*
(time_distributed/StatefulPartitionedCall?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshape reshape/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_3688time_distributed_1_3690*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_36872,
*time_distributed_1/StatefulPartitionedCall?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
flatten/PartitionedCallPartitionedCall3time_distributed_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_37032
flatten/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2_3717dense_2_3719*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_37162!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_3733dense_3_3735*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_37322!
dense_3/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0encoder_3738encoder_3740encoder_3742encoder_3744*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_34912!
encoder/StatefulPartitionedCall?
IdentityIdentity(encoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^encoder/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?

?
A__inference_dense_4_layer_call_and_return_conditional_losses_8890

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_activation_layer_call_and_return_conditional_losses_5179

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_dense_2_layer_call_and_return_conditional_losses_8636

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9213

inputs:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?
identity??dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMulReshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_5/BiasAdd:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?*
?
A__inference_encoder_layer_call_and_return_conditional_losses_8735

inputs5
'assignmovingavg_readvariableop_resource:x7
)assignmovingavg_1_readvariableop_resource:x3
%batchnorm_mul_readvariableop_resource:x/
!batchnorm_readvariableop_resource:x
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:x2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????x2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:x*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:x2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:x*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:x2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:x2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:x2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:x2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????x: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8478

inputs8
$dense_matmul_readvariableop_resource:
?H?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????H2	
Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????H: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?	
?
1__inference_time_distributed_2_layer_call_fn_8934

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_44792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
D
(__inference_reshape_2_layer_call_fn_9583

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_53742
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????``2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_7584

inputs
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_39432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
/__inference_time_distributed_layer_call_fn_8419

inputs
unknown:
?H?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_time_distributed_layer_call_and_return_conditional_losses_38602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_3411

inputs 
dense_1_3401:
??
dense_1_3403:	?
identity??dense_1/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_1_3401dense_1_3403*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_33522!
dense_1/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityp
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?*
?
D__inference_sequential_layer_call_and_return_conditional_losses_3943

inputs)
time_distributed_3908:
?H?$
time_distributed_3910:	?+
time_distributed_1_3915:
??&
time_distributed_1_3917:	? 
dense_2_3923:
??
dense_2_3925:	?
dense_3_3928:	?x
dense_3_3930:x
encoder_3933:x
encoder_3935:x
encoder_3937:x
encoder_3939:x
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?encoder/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_36492
reshape/PartitionedCall?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0time_distributed_3908time_distributed_3910*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_time_distributed_layer_call_and_return_conditional_losses_38602*
(time_distributed/StatefulPartitionedCall?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshape reshape/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_3915time_distributed_1_3917*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_38272,
*time_distributed_1/StatefulPartitionedCall?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
flatten/PartitionedCallPartitionedCall3time_distributed_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_37032
flatten/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2_3923dense_2_3925*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_37162!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_3928dense_3_3930*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_37322!
dense_3/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0encoder_3933encoder_3935encoder_3937encoder_3939*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_35512!
encoder/StatefulPartitionedCall?
IdentityIdentity(encoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^encoder/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_7642

inputs
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_64002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
_
C__inference_reshape_2_layer_call_and_return_conditional_losses_9597

inputs
identityD
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :`2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????``2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:?????????``2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
&__inference_dense_4_layer_call_fn_8880

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_51982
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?	
E__inference_autoencoder_layer_call_and_return_conditional_losses_6215
x#
sequential_6148:
?H?
sequential_6150:	?#
sequential_6152:
??
sequential_6154:	?#
sequential_6156:
??
sequential_6158:	?"
sequential_6160:	?x
sequential_6162:x
sequential_6164:x
sequential_6166:x
sequential_6168:x
sequential_6170:x$
sequential_1_6173:	x? 
sequential_1_6175:	? 
sequential_1_6177:	? 
sequential_1_6179:	? 
sequential_1_6181:	? 
sequential_1_6183:	?%
sequential_1_6185:
?? 
sequential_1_6187:	? 
sequential_1_6189:	? 
sequential_1_6191:	? 
sequential_1_6193:	? 
sequential_1_6195:	?%
sequential_1_6197:
?? 
sequential_1_6199:	? 
sequential_1_6201:	? 
sequential_1_6203:	? 
sequential_1_6205:	? 
sequential_1_6207:	?%
sequential_1_6209:
??H 
sequential_1_6211:	?H
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallxsequential_6148sequential_6150sequential_6152sequential_6154sequential_6156sequential_6158sequential_6160sequential_6162sequential_6164sequential_6166sequential_6168sequential_6170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_61472$
"sequential/StatefulPartitionedCall?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_6173sequential_1_6175sequential_1_6177sequential_1_6179sequential_1_6181sequential_1_6183sequential_1_6185sequential_1_6187sequential_1_6189sequential_1_6191sequential_1_6193sequential_1_6195sequential_1_6197sequential_1_6199sequential_1_6201sequential_1_6203sequential_1_6205sequential_1_6207sequential_1_6209sequential_1_6211* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_53772&
$sequential_1/StatefulPartitionedCall?
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:R N
/
_output_shapes
:?????????``

_user_specified_namex
?V
?

F__inference_sequential_1_layer_call_and_return_conditional_losses_5846

inputs
decoder_5782:	x?
decoder_5784:	?'
batch_normalization_5787:	?'
batch_normalization_5789:	?'
batch_normalization_5791:	?'
batch_normalization_5793:	? 
dense_4_5798:
??
dense_4_5800:	?&
time_distributed_2_5804:	?&
time_distributed_2_5806:	?&
time_distributed_2_5808:	?&
time_distributed_2_5810:	?+
time_distributed_3_5817:
??&
time_distributed_3_5819:	?&
time_distributed_4_5824:	?&
time_distributed_4_5826:	?&
time_distributed_4_5828:	?&
time_distributed_4_5830:	?+
time_distributed_5_5837:
??H&
time_distributed_5_5839:	?H
identity??+batch_normalization/StatefulPartitionedCall?decoder/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?*time_distributed_2/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?*time_distributed_5/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCallinputsdecoder_5782decoder_5784*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_51592!
decoder/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall(decoder/StatefulPartitionedCall:output:0batch_normalization_5787batch_normalization_5789batch_normalization_5791batch_normalization_5793*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_41612-
+batch_normalization/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_51792
activation/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_57132!
dropout/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_4_5798dense_4_5800*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_51982!
dense_4/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_52172
reshape_1/PartitionedCall?
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0time_distributed_2_5804time_distributed_2_5806time_distributed_2_5808time_distributed_2_5810*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_56662,
*time_distributed_2/StatefulPartitionedCall?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshape"reshape_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_2/Reshape?
activation_1/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_52592
activation_1/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_56042#
!dropout_1/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0time_distributed_3_5817time_distributed_3_5819*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_55772,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape*dropout_1/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_3/Reshape?
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_5824time_distributed_4_5826time_distributed_4_5828time_distributed_4_5830*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_55412,
*time_distributed_4/StatefulPartitionedCall?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_4/Reshape?
activation_2/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_53292
activation_2/PartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_54792#
!dropout_2/StatefulPartitionedCall?
*time_distributed_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0time_distributed_5_5837time_distributed_5_5839*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_54522,
*time_distributed_5/StatefulPartitionedCall?
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_5/Reshape/shape?
time_distributed_5/ReshapeReshape*dropout_2/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_5/Reshape?
reshape_2/PartitionedCallPartitionedCall3time_distributed_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_53742
reshape_2/PartitionedCall?
IdentityIdentity"reshape_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp,^batch_normalization/StatefulPartitionedCall ^decoder/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_5/StatefulPartitionedCall*time_distributed_5/StatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9526

inputs:
&dense_6_matmul_readvariableop_resource:
??H6
'dense_6_biasadd_readvariableop_resource:	?H
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/BiasAddz
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
dense_6/Sigmoidq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?H2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Sigmoid:y:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????H2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????H2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
4__inference_batch_normalization_2_layer_call_fn_9749

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_47142
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9324

inputsA
2batch_normalization_2_cast_readvariableop_resource:	?C
4batch_normalization_2_cast_1_readvariableop_resource:	?C
4batch_normalization_2_cast_2_readvariableop_resource:	?C
4batch_normalization_2_cast_3_readvariableop_resource:	?
identity??)batch_normalization_2/Cast/ReadVariableOp?+batch_normalization_2/Cast_1/ReadVariableOp?+batch_normalization_2/Cast_2/ReadVariableOp?+batch_normalization_2/Cast_3/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
)batch_normalization_2/Cast/ReadVariableOpReadVariableOp2batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_2/Cast/ReadVariableOp?
+batch_normalization_2/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_1/ReadVariableOp?
+batch_normalization_2/Cast_2/ReadVariableOpReadVariableOp4batch_normalization_2_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_2/ReadVariableOp?
+batch_normalization_2/Cast_3/ReadVariableOpReadVariableOp4batch_normalization_2_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_3/ReadVariableOp?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV23batch_normalization_2/Cast_1/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:03batch_normalization_2/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1MulReshape:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/mul_1?
%batch_normalization_2/batchnorm/mul_2Mul1batch_normalization_2/Cast/ReadVariableOp:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
#batch_normalization_2/batchnorm/subSub3batch_normalization_2/Cast_2/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/add_1q
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_2/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp*^batch_normalization_2/Cast/ReadVariableOp,^batch_normalization_2/Cast_1/ReadVariableOp,^batch_normalization_2/Cast_2/ReadVariableOp,^batch_normalization_2/Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 2V
)batch_normalization_2/Cast/ReadVariableOp)batch_normalization_2/Cast/ReadVariableOp2Z
+batch_normalization_2/Cast_1/ReadVariableOp+batch_normalization_2/Cast_1/ReadVariableOp2Z
+batch_normalization_2/Cast_2/ReadVariableOp+batch_normalization_2/Cast_2/ReadVariableOp2Z
+batch_normalization_2/Cast_3/ReadVariableOp+batch_normalization_2/Cast_3/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?C
?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_5666

inputsL
=batch_normalization_1_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_1_assignmovingavg_1_readvariableop_resource:	?A
2batch_normalization_1_cast_readvariableop_resource:	?C
4batch_normalization_1_cast_1_readvariableop_resource:	?
identity??%batch_normalization_1/AssignMovingAvg?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?'batch_normalization_1/AssignMovingAvg_1?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_1/moments/mean/reduction_indices?
"batch_normalization_1/moments/meanMeanReshape:output:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_1/moments/mean?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_1/moments/StopGradient?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferenceReshape:output:03batch_normalization_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_1/moments/SquaredDifference?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_1/moments/variance/reduction_indices?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_1/moments/variance?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_1/moments/Squeeze?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1?
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization_1/AssignMovingAvg/decay?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOp?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_1/AssignMovingAvg/sub?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_1/AssignMovingAvg/mul?
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_1/AssignMovingAvg?
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-batch_normalization_1/AssignMovingAvg_1/decay?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_1/AssignMovingAvg_1/sub?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_1/AssignMovingAvg_1/mul?
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_1?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1MulReshape:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub1batch_normalization_1/Cast/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/add_1w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_1/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?V
?

F__inference_sequential_1_layer_call_and_return_conditional_losses_6068
decoder_input
decoder_6004:	x?
decoder_6006:	?'
batch_normalization_6009:	?'
batch_normalization_6011:	?'
batch_normalization_6013:	?'
batch_normalization_6015:	? 
dense_4_6020:
??
dense_4_6022:	?&
time_distributed_2_6026:	?&
time_distributed_2_6028:	?&
time_distributed_2_6030:	?&
time_distributed_2_6032:	?+
time_distributed_3_6039:
??&
time_distributed_3_6041:	?&
time_distributed_4_6046:	?&
time_distributed_4_6048:	?&
time_distributed_4_6050:	?&
time_distributed_4_6052:	?+
time_distributed_5_6059:
??H&
time_distributed_5_6061:	?H
identity??+batch_normalization/StatefulPartitionedCall?decoder/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?*time_distributed_2/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?*time_distributed_5/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputdecoder_6004decoder_6006*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_51592!
decoder/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall(decoder/StatefulPartitionedCall:output:0batch_normalization_6009batch_normalization_6011batch_normalization_6013batch_normalization_6015*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_41612-
+batch_normalization/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_51792
activation/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_57132!
dropout/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_4_6020dense_4_6022*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_51982!
dense_4/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_52172
reshape_1/PartitionedCall?
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0time_distributed_2_6026time_distributed_2_6028time_distributed_2_6030time_distributed_2_6032*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_56662,
*time_distributed_2/StatefulPartitionedCall?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshape"reshape_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_2/Reshape?
activation_1/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_52592
activation_1/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_56042#
!dropout_1/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0time_distributed_3_6039time_distributed_3_6041*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_55772,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape*dropout_1/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_3/Reshape?
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_6046time_distributed_4_6048time_distributed_4_6050time_distributed_4_6052*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_55412,
*time_distributed_4/StatefulPartitionedCall?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_4/Reshape?
activation_2/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_53292
activation_2/PartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_54792#
!dropout_2/StatefulPartitionedCall?
*time_distributed_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0time_distributed_5_6059time_distributed_5_6061*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_54522,
*time_distributed_5/StatefulPartitionedCall?
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_5/Reshape/shape?
time_distributed_5/ReshapeReshape*dropout_2/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_5/Reshape?
reshape_2/PartitionedCallPartitionedCall3time_distributed_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_53742
reshape_2/PartitionedCall?
IdentityIdentity"reshape_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp,^batch_normalization/StatefulPartitionedCall ^decoder/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_5/StatefulPartitionedCall*time_distributed_5/StatefulPartitionedCall:V R
'
_output_shapes
:?????????x
'
_user_specified_namedecoder_input
?
?
1__inference_time_distributed_3_layer_call_fn_9144

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_45862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
b
F__inference_activation_1_layer_call_and_return_conditional_losses_5259

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:??????????2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_2_layer_call_fn_8960

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_56662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
A__inference_dropout_layer_call_and_return_conditional_losses_8871

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
(__inference_dropout_2_layer_call_fn_9451

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_54792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_time_distributed_layer_call_and_return_conditional_losses_3665

inputs8
$dense_matmul_readvariableop_resource:
?H?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????H2	
Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????H: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
J__inference_time_distributed_layer_call_and_return_conditional_losses_3223

inputs

dense_3213:
?H?

dense_3215:	?
identity??dense/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????H2	
Reshape?
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0
dense_3213
dense_3215*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_32122
dense/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityn
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????H: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????H
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_4429

inputs)
batch_normalization_1_4415:	?)
batch_normalization_1_4417:	?)
batch_normalization_1_4419:	?)
batch_normalization_1_4421:	?
identity??-batch_normalization_1/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0batch_normalization_1_4415batch_normalization_1_4417batch_normalization_1_4419batch_normalization_1_4421*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_42632/
-batch_normalization_1/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape6batch_normalization_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity~
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_8176

inputs9
&decoder_matmul_readvariableop_resource:	x?6
'decoder_biasadd_readvariableop_resource:	??
0batch_normalization_cast_readvariableop_resource:	?A
2batch_normalization_cast_1_readvariableop_resource:	?A
2batch_normalization_cast_2_readvariableop_resource:	?A
2batch_normalization_cast_3_readvariableop_resource:	?:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?T
Etime_distributed_2_batch_normalization_1_cast_readvariableop_resource:	?V
Gtime_distributed_2_batch_normalization_1_cast_1_readvariableop_resource:	?V
Gtime_distributed_2_batch_normalization_1_cast_2_readvariableop_resource:	?V
Gtime_distributed_2_batch_normalization_1_cast_3_readvariableop_resource:	?M
9time_distributed_3_dense_5_matmul_readvariableop_resource:
??I
:time_distributed_3_dense_5_biasadd_readvariableop_resource:	?T
Etime_distributed_4_batch_normalization_2_cast_readvariableop_resource:	?V
Gtime_distributed_4_batch_normalization_2_cast_1_readvariableop_resource:	?V
Gtime_distributed_4_batch_normalization_2_cast_2_readvariableop_resource:	?V
Gtime_distributed_4_batch_normalization_2_cast_3_readvariableop_resource:	?M
9time_distributed_5_dense_6_matmul_readvariableop_resource:
??HI
:time_distributed_5_dense_6_biasadd_readvariableop_resource:	?H
identity??'batch_normalization/Cast/ReadVariableOp?)batch_normalization/Cast_1/ReadVariableOp?)batch_normalization/Cast_2/ReadVariableOp?)batch_normalization/Cast_3/ReadVariableOp?decoder/BiasAdd/ReadVariableOp?decoder/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?<time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?>time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp?>time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp?1time_distributed_3/dense_5/BiasAdd/ReadVariableOp?0time_distributed_3/dense_5/MatMul/ReadVariableOp?<time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?>time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp?>time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp?1time_distributed_5/dense_6/BiasAdd/ReadVariableOp?0time_distributed_5/dense_6/MatMul/ReadVariableOp?
decoder/MatMul/ReadVariableOpReadVariableOp&decoder_matmul_readvariableop_resource*
_output_shapes
:	x?*
dtype02
decoder/MatMul/ReadVariableOp?
decoder/MatMulMatMulinputs%decoder/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder/MatMul?
decoder/BiasAdd/ReadVariableOpReadVariableOp'decoder_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
decoder/BiasAdd/ReadVariableOp?
decoder/BiasAddBiasAdddecoder/MatMul:product:0&decoder/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder/BiasAdd?
'batch_normalization/Cast/ReadVariableOpReadVariableOp0batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization/Cast/ReadVariableOp?
)batch_normalization/Cast_1/ReadVariableOpReadVariableOp2batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_1/ReadVariableOp?
)batch_normalization/Cast_2/ReadVariableOpReadVariableOp2batch_normalization_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_2/ReadVariableOp?
)batch_normalization/Cast_3/ReadVariableOpReadVariableOp2batch_normalization_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization/Cast_3/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV21batch_normalization/Cast_1/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/Rsqrt?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:01batch_normalization/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Muldecoder/BiasAdd:output:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul/batch_normalization/Cast/ReadVariableOp:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/mul_2?
!batch_normalization/batchnorm/subSub1batch_normalization/Cast_2/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/add_1?
activation/ReluRelu'batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation/Relu?
dropout/IdentityIdentityactivation/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout/Identity?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldropout/Identity:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/BiasAddj
reshape_1/ShapeShapedense_4/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_1/Shape?
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stack?
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1?
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2?
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicex
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/1y
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_1/Reshape/shape/2?
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shape?
reshape_1/ReshapeReshapedense_4/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2
reshape_1/Reshape?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshapereshape_1/Reshape:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_2/Reshape?
<time_distributed_2/batch_normalization_1/Cast/ReadVariableOpReadVariableOpEtime_distributed_2_batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?
>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpGtime_distributed_2_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?
>time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpGtime_distributed_2_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp?
>time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpGtime_distributed_2_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp?
8time_distributed_2/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8time_distributed_2/batch_normalization_1/batchnorm/add/y?
6time_distributed_2/batch_normalization_1/batchnorm/addAddV2Ftime_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp:value:0Atime_distributed_2/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6time_distributed_2/batch_normalization_1/batchnorm/add?
8time_distributed_2/batch_normalization_1/batchnorm/RsqrtRsqrt:time_distributed_2/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8time_distributed_2/batch_normalization_1/batchnorm/Rsqrt?
6time_distributed_2/batch_normalization_1/batchnorm/mulMul<time_distributed_2/batch_normalization_1/batchnorm/Rsqrt:y:0Ftime_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6time_distributed_2/batch_normalization_1/batchnorm/mul?
8time_distributed_2/batch_normalization_1/batchnorm/mul_1Mul#time_distributed_2/Reshape:output:0:time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8time_distributed_2/batch_normalization_1/batchnorm/mul_1?
8time_distributed_2/batch_normalization_1/batchnorm/mul_2MulDtime_distributed_2/batch_normalization_1/Cast/ReadVariableOp:value:0:time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8time_distributed_2/batch_normalization_1/batchnorm/mul_2?
6time_distributed_2/batch_normalization_1/batchnorm/subSubFtime_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp:value:0<time_distributed_2/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6time_distributed_2/batch_normalization_1/batchnorm/sub?
8time_distributed_2/batch_normalization_1/batchnorm/add_1AddV2<time_distributed_2/batch_normalization_1/batchnorm/mul_1:z:0:time_distributed_2/batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8time_distributed_2/batch_normalization_1/batchnorm/add_1?
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2$
"time_distributed_2/Reshape_1/shape?
time_distributed_2/Reshape_1Reshape<time_distributed_2/batch_normalization_1/batchnorm/add_1:z:0+time_distributed_2/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_2/Reshape_1?
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"time_distributed_2/Reshape_2/shape?
time_distributed_2/Reshape_2Reshapereshape_1/Reshape:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_2/Reshape_2?
activation_1/ReluRelu%time_distributed_2/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2
activation_1/Relu?
dropout_1/IdentityIdentityactivation_1/Relu:activations:0*
T0*,
_output_shapes
:??????????2
dropout_1/Identity?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshapedropout_1/Identity:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_3/Reshape?
0time_distributed_3/dense_5/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0time_distributed_3/dense_5/MatMul/ReadVariableOp?
!time_distributed_3/dense_5/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!time_distributed_3/dense_5/MatMul?
1time_distributed_3/dense_5/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1time_distributed_3/dense_5/BiasAdd/ReadVariableOp?
"time_distributed_3/dense_5/BiasAddBiasAdd+time_distributed_3/dense_5/MatMul:product:09time_distributed_3/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"time_distributed_3/dense_5/BiasAdd?
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2$
"time_distributed_3/Reshape_1/shape?
time_distributed_3/Reshape_1Reshape+time_distributed_3/dense_5/BiasAdd:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_3/Reshape_1?
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"time_distributed_3/Reshape_2/shape?
time_distributed_3/Reshape_2Reshapedropout_1/Identity:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_3/Reshape_2?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_4/Reshape?
<time_distributed_4/batch_normalization_2/Cast/ReadVariableOpReadVariableOpEtime_distributed_4_batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?
>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpReadVariableOpGtime_distributed_4_batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?
>time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOpReadVariableOpGtime_distributed_4_batch_normalization_2_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp?
>time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOpReadVariableOpGtime_distributed_4_batch_normalization_2_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp?
8time_distributed_4/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8time_distributed_4/batch_normalization_2/batchnorm/add/y?
6time_distributed_4/batch_normalization_2/batchnorm/addAddV2Ftime_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp:value:0Atime_distributed_4/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?28
6time_distributed_4/batch_normalization_2/batchnorm/add?
8time_distributed_4/batch_normalization_2/batchnorm/RsqrtRsqrt:time_distributed_4/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2:
8time_distributed_4/batch_normalization_2/batchnorm/Rsqrt?
6time_distributed_4/batch_normalization_2/batchnorm/mulMul<time_distributed_4/batch_normalization_2/batchnorm/Rsqrt:y:0Ftime_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?28
6time_distributed_4/batch_normalization_2/batchnorm/mul?
8time_distributed_4/batch_normalization_2/batchnorm/mul_1Mul#time_distributed_4/Reshape:output:0:time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2:
8time_distributed_4/batch_normalization_2/batchnorm/mul_1?
8time_distributed_4/batch_normalization_2/batchnorm/mul_2MulDtime_distributed_4/batch_normalization_2/Cast/ReadVariableOp:value:0:time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2:
8time_distributed_4/batch_normalization_2/batchnorm/mul_2?
6time_distributed_4/batch_normalization_2/batchnorm/subSubFtime_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp:value:0<time_distributed_4/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?28
6time_distributed_4/batch_normalization_2/batchnorm/sub?
8time_distributed_4/batch_normalization_2/batchnorm/add_1AddV2<time_distributed_4/batch_normalization_2/batchnorm/mul_1:z:0:time_distributed_4/batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2:
8time_distributed_4/batch_normalization_2/batchnorm/add_1?
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2$
"time_distributed_4/Reshape_1/shape?
time_distributed_4/Reshape_1Reshape<time_distributed_4/batch_normalization_2/batchnorm/add_1:z:0+time_distributed_4/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_4/Reshape_1?
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_4/Reshape_2/shape?
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_4/Reshape_2?
activation_2/ReluRelu%time_distributed_4/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2
activation_2/Relu?
dropout_2/IdentityIdentityactivation_2/Relu:activations:0*
T0*,
_output_shapes
:??????????2
dropout_2/Identity?
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_5/Reshape/shape?
time_distributed_5/ReshapeReshapedropout_2/Identity:output:0)time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_5/Reshape?
0time_distributed_5/dense_6/MatMul/ReadVariableOpReadVariableOp9time_distributed_5_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype022
0time_distributed_5/dense_6/MatMul/ReadVariableOp?
!time_distributed_5/dense_6/MatMulMatMul#time_distributed_5/Reshape:output:08time_distributed_5/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2#
!time_distributed_5/dense_6/MatMul?
1time_distributed_5/dense_6/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_5_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype023
1time_distributed_5/dense_6/BiasAdd/ReadVariableOp?
"time_distributed_5/dense_6/BiasAddBiasAdd+time_distributed_5/dense_6/MatMul:product:09time_distributed_5/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2$
"time_distributed_5/dense_6/BiasAdd?
"time_distributed_5/dense_6/SigmoidSigmoid+time_distributed_5/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2$
"time_distributed_5/dense_6/Sigmoid?
"time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  2$
"time_distributed_5/Reshape_1/shape?
time_distributed_5/Reshape_1Reshape&time_distributed_5/dense_6/Sigmoid:y:0+time_distributed_5/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H2
time_distributed_5/Reshape_1?
"time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_5/Reshape_2/shape?
time_distributed_5/Reshape_2Reshapedropout_2/Identity:output:0+time_distributed_5/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_5/Reshape_2w
reshape_2/ShapeShape%time_distributed_5/Reshape_1:output:0*
T0*
_output_shapes
:2
reshape_2/Shape?
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_2/strided_slice/stack?
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_1?
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_2?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_2/strided_slicex
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/1x
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`2
reshape_2/Reshape/shape/2x
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :`2
reshape_2/Reshape/shape/3?
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_2/Reshape/shape?
reshape_2/ReshapeReshape%time_distributed_5/Reshape_1:output:0 reshape_2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????``2
reshape_2/Reshape}
IdentityIdentityreshape_2/Reshape:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp(^batch_normalization/Cast/ReadVariableOp*^batch_normalization/Cast_1/ReadVariableOp*^batch_normalization/Cast_2/ReadVariableOp*^batch_normalization/Cast_3/ReadVariableOp^decoder/BiasAdd/ReadVariableOp^decoder/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp=^time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?^time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?^time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp?^time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp2^time_distributed_3/dense_5/BiasAdd/ReadVariableOp1^time_distributed_3/dense_5/MatMul/ReadVariableOp=^time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?^time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?^time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp?^time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp2^time_distributed_5/dense_6/BiasAdd/ReadVariableOp1^time_distributed_5/dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 2R
'batch_normalization/Cast/ReadVariableOp'batch_normalization/Cast/ReadVariableOp2V
)batch_normalization/Cast_1/ReadVariableOp)batch_normalization/Cast_1/ReadVariableOp2V
)batch_normalization/Cast_2/ReadVariableOp)batch_normalization/Cast_2/ReadVariableOp2V
)batch_normalization/Cast_3/ReadVariableOp)batch_normalization/Cast_3/ReadVariableOp2@
decoder/BiasAdd/ReadVariableOpdecoder/BiasAdd/ReadVariableOp2>
decoder/MatMul/ReadVariableOpdecoder/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2|
<time_distributed_2/batch_normalization_1/Cast/ReadVariableOp<time_distributed_2/batch_normalization_1/Cast/ReadVariableOp2?
>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp>time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp2?
>time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp>time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp2?
>time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp>time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp2f
1time_distributed_3/dense_5/BiasAdd/ReadVariableOp1time_distributed_3/dense_5/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_5/MatMul/ReadVariableOp0time_distributed_3/dense_5/MatMul/ReadVariableOp2|
<time_distributed_4/batch_normalization_2/Cast/ReadVariableOp<time_distributed_4/batch_normalization_2/Cast/ReadVariableOp2?
>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp>time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp2?
>time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp>time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp2?
>time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp>time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp2f
1time_distributed_5/dense_6/BiasAdd/ReadVariableOp1time_distributed_5/dense_6/BiasAdd/ReadVariableOp2d
0time_distributed_5/dense_6/MatMul/ReadVariableOp0time_distributed_5/dense_6/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_1_layer_call_fn_8529

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_38272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_dropout_2_layer_call_and_return_conditional_losses_9468

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_3827

inputs:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2
Reshape_1/shape?
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_5312

inputsA
2batch_normalization_2_cast_readvariableop_resource:	?C
4batch_normalization_2_cast_1_readvariableop_resource:	?C
4batch_normalization_2_cast_2_readvariableop_resource:	?C
4batch_normalization_2_cast_3_readvariableop_resource:	?
identity??)batch_normalization_2/Cast/ReadVariableOp?+batch_normalization_2/Cast_1/ReadVariableOp?+batch_normalization_2/Cast_2/ReadVariableOp?+batch_normalization_2/Cast_3/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
)batch_normalization_2/Cast/ReadVariableOpReadVariableOp2batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_2/Cast/ReadVariableOp?
+batch_normalization_2/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_1/ReadVariableOp?
+batch_normalization_2/Cast_2/ReadVariableOpReadVariableOp4batch_normalization_2_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_2/ReadVariableOp?
+batch_normalization_2/Cast_3/ReadVariableOpReadVariableOp4batch_normalization_2_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_3/ReadVariableOp?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV23batch_normalization_2/Cast_1/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:03batch_normalization_2/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1MulReshape:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/mul_1?
%batch_normalization_2/batchnorm/mul_2Mul1batch_normalization_2/Cast/ReadVariableOp:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
#batch_normalization_2/batchnorm/subSub3batch_normalization_2/Cast_2/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/add_1w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_2/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp*^batch_normalization_2/Cast/ReadVariableOp,^batch_normalization_2/Cast_1/ReadVariableOp,^batch_normalization_2/Cast_2/ReadVariableOp,^batch_normalization_2/Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2V
)batch_normalization_2/Cast/ReadVariableOp)batch_normalization_2/Cast/ReadVariableOp2Z
+batch_normalization_2/Cast_1/ReadVariableOp+batch_normalization_2/Cast_1/ReadVariableOp2Z
+batch_normalization_2/Cast_2/ReadVariableOp+batch_normalization_2/Cast_2/ReadVariableOp2Z
+batch_normalization_2/Cast_3/ReadVariableOp+batch_normalization_2/Cast_3/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9683

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?)
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9717

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2}
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_5_layer_call_and_return_conditional_losses_9736

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
D__inference_sequential_layer_call_and_return_conditional_losses_4038
input_1)
time_distributed_4003:
?H?$
time_distributed_4005:	?+
time_distributed_1_4010:
??&
time_distributed_1_4012:	? 
dense_2_4018:
??
dense_2_4020:	?
dense_3_4023:	?x
dense_3_4025:x
encoder_4028:x
encoder_4030:x
encoder_4032:x
encoder_4034:x
identity??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?encoder/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_36492
reshape/PartitionedCall?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0time_distributed_4003time_distributed_4005*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_time_distributed_layer_call_and_return_conditional_losses_36652*
(time_distributed/StatefulPartitionedCall?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshape reshape/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_4010time_distributed_1_4012*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_36872,
*time_distributed_1/StatefulPartitionedCall?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
flatten/PartitionedCallPartitionedCall3time_distributed_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_37032
flatten/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2_4018dense_2_4020*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_37162!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_4023dense_3_4025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_37322!
dense_3/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0encoder_4028encoder_4030encoder_4032encoder_4034*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_34912!
encoder/StatefulPartitionedCall?
IdentityIdentity(encoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^encoder/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?)
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9816

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2}
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_6921
input_1
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x

unknown_11:	x?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:
??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:
??H

unknown_30:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_31872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
b
C__inference_dropout_2_layer_call_and_return_conditional_losses_5479

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_5038

inputs 
dense_6_5028:
??H
dense_6_5030:	?H
identity??dense_6/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_6/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_6_5028dense_6_5030*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_50272!
dense_6/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?H2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_6/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????H2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????H2

Identityp
NoOpNoOp ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?*
__inference__wrapped_model_3187
input_1`
Lautoencoder_sequential_time_distributed_dense_matmul_readvariableop_resource:
?H?\
Mautoencoder_sequential_time_distributed_dense_biasadd_readvariableop_resource:	?d
Pautoencoder_sequential_time_distributed_1_dense_1_matmul_readvariableop_resource:
??`
Qautoencoder_sequential_time_distributed_1_dense_1_biasadd_readvariableop_resource:	?Q
=autoencoder_sequential_dense_2_matmul_readvariableop_resource:
??M
>autoencoder_sequential_dense_2_biasadd_readvariableop_resource:	?P
=autoencoder_sequential_dense_3_matmul_readvariableop_resource:	?xL
>autoencoder_sequential_dense_3_biasadd_readvariableop_resource:xN
@autoencoder_sequential_encoder_batchnorm_readvariableop_resource:xR
Dautoencoder_sequential_encoder_batchnorm_mul_readvariableop_resource:xP
Bautoencoder_sequential_encoder_batchnorm_readvariableop_1_resource:xP
Bautoencoder_sequential_encoder_batchnorm_readvariableop_2_resource:xR
?autoencoder_sequential_1_decoder_matmul_readvariableop_resource:	x?O
@autoencoder_sequential_1_decoder_biasadd_readvariableop_resource:	?X
Iautoencoder_sequential_1_batch_normalization_cast_readvariableop_resource:	?Z
Kautoencoder_sequential_1_batch_normalization_cast_1_readvariableop_resource:	?Z
Kautoencoder_sequential_1_batch_normalization_cast_2_readvariableop_resource:	?Z
Kautoencoder_sequential_1_batch_normalization_cast_3_readvariableop_resource:	?S
?autoencoder_sequential_1_dense_4_matmul_readvariableop_resource:
??O
@autoencoder_sequential_1_dense_4_biasadd_readvariableop_resource:	?m
^autoencoder_sequential_1_time_distributed_2_batch_normalization_1_cast_readvariableop_resource:	?o
`autoencoder_sequential_1_time_distributed_2_batch_normalization_1_cast_1_readvariableop_resource:	?o
`autoencoder_sequential_1_time_distributed_2_batch_normalization_1_cast_2_readvariableop_resource:	?o
`autoencoder_sequential_1_time_distributed_2_batch_normalization_1_cast_3_readvariableop_resource:	?f
Rautoencoder_sequential_1_time_distributed_3_dense_5_matmul_readvariableop_resource:
??b
Sautoencoder_sequential_1_time_distributed_3_dense_5_biasadd_readvariableop_resource:	?m
^autoencoder_sequential_1_time_distributed_4_batch_normalization_2_cast_readvariableop_resource:	?o
`autoencoder_sequential_1_time_distributed_4_batch_normalization_2_cast_1_readvariableop_resource:	?o
`autoencoder_sequential_1_time_distributed_4_batch_normalization_2_cast_2_readvariableop_resource:	?o
`autoencoder_sequential_1_time_distributed_4_batch_normalization_2_cast_3_readvariableop_resource:	?f
Rautoencoder_sequential_1_time_distributed_5_dense_6_matmul_readvariableop_resource:
??Hb
Sautoencoder_sequential_1_time_distributed_5_dense_6_biasadd_readvariableop_resource:	?H
identity??5autoencoder/sequential/dense_2/BiasAdd/ReadVariableOp?4autoencoder/sequential/dense_2/MatMul/ReadVariableOp?5autoencoder/sequential/dense_3/BiasAdd/ReadVariableOp?4autoencoder/sequential/dense_3/MatMul/ReadVariableOp?7autoencoder/sequential/encoder/batchnorm/ReadVariableOp?9autoencoder/sequential/encoder/batchnorm/ReadVariableOp_1?9autoencoder/sequential/encoder/batchnorm/ReadVariableOp_2?;autoencoder/sequential/encoder/batchnorm/mul/ReadVariableOp?Dautoencoder/sequential/time_distributed/dense/BiasAdd/ReadVariableOp?Cautoencoder/sequential/time_distributed/dense/MatMul/ReadVariableOp?Hautoencoder/sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp?Gautoencoder/sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp?@autoencoder/sequential_1/batch_normalization/Cast/ReadVariableOp?Bautoencoder/sequential_1/batch_normalization/Cast_1/ReadVariableOp?Bautoencoder/sequential_1/batch_normalization/Cast_2/ReadVariableOp?Bautoencoder/sequential_1/batch_normalization/Cast_3/ReadVariableOp?7autoencoder/sequential_1/decoder/BiasAdd/ReadVariableOp?6autoencoder/sequential_1/decoder/MatMul/ReadVariableOp?7autoencoder/sequential_1/dense_4/BiasAdd/ReadVariableOp?6autoencoder/sequential_1/dense_4/MatMul/ReadVariableOp?Uautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp?Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp?Jautoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp?Iautoencoder/sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp?Uautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp?Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp?Jautoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp?Iautoencoder/sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp?
autoencoder/sequential/CastCastinput_1*

DstT0*

SrcT0*/
_output_shapes
:?????????``2
autoencoder/sequential/Cast?
$autoencoder/sequential/reshape/ShapeShapeautoencoder/sequential/Cast:y:0*
T0*
_output_shapes
:2&
$autoencoder/sequential/reshape/Shape?
2autoencoder/sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2autoencoder/sequential/reshape/strided_slice/stack?
4autoencoder/sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4autoencoder/sequential/reshape/strided_slice/stack_1?
4autoencoder/sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4autoencoder/sequential/reshape/strided_slice/stack_2?
,autoencoder/sequential/reshape/strided_sliceStridedSlice-autoencoder/sequential/reshape/Shape:output:0;autoencoder/sequential/reshape/strided_slice/stack:output:0=autoencoder/sequential/reshape/strided_slice/stack_1:output:0=autoencoder/sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,autoencoder/sequential/reshape/strided_slice?
.autoencoder/sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.autoencoder/sequential/reshape/Reshape/shape/1?
.autoencoder/sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????20
.autoencoder/sequential/reshape/Reshape/shape/2?
,autoencoder/sequential/reshape/Reshape/shapePack5autoencoder/sequential/reshape/strided_slice:output:07autoencoder/sequential/reshape/Reshape/shape/1:output:07autoencoder/sequential/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2.
,autoencoder/sequential/reshape/Reshape/shape?
&autoencoder/sequential/reshape/ReshapeReshapeautoencoder/sequential/Cast:y:05autoencoder/sequential/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2(
&autoencoder/sequential/reshape/Reshape?
5autoencoder/sequential/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  27
5autoencoder/sequential/time_distributed/Reshape/shape?
/autoencoder/sequential/time_distributed/ReshapeReshape/autoencoder/sequential/reshape/Reshape:output:0>autoencoder/sequential/time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H21
/autoencoder/sequential/time_distributed/Reshape?
Cautoencoder/sequential/time_distributed/dense/MatMul/ReadVariableOpReadVariableOpLautoencoder_sequential_time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02E
Cautoencoder/sequential/time_distributed/dense/MatMul/ReadVariableOp?
4autoencoder/sequential/time_distributed/dense/MatMulMatMul8autoencoder/sequential/time_distributed/Reshape:output:0Kautoencoder/sequential/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????26
4autoencoder/sequential/time_distributed/dense/MatMul?
Dautoencoder/sequential/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpMautoencoder_sequential_time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dautoencoder/sequential/time_distributed/dense/BiasAdd/ReadVariableOp?
5autoencoder/sequential/time_distributed/dense/BiasAddBiasAdd>autoencoder/sequential/time_distributed/dense/MatMul:product:0Lautoencoder/sequential/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????27
5autoencoder/sequential/time_distributed/dense/BiasAdd?
2autoencoder/sequential/time_distributed/dense/ReluRelu>autoencoder/sequential/time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????24
2autoencoder/sequential/time_distributed/dense/Relu?
7autoencoder/sequential/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  29
7autoencoder/sequential/time_distributed/Reshape_1/shape?
1autoencoder/sequential/time_distributed/Reshape_1Reshape@autoencoder/sequential/time_distributed/dense/Relu:activations:0@autoencoder/sequential/time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????23
1autoencoder/sequential/time_distributed/Reshape_1?
7autoencoder/sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  29
7autoencoder/sequential/time_distributed/Reshape_2/shape?
1autoencoder/sequential/time_distributed/Reshape_2Reshape/autoencoder/sequential/reshape/Reshape:output:0@autoencoder/sequential/time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H23
1autoencoder/sequential/time_distributed/Reshape_2?
7autoencoder/sequential/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7autoencoder/sequential/time_distributed_1/Reshape/shape?
1autoencoder/sequential/time_distributed_1/ReshapeReshape:autoencoder/sequential/time_distributed/Reshape_1:output:0@autoencoder/sequential/time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????23
1autoencoder/sequential/time_distributed_1/Reshape?
Gautoencoder/sequential/time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOpPautoencoder_sequential_time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02I
Gautoencoder/sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp?
8autoencoder/sequential/time_distributed_1/dense_1/MatMulMatMul:autoencoder/sequential/time_distributed_1/Reshape:output:0Oautoencoder/sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2:
8autoencoder/sequential/time_distributed_1/dense_1/MatMul?
Hautoencoder/sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpQautoencoder_sequential_time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hautoencoder/sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
9autoencoder/sequential/time_distributed_1/dense_1/BiasAddBiasAddBautoencoder/sequential/time_distributed_1/dense_1/MatMul:product:0Pautoencoder/sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2;
9autoencoder/sequential/time_distributed_1/dense_1/BiasAdd?
6autoencoder/sequential/time_distributed_1/dense_1/ReluReluBautoencoder/sequential/time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????28
6autoencoder/sequential/time_distributed_1/dense_1/Relu?
9autoencoder/sequential/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2;
9autoencoder/sequential/time_distributed_1/Reshape_1/shape?
3autoencoder/sequential/time_distributed_1/Reshape_1ReshapeDautoencoder/sequential/time_distributed_1/dense_1/Relu:activations:0Bautoencoder/sequential/time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????25
3autoencoder/sequential/time_distributed_1/Reshape_1?
9autoencoder/sequential/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2;
9autoencoder/sequential/time_distributed_1/Reshape_2/shape?
3autoencoder/sequential/time_distributed_1/Reshape_2Reshape:autoencoder/sequential/time_distributed/Reshape_1:output:0Bautoencoder/sequential/time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????25
3autoencoder/sequential/time_distributed_1/Reshape_2?
-autoencoder/sequential/flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2/
-autoencoder/sequential/flatten/transpose/perm?
(autoencoder/sequential/flatten/transpose	Transpose<autoencoder/sequential/time_distributed_1/Reshape_1:output:06autoencoder/sequential/flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2*
(autoencoder/sequential/flatten/transpose?
$autoencoder/sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2&
$autoencoder/sequential/flatten/Const?
&autoencoder/sequential/flatten/ReshapeReshape,autoencoder/sequential/flatten/transpose:y:0-autoencoder/sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2(
&autoencoder/sequential/flatten/Reshape?
4autoencoder/sequential/dense_2/MatMul/ReadVariableOpReadVariableOp=autoencoder_sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4autoencoder/sequential/dense_2/MatMul/ReadVariableOp?
%autoencoder/sequential/dense_2/MatMulMatMul/autoencoder/sequential/flatten/Reshape:output:0<autoencoder/sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%autoencoder/sequential/dense_2/MatMul?
5autoencoder/sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype027
5autoencoder/sequential/dense_2/BiasAdd/ReadVariableOp?
&autoencoder/sequential/dense_2/BiasAddBiasAdd/autoencoder/sequential/dense_2/MatMul:product:0=autoencoder/sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&autoencoder/sequential/dense_2/BiasAdd?
#autoencoder/sequential/dense_2/ReluRelu/autoencoder/sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2%
#autoencoder/sequential/dense_2/Relu?
4autoencoder/sequential/dense_3/MatMul/ReadVariableOpReadVariableOp=autoencoder_sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype026
4autoencoder/sequential/dense_3/MatMul/ReadVariableOp?
%autoencoder/sequential/dense_3/MatMulMatMul1autoencoder/sequential/dense_2/Relu:activations:0<autoencoder/sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2'
%autoencoder/sequential/dense_3/MatMul?
5autoencoder/sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype027
5autoencoder/sequential/dense_3/BiasAdd/ReadVariableOp?
&autoencoder/sequential/dense_3/BiasAddBiasAdd/autoencoder/sequential/dense_3/MatMul:product:0=autoencoder/sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2(
&autoencoder/sequential/dense_3/BiasAdd?
7autoencoder/sequential/encoder/batchnorm/ReadVariableOpReadVariableOp@autoencoder_sequential_encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype029
7autoencoder/sequential/encoder/batchnorm/ReadVariableOp?
.autoencoder/sequential/encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:20
.autoencoder/sequential/encoder/batchnorm/add/y?
,autoencoder/sequential/encoder/batchnorm/addAddV2?autoencoder/sequential/encoder/batchnorm/ReadVariableOp:value:07autoencoder/sequential/encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2.
,autoencoder/sequential/encoder/batchnorm/add?
.autoencoder/sequential/encoder/batchnorm/RsqrtRsqrt0autoencoder/sequential/encoder/batchnorm/add:z:0*
T0*
_output_shapes
:x20
.autoencoder/sequential/encoder/batchnorm/Rsqrt?
;autoencoder/sequential/encoder/batchnorm/mul/ReadVariableOpReadVariableOpDautoencoder_sequential_encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02=
;autoencoder/sequential/encoder/batchnorm/mul/ReadVariableOp?
,autoencoder/sequential/encoder/batchnorm/mulMul2autoencoder/sequential/encoder/batchnorm/Rsqrt:y:0Cautoencoder/sequential/encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2.
,autoencoder/sequential/encoder/batchnorm/mul?
.autoencoder/sequential/encoder/batchnorm/mul_1Mul/autoencoder/sequential/dense_3/BiasAdd:output:00autoencoder/sequential/encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x20
.autoencoder/sequential/encoder/batchnorm/mul_1?
9autoencoder/sequential/encoder/batchnorm/ReadVariableOp_1ReadVariableOpBautoencoder_sequential_encoder_batchnorm_readvariableop_1_resource*
_output_shapes
:x*
dtype02;
9autoencoder/sequential/encoder/batchnorm/ReadVariableOp_1?
.autoencoder/sequential/encoder/batchnorm/mul_2MulAautoencoder/sequential/encoder/batchnorm/ReadVariableOp_1:value:00autoencoder/sequential/encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x20
.autoencoder/sequential/encoder/batchnorm/mul_2?
9autoencoder/sequential/encoder/batchnorm/ReadVariableOp_2ReadVariableOpBautoencoder_sequential_encoder_batchnorm_readvariableop_2_resource*
_output_shapes
:x*
dtype02;
9autoencoder/sequential/encoder/batchnorm/ReadVariableOp_2?
,autoencoder/sequential/encoder/batchnorm/subSubAautoencoder/sequential/encoder/batchnorm/ReadVariableOp_2:value:02autoencoder/sequential/encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2.
,autoencoder/sequential/encoder/batchnorm/sub?
.autoencoder/sequential/encoder/batchnorm/add_1AddV22autoencoder/sequential/encoder/batchnorm/mul_1:z:00autoencoder/sequential/encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x20
.autoencoder/sequential/encoder/batchnorm/add_1?
6autoencoder/sequential_1/decoder/MatMul/ReadVariableOpReadVariableOp?autoencoder_sequential_1_decoder_matmul_readvariableop_resource*
_output_shapes
:	x?*
dtype028
6autoencoder/sequential_1/decoder/MatMul/ReadVariableOp?
'autoencoder/sequential_1/decoder/MatMulMatMul2autoencoder/sequential/encoder/batchnorm/add_1:z:0>autoencoder/sequential_1/decoder/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'autoencoder/sequential_1/decoder/MatMul?
7autoencoder/sequential_1/decoder/BiasAdd/ReadVariableOpReadVariableOp@autoencoder_sequential_1_decoder_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7autoencoder/sequential_1/decoder/BiasAdd/ReadVariableOp?
(autoencoder/sequential_1/decoder/BiasAddBiasAdd1autoencoder/sequential_1/decoder/MatMul:product:0?autoencoder/sequential_1/decoder/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(autoencoder/sequential_1/decoder/BiasAdd?
@autoencoder/sequential_1/batch_normalization/Cast/ReadVariableOpReadVariableOpIautoencoder_sequential_1_batch_normalization_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@autoencoder/sequential_1/batch_normalization/Cast/ReadVariableOp?
Bautoencoder/sequential_1/batch_normalization/Cast_1/ReadVariableOpReadVariableOpKautoencoder_sequential_1_batch_normalization_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bautoencoder/sequential_1/batch_normalization/Cast_1/ReadVariableOp?
Bautoencoder/sequential_1/batch_normalization/Cast_2/ReadVariableOpReadVariableOpKautoencoder_sequential_1_batch_normalization_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bautoencoder/sequential_1/batch_normalization/Cast_2/ReadVariableOp?
Bautoencoder/sequential_1/batch_normalization/Cast_3/ReadVariableOpReadVariableOpKautoencoder_sequential_1_batch_normalization_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bautoencoder/sequential_1/batch_normalization/Cast_3/ReadVariableOp?
<autoencoder/sequential_1/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2>
<autoencoder/sequential_1/batch_normalization/batchnorm/add/y?
:autoencoder/sequential_1/batch_normalization/batchnorm/addAddV2Jautoencoder/sequential_1/batch_normalization/Cast_1/ReadVariableOp:value:0Eautoencoder/sequential_1/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2<
:autoencoder/sequential_1/batch_normalization/batchnorm/add?
<autoencoder/sequential_1/batch_normalization/batchnorm/RsqrtRsqrt>autoencoder/sequential_1/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2>
<autoencoder/sequential_1/batch_normalization/batchnorm/Rsqrt?
:autoencoder/sequential_1/batch_normalization/batchnorm/mulMul@autoencoder/sequential_1/batch_normalization/batchnorm/Rsqrt:y:0Jautoencoder/sequential_1/batch_normalization/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2<
:autoencoder/sequential_1/batch_normalization/batchnorm/mul?
<autoencoder/sequential_1/batch_normalization/batchnorm/mul_1Mul1autoencoder/sequential_1/decoder/BiasAdd:output:0>autoencoder/sequential_1/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2>
<autoencoder/sequential_1/batch_normalization/batchnorm/mul_1?
<autoencoder/sequential_1/batch_normalization/batchnorm/mul_2MulHautoencoder/sequential_1/batch_normalization/Cast/ReadVariableOp:value:0>autoencoder/sequential_1/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2>
<autoencoder/sequential_1/batch_normalization/batchnorm/mul_2?
:autoencoder/sequential_1/batch_normalization/batchnorm/subSubJautoencoder/sequential_1/batch_normalization/Cast_2/ReadVariableOp:value:0@autoencoder/sequential_1/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2<
:autoencoder/sequential_1/batch_normalization/batchnorm/sub?
<autoencoder/sequential_1/batch_normalization/batchnorm/add_1AddV2@autoencoder/sequential_1/batch_normalization/batchnorm/mul_1:z:0>autoencoder/sequential_1/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2>
<autoencoder/sequential_1/batch_normalization/batchnorm/add_1?
(autoencoder/sequential_1/activation/ReluRelu@autoencoder/sequential_1/batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2*
(autoencoder/sequential_1/activation/Relu?
)autoencoder/sequential_1/dropout/IdentityIdentity6autoencoder/sequential_1/activation/Relu:activations:0*
T0*(
_output_shapes
:??????????2+
)autoencoder/sequential_1/dropout/Identity?
6autoencoder/sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp?autoencoder_sequential_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype028
6autoencoder/sequential_1/dense_4/MatMul/ReadVariableOp?
'autoencoder/sequential_1/dense_4/MatMulMatMul2autoencoder/sequential_1/dropout/Identity:output:0>autoencoder/sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'autoencoder/sequential_1/dense_4/MatMul?
7autoencoder/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp@autoencoder_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7autoencoder/sequential_1/dense_4/BiasAdd/ReadVariableOp?
(autoencoder/sequential_1/dense_4/BiasAddBiasAdd1autoencoder/sequential_1/dense_4/MatMul:product:0?autoencoder/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(autoencoder/sequential_1/dense_4/BiasAdd?
(autoencoder/sequential_1/reshape_1/ShapeShape1autoencoder/sequential_1/dense_4/BiasAdd:output:0*
T0*
_output_shapes
:2*
(autoencoder/sequential_1/reshape_1/Shape?
6autoencoder/sequential_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6autoencoder/sequential_1/reshape_1/strided_slice/stack?
8autoencoder/sequential_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8autoencoder/sequential_1/reshape_1/strided_slice/stack_1?
8autoencoder/sequential_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8autoencoder/sequential_1/reshape_1/strided_slice/stack_2?
0autoencoder/sequential_1/reshape_1/strided_sliceStridedSlice1autoencoder/sequential_1/reshape_1/Shape:output:0?autoencoder/sequential_1/reshape_1/strided_slice/stack:output:0Aautoencoder/sequential_1/reshape_1/strided_slice/stack_1:output:0Aautoencoder/sequential_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0autoencoder/sequential_1/reshape_1/strided_slice?
2autoencoder/sequential_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2autoencoder/sequential_1/reshape_1/Reshape/shape/1?
2autoencoder/sequential_1/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?24
2autoencoder/sequential_1/reshape_1/Reshape/shape/2?
0autoencoder/sequential_1/reshape_1/Reshape/shapePack9autoencoder/sequential_1/reshape_1/strided_slice:output:0;autoencoder/sequential_1/reshape_1/Reshape/shape/1:output:0;autoencoder/sequential_1/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:22
0autoencoder/sequential_1/reshape_1/Reshape/shape?
*autoencoder/sequential_1/reshape_1/ReshapeReshape1autoencoder/sequential_1/dense_4/BiasAdd:output:09autoencoder/sequential_1/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????2,
*autoencoder/sequential_1/reshape_1/Reshape?
9autoencoder/sequential_1/time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9autoencoder/sequential_1/time_distributed_2/Reshape/shape?
3autoencoder/sequential_1/time_distributed_2/ReshapeReshape3autoencoder/sequential_1/reshape_1/Reshape:output:0Bautoencoder/sequential_1/time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????25
3autoencoder/sequential_1/time_distributed_2/Reshape?
Uautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpReadVariableOp^autoencoder_sequential_1_time_distributed_2_batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02W
Uautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp?
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp`autoencoder_sequential_1_time_distributed_2_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp?
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOp`autoencoder_sequential_1_time_distributed_2_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp?
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOp`autoencoder_sequential_1_time_distributed_2_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp?
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2S
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/y?
Oautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/addAddV2_autoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp:value:0Zautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2Q
Oautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/add?
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/RsqrtRsqrtSautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2S
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/Rsqrt?
Oautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mulMulUautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/Rsqrt:y:0_autoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2Q
Oautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul?
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1Mul<autoencoder/sequential_1/time_distributed_2/Reshape:output:0Sautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2S
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1?
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2Mul]autoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp:value:0Sautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2S
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2?
Oautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/subSub_autoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp:value:0Uautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2Q
Oautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/sub?
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1AddV2Uautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/mul_1:z:0Sautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2S
Qautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1?
;autoencoder/sequential_1/time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2=
;autoencoder/sequential_1/time_distributed_2/Reshape_1/shape?
5autoencoder/sequential_1/time_distributed_2/Reshape_1ReshapeUautoencoder/sequential_1/time_distributed_2/batch_normalization_1/batchnorm/add_1:z:0Dautoencoder/sequential_1/time_distributed_2/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????27
5autoencoder/sequential_1/time_distributed_2/Reshape_1?
;autoencoder/sequential_1/time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2=
;autoencoder/sequential_1/time_distributed_2/Reshape_2/shape?
5autoencoder/sequential_1/time_distributed_2/Reshape_2Reshape3autoencoder/sequential_1/reshape_1/Reshape:output:0Dautoencoder/sequential_1/time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????27
5autoencoder/sequential_1/time_distributed_2/Reshape_2?
*autoencoder/sequential_1/activation_1/ReluRelu>autoencoder/sequential_1/time_distributed_2/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2,
*autoencoder/sequential_1/activation_1/Relu?
+autoencoder/sequential_1/dropout_1/IdentityIdentity8autoencoder/sequential_1/activation_1/Relu:activations:0*
T0*,
_output_shapes
:??????????2-
+autoencoder/sequential_1/dropout_1/Identity?
9autoencoder/sequential_1/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9autoencoder/sequential_1/time_distributed_3/Reshape/shape?
3autoencoder/sequential_1/time_distributed_3/ReshapeReshape4autoencoder/sequential_1/dropout_1/Identity:output:0Bautoencoder/sequential_1/time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????25
3autoencoder/sequential_1/time_distributed_3/Reshape?
Iautoencoder/sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOpReadVariableOpRautoencoder_sequential_1_time_distributed_3_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02K
Iautoencoder/sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp?
:autoencoder/sequential_1/time_distributed_3/dense_5/MatMulMatMul<autoencoder/sequential_1/time_distributed_3/Reshape:output:0Qautoencoder/sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2<
:autoencoder/sequential_1/time_distributed_3/dense_5/MatMul?
Jautoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOpReadVariableOpSautoencoder_sequential_1_time_distributed_3_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02L
Jautoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp?
;autoencoder/sequential_1/time_distributed_3/dense_5/BiasAddBiasAddDautoencoder/sequential_1/time_distributed_3/dense_5/MatMul:product:0Rautoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2=
;autoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd?
;autoencoder/sequential_1/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2=
;autoencoder/sequential_1/time_distributed_3/Reshape_1/shape?
5autoencoder/sequential_1/time_distributed_3/Reshape_1ReshapeDautoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd:output:0Dautoencoder/sequential_1/time_distributed_3/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????27
5autoencoder/sequential_1/time_distributed_3/Reshape_1?
;autoencoder/sequential_1/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2=
;autoencoder/sequential_1/time_distributed_3/Reshape_2/shape?
5autoencoder/sequential_1/time_distributed_3/Reshape_2Reshape4autoencoder/sequential_1/dropout_1/Identity:output:0Dautoencoder/sequential_1/time_distributed_3/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????27
5autoencoder/sequential_1/time_distributed_3/Reshape_2?
9autoencoder/sequential_1/time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2;
9autoencoder/sequential_1/time_distributed_4/Reshape/shape?
3autoencoder/sequential_1/time_distributed_4/ReshapeReshape>autoencoder/sequential_1/time_distributed_3/Reshape_1:output:0Bautoencoder/sequential_1/time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????25
3autoencoder/sequential_1/time_distributed_4/Reshape?
Uautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpReadVariableOp^autoencoder_sequential_1_time_distributed_4_batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02W
Uautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp?
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpReadVariableOp`autoencoder_sequential_1_time_distributed_4_batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp?
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOpReadVariableOp`autoencoder_sequential_1_time_distributed_4_batch_normalization_2_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp?
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOpReadVariableOp`autoencoder_sequential_1_time_distributed_4_batch_normalization_2_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp?
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2S
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/y?
Oautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/addAddV2_autoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp:value:0Zautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2Q
Oautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/add?
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/RsqrtRsqrtSautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2S
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/Rsqrt?
Oautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mulMulUautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/Rsqrt:y:0_autoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2Q
Oautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul?
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1Mul<autoencoder/sequential_1/time_distributed_4/Reshape:output:0Sautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2S
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1?
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2Mul]autoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp:value:0Sautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2S
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2?
Oautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/subSub_autoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp:value:0Uautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2Q
Oautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/sub?
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1AddV2Uautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/mul_1:z:0Sautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2S
Qautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1?
;autoencoder/sequential_1/time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2=
;autoencoder/sequential_1/time_distributed_4/Reshape_1/shape?
5autoencoder/sequential_1/time_distributed_4/Reshape_1ReshapeUautoencoder/sequential_1/time_distributed_4/batch_normalization_2/batchnorm/add_1:z:0Dautoencoder/sequential_1/time_distributed_4/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????27
5autoencoder/sequential_1/time_distributed_4/Reshape_1?
;autoencoder/sequential_1/time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2=
;autoencoder/sequential_1/time_distributed_4/Reshape_2/shape?
5autoencoder/sequential_1/time_distributed_4/Reshape_2Reshape>autoencoder/sequential_1/time_distributed_3/Reshape_1:output:0Dautoencoder/sequential_1/time_distributed_4/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????27
5autoencoder/sequential_1/time_distributed_4/Reshape_2?
*autoencoder/sequential_1/activation_2/ReluRelu>autoencoder/sequential_1/time_distributed_4/Reshape_1:output:0*
T0*,
_output_shapes
:??????????2,
*autoencoder/sequential_1/activation_2/Relu?
+autoencoder/sequential_1/dropout_2/IdentityIdentity8autoencoder/sequential_1/activation_2/Relu:activations:0*
T0*,
_output_shapes
:??????????2-
+autoencoder/sequential_1/dropout_2/Identity?
9autoencoder/sequential_1/time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2;
9autoencoder/sequential_1/time_distributed_5/Reshape/shape?
3autoencoder/sequential_1/time_distributed_5/ReshapeReshape4autoencoder/sequential_1/dropout_2/Identity:output:0Bautoencoder/sequential_1/time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????25
3autoencoder/sequential_1/time_distributed_5/Reshape?
Iautoencoder/sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOpReadVariableOpRautoencoder_sequential_1_time_distributed_5_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02K
Iautoencoder/sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp?
:autoencoder/sequential_1/time_distributed_5/dense_6/MatMulMatMul<autoencoder/sequential_1/time_distributed_5/Reshape:output:0Qautoencoder/sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2<
:autoencoder/sequential_1/time_distributed_5/dense_6/MatMul?
Jautoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOpReadVariableOpSautoencoder_sequential_1_time_distributed_5_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02L
Jautoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp?
;autoencoder/sequential_1/time_distributed_5/dense_6/BiasAddBiasAddDautoencoder/sequential_1/time_distributed_5/dense_6/MatMul:product:0Rautoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2=
;autoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd?
;autoencoder/sequential_1/time_distributed_5/dense_6/SigmoidSigmoidDautoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2=
;autoencoder/sequential_1/time_distributed_5/dense_6/Sigmoid?
;autoencoder/sequential_1/time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  2=
;autoencoder/sequential_1/time_distributed_5/Reshape_1/shape?
5autoencoder/sequential_1/time_distributed_5/Reshape_1Reshape?autoencoder/sequential_1/time_distributed_5/dense_6/Sigmoid:y:0Dautoencoder/sequential_1/time_distributed_5/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H27
5autoencoder/sequential_1/time_distributed_5/Reshape_1?
;autoencoder/sequential_1/time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2=
;autoencoder/sequential_1/time_distributed_5/Reshape_2/shape?
5autoencoder/sequential_1/time_distributed_5/Reshape_2Reshape4autoencoder/sequential_1/dropout_2/Identity:output:0Dautoencoder/sequential_1/time_distributed_5/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????27
5autoencoder/sequential_1/time_distributed_5/Reshape_2?
(autoencoder/sequential_1/reshape_2/ShapeShape>autoencoder/sequential_1/time_distributed_5/Reshape_1:output:0*
T0*
_output_shapes
:2*
(autoencoder/sequential_1/reshape_2/Shape?
6autoencoder/sequential_1/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6autoencoder/sequential_1/reshape_2/strided_slice/stack?
8autoencoder/sequential_1/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8autoencoder/sequential_1/reshape_2/strided_slice/stack_1?
8autoencoder/sequential_1/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8autoencoder/sequential_1/reshape_2/strided_slice/stack_2?
0autoencoder/sequential_1/reshape_2/strided_sliceStridedSlice1autoencoder/sequential_1/reshape_2/Shape:output:0?autoencoder/sequential_1/reshape_2/strided_slice/stack:output:0Aautoencoder/sequential_1/reshape_2/strided_slice/stack_1:output:0Aautoencoder/sequential_1/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0autoencoder/sequential_1/reshape_2/strided_slice?
2autoencoder/sequential_1/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2autoencoder/sequential_1/reshape_2/Reshape/shape/1?
2autoencoder/sequential_1/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`24
2autoencoder/sequential_1/reshape_2/Reshape/shape/2?
2autoencoder/sequential_1/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :`24
2autoencoder/sequential_1/reshape_2/Reshape/shape/3?
0autoencoder/sequential_1/reshape_2/Reshape/shapePack9autoencoder/sequential_1/reshape_2/strided_slice:output:0;autoencoder/sequential_1/reshape_2/Reshape/shape/1:output:0;autoencoder/sequential_1/reshape_2/Reshape/shape/2:output:0;autoencoder/sequential_1/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0autoencoder/sequential_1/reshape_2/Reshape/shape?
*autoencoder/sequential_1/reshape_2/ReshapeReshape>autoencoder/sequential_1/time_distributed_5/Reshape_1:output:09autoencoder/sequential_1/reshape_2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????``2,
*autoencoder/sequential_1/reshape_2/Reshape?
IdentityIdentity3autoencoder/sequential_1/reshape_2/Reshape:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp6^autoencoder/sequential/dense_2/BiasAdd/ReadVariableOp5^autoencoder/sequential/dense_2/MatMul/ReadVariableOp6^autoencoder/sequential/dense_3/BiasAdd/ReadVariableOp5^autoencoder/sequential/dense_3/MatMul/ReadVariableOp8^autoencoder/sequential/encoder/batchnorm/ReadVariableOp:^autoencoder/sequential/encoder/batchnorm/ReadVariableOp_1:^autoencoder/sequential/encoder/batchnorm/ReadVariableOp_2<^autoencoder/sequential/encoder/batchnorm/mul/ReadVariableOpE^autoencoder/sequential/time_distributed/dense/BiasAdd/ReadVariableOpD^autoencoder/sequential/time_distributed/dense/MatMul/ReadVariableOpI^autoencoder/sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOpH^autoencoder/sequential/time_distributed_1/dense_1/MatMul/ReadVariableOpA^autoencoder/sequential_1/batch_normalization/Cast/ReadVariableOpC^autoencoder/sequential_1/batch_normalization/Cast_1/ReadVariableOpC^autoencoder/sequential_1/batch_normalization/Cast_2/ReadVariableOpC^autoencoder/sequential_1/batch_normalization/Cast_3/ReadVariableOp8^autoencoder/sequential_1/decoder/BiasAdd/ReadVariableOp7^autoencoder/sequential_1/decoder/MatMul/ReadVariableOp8^autoencoder/sequential_1/dense_4/BiasAdd/ReadVariableOp7^autoencoder/sequential_1/dense_4/MatMul/ReadVariableOpV^autoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpX^autoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpX^autoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOpX^autoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOpK^autoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOpJ^autoencoder/sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOpV^autoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpX^autoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpX^autoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOpX^autoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOpK^autoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOpJ^autoencoder/sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2n
5autoencoder/sequential/dense_2/BiasAdd/ReadVariableOp5autoencoder/sequential/dense_2/BiasAdd/ReadVariableOp2l
4autoencoder/sequential/dense_2/MatMul/ReadVariableOp4autoencoder/sequential/dense_2/MatMul/ReadVariableOp2n
5autoencoder/sequential/dense_3/BiasAdd/ReadVariableOp5autoencoder/sequential/dense_3/BiasAdd/ReadVariableOp2l
4autoencoder/sequential/dense_3/MatMul/ReadVariableOp4autoencoder/sequential/dense_3/MatMul/ReadVariableOp2r
7autoencoder/sequential/encoder/batchnorm/ReadVariableOp7autoencoder/sequential/encoder/batchnorm/ReadVariableOp2v
9autoencoder/sequential/encoder/batchnorm/ReadVariableOp_19autoencoder/sequential/encoder/batchnorm/ReadVariableOp_12v
9autoencoder/sequential/encoder/batchnorm/ReadVariableOp_29autoencoder/sequential/encoder/batchnorm/ReadVariableOp_22z
;autoencoder/sequential/encoder/batchnorm/mul/ReadVariableOp;autoencoder/sequential/encoder/batchnorm/mul/ReadVariableOp2?
Dautoencoder/sequential/time_distributed/dense/BiasAdd/ReadVariableOpDautoencoder/sequential/time_distributed/dense/BiasAdd/ReadVariableOp2?
Cautoencoder/sequential/time_distributed/dense/MatMul/ReadVariableOpCautoencoder/sequential/time_distributed/dense/MatMul/ReadVariableOp2?
Hautoencoder/sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOpHautoencoder/sequential/time_distributed_1/dense_1/BiasAdd/ReadVariableOp2?
Gautoencoder/sequential/time_distributed_1/dense_1/MatMul/ReadVariableOpGautoencoder/sequential/time_distributed_1/dense_1/MatMul/ReadVariableOp2?
@autoencoder/sequential_1/batch_normalization/Cast/ReadVariableOp@autoencoder/sequential_1/batch_normalization/Cast/ReadVariableOp2?
Bautoencoder/sequential_1/batch_normalization/Cast_1/ReadVariableOpBautoencoder/sequential_1/batch_normalization/Cast_1/ReadVariableOp2?
Bautoencoder/sequential_1/batch_normalization/Cast_2/ReadVariableOpBautoencoder/sequential_1/batch_normalization/Cast_2/ReadVariableOp2?
Bautoencoder/sequential_1/batch_normalization/Cast_3/ReadVariableOpBautoencoder/sequential_1/batch_normalization/Cast_3/ReadVariableOp2r
7autoencoder/sequential_1/decoder/BiasAdd/ReadVariableOp7autoencoder/sequential_1/decoder/BiasAdd/ReadVariableOp2p
6autoencoder/sequential_1/decoder/MatMul/ReadVariableOp6autoencoder/sequential_1/decoder/MatMul/ReadVariableOp2r
7autoencoder/sequential_1/dense_4/BiasAdd/ReadVariableOp7autoencoder/sequential_1/dense_4/BiasAdd/ReadVariableOp2p
6autoencoder/sequential_1/dense_4/MatMul/ReadVariableOp6autoencoder/sequential_1/dense_4/MatMul/ReadVariableOp2?
Uautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOpUautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast/ReadVariableOp2?
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOpWautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_1/ReadVariableOp2?
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOpWautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_2/ReadVariableOp2?
Wautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOpWautoencoder/sequential_1/time_distributed_2/batch_normalization_1/Cast_3/ReadVariableOp2?
Jautoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOpJautoencoder/sequential_1/time_distributed_3/dense_5/BiasAdd/ReadVariableOp2?
Iautoencoder/sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOpIautoencoder/sequential_1/time_distributed_3/dense_5/MatMul/ReadVariableOp2?
Uautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOpUautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast/ReadVariableOp2?
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOpWautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_1/ReadVariableOp2?
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOpWautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_2/ReadVariableOp2?
Wautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOpWautoencoder/sequential_1/time_distributed_4/batch_normalization_2/Cast_3/ReadVariableOp2?
Jautoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOpJautoencoder/sequential_1/time_distributed_5/dense_6/BiasAdd/ReadVariableOp2?
Iautoencoder/sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOpIautoencoder/sequential_1/time_distributed_5/dense_6/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?"
?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9060

inputsA
2batch_normalization_1_cast_readvariableop_resource:	?C
4batch_normalization_1_cast_1_readvariableop_resource:	?C
4batch_normalization_1_cast_2_readvariableop_resource:	?C
4batch_normalization_1_cast_3_readvariableop_resource:	?
identity??)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOp?+batch_normalization_1/Cast_2/ReadVariableOp?+batch_normalization_1/Cast_3/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
+batch_normalization_1/Cast_2/ReadVariableOpReadVariableOp4batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_2/ReadVariableOp?
+batch_normalization_1/Cast_3/ReadVariableOpReadVariableOp4batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_3/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV23batch_normalization_1/Cast_1/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1MulReshape:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul1batch_normalization_1/Cast/ReadVariableOp:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub3batch_normalization_1/Cast_2/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/add_1w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_1/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp,^batch_normalization_1/Cast_2/ReadVariableOp,^batch_normalization_1/Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp2Z
+batch_normalization_1/Cast_2/ReadVariableOp+batch_normalization_1/Cast_2/ReadVariableOp2Z
+batch_normalization_1/Cast_3/ReadVariableOp+batch_normalization_1/Cast_3/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?J
?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9369

inputsL
=batch_normalization_2_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:	?A
2batch_normalization_2_cast_readvariableop_resource:	?C
4batch_normalization_2_cast_1_readvariableop_resource:	?
identity??%batch_normalization_2/AssignMovingAvg?4batch_normalization_2/AssignMovingAvg/ReadVariableOp?'batch_normalization_2/AssignMovingAvg_1?6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?)batch_normalization_2/Cast/ReadVariableOp?+batch_normalization_2/Cast_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_2/moments/mean/reduction_indices?
"batch_normalization_2/moments/meanMeanReshape:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_2/moments/mean?
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_2/moments/StopGradient?
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferenceReshape:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_2/moments/SquaredDifference?
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_2/moments/variance/reduction_indices?
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_2/moments/variance?
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_2/moments/Squeeze?
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1?
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization_2/AssignMovingAvg/decay?
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOp?
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/sub?
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/mul?
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_2/AssignMovingAvg?
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-batch_normalization_2/AssignMovingAvg_1/decay?
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/sub?
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/mul?
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_1?
)batch_normalization_2/Cast/ReadVariableOpReadVariableOp2batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_2/Cast/ReadVariableOp?
+batch_normalization_2/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_1/ReadVariableOp?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:03batch_normalization_2/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1MulReshape:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/mul_1?
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
#batch_normalization_2/batchnorm/subSub1batch_normalization_2/Cast/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/add_1q
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_2/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*^batch_normalization_2/Cast/ReadVariableOp,^batch_normalization_2/Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2V
)batch_normalization_2/Cast/ReadVariableOp)batch_normalization_2/Cast/ReadVariableOp2Z
+batch_normalization_2/Cast_1/ReadVariableOp+batch_normalization_2/Cast_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
&__inference_dense_5_layer_call_fn_9726

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_45752
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_encoder_layer_call_and_return_conditional_losses_8701

inputs/
!batchnorm_readvariableop_resource:x3
%batchnorm_mul_readvariableop_resource:x1
#batchnorm_readvariableop_1_resource:x1
#batchnorm_readvariableop_2_resource:x
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:x2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:x*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:x2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:x*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????x: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_5_layer_call_fn_9495

inputs
unknown:
??H
	unknown_0:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_53522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????H2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_4930

inputs)
batch_normalization_2_4916:	?)
batch_normalization_2_4918:	?)
batch_normalization_2_4920:	?)
batch_normalization_2_4922:	?
identity??-batch_normalization_2/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0batch_normalization_2_4916batch_normalization_2_4918batch_normalization_2_4920batch_normalization_2_4922*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_47742/
-batch_normalization_2/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape6batch_normalization_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity~
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?C
?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9431

inputsL
=batch_normalization_2_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:	?A
2batch_normalization_2_cast_readvariableop_resource:	?C
4batch_normalization_2_cast_1_readvariableop_resource:	?
identity??%batch_normalization_2/AssignMovingAvg?4batch_normalization_2/AssignMovingAvg/ReadVariableOp?'batch_normalization_2/AssignMovingAvg_1?6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?)batch_normalization_2/Cast/ReadVariableOp?+batch_normalization_2/Cast_1/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_2/moments/mean/reduction_indices?
"batch_normalization_2/moments/meanMeanReshape:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_2/moments/mean?
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_2/moments/StopGradient?
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferenceReshape:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_2/moments/SquaredDifference?
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_2/moments/variance/reduction_indices?
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_2/moments/variance?
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_2/moments/Squeeze?
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1?
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization_2/AssignMovingAvg/decay?
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOp?
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/sub?
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/mul?
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_2/AssignMovingAvg?
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-batch_normalization_2/AssignMovingAvg_1/decay?
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/sub?
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/mul?
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_1?
)batch_normalization_2/Cast/ReadVariableOpReadVariableOp2batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_2/Cast/ReadVariableOp?
+batch_normalization_2/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_1/ReadVariableOp?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:03batch_normalization_2/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1MulReshape:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/mul_1?
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
#batch_normalization_2/batchnorm/subSub1batch_normalization_2/Cast/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/add_1w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_2/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*^batch_normalization_2/Cast/ReadVariableOp,^batch_normalization_2/Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2V
)batch_normalization_2/Cast/ReadVariableOp)batch_normalization_2/Cast/ReadVariableOp2Z
+batch_normalization_2/Cast_1/ReadVariableOp+batch_normalization_2/Cast_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_4_layer_call_and_return_conditional_losses_5198

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
B
&__inference_reshape_layer_call_fn_8370

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_36492
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????``:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?	
?
1__inference_time_distributed_2_layer_call_fn_8921

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_44292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
A__inference_dense_6_layer_call_and_return_conditional_losses_5027

inputs2
matmul_readvariableop_resource:
??H.
biasadd_readvariableop_resource:	?H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????H2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????H2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?Q
?	
F__inference_sequential_1_layer_call_and_return_conditional_losses_6001
decoder_input
decoder_5937:	x?
decoder_5939:	?'
batch_normalization_5942:	?'
batch_normalization_5944:	?'
batch_normalization_5946:	?'
batch_normalization_5948:	? 
dense_4_5953:
??
dense_4_5955:	?&
time_distributed_2_5959:	?&
time_distributed_2_5961:	?&
time_distributed_2_5963:	?&
time_distributed_2_5965:	?+
time_distributed_3_5972:
??&
time_distributed_3_5974:	?&
time_distributed_4_5979:	?&
time_distributed_4_5981:	?&
time_distributed_4_5983:	?&
time_distributed_4_5985:	?+
time_distributed_5_5992:
??H&
time_distributed_5_5994:	?H
identity??+batch_normalization/StatefulPartitionedCall?decoder/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?*time_distributed_2/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?*time_distributed_5/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputdecoder_5937decoder_5939*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_51592!
decoder/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall(decoder/StatefulPartitionedCall:output:0batch_normalization_5942batch_normalization_5944batch_normalization_5946batch_normalization_5948*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_41012-
+batch_normalization/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_51792
activation/PartitionedCall?
dropout/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_51862
dropout/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_4_5953dense_4_5955*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_51982!
dense_4/StatefulPartitionedCall?
reshape_1/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_52172
reshape_1/PartitionedCall?
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_1/PartitionedCall:output:0time_distributed_2_5959time_distributed_2_5961time_distributed_2_5963time_distributed_2_5965*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_52422,
*time_distributed_2/StatefulPartitionedCall?
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_2/Reshape/shape?
time_distributed_2/ReshapeReshape"reshape_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_2/Reshape?
activation_1/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_52592
activation_1/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_52662
dropout_1/PartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0time_distributed_3_5972time_distributed_3_5974*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_52812,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape"dropout_1/PartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_3/Reshape?
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_5979time_distributed_4_5981time_distributed_4_5983time_distributed_4_5985*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_53122,
*time_distributed_4/StatefulPartitionedCall?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_4/Reshape?
activation_2/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_53292
activation_2/PartitionedCall?
dropout_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_53362
dropout_2/PartitionedCall?
*time_distributed_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0time_distributed_5_5992time_distributed_5_5994*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????H*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_53522,
*time_distributed_5/StatefulPartitionedCall?
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_5/Reshape/shape?
time_distributed_5/ReshapeReshape"dropout_2/PartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_5/Reshape?
reshape_2/PartitionedCallPartitionedCall3time_distributed_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_53742
reshape_2/PartitionedCall?
IdentityIdentity"reshape_2/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp,^batch_normalization/StatefulPartitionedCall ^decoder/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_5/StatefulPartitionedCall*time_distributed_5/StatefulPartitionedCall:V R
'
_output_shapes
:?????????x
'
_user_specified_namedecoder_input
?
?	
E__inference_autoencoder_layer_call_and_return_conditional_losses_6774
input_1#
sequential_6707:
?H?
sequential_6709:	?#
sequential_6711:
??
sequential_6713:	?#
sequential_6715:
??
sequential_6717:	?"
sequential_6719:	?x
sequential_6721:x
sequential_6723:x
sequential_6725:x
sequential_6727:x
sequential_6729:x$
sequential_1_6732:	x? 
sequential_1_6734:	? 
sequential_1_6736:	? 
sequential_1_6738:	? 
sequential_1_6740:	? 
sequential_1_6742:	?%
sequential_1_6744:
?? 
sequential_1_6746:	? 
sequential_1_6748:	? 
sequential_1_6750:	? 
sequential_1_6752:	? 
sequential_1_6754:	?%
sequential_1_6756:
?? 
sequential_1_6758:	? 
sequential_1_6760:	? 
sequential_1_6762:	? 
sequential_1_6764:	? 
sequential_1_6766:	?%
sequential_1_6768:
??H 
sequential_1_6770:	?H
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_6707sequential_6709sequential_6711sequential_6713sequential_6715sequential_6717sequential_6719sequential_6721sequential_6723sequential_6725sequential_6727sequential_6729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_61472$
"sequential/StatefulPartitionedCall?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_6732sequential_1_6734sequential_1_6736sequential_1_6738sequential_1_6740sequential_1_6742sequential_1_6744sequential_1_6746sequential_1_6748sequential_1_6750sequential_1_6752sequential_1_6754sequential_1_6756sequential_1_6758sequential_1_6760sequential_1_6762sequential_1_6764sequential_1_6766sequential_1_6768sequential_1_6770* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_53772&
$sequential_1/StatefulPartitionedCall?
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?*
?
A__inference_encoder_layer_call_and_return_conditional_losses_3551

inputs5
'assignmovingavg_readvariableop_resource:x7
)assignmovingavg_1_readvariableop_resource:x3
%batchnorm_mul_readvariableop_resource:x/
!batchnorm_readvariableop_resource:x
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:x2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????x2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:x*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:x2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:x*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:x2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:x2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:x2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:x2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????x: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
G
+__inference_activation_2_layer_call_fn_9436

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_53292
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_7613

inputs
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_61472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?*
?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_8991

inputsA
2batch_normalization_1_cast_readvariableop_resource:	?C
4batch_normalization_1_cast_1_readvariableop_resource:	?C
4batch_normalization_1_cast_2_readvariableop_resource:	?C
4batch_normalization_1_cast_3_readvariableop_resource:	?
identity??)batch_normalization_1/Cast/ReadVariableOp?+batch_normalization_1/Cast_1/ReadVariableOp?+batch_normalization_1/Cast_2/ReadVariableOp?+batch_normalization_1/Cast_3/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
)batch_normalization_1/Cast/ReadVariableOpReadVariableOp2batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_1/Cast/ReadVariableOp?
+batch_normalization_1/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_1/ReadVariableOp?
+batch_normalization_1/Cast_2/ReadVariableOpReadVariableOp4batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_2/ReadVariableOp?
+batch_normalization_1/Cast_3/ReadVariableOpReadVariableOp4batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_1/Cast_3/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV23batch_normalization_1/Cast_1/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:03batch_normalization_1/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1MulReshape:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul1batch_normalization_1/Cast/ReadVariableOp:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSub3batch_normalization_1/Cast_2/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_1/batchnorm/add_1q
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_1/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp*^batch_normalization_1/Cast/ReadVariableOp,^batch_normalization_1/Cast_1/ReadVariableOp,^batch_normalization_1/Cast_2/ReadVariableOp,^batch_normalization_1/Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 2V
)batch_normalization_1/Cast/ReadVariableOp)batch_normalization_1/Cast/ReadVariableOp2Z
+batch_normalization_1/Cast_1/ReadVariableOp+batch_normalization_1/Cast_1/ReadVariableOp2Z
+batch_normalization_1/Cast_2/ReadVariableOp+batch_normalization_1/Cast_2/ReadVariableOp2Z
+batch_normalization_1/Cast_3/ReadVariableOp+batch_normalization_1/Cast_3/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
*__inference_autoencoder_layer_call_fn_6990
x
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x

unknown_11:	x?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:
??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:
??H

unknown_30:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_autoencoder_layer_call_and_return_conditional_losses_62152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:?????????``

_user_specified_namex
?
?
+__inference_sequential_1_layer_call_fn_8005

inputs
unknown:	x?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??H

unknown_18:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_53772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
/__inference_time_distributed_layer_call_fn_8401

inputs
unknown:
?H?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_time_distributed_layer_call_and_return_conditional_losses_32712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????H
 
_user_specified_nameinputs
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_8616

inputs
identityu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transpose_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consto
ReshapeReshapetranspose:y:0Const:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_8800

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_decoder_layer_call_and_return_conditional_losses_5159

inputs1
matmul_readvariableop_resource:	x?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	x?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
?
+__inference_sequential_1_layer_call_fn_5934
decoder_input
unknown:	x?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??H

unknown_18:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*0
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_58462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????x
'
_user_specified_namedecoder_input
?
?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8573

inputs:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Reluq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
b
F__inference_activation_1_layer_call_and_return_conditional_losses_9108

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:??????????2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8441

inputs8
$dense_matmul_readvariableop_resource:
?H?4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????H2	
Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Reluq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????H: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????H
 
_user_specified_nameinputs
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_3703

inputs
identityu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transpose_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consto
ReshapeReshapetranspose:y:0Const:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_3_layer_call_and_return_conditional_losses_8655

inputs1
matmul_readvariableop_resource:	?x-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
&__inference_dropout_layer_call_fn_8854

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_57132
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_3999
input_1
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_39432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????``
!
_user_specified_name	input_1
?
?
&__inference_encoder_layer_call_fn_8668

inputs
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_34912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????x: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_9123

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_5336

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
1__inference_time_distributed_4_layer_call_fn_9254

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_48802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?}
?
D__inference_sequential_layer_call_and_return_conditional_losses_7960

inputsI
5time_distributed_dense_matmul_readvariableop_resource:
?H?E
6time_distributed_dense_biasadd_readvariableop_resource:	?M
9time_distributed_1_dense_1_matmul_readvariableop_resource:
??I
:time_distributed_1_dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?x5
'dense_3_biasadd_readvariableop_resource:x=
/encoder_assignmovingavg_readvariableop_resource:x?
1encoder_assignmovingavg_1_readvariableop_resource:x;
-encoder_batchnorm_mul_readvariableop_resource:x7
)encoder_batchnorm_readvariableop_resource:x
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?encoder/AssignMovingAvg?&encoder/AssignMovingAvg/ReadVariableOp?encoder/AssignMovingAvg_1?(encoder/AssignMovingAvg_1/ReadVariableOp? encoder/batchnorm/ReadVariableOp?$encoder/batchnorm/mul/ReadVariableOp?-time_distributed/dense/BiasAdd/ReadVariableOp?,time_distributed/dense/MatMul/ReadVariableOp?1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?0time_distributed_1/dense_1/MatMul/ReadVariableOpe
CastCastinputs*

DstT0*

SrcT0*/
_output_shapes
:?????????``2
CastV
reshape/ShapeShapeCast:y:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1}
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeCast:y:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2
reshape/Reshape?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshapereshape/Reshape:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02.
,time_distributed/dense/MatMul/ReadVariableOp?
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/MatMul?
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-time_distributed/dense/BiasAdd/ReadVariableOp?
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
time_distributed/dense/BiasAdd?
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/Relu?
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2"
 time_distributed/Reshape_1/shape?
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed/Reshape_1?
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2"
 time_distributed/Reshape_2/shape?
time_distributed/Reshape_2Reshapereshape/Reshape:output:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape_2?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0time_distributed_1/dense_1/MatMul/ReadVariableOp?
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!time_distributed_1/dense_1/MatMul?
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"time_distributed_1/dense_1/BiasAdd?
time_distributed_1/dense_1/ReluRelu+time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
time_distributed_1/dense_1/Relu?
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2$
"time_distributed_1/Reshape_1/shape?
time_distributed_1/Reshape_1Reshape-time_distributed_1/dense_1/Relu:activations:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_1/Reshape_1?
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_1/Reshape_2/shape?
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape_2?
flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
flatten/transpose/perm?
flatten/transpose	Transpose%time_distributed_1/Reshape_1:output:0flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
flatten/transposeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeflatten/transpose:y:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/BiasAdd?
&encoder/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2(
&encoder/moments/mean/reduction_indices?
encoder/moments/meanMeandense_3/BiasAdd:output:0/encoder/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
encoder/moments/mean?
encoder/moments/StopGradientStopGradientencoder/moments/mean:output:0*
T0*
_output_shapes

:x2
encoder/moments/StopGradient?
!encoder/moments/SquaredDifferenceSquaredDifferencedense_3/BiasAdd:output:0%encoder/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????x2#
!encoder/moments/SquaredDifference?
*encoder/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*encoder/moments/variance/reduction_indices?
encoder/moments/varianceMean%encoder/moments/SquaredDifference:z:03encoder/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
encoder/moments/variance?
encoder/moments/SqueezeSqueezeencoder/moments/mean:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
encoder/moments/Squeeze?
encoder/moments/Squeeze_1Squeeze!encoder/moments/variance:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
encoder/moments/Squeeze_1?
encoder/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
encoder/AssignMovingAvg/decay?
&encoder/AssignMovingAvg/ReadVariableOpReadVariableOp/encoder_assignmovingavg_readvariableop_resource*
_output_shapes
:x*
dtype02(
&encoder/AssignMovingAvg/ReadVariableOp?
encoder/AssignMovingAvg/subSub.encoder/AssignMovingAvg/ReadVariableOp:value:0 encoder/moments/Squeeze:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg/sub?
encoder/AssignMovingAvg/mulMulencoder/AssignMovingAvg/sub:z:0&encoder/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg/mul?
encoder/AssignMovingAvgAssignSubVariableOp/encoder_assignmovingavg_readvariableop_resourceencoder/AssignMovingAvg/mul:z:0'^encoder/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
encoder/AssignMovingAvg?
encoder/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2!
encoder/AssignMovingAvg_1/decay?
(encoder/AssignMovingAvg_1/ReadVariableOpReadVariableOp1encoder_assignmovingavg_1_readvariableop_resource*
_output_shapes
:x*
dtype02*
(encoder/AssignMovingAvg_1/ReadVariableOp?
encoder/AssignMovingAvg_1/subSub0encoder/AssignMovingAvg_1/ReadVariableOp:value:0"encoder/moments/Squeeze_1:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg_1/sub?
encoder/AssignMovingAvg_1/mulMul!encoder/AssignMovingAvg_1/sub:z:0(encoder/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg_1/mul?
encoder/AssignMovingAvg_1AssignSubVariableOp1encoder_assignmovingavg_1_readvariableop_resource!encoder/AssignMovingAvg_1/mul:z:0)^encoder/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
encoder/AssignMovingAvg_1w
encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
encoder/batchnorm/add/y?
encoder/batchnorm/addAddV2"encoder/moments/Squeeze_1:output:0 encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
encoder/batchnorm/add{
encoder/batchnorm/RsqrtRsqrtencoder/batchnorm/add:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/Rsqrt?
$encoder/batchnorm/mul/ReadVariableOpReadVariableOp-encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02&
$encoder/batchnorm/mul/ReadVariableOp?
encoder/batchnorm/mulMulencoder/batchnorm/Rsqrt:y:0,encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul?
encoder/batchnorm/mul_1Muldense_3/BiasAdd:output:0encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/mul_1?
encoder/batchnorm/mul_2Mul encoder/moments/Squeeze:output:0encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul_2?
 encoder/batchnorm/ReadVariableOpReadVariableOp)encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02"
 encoder/batchnorm/ReadVariableOp?
encoder/batchnorm/subSub(encoder/batchnorm/ReadVariableOp:value:0encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/sub?
encoder/batchnorm/add_1AddV2encoder/batchnorm/mul_1:z:0encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/add_1v
IdentityIdentityencoder/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^encoder/AssignMovingAvg'^encoder/AssignMovingAvg/ReadVariableOp^encoder/AssignMovingAvg_1)^encoder/AssignMovingAvg_1/ReadVariableOp!^encoder/batchnorm/ReadVariableOp%^encoder/batchnorm/mul/ReadVariableOp.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp22
encoder/AssignMovingAvgencoder/AssignMovingAvg2P
&encoder/AssignMovingAvg/ReadVariableOp&encoder/AssignMovingAvg/ReadVariableOp26
encoder/AssignMovingAvg_1encoder/AssignMovingAvg_12T
(encoder/AssignMovingAvg_1/ReadVariableOp(encoder/AssignMovingAvg_1/ReadVariableOp2D
 encoder/batchnorm/ReadVariableOp encoder/batchnorm/ReadVariableOp2L
$encoder/batchnorm/mul/ReadVariableOp$encoder/batchnorm/mul/ReadVariableOp2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
2__inference_batch_normalization_layer_call_fn_8780

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_41612
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_dense_2_layer_call_and_return_conditional_losses_3716

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_dropout_1_layer_call_fn_9113

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_52662
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_9456

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_5541

inputsL
=batch_normalization_2_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:	?A
2batch_normalization_2_cast_readvariableop_resource:	?C
4batch_normalization_2_cast_1_readvariableop_resource:	?
identity??%batch_normalization_2/AssignMovingAvg?4batch_normalization_2/AssignMovingAvg/ReadVariableOp?'batch_normalization_2/AssignMovingAvg_1?6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?)batch_normalization_2/Cast/ReadVariableOp?+batch_normalization_2/Cast_1/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_2/moments/mean/reduction_indices?
"batch_normalization_2/moments/meanMeanReshape:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_2/moments/mean?
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_2/moments/StopGradient?
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferenceReshape:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_2/moments/SquaredDifference?
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_2/moments/variance/reduction_indices?
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_2/moments/variance?
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_2/moments/Squeeze?
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1?
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization_2/AssignMovingAvg/decay?
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOp?
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/sub?
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/mul?
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_2/AssignMovingAvg?
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-batch_normalization_2/AssignMovingAvg_1/decay?
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/sub?
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/mul?
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_1?
)batch_normalization_2/Cast/ReadVariableOpReadVariableOp2batch_normalization_2_cast_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)batch_normalization_2/Cast/ReadVariableOp?
+batch_normalization_2/Cast_1/ReadVariableOpReadVariableOp4batch_normalization_2_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batch_normalization_2/Cast_1/ReadVariableOp?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:03batch_normalization_2/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1MulReshape:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/mul_1?
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
#batch_normalization_2/batchnorm/subSub1batch_normalization_2/Cast/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/add_1w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshape)batch_normalization_2/batchnorm/add_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*^batch_normalization_2/Cast/ReadVariableOp,^batch_normalization_2/Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2V
)batch_normalization_2/Cast/ReadVariableOp)batch_normalization_2/Cast/ReadVariableOp2Z
+batch_normalization_2/Cast_1/ReadVariableOp+batch_normalization_2/Cast_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_4101

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_dense_2_layer_call_fn_8625

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_37162
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_encoder_layer_call_and_return_conditional_losses_3491

inputs/
!batchnorm_readvariableop_resource:x3
%batchnorm_mul_readvariableop_resource:x1
#batchnorm_readvariableop_1_resource:x1
#batchnorm_readvariableop_2_resource:x
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:x2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:x*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:x2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:x*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????x: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?)
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4323

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2}
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_5281

inputs:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?
identity??dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMulReshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshapedense_5/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_batch_normalization_1_layer_call_fn_9663

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_43232
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_reshape_1_layer_call_fn_8895

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_1_layer_call_and_return_conditional_losses_52172
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?)
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_8834

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2}
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_time_distributed_layer_call_and_return_conditional_losses_3271

inputs

dense_3261:
?H?

dense_3263:	?
identity??dense/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????H2	
Reshape?
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0
dense_3261
dense_3263*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_32122
dense/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:???????????????????2
	Reshape_1{
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityn
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????H: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????H
 
_user_specified_nameinputs
?
G
+__inference_activation_1_layer_call_fn_9103

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_52592
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_1_layer_call_fn_8050

inputs
unknown:	x?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??H

unknown_18:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*0
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_58462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????x: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????x
 
_user_specified_nameinputs
?
B
&__inference_flatten_layer_call_fn_8608

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_37032
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?|
?
D__inference_sequential_layer_call_and_return_conditional_losses_7800

inputsI
5time_distributed_dense_matmul_readvariableop_resource:
?H?E
6time_distributed_dense_biasadd_readvariableop_resource:	?M
9time_distributed_1_dense_1_matmul_readvariableop_resource:
??I
:time_distributed_1_dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?x5
'dense_3_biasadd_readvariableop_resource:x=
/encoder_assignmovingavg_readvariableop_resource:x?
1encoder_assignmovingavg_1_readvariableop_resource:x;
-encoder_batchnorm_mul_readvariableop_resource:x7
)encoder_batchnorm_readvariableop_resource:x
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?encoder/AssignMovingAvg?&encoder/AssignMovingAvg/ReadVariableOp?encoder/AssignMovingAvg_1?(encoder/AssignMovingAvg_1/ReadVariableOp? encoder/batchnorm/ReadVariableOp?$encoder/batchnorm/mul/ReadVariableOp?-time_distributed/dense/BiasAdd/ReadVariableOp?,time_distributed/dense/MatMul/ReadVariableOp?1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?0time_distributed_1/dense_1/MatMul/ReadVariableOpT
reshape/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1}
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeinputsreshape/Reshape/shape:output:0*
T0*,
_output_shapes
:??????????H2
reshape/Reshape?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshapereshape/Reshape:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape?
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02.
,time_distributed/dense/MatMul/ReadVariableOp?
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/MatMul?
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-time_distributed/dense/BiasAdd/ReadVariableOp?
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
time_distributed/dense/BiasAdd?
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
time_distributed/dense/Relu?
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2"
 time_distributed/Reshape_1/shape?
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed/Reshape_1?
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"???? $  2"
 time_distributed/Reshape_2/shape?
time_distributed/Reshape_2Reshapereshape/Reshape:output:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????H2
time_distributed/Reshape_2?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape?
0time_distributed_1/dense_1/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0time_distributed_1/dense_1/MatMul/ReadVariableOp?
!time_distributed_1/dense_1/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!time_distributed_1/dense_1/MatMul?
1time_distributed_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp?
"time_distributed_1/dense_1/BiasAddBiasAdd+time_distributed_1/dense_1/MatMul:product:09time_distributed_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"time_distributed_1/dense_1/BiasAdd?
time_distributed_1/dense_1/ReluRelu+time_distributed_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
time_distributed_1/dense_1/Relu?
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2$
"time_distributed_1/Reshape_1/shape?
time_distributed_1/Reshape_1Reshape-time_distributed_1/dense_1/Relu:activations:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
time_distributed_1/Reshape_1?
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2$
"time_distributed_1/Reshape_2/shape?
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:??????????2
time_distributed_1/Reshape_2?
flatten/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
flatten/transpose/perm?
flatten/transpose	Transpose%time_distributed_1/Reshape_1:output:0flatten/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
flatten/transposeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeflatten/transpose:y:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x2
dense_3/BiasAdd?
&encoder/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2(
&encoder/moments/mean/reduction_indices?
encoder/moments/meanMeandense_3/BiasAdd:output:0/encoder/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
encoder/moments/mean?
encoder/moments/StopGradientStopGradientencoder/moments/mean:output:0*
T0*
_output_shapes

:x2
encoder/moments/StopGradient?
!encoder/moments/SquaredDifferenceSquaredDifferencedense_3/BiasAdd:output:0%encoder/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????x2#
!encoder/moments/SquaredDifference?
*encoder/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*encoder/moments/variance/reduction_indices?
encoder/moments/varianceMean%encoder/moments/SquaredDifference:z:03encoder/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:x*
	keep_dims(2
encoder/moments/variance?
encoder/moments/SqueezeSqueezeencoder/moments/mean:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
encoder/moments/Squeeze?
encoder/moments/Squeeze_1Squeeze!encoder/moments/variance:output:0*
T0*
_output_shapes
:x*
squeeze_dims
 2
encoder/moments/Squeeze_1?
encoder/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
encoder/AssignMovingAvg/decay?
&encoder/AssignMovingAvg/ReadVariableOpReadVariableOp/encoder_assignmovingavg_readvariableop_resource*
_output_shapes
:x*
dtype02(
&encoder/AssignMovingAvg/ReadVariableOp?
encoder/AssignMovingAvg/subSub.encoder/AssignMovingAvg/ReadVariableOp:value:0 encoder/moments/Squeeze:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg/sub?
encoder/AssignMovingAvg/mulMulencoder/AssignMovingAvg/sub:z:0&encoder/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg/mul?
encoder/AssignMovingAvgAssignSubVariableOp/encoder_assignmovingavg_readvariableop_resourceencoder/AssignMovingAvg/mul:z:0'^encoder/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
encoder/AssignMovingAvg?
encoder/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2!
encoder/AssignMovingAvg_1/decay?
(encoder/AssignMovingAvg_1/ReadVariableOpReadVariableOp1encoder_assignmovingavg_1_readvariableop_resource*
_output_shapes
:x*
dtype02*
(encoder/AssignMovingAvg_1/ReadVariableOp?
encoder/AssignMovingAvg_1/subSub0encoder/AssignMovingAvg_1/ReadVariableOp:value:0"encoder/moments/Squeeze_1:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg_1/sub?
encoder/AssignMovingAvg_1/mulMul!encoder/AssignMovingAvg_1/sub:z:0(encoder/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:x2
encoder/AssignMovingAvg_1/mul?
encoder/AssignMovingAvg_1AssignSubVariableOp1encoder_assignmovingavg_1_readvariableop_resource!encoder/AssignMovingAvg_1/mul:z:0)^encoder/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
encoder/AssignMovingAvg_1w
encoder/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
encoder/batchnorm/add/y?
encoder/batchnorm/addAddV2"encoder/moments/Squeeze_1:output:0 encoder/batchnorm/add/y:output:0*
T0*
_output_shapes
:x2
encoder/batchnorm/add{
encoder/batchnorm/RsqrtRsqrtencoder/batchnorm/add:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/Rsqrt?
$encoder/batchnorm/mul/ReadVariableOpReadVariableOp-encoder_batchnorm_mul_readvariableop_resource*
_output_shapes
:x*
dtype02&
$encoder/batchnorm/mul/ReadVariableOp?
encoder/batchnorm/mulMulencoder/batchnorm/Rsqrt:y:0,encoder/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul?
encoder/batchnorm/mul_1Muldense_3/BiasAdd:output:0encoder/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/mul_1?
encoder/batchnorm/mul_2Mul encoder/moments/Squeeze:output:0encoder/batchnorm/mul:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/mul_2?
 encoder/batchnorm/ReadVariableOpReadVariableOp)encoder_batchnorm_readvariableop_resource*
_output_shapes
:x*
dtype02"
 encoder/batchnorm/ReadVariableOp?
encoder/batchnorm/subSub(encoder/batchnorm/ReadVariableOp:value:0encoder/batchnorm/mul_2:z:0*
T0*
_output_shapes
:x2
encoder/batchnorm/sub?
encoder/batchnorm/add_1AddV2encoder/batchnorm/mul_1:z:0encoder/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????x2
encoder/batchnorm/add_1v
IdentityIdentityencoder/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????x2

Identity?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^encoder/AssignMovingAvg'^encoder/AssignMovingAvg/ReadVariableOp^encoder/AssignMovingAvg_1)^encoder/AssignMovingAvg_1/ReadVariableOp!^encoder/batchnorm/ReadVariableOp%^encoder/batchnorm/mul/ReadVariableOp.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_1/dense_1/BiasAdd/ReadVariableOp1^time_distributed_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????``: : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp22
encoder/AssignMovingAvgencoder/AssignMovingAvg2P
&encoder/AssignMovingAvg/ReadVariableOp&encoder/AssignMovingAvg/ReadVariableOp26
encoder/AssignMovingAvg_1encoder/AssignMovingAvg_12T
(encoder/AssignMovingAvg_1/ReadVariableOp(encoder/AssignMovingAvg_1/ReadVariableOp2D
 encoder/batchnorm/ReadVariableOp encoder/batchnorm/ReadVariableOp2L
$encoder/batchnorm/mul/ReadVariableOp$encoder/batchnorm/mul/ReadVariableOp2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_1/dense_1/BiasAdd/ReadVariableOp1time_distributed_1/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_1/MatMul/ReadVariableOp0time_distributed_1/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????``
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9227

inputs:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?
identity??dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMulReshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?  2
Reshape_1/shape?
	Reshape_1Reshapedense_5/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8588

inputs:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Reluw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   2
Reshape_1/shape?
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_5452

inputs:
&dense_6_matmul_readvariableop_resource:
??H6
'dense_6_biasadd_readvariableop_resource:	?H
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/BiasAddz
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
dense_6/Sigmoidw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Sigmoid:y:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????H2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9578

inputs:
&dense_6_matmul_readvariableop_resource:
??H6
'dense_6_biasadd_readvariableop_resource:	?H
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??H*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulReshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?H*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????H2
dense_6/BiasAddz
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????H2
dense_6/Sigmoidw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????    $  2
Reshape_1/shape?
	Reshape_1Reshapedense_6/Sigmoid:y:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:??????????H2
	Reshape_1r
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:??????????H2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_4_layer_call_fn_9280

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_53122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_time_distributed_1_layer_call_fn_8511

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_34112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4263

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOp?
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast/ReadVariableOp?
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_1/ReadVariableOp?
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_2/ReadVariableOp?
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_dense_layer_call_fn_9606

inputs
unknown:
?H?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_32122
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
*__inference_autoencoder_layer_call_fn_7059
x
unknown:
?H?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?x
	unknown_6:x
	unknown_7:x
	unknown_8:x
	unknown_9:x

unknown_10:x

unknown_11:	x?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:
??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:
??H

unknown_30:	?H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*:
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_autoencoder_layer_call_and_return_conditional_losses_65682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:?????????``

_user_specified_namex
?
`
A__inference_dropout_layer_call_and_return_conditional_losses_5713

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?	
E__inference_autoencoder_layer_call_and_return_conditional_losses_6568
x#
sequential_6501:
?H?
sequential_6503:	?#
sequential_6505:
??
sequential_6507:	?#
sequential_6509:
??
sequential_6511:	?"
sequential_6513:	?x
sequential_6515:x
sequential_6517:x
sequential_6519:x
sequential_6521:x
sequential_6523:x$
sequential_1_6526:	x? 
sequential_1_6528:	? 
sequential_1_6530:	? 
sequential_1_6532:	? 
sequential_1_6534:	? 
sequential_1_6536:	?%
sequential_1_6538:
?? 
sequential_1_6540:	? 
sequential_1_6542:	? 
sequential_1_6544:	? 
sequential_1_6546:	? 
sequential_1_6548:	?%
sequential_1_6550:
?? 
sequential_1_6552:	? 
sequential_1_6554:	? 
sequential_1_6556:	? 
sequential_1_6558:	? 
sequential_1_6560:	?%
sequential_1_6562:
??H 
sequential_1_6564:	?H
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallxsequential_6501sequential_6503sequential_6505sequential_6507sequential_6509sequential_6511sequential_6513sequential_6515sequential_6517sequential_6519sequential_6521sequential_6523*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_64002$
"sequential/StatefulPartitionedCall?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_6526sequential_1_6528sequential_1_6530sequential_1_6532sequential_1_6534sequential_1_6536sequential_1_6538sequential_1_6540sequential_1_6542sequential_1_6544sequential_1_6546sequential_1_6548sequential_1_6550sequential_1_6552sequential_1_6554sequential_1_6556sequential_1_6558sequential_1_6560sequential_1_6562sequential_1_6564* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????``*0
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_58462&
$sequential_1/StatefulPartitionedCall?
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????``2

Identity?
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????``: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:R N
/
_output_shapes
:?????????``

_user_specified_namex"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????``D
output_18
StatefulPartitionedCall:0?????????``tensorflow/serving/predict:??
?
encoder
decoder
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_model
?
	layer-0

layer_with_weights-0

layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer_with_weights-4
layer-9
layer_with_weights-5
layer-10
layer-11
 layer-12
!layer_with_weights-6
!layer-13
"layer-14
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
'iter
	(decay
)learning_rate
*momentum
+rho
,rms?
-rms?
.rms?
/rms?
0rms?
1rms?
2rms?
3rms?
4rms?
5rms?
8rms?
9rms?
:rms?
;rms?
>rms?
?rms?
@rms?
Arms?
Drms?
Erms?
Frms?
Grms?
Jrms?
Krms?"
tf_deprecated_optimizer
?
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
@20
A21
B22
C23
D24
E25
F26
G27
H28
I29
J30
K31"
trackable_list_wrapper
?
,0
-1
.2
/3
04
15
26
37
48
59
810
911
:12
;13
>14
?15
@16
A17
D18
E19
F20
G21
J22
K23"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Llayer_regularization_losses
Mnon_trainable_variables

Nlayers
Olayer_metrics
	variables
Pmetrics
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	Ulayer
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	Zlayer
[	variables
\trainable_variables
]regularization_losses
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
_	variables
`trainable_variables
aregularization_losses
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
kaxis
	4gamma
5beta
6moving_mean
7moving_variance
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
v
,0
-1
.2
/3
04
15
26
37
48
59
610
711"
trackable_list_wrapper
f
,0
-1
.2
/3
04
15
26
37
48
59"
trackable_list_wrapper
 "
trackable_list_wrapper
?
player_regularization_losses
qnon_trainable_variables

rlayers
slayer_metrics
	variables
tmetrics
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

8kernel
9bias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
yaxis
	:gamma
;beta
<moving_mean
=moving_variance
z	variables
{trainable_variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

?layer
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

?layer
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

?layer
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

?layer
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
80
91
:2
;3
<4
=5
>6
?7
@8
A9
B10
C11
D12
E13
F14
G15
H16
I17
J18
K19"
trackable_list_wrapper
?
80
91
:2
;3
>4
?5
@6
A7
D8
E9
F10
G11
J12
K13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?layers
?layer_metrics
#	variables
?metrics
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
+:)
?H?2time_distributed/kernel
$:"?2time_distributed/bias
-:+
??2time_distributed_1/kernel
&:$?2time_distributed_1/bias
": 
??2dense_2/kernel
:?2dense_2/bias
!:	?x2dense_3/kernel
:x2dense_3/bias
:x2encoder/gamma
:x2encoder/beta
#:!x (2encoder/moving_mean
':%x (2encoder/moving_variance
!:	x?2decoder/kernel
:?2decoder/bias
(:&?2batch_normalization/gamma
':%?2batch_normalization/beta
0:.? (2batch_normalization/moving_mean
4:2? (2#batch_normalization/moving_variance
": 
??2dense_4/kernel
:?2dense_4/bias
':%?2time_distributed_2/gamma
&:$?2time_distributed_2/beta
/:-? (2time_distributed_2/moving_mean
3:1? (2"time_distributed_2/moving_variance
-:+
??2time_distributed_3/kernel
&:$?2time_distributed_3/bias
':%?2time_distributed_4/gamma
&:$?2time_distributed_4/beta
/:-? (2time_distributed_4/moving_mean
3:1? (2"time_distributed_4/moving_variance
-:+
??H2time_distributed_5/kernel
&:$?H2time_distributed_5/bias
 "
trackable_list_wrapper
X
60
71
<2
=3
B4
C5
H6
I7"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
Q	variables
?metrics
Rtrainable_variables
Sregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

,kernel
-bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
V	variables
?metrics
Wtrainable_variables
Xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

.kernel
/bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
[	variables
?metrics
\trainable_variables
]regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
_	variables
?metrics
`trainable_variables
aregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
c	variables
?metrics
dtrainable_variables
eregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
g	variables
?metrics
htrainable_variables
iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
40
51
62
73"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
l	variables
?metrics
mtrainable_variables
nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
Q
	0

1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
u	variables
?metrics
vtrainable_variables
wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
:0
;1
<2
=3"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
z	variables
?metrics
{trainable_variables
|regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
~	variables
?metrics
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
	?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
<
@0
A1
B2
C3"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Dkernel
Ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
	?axis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
<
F0
G1
H2
I3"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Jkernel
Kbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
<0
=1
B2
C3
H4
I5"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
8
9
10
11
 12
!13
"14"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
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
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
U0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
Z0"
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
.
60
71"
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
.
<0
=1"
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
<
@0
A1
B2
C3"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
B0
C1"
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
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
H0
I1"
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
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?non_trainable_variables
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(
?0"
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
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
.
B0
C1"
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
.
H0
I1"
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
5:3
?H?2#RMSprop/time_distributed/kernel/rms
.:,?2!RMSprop/time_distributed/bias/rms
7:5
??2%RMSprop/time_distributed_1/kernel/rms
0:.?2#RMSprop/time_distributed_1/bias/rms
,:*
??2RMSprop/dense_2/kernel/rms
%:#?2RMSprop/dense_2/bias/rms
+:)	?x2RMSprop/dense_3/kernel/rms
$:"x2RMSprop/dense_3/bias/rms
%:#x2RMSprop/encoder/gamma/rms
$:"x2RMSprop/encoder/beta/rms
+:)	x?2RMSprop/decoder/kernel/rms
%:#?2RMSprop/decoder/bias/rms
2:0?2%RMSprop/batch_normalization/gamma/rms
1:/?2$RMSprop/batch_normalization/beta/rms
,:*
??2RMSprop/dense_4/kernel/rms
%:#?2RMSprop/dense_4/bias/rms
1:/?2$RMSprop/time_distributed_2/gamma/rms
0:.?2#RMSprop/time_distributed_2/beta/rms
7:5
??2%RMSprop/time_distributed_3/kernel/rms
0:.?2#RMSprop/time_distributed_3/bias/rms
1:/?2$RMSprop/time_distributed_4/gamma/rms
0:.?2#RMSprop/time_distributed_4/beta/rms
7:5
??H2%RMSprop/time_distributed_5/kernel/rms
0:.?H2#RMSprop/time_distributed_5/bias/rms
?2?
*__inference_autoencoder_layer_call_fn_6282
*__inference_autoencoder_layer_call_fn_6990
*__inference_autoencoder_layer_call_fn_7059
*__inference_autoencoder_layer_call_fn_6704?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_autoencoder_layer_call_and_return_conditional_losses_7254
E__inference_autoencoder_layer_call_and_return_conditional_losses_7526
E__inference_autoencoder_layer_call_and_return_conditional_losses_6774
E__inference_autoencoder_layer_call_and_return_conditional_losses_6844?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__wrapped_model_3187?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????``
?2?
)__inference_sequential_layer_call_fn_3775
)__inference_sequential_layer_call_fn_7555
)__inference_sequential_layer_call_fn_7584
)__inference_sequential_layer_call_fn_3999
)__inference_sequential_layer_call_fn_7613
)__inference_sequential_layer_call_fn_7642?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_7714
D__inference_sequential_layer_call_and_return_conditional_losses_7800
D__inference_sequential_layer_call_and_return_conditional_losses_4038
D__inference_sequential_layer_call_and_return_conditional_losses_4077
D__inference_sequential_layer_call_and_return_conditional_losses_7873
D__inference_sequential_layer_call_and_return_conditional_losses_7960?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_1_layer_call_fn_5420
+__inference_sequential_1_layer_call_fn_8005
+__inference_sequential_1_layer_call_fn_8050
+__inference_sequential_1_layer_call_fn_5934?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_1_layer_call_and_return_conditional_losses_8176
F__inference_sequential_1_layer_call_and_return_conditional_losses_8365
F__inference_sequential_1_layer_call_and_return_conditional_losses_6001
F__inference_sequential_1_layer_call_and_return_conditional_losses_6068?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference_signature_wrapper_6921input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_reshape_layer_call_fn_8370?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_reshape_layer_call_and_return_conditional_losses_8383?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_time_distributed_layer_call_fn_8392
/__inference_time_distributed_layer_call_fn_8401
/__inference_time_distributed_layer_call_fn_8410
/__inference_time_distributed_layer_call_fn_8419?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8441
J__inference_time_distributed_layer_call_and_return_conditional_losses_8463
J__inference_time_distributed_layer_call_and_return_conditional_losses_8478
J__inference_time_distributed_layer_call_and_return_conditional_losses_8493?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_time_distributed_1_layer_call_fn_8502
1__inference_time_distributed_1_layer_call_fn_8511
1__inference_time_distributed_1_layer_call_fn_8520
1__inference_time_distributed_1_layer_call_fn_8529?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8551
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8573
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8588
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8603?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_flatten_layer_call_fn_8608?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_flatten_layer_call_and_return_conditional_losses_8616?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_2_layer_call_fn_8625?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_2_layer_call_and_return_conditional_losses_8636?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_3_layer_call_fn_8645?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_3_layer_call_and_return_conditional_losses_8655?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_encoder_layer_call_fn_8668
&__inference_encoder_layer_call_fn_8681?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_encoder_layer_call_and_return_conditional_losses_8701
A__inference_encoder_layer_call_and_return_conditional_losses_8735?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_decoder_layer_call_fn_8744?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_decoder_layer_call_and_return_conditional_losses_8754?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_batch_normalization_layer_call_fn_8767
2__inference_batch_normalization_layer_call_fn_8780?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_8800
M__inference_batch_normalization_layer_call_and_return_conditional_losses_8834?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_activation_layer_call_fn_8839?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_activation_layer_call_and_return_conditional_losses_8844?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dropout_layer_call_fn_8849
&__inference_dropout_layer_call_fn_8854?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_dropout_layer_call_and_return_conditional_losses_8859
A__inference_dropout_layer_call_and_return_conditional_losses_8871?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_dense_4_layer_call_fn_8880?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_4_layer_call_and_return_conditional_losses_8890?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_reshape_1_layer_call_fn_8895?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_reshape_1_layer_call_and_return_conditional_losses_8908?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_time_distributed_2_layer_call_fn_8921
1__inference_time_distributed_2_layer_call_fn_8934
1__inference_time_distributed_2_layer_call_fn_8947
1__inference_time_distributed_2_layer_call_fn_8960?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_8991
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9036
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9060
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9098?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_activation_1_layer_call_fn_9103?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_activation_1_layer_call_and_return_conditional_losses_9108?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dropout_1_layer_call_fn_9113
(__inference_dropout_1_layer_call_fn_9118?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dropout_1_layer_call_and_return_conditional_losses_9123
C__inference_dropout_1_layer_call_and_return_conditional_losses_9135?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_time_distributed_3_layer_call_fn_9144
1__inference_time_distributed_3_layer_call_fn_9153
1__inference_time_distributed_3_layer_call_fn_9162
1__inference_time_distributed_3_layer_call_fn_9171?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9192
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9213
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9227
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9241?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_time_distributed_4_layer_call_fn_9254
1__inference_time_distributed_4_layer_call_fn_9267
1__inference_time_distributed_4_layer_call_fn_9280
1__inference_time_distributed_4_layer_call_fn_9293?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9324
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9369
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9393
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9431?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_activation_2_layer_call_fn_9436?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_activation_2_layer_call_and_return_conditional_losses_9441?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dropout_2_layer_call_fn_9446
(__inference_dropout_2_layer_call_fn_9451?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dropout_2_layer_call_and_return_conditional_losses_9456
C__inference_dropout_2_layer_call_and_return_conditional_losses_9468?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_time_distributed_5_layer_call_fn_9477
1__inference_time_distributed_5_layer_call_fn_9486
1__inference_time_distributed_5_layer_call_fn_9495
1__inference_time_distributed_5_layer_call_fn_9504?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9526
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9548
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9563
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9578?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_reshape_2_layer_call_fn_9583?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_reshape_2_layer_call_and_return_conditional_losses_9597?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_dense_layer_call_fn_9606?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_dense_layer_call_and_return_conditional_losses_9617?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_1_layer_call_fn_9626?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_1_layer_call_and_return_conditional_losses_9637?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_batch_normalization_1_layer_call_fn_9650
4__inference_batch_normalization_1_layer_call_fn_9663?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9683
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9717?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_dense_5_layer_call_fn_9726?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_5_layer_call_and_return_conditional_losses_9736?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_batch_normalization_2_layer_call_fn_9749
4__inference_batch_normalization_2_layer_call_fn_9762?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9782
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9816?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_dense_6_layer_call_fn_9825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_6_layer_call_and_return_conditional_losses_9836?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_3187? ,-./0123746589<=;:>?BCA@DEHIGFJK8?5
.?+
)?&
input_1?????????``
? ";?8
6
output_1*?'
output_1?????????``?
F__inference_activation_1_layer_call_and_return_conditional_losses_9108b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
+__inference_activation_1_layer_call_fn_9103U4?1
*?'
%?"
inputs??????????
? "????????????
F__inference_activation_2_layer_call_and_return_conditional_losses_9441b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
+__inference_activation_2_layer_call_fn_9436U4?1
*?'
%?"
inputs??????????
? "????????????
D__inference_activation_layer_call_and_return_conditional_losses_8844Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? z
)__inference_activation_layer_call_fn_8839M0?-
&?#
!?
inputs??????????
? "????????????
E__inference_autoencoder_layer_call_and_return_conditional_losses_6774? ,-./0123746589<=;:>?BCA@DEHIGFJK<?9
2?/
)?&
input_1?????????``
p 
? "-?*
#? 
0?????????``
? ?
E__inference_autoencoder_layer_call_and_return_conditional_losses_6844? ,-./0123674589<=;:>?BCA@DEHIGFJK<?9
2?/
)?&
input_1?????????``
p
? "-?*
#? 
0?????????``
? ?
E__inference_autoencoder_layer_call_and_return_conditional_losses_7254? ,-./0123746589<=;:>?BCA@DEHIGFJK6?3
,?)
#? 
x?????????``
p 
? "-?*
#? 
0?????????``
? ?
E__inference_autoencoder_layer_call_and_return_conditional_losses_7526? ,-./0123674589<=;:>?BCA@DEHIGFJK6?3
,?)
#? 
x?????????``
p
? "-?*
#? 
0?????????``
? ?
*__inference_autoencoder_layer_call_fn_6282? ,-./0123746589<=;:>?BCA@DEHIGFJK<?9
2?/
)?&
input_1?????????``
p 
? " ??????????``?
*__inference_autoencoder_layer_call_fn_6704? ,-./0123674589<=;:>?BCA@DEHIGFJK<?9
2?/
)?&
input_1?????????``
p
? " ??????????``?
*__inference_autoencoder_layer_call_fn_6990| ,-./0123746589<=;:>?BCA@DEHIGFJK6?3
,?)
#? 
x?????????``
p 
? " ??????????``?
*__inference_autoencoder_layer_call_fn_7059| ,-./0123674589<=;:>?BCA@DEHIGFJK6?3
,?)
#? 
x?????????``
p
? " ??????????``?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9683dBCA@4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9717dBCA@4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
4__inference_batch_normalization_1_layer_call_fn_9650WBCA@4?1
*?'
!?
inputs??????????
p 
? "????????????
4__inference_batch_normalization_1_layer_call_fn_9663WBCA@4?1
*?'
!?
inputs??????????
p
? "????????????
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9782dHIGF4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9816dHIGF4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
4__inference_batch_normalization_2_layer_call_fn_9749WHIGF4?1
*?'
!?
inputs??????????
p 
? "????????????
4__inference_batch_normalization_2_layer_call_fn_9762WHIGF4?1
*?'
!?
inputs??????????
p
? "????????????
M__inference_batch_normalization_layer_call_and_return_conditional_losses_8800d<=;:4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_8834d<=;:4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
2__inference_batch_normalization_layer_call_fn_8767W<=;:4?1
*?'
!?
inputs??????????
p 
? "????????????
2__inference_batch_normalization_layer_call_fn_8780W<=;:4?1
*?'
!?
inputs??????????
p
? "????????????
A__inference_decoder_layer_call_and_return_conditional_losses_8754]89/?,
%?"
 ?
inputs?????????x
? "&?#
?
0??????????
? z
&__inference_decoder_layer_call_fn_8744P89/?,
%?"
 ?
inputs?????????x
? "????????????
A__inference_dense_1_layer_call_and_return_conditional_losses_9637^./0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_1_layer_call_fn_9626Q./0?-
&?#
!?
inputs??????????
? "????????????
A__inference_dense_2_layer_call_and_return_conditional_losses_8636^010?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_2_layer_call_fn_8625Q010?-
&?#
!?
inputs??????????
? "????????????
A__inference_dense_3_layer_call_and_return_conditional_losses_8655]230?-
&?#
!?
inputs??????????
? "%?"
?
0?????????x
? z
&__inference_dense_3_layer_call_fn_8645P230?-
&?#
!?
inputs??????????
? "??????????x?
A__inference_dense_4_layer_call_and_return_conditional_losses_8890^>?0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_4_layer_call_fn_8880Q>?0?-
&?#
!?
inputs??????????
? "????????????
A__inference_dense_5_layer_call_and_return_conditional_losses_9736^DE0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_5_layer_call_fn_9726QDE0?-
&?#
!?
inputs??????????
? "????????????
A__inference_dense_6_layer_call_and_return_conditional_losses_9836^JK0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????H
? {
&__inference_dense_6_layer_call_fn_9825QJK0?-
&?#
!?
inputs??????????
? "???????????H?
?__inference_dense_layer_call_and_return_conditional_losses_9617^,-0?-
&?#
!?
inputs??????????H
? "&?#
?
0??????????
? y
$__inference_dense_layer_call_fn_9606Q,-0?-
&?#
!?
inputs??????????H
? "????????????
C__inference_dropout_1_layer_call_and_return_conditional_losses_9123f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
C__inference_dropout_1_layer_call_and_return_conditional_losses_9135f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
(__inference_dropout_1_layer_call_fn_9113Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
(__inference_dropout_1_layer_call_fn_9118Y8?5
.?+
%?"
inputs??????????
p
? "????????????
C__inference_dropout_2_layer_call_and_return_conditional_losses_9456f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
C__inference_dropout_2_layer_call_and_return_conditional_losses_9468f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
(__inference_dropout_2_layer_call_fn_9446Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
(__inference_dropout_2_layer_call_fn_9451Y8?5
.?+
%?"
inputs??????????
p
? "????????????
A__inference_dropout_layer_call_and_return_conditional_losses_8859^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
A__inference_dropout_layer_call_and_return_conditional_losses_8871^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? {
&__inference_dropout_layer_call_fn_8849Q4?1
*?'
!?
inputs??????????
p 
? "???????????{
&__inference_dropout_layer_call_fn_8854Q4?1
*?'
!?
inputs??????????
p
? "????????????
A__inference_encoder_layer_call_and_return_conditional_losses_8701b74653?0
)?&
 ?
inputs?????????x
p 
? "%?"
?
0?????????x
? ?
A__inference_encoder_layer_call_and_return_conditional_losses_8735b67453?0
)?&
 ?
inputs?????????x
p
? "%?"
?
0?????????x
? 
&__inference_encoder_layer_call_fn_8668U74653?0
)?&
 ?
inputs?????????x
p 
? "??????????x
&__inference_encoder_layer_call_fn_8681U67453?0
)?&
 ?
inputs?????????x
p
? "??????????x?
A__inference_flatten_layer_call_and_return_conditional_losses_8616^4?1
*?'
%?"
inputs??????????
? "&?#
?
0??????????
? {
&__inference_flatten_layer_call_fn_8608Q4?1
*?'
%?"
inputs??????????
? "????????????
C__inference_reshape_1_layer_call_and_return_conditional_losses_8908^0?-
&?#
!?
inputs??????????
? "*?'
 ?
0??????????
? }
(__inference_reshape_1_layer_call_fn_8895Q0?-
&?#
!?
inputs??????????
? "????????????
C__inference_reshape_2_layer_call_and_return_conditional_losses_9597e4?1
*?'
%?"
inputs??????????H
? "-?*
#? 
0?????????``
? ?
(__inference_reshape_2_layer_call_fn_9583X4?1
*?'
%?"
inputs??????????H
? " ??????????``?
A__inference_reshape_layer_call_and_return_conditional_losses_8383e7?4
-?*
(?%
inputs?????????``
? "*?'
 ?
0??????????H
? ?
&__inference_reshape_layer_call_fn_8370X7?4
-?*
(?%
inputs?????????``
? "???????????H?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6001?89<=;:>?BCA@DEHIGFJK>?;
4?1
'?$
decoder_input?????????x
p 

 
? "-?*
#? 
0?????????``
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6068?89<=;:>?BCA@DEHIGFJK>?;
4?1
'?$
decoder_input?????????x
p

 
? "-?*
#? 
0?????????``
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_8176~89<=;:>?BCA@DEHIGFJK7?4
-?*
 ?
inputs?????????x
p 

 
? "-?*
#? 
0?????????``
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_8365~89<=;:>?BCA@DEHIGFJK7?4
-?*
 ?
inputs?????????x
p

 
? "-?*
#? 
0?????????``
? ?
+__inference_sequential_1_layer_call_fn_5420x89<=;:>?BCA@DEHIGFJK>?;
4?1
'?$
decoder_input?????????x
p 

 
? " ??????????``?
+__inference_sequential_1_layer_call_fn_5934x89<=;:>?BCA@DEHIGFJK>?;
4?1
'?$
decoder_input?????????x
p

 
? " ??????????``?
+__inference_sequential_1_layer_call_fn_8005q89<=;:>?BCA@DEHIGFJK7?4
-?*
 ?
inputs?????????x
p 

 
? " ??????????``?
+__inference_sequential_1_layer_call_fn_8050q89<=;:>?BCA@DEHIGFJK7?4
-?*
 ?
inputs?????????x
p

 
? " ??????????``?
D__inference_sequential_layer_call_and_return_conditional_losses_4038w,-./01237465@?=
6?3
)?&
input_1?????????``
p 

 
? "%?"
?
0?????????x
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_4077w,-./01236745@?=
6?3
)?&
input_1?????????``
p

 
? "%?"
?
0?????????x
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_7714v,-./01237465??<
5?2
(?%
inputs?????????``
p 

 
? "%?"
?
0?????????x
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_7800v,-./01236745??<
5?2
(?%
inputs?????????``
p

 
? "%?"
?
0?????????x
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_7873v,-./01237465??<
5?2
(?%
inputs?????????``
p 

 
? "%?"
?
0?????????x
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_7960v,-./01236745??<
5?2
(?%
inputs?????????``
p

 
? "%?"
?
0?????????x
? ?
)__inference_sequential_layer_call_fn_3775j,-./01237465@?=
6?3
)?&
input_1?????????``
p 

 
? "??????????x?
)__inference_sequential_layer_call_fn_3999j,-./01236745@?=
6?3
)?&
input_1?????????``
p

 
? "??????????x?
)__inference_sequential_layer_call_fn_7555i,-./01237465??<
5?2
(?%
inputs?????????``
p 

 
? "??????????x?
)__inference_sequential_layer_call_fn_7584i,-./01236745??<
5?2
(?%
inputs?????????``
p

 
? "??????????x?
)__inference_sequential_layer_call_fn_7613i,-./01237465??<
5?2
(?%
inputs?????????``
p 

 
? "??????????x?
)__inference_sequential_layer_call_fn_7642i,-./01236745??<
5?2
(?%
inputs?????????``
p

 
? "??????????x?
"__inference_signature_wrapper_6921? ,-./0123746589<=;:>?BCA@DEHIGFJKC?@
? 
9?6
4
input_1)?&
input_1?????????``";?8
6
output_1*?'
output_1?????????``?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8551?./E?B
;?8
.?+
inputs???????????????????
p 

 
? "3?0
)?&
0???????????????????
? ?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8573?./E?B
;?8
.?+
inputs???????????????????
p

 
? "3?0
)?&
0???????????????????
? ?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8588n./<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????
? ?
L__inference_time_distributed_1_layer_call_and_return_conditional_losses_8603n./<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????
? ?
1__inference_time_distributed_1_layer_call_fn_8502s./E?B
;?8
.?+
inputs???????????????????
p 

 
? "&?#????????????????????
1__inference_time_distributed_1_layer_call_fn_8511s./E?B
;?8
.?+
inputs???????????????????
p

 
? "&?#????????????????????
1__inference_time_distributed_1_layer_call_fn_8520a./<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
1__inference_time_distributed_1_layer_call_fn_8529a./<?9
2?/
%?"
inputs??????????
p

 
? "????????????
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_8991?BCA@E?B
;?8
.?+
inputs???????????????????
p 

 
? "3?0
)?&
0???????????????????
? ?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9036?BCA@E?B
;?8
.?+
inputs???????????????????
p

 
? "3?0
)?&
0???????????????????
? ?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9060pBCA@<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????
? ?
L__inference_time_distributed_2_layer_call_and_return_conditional_losses_9098pBCA@<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????
? ?
1__inference_time_distributed_2_layer_call_fn_8921uBCA@E?B
;?8
.?+
inputs???????????????????
p 

 
? "&?#????????????????????
1__inference_time_distributed_2_layer_call_fn_8934uBCA@E?B
;?8
.?+
inputs???????????????????
p

 
? "&?#????????????????????
1__inference_time_distributed_2_layer_call_fn_8947cBCA@<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
1__inference_time_distributed_2_layer_call_fn_8960cBCA@<?9
2?/
%?"
inputs??????????
p

 
? "????????????
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9192?DEE?B
;?8
.?+
inputs???????????????????
p 

 
? "3?0
)?&
0???????????????????
? ?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9213?DEE?B
;?8
.?+
inputs???????????????????
p

 
? "3?0
)?&
0???????????????????
? ?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9227nDE<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????
? ?
L__inference_time_distributed_3_layer_call_and_return_conditional_losses_9241nDE<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????
? ?
1__inference_time_distributed_3_layer_call_fn_9144sDEE?B
;?8
.?+
inputs???????????????????
p 

 
? "&?#????????????????????
1__inference_time_distributed_3_layer_call_fn_9153sDEE?B
;?8
.?+
inputs???????????????????
p

 
? "&?#????????????????????
1__inference_time_distributed_3_layer_call_fn_9162aDE<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
1__inference_time_distributed_3_layer_call_fn_9171aDE<?9
2?/
%?"
inputs??????????
p

 
? "????????????
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9324?HIGFE?B
;?8
.?+
inputs???????????????????
p 

 
? "3?0
)?&
0???????????????????
? ?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9369?HIGFE?B
;?8
.?+
inputs???????????????????
p

 
? "3?0
)?&
0???????????????????
? ?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9393pHIGF<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????
? ?
L__inference_time_distributed_4_layer_call_and_return_conditional_losses_9431pHIGF<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????
? ?
1__inference_time_distributed_4_layer_call_fn_9254uHIGFE?B
;?8
.?+
inputs???????????????????
p 

 
? "&?#????????????????????
1__inference_time_distributed_4_layer_call_fn_9267uHIGFE?B
;?8
.?+
inputs???????????????????
p

 
? "&?#????????????????????
1__inference_time_distributed_4_layer_call_fn_9280cHIGF<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
1__inference_time_distributed_4_layer_call_fn_9293cHIGF<?9
2?/
%?"
inputs??????????
p

 
? "????????????
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9526?JKE?B
;?8
.?+
inputs???????????????????
p 

 
? "3?0
)?&
0???????????????????H
? ?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9548?JKE?B
;?8
.?+
inputs???????????????????
p

 
? "3?0
)?&
0???????????????????H
? ?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9563nJK<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????H
? ?
L__inference_time_distributed_5_layer_call_and_return_conditional_losses_9578nJK<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????H
? ?
1__inference_time_distributed_5_layer_call_fn_9477sJKE?B
;?8
.?+
inputs???????????????????
p 

 
? "&?#???????????????????H?
1__inference_time_distributed_5_layer_call_fn_9486sJKE?B
;?8
.?+
inputs???????????????????
p

 
? "&?#???????????????????H?
1__inference_time_distributed_5_layer_call_fn_9495aJK<?9
2?/
%?"
inputs??????????
p 

 
? "???????????H?
1__inference_time_distributed_5_layer_call_fn_9504aJK<?9
2?/
%?"
inputs??????????
p

 
? "???????????H?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8441?,-E?B
;?8
.?+
inputs???????????????????H
p 

 
? "3?0
)?&
0???????????????????
? ?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8463?,-E?B
;?8
.?+
inputs???????????????????H
p

 
? "3?0
)?&
0???????????????????
? ?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8478n,-<?9
2?/
%?"
inputs??????????H
p 

 
? "*?'
 ?
0??????????
? ?
J__inference_time_distributed_layer_call_and_return_conditional_losses_8493n,-<?9
2?/
%?"
inputs??????????H
p

 
? "*?'
 ?
0??????????
? ?
/__inference_time_distributed_layer_call_fn_8392s,-E?B
;?8
.?+
inputs???????????????????H
p 

 
? "&?#????????????????????
/__inference_time_distributed_layer_call_fn_8401s,-E?B
;?8
.?+
inputs???????????????????H
p

 
? "&?#????????????????????
/__inference_time_distributed_layer_call_fn_8410a,-<?9
2?/
%?"
inputs??????????H
p 

 
? "????????????
/__inference_time_distributed_layer_call_fn_8419a,-<?9
2?/
%?"
inputs??????????H
p

 
? "???????????